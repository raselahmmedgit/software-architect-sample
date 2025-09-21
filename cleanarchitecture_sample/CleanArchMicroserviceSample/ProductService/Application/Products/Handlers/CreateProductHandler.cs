using MassTransit;
using MediatR;
using ProductService.Application.Products.Commands;
using ProductService.Application.Common.Interfaces;
using ProductService.Domain.Entities;
using Shared.Contracts;

namespace ProductService.Application.Products.Handlers;

public class CreateProductHandler : IRequestHandler<CreateProductCommand, int>
{
    private readonly IApplicationDbContext _db;
    private readonly IPublishEndpoint _publishEndpoint;

    public CreateProductHandler(IApplicationDbContext db, IPublishEndpoint publishEndpoint)
    {
        _db = db;
        _publishEndpoint = publishEndpoint;
    }

    public async Task<int> Handle(CreateProductCommand request, CancellationToken cancellationToken)
    {
        var product = new Product
        {
            Name = request.Name,
            Price = request.Price,
            CreatedAt = DateTime.UtcNow
        };

        _db.Products.Add(product);
        await _db.SaveChangesAsync(cancellationToken);

        await _publishEndpoint.Publish(new ProductCreated
        {
            ProductId = product.Id,
            Name = product.Name,
            Price = product.Price
        }, cancellationToken);

        return product.Id;
    }
}
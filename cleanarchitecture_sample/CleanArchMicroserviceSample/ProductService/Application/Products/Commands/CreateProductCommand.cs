using MediatR;

namespace ProductService.Application.Products.Commands;

public record CreateProductCommand(string Name, decimal Price) : IRequest<int>;
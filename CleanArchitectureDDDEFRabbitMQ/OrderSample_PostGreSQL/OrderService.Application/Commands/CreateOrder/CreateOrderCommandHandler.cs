using MediatR;
using System.Threading;
using System.Threading.Tasks;
using OrderService.Domain.Interfaces;
using OrderService.Domain.Entities;
using MassTransit;
using OrderService.Contracts.Events;

namespace OrderService.Application.Commands
{
    public class CreateOrderCommandHandler : IRequestHandler<CreateOrderCommand, Guid>
    {
        private readonly IOrderRepository _repo;
        private readonly IPublishEndpoint _publishEndpoint;

        public CreateOrderCommandHandler(IOrderRepository repo, IPublishEndpoint publishEndpoint)
        {
            _repo = repo;
            _publishEndpoint = publishEndpoint;
        }

        public async Task<Guid> Handle(CreateOrderCommand request, CancellationToken cancellationToken)
        {
            var order = new Order(request.CustomerName, request.Total);
            await _repo.AddAsync(order, cancellationToken);

            var evt = new OrderCreatedEvent(order.Id, order.CustomerName, order.Total, order.CreatedAt);
            await _publishEndpoint.Publish(evt, cancellationToken);

            return order.Id;
        }
    }
}

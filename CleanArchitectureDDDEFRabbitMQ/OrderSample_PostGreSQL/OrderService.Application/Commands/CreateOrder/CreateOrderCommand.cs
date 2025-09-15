using MediatR;
using System;

namespace OrderService.Application.Commands
{
    public record CreateOrderCommand(string CustomerName, decimal Total) : IRequest<Guid>;
}

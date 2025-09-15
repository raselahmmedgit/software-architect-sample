using MediatR;
using System;
using OrderService.Domain.Entities;

namespace OrderService.Application.Queries
{
    public record GetOrderQuery(Guid Id) : IRequest<Order?>;
}

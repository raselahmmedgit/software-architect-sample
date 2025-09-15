using System;

namespace OrderService.Contracts.Events
{
    public record OrderCreatedEvent(Guid OrderId, string CustomerName, decimal Total, DateTime CreatedAt);
}

using MassTransit;
using OrderService.Contracts.Events;
using System.Threading.Tasks;
using System;

namespace OrderService.Consumer.Consumers
{
    public class OrderCreatedConsumer : IConsumer<OrderCreatedEvent>
    {
        public Task Consume(ConsumeContext<OrderCreatedEvent> context)
        {
            var evt = context.Message;
            Console.WriteLine($"[Consumer] OrderCreated: {evt.OrderId} {evt.CustomerName} {evt.Total}");
            return Task.CompletedTask;
        }
    }
}

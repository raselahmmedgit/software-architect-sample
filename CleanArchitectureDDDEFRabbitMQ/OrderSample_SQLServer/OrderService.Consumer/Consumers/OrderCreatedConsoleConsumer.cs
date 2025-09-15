using MassTransit;
using OrderService.Contracts.Events;
using System;
using System.Threading.Tasks;

namespace OrderService.Consumer.Consumers
{
    public class OrderCreatedConsoleConsumer : IConsumer<OrderCreatedEvent>
    {
        public Task Consume(ConsumeContext<OrderCreatedEvent> context)
        {
            var evt = context.Message;
            Console.WriteLine($"[OrderService.Consumer] OrderCreated received: {evt.OrderId} {evt.CustomerName} {evt.Total}");
            return Task.CompletedTask;
        }
    }
}

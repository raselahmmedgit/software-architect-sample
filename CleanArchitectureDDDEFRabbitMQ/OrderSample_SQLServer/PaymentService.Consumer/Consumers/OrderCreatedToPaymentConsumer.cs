using MassTransit;
using OrderService.Contracts.Events;
using PaymentService.Infrastructure.Persistence;
using PaymentService.Domain.Entities;
using System;
using System.Threading.Tasks;

namespace PaymentService.Consumer.Consumers
{
    public class OrderCreatedToPaymentConsumer : IConsumer<OrderCreatedEvent>
    {
        private readonly PaymentDbContext _db;
        public OrderCreatedToPaymentConsumer(PaymentDbContext db) => _db = db;

        public async Task Consume(ConsumeContext<OrderCreatedEvent> context)
        {
            var evt = context.Message;
            Console.WriteLine($"[PaymentService.Consumer] Received OrderCreated: {evt.OrderId} {evt.CustomerName} {evt.Total}");
            var payment = new Payment(evt.OrderId, evt.Total);
            _db.Payments.Add(payment);
            await _db.SaveChangesAsync(context.CancellationToken);
            Console.WriteLine($"[PaymentService.Consumer] Payment created {payment.Id} for Order {payment.OrderId}"); 
        }
    }
}

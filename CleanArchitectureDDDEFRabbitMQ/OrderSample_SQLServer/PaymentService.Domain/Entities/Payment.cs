using System;

namespace PaymentService.Domain.Entities
{
    public class Payment
    {
        public Guid Id { get; private set; } = Guid.NewGuid();
        public Guid OrderId { get; private set; }
        public decimal Amount { get; private set; }
        public DateTime ProcessedAt { get; private set; } = DateTime.UtcNow;
        public string Status { get; private set; } = "Processed";

        protected Payment() { }

        public Payment(Guid orderId, decimal amount)
        {
            OrderId = orderId;
            Amount = amount;
        }
    }
}

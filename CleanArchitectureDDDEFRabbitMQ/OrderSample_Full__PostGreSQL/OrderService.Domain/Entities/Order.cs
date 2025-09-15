using System;

namespace OrderService.Domain.Entities
{
    public class Order
    {
        public Guid Id { get; private set; } = Guid.NewGuid();
        public string CustomerName { get; private set; } = string.Empty;
        public decimal Total { get; private set; }
        public DateTime CreatedAt { get; private set; } = DateTime.UtcNow;
        public string Status { get; private set; } = "Created";

        protected Order() { }

        public Order(string customerName, decimal total)
        {
            CustomerName = customerName;
            Total = total;
        }

        public void MarkPaid() => Status = "Paid";
    }
}

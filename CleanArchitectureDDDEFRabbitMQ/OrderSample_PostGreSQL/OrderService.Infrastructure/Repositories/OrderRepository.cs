using OrderService.Domain.Entities;
using OrderService.Domain.Interfaces;
using OrderService.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace OrderService.Infrastructure.Repositories
{
    public class OrderRepository : IOrderRepository
    {
        private readonly OrderDbContext _db;
        public OrderRepository(OrderDbContext db) => _db = db;

        public async Task AddAsync(Order order, CancellationToken cancellationToken = default)
        {
            _db.Orders.Add(order);
            await _db.SaveChangesAsync(cancellationToken);
        }

        public Task<Order?> GetByIdAsync(Guid id, CancellationToken cancellationToken = default) =>
            _db.Orders.AsNoTracking().FirstOrDefaultAsync(o => o.Id == id, cancellationToken);
    }
}

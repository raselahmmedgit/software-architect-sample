using PaymentService.Domain.Entities;
using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PaymentService.Domain.Interfaces;
using PaymentService.Infrastructure.Persistence;

namespace PaymentService.Infrastructure.Repositories
{
    public class PaymentRepository : IPaymentRepository
    {
        private readonly PaymentDbContext _db;
        public PaymentRepository(PaymentDbContext db) => _db = db;

        public async Task AddAsync(Payment payment, CancellationToken cancellationToken = default)
        {
            _db.Payments.Add(payment);
            await _db.SaveChangesAsync(cancellationToken);
        }

        public Task<Payment?> GetByIdAsync(Guid id, CancellationToken cancellationToken = default) =>
            _db.Payments.AsNoTracking().FirstOrDefaultAsync(p => p.Id == id, cancellationToken);
    }
}

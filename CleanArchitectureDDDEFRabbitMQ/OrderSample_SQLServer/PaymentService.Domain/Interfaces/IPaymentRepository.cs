using System;
using System.Threading;
using System.Threading.Tasks;
using PaymentService.Domain.Entities;

namespace PaymentService.Domain.Interfaces
{
    public interface IPaymentRepository
    {
        Task AddAsync(Payment payment, CancellationToken cancellationToken = default);
        Task<Payment?> GetByIdAsync(Guid id, CancellationToken cancellationToken = default);
    }
}

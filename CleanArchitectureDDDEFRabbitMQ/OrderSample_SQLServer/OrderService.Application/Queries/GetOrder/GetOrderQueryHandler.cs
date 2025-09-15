using MediatR;
using System.Threading;
using System.Threading.Tasks;
using OrderService.Domain.Interfaces;
using OrderService.Domain.Entities;

namespace OrderService.Application.Queries
{
    public class GetOrderQueryHandler : IRequestHandler<GetOrderQuery, Order?>
    {
        private readonly IOrderRepository _repo;
        public GetOrderQueryHandler(IOrderRepository repo) => _repo = repo;
        public Task<Order?> Handle(GetOrderQuery request, CancellationToken cancellationToken) =>
            _repo.GetByIdAsync(request.Id, cancellationToken);
    }
}

using MediatR;
using System;

namespace PaymentService.Application.Commands
{
    public record ProcessPaymentCommand(Guid OrderId, decimal Amount) : IRequest<Guid>;
}

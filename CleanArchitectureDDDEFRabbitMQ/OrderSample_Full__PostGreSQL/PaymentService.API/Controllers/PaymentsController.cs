using Microsoft.AspNetCore.Mvc;
using PaymentService.Domain.Interfaces;
using System;

namespace PaymentService.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PaymentsController : ControllerBase
    {
        private readonly IPaymentRepository _repo;
        public PaymentsController(IPaymentRepository repo) => _repo = repo;

        [HttpGet("{id:guid}")]
        public async Task<IActionResult> Get(Guid id)
        {
            var p = await _repo.GetByIdAsync(id);
            if (p is null) return NotFound();
            return Ok(p);
        }
    }
}

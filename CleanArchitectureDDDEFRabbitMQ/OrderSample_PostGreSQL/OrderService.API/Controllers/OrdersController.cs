using MediatR;
using Microsoft.AspNetCore.Mvc;
using OrderService.Application.Commands;
using OrderService.Application.Queries;
using System;

namespace OrderService.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrdersController : ControllerBase
    {
        private readonly IMediator _mediator;
        public OrdersController(IMediator mediator) => _mediator = mediator;

        [HttpPost]
        public async Task<IActionResult> Create([FromBody] CreateOrderCommand cmd)
        {
            var orderId = await _mediator.Send(cmd);
            return CreatedAtAction(nameof(Get), new { id = orderId }, new { id = orderId });
        }

        [HttpGet("{id:guid}")]
        public async Task<IActionResult> Get(Guid id)
        {
            var q = new GetOrderQuery(id);
            var order = await _mediator.Send(q);
            if (order is null) return NotFound();
            return Ok(order);
        }
    }
}

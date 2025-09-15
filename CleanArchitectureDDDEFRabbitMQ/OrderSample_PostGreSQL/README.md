# OrderSample - Clean Architecture + DDD + CQRS + RabbitMQ (ASP.NET Core)

## What is included
- OrderService.Domain (Entities, Interfaces)
- OrderService.Contracts (Integration event contracts)
- OrderService.Application (MediatR commands & handlers)
- OrderService.Infrastructure (EF Core DbContext + Repository)
- OrderService.API (ASP.NET Core Web API, MassTransit publisher)
- OrderService.Consumer (MassTransit consumer)
- Dockerfiles + docker-compose.yml

## Run with Docker Compose
1. Ensure Docker is running.
2. From the repository root:
   ```bash
   docker-compose up --build
   ```
3. API will be available at `http://localhost:5000` (Swagger in dev).
4. RabbitMQ management UI at `http://localhost:15672` (guest/guest).

## Test
POST to create an order:
```bash
curl -s -X POST http://localhost:5000/api/orders -H "Content-Type: application/json" -d '{"customerName":"Rasel","total":42.5}'
```

Then check the consumer logs; it should print the consumed event.

## Notes
- This is a sample skeleton for learning. Production hardening (security, TLS, retries, idempotency, migrations) is required.

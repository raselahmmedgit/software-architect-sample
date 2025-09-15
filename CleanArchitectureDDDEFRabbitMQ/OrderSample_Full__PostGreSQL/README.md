# Order + Payment Sample (Clean Architecture + DDD + CQRS + RabbitMQ) - Code First EF

This sample contains two independent microservices:
- OrderService (API + consumer + Postgres DB)
- PaymentService (API + consumer + separate Postgres DB)
- RabbitMQ for messaging

Both services use EF Core Code-First. Pre-generated migrations are included and each service calls `Database.Migrate()` on startup so schemas are created automatically.

## Run with Docker Compose
From repo root:
```bash
docker-compose up --build
```

API endpoints:
- OrderService API: http://localhost:5000
  - POST /api/orders { customerName, total }
- PaymentService API: http://localhost:6000
  - GET /api/payments/{id}

RabbitMQ management: http://localhost:15672 (guest/guest)
Postgres exposed ports: 5432 (orders), 5433 (payments) - only for convenience in dev.

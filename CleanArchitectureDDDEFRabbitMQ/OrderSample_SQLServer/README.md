# Order + Payment Sample (Single SQL Server - AppDb) - Code First EF

This sample contains two independent microservices:
- OrderService (API + consumer)
- PaymentService (API + consumer)
- RabbitMQ for messaging
- Single SQL Server (AppDb) - both services use the same database but each maintain their own DbContext and Migrations

## How it works
- OrderService saves Orders to AppDb (Orders table) and publishes OrderCreatedEvent.
- PaymentService listens to OrderCreatedEvent and stores Payments in AppDb (Payments table).
- Both services call `Database.Migrate()` on startup so their migrations are applied automatically to AppDb.

## Run with Docker Compose
From repo root:
```bash
docker-compose up --build
```

- Order API: http://localhost:5000
  - POST /api/orders { customerName, total }
- Payment API: http://localhost:6000
  - GET /api/payments/{paymentId}
- RabbitMQ UI: http://localhost:15672 (guest/guest)
- SQL Server: localhost:1433 (sa / Your_password123)


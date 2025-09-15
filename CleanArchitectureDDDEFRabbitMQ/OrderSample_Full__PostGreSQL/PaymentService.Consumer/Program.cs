using MassTransit;
using PaymentService.Consumer.Consumers;
using PaymentService.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
builder.Configuration.AddEnvironmentVariables();

var paymentsConn = builder.Configuration["PAYMENTS_POSTGRES_CONN"] ?? "Host=payment-postgres;Database=paymentsdb;Username=postgres;Password=password";
builder.Services.AddDbContext<PaymentDbContext>(options => options.UseNpgsql(paymentsConn));
builder.Services.AddMassTransit(x =>
{
    x.AddConsumer<OrderCreatedToPaymentConsumer>();
    x.UsingRabbitMq((ctx, cfg) =>
    {
        var rabbitHost = builder.Configuration["RABBITMQ__HOST"] ?? "rabbitmq";
        cfg.Host(rabbitHost, "/", h =>
        {
            h.Username(builder.Configuration["RABBITMQ__USER"] ?? "guest");
            h.Password(builder.Configuration["RABBITMQ__PASS"] ?? "guest");
        });

        cfg.ReceiveEndpoint("order-created-payment-queue", e =>
        {
            e.ConfigureConsumer<OrderCreatedToPaymentConsumer>(ctx);
        });
    });
});

var app = builder.Build();
using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<PaymentDbContext>();
    db.Database.Migrate();
}
app.Run();

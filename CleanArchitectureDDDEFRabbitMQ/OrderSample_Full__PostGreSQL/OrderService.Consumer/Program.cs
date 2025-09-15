using MassTransit;
using OrderService.Consumer.Consumers;

var builder = WebApplication.CreateBuilder(args);
builder.Configuration.AddEnvironmentVariables();

builder.Services.AddMassTransit(x =>
{
    x.AddConsumer<OrderCreatedConsoleConsumer>();
    x.UsingRabbitMq((ctx, cfg) =>
    {
        var rabbitHost = builder.Configuration["RABBITMQ__HOST"] ?? "rabbitmq";
        cfg.Host(rabbitHost, "/", h =>
        {
            h.Username(builder.Configuration["RABBITMQ__USER"] ?? "guest");
            h.Password(builder.Configuration["RABBITMQ__PASS"] ?? "guest");
        });

        cfg.ReceiveEndpoint("order-created-console-queue", e =>
        {
            e.ConfigureConsumer<OrderCreatedConsoleConsumer>(ctx);
        });
    });
});

var app = builder.Build();
app.Run();

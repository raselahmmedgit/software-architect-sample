using Microsoft.EntityFrameworkCore;
using PaymentService.Infrastructure.Persistence;
using PaymentService.Domain.Interfaces;
using PaymentService.Infrastructure.Repositories;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);
builder.Configuration.AddEnvironmentVariables();

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var conn = builder.Configuration["PAYMENTS_POSTGRES_CONN"] ?? "Host=payment-postgres;Database=paymentsdb;Username=postgres;Password=password";
builder.Services.AddDbContext<PaymentDbContext>(options => options.UseNpgsql(conn));

builder.Services.AddScoped<PaymentService.Domain.Interfaces.IPaymentRepository, PaymentService.Infrastructure.Repositories.PaymentRepository>();

builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssemblies(Assembly.Load("PaymentService.Application")));

builder.Services.AddMassTransit(x =>
{
    x.UsingRabbitMq((ctx, cfg) =>
    {
        var rabbitHost = builder.Configuration["RABBITMQ__HOST"] ?? "rabbitmq";
        cfg.Host(rabbitHost, "/", h =>
        {
            h.Username(builder.Configuration["RABBITMQ__USER"] ?? "guest");
            h.Password(builder.Configuration["RABBITMQ__PASS"] ?? "guest");
        });
    });
});

var app = builder.Build();

using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<PaymentDbContext>();
    db.Database.Migrate();
}

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.MapControllers();
app.Run();

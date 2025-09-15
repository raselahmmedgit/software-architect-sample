using Microsoft.EntityFrameworkCore;
using OrderService.Infrastructure.Persistence;
using OrderService.Domain.Interfaces;
using OrderService.Infrastructure.Repositories;
using System.Reflection;

var builder = WebApplication.CreateBuilder(args);
builder.Configuration.AddEnvironmentVariables();

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// Db
var conn = builder.Configuration["POSTGRES_CONN"] ?? "Host=postgres;Database=ordersdb;Username=postgres;Password=password";
builder.Services.AddDbContext<OrderDbContext>(options => options.UseNpgsql(conn));

// DI
builder.Services.AddScoped<IOrderRepository, OrderRepository>();

// MediatR
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssemblies(Assembly.Load("OrderService.Application")));

// MassTransit
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
    var db = scope.ServiceProvider.GetRequiredService<OrderDbContext>();
    try { db.Database.EnsureCreated(); } catch { }
}

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.MapControllers();
app.Run();

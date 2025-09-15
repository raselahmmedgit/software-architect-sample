using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using PaymentService.Infrastructure.Persistence;

namespace PaymentService.Infrastructure.Migrations
{
    [DbContext(typeof(PaymentDbContext))]
    partial class PaymentDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "7.0.8");

            modelBuilder.Entity("PaymentService.Domain.Entities.Payment", b =>
            {
                b.Property<Guid>("Id").ValueGeneratedOnAdd().HasColumnType("uniqueidentifier");
                b.Property<Guid>("OrderId").HasColumnType("uniqueidentifier");
                b.Property<decimal>("Amount").HasColumnType("decimal(18,2)");
                b.Property<DateTime>("ProcessedAt").HasColumnType("datetime2");
                b.Property<string>("Status").IsRequired().HasMaxLength(50).HasColumnType("nvarchar(50)");
                b.HasKey("Id");
                b.ToTable("Payments");
            });
        }
    }
}

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
                b.Property<Guid>("Id").ValueGeneratedOnAdd().HasColumnType("uuid");
                b.Property<Guid>("OrderId").HasColumnType("uuid");
                b.Property<decimal>("Amount").HasColumnType("numeric(18,2)");
                b.Property<DateTime>("ProcessedAt").HasColumnType("timestamp without time zone");
                b.Property<string>("Status").IsRequired().HasMaxLength(50).HasColumnType("character varying(50)");
                b.HasKey("Id");
                b.ToTable("Payments");
            });
        }
    }
}

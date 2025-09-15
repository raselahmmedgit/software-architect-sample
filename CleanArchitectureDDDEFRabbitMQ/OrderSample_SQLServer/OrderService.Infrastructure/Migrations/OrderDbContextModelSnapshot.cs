using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using OrderService.Infrastructure.Persistence;

namespace OrderService.Infrastructure.Migrations
{
    [DbContext(typeof(OrderDbContext))]
    partial class OrderDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "7.0.8");

            modelBuilder.Entity("OrderService.Domain.Entities.Order", b =>
            {
                b.Property<Guid>("Id").ValueGeneratedOnAdd().HasColumnType("uniqueidentifier");
                b.Property<string>("CustomerName").IsRequired().HasMaxLength(200).HasColumnType("nvarchar(200)");
                b.Property<decimal>("Total").HasColumnType("decimal(18,2)");
                b.Property<DateTime>("CreatedAt").HasColumnType("datetime2");
                b.Property<string>("Status").IsRequired().HasMaxLength(50).HasColumnType("nvarchar(50)");
                b.HasKey("Id");
                b.ToTable("Orders");
            });
        }
    }
}

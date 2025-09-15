using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
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
                b.Property<Guid>("Id").ValueGeneratedOnAdd().HasColumnType("uuid");
                b.Property<string>("CustomerName").IsRequired().HasMaxLength(200).HasColumnType("character varying(200)");
                b.Property<decimal>("Total").HasColumnType("numeric(18,2)");
                b.Property<DateTime>("CreatedAt").HasColumnType("timestamp without time zone");
                b.Property<string>("Status").IsRequired().HasMaxLength(50).HasColumnType("character varying(50)");
                b.HasKey("Id");
                b.ToTable("Orders");
            });
        }
    }
}

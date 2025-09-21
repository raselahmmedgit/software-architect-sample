namespace Shared.Contracts;

public record ProductCreated
{
    public int ProductId { get; init; }
    public string Name { get; init; } = null!;
    public decimal Price { get; init; }
}
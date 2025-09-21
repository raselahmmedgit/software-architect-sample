namespace Rapid.MicroApp.Core.Models
{
    public interface IEntityWithTypedId<TId>
    {
        TId Id { get; }
    }
}

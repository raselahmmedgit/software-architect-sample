﻿using System;

namespace Rapid.MicroApp.EntityModel.Extended
{
    /// <summary>
    /// Used to standardize soft deleting entities. Soft-delete entities are not actually deleted,
    /// marked as IsDeleted = true in the database, but can not be retrieved to the application.
    /// </summary>
    public interface ISoftDeletable
    {
        bool IsDeleted { get; set; }
    }

    /// <summary>
    /// An entity can implement this interface if <see cref="CreatedUtc"/> of this entity must be stored.
    /// <see cref="CreatedDate"/> is automatically set when saving Entity to database.
    /// </summary>
    public interface ICreationTrackable
    {
        DateTime? CreatedDate { get; set; }
    }

    /// <summary>
    /// An entity can implement this interface if <see cref="UpdatedUtc"/> of this entity must be stored.
    /// <see cref="UpdatedUtc"/> is automatically set when updating Entity.
    /// </summary>
    public interface IModificationTrackable
    {
        DateTime? UpdatedDate { get; set; }
    }

    /// <summary>
    /// An entity can implement this interface if <see cref="DeletedUtc"/> of this entity must be stored.
    /// <see cref="DeletedUtc"/> is automatically set when deleting Entity.
    /// </summary>
    public interface IDeletionTrackable
    {
        DateTime? DeletedDate { get; set; }
        string DeleteReason { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities which modification times must be tracked.
    /// Related properties automatically set when saving/updating/deleting Entity objects.
    /// </summary>
    public interface IFullTrackable : ICreationTrackable, IModificationTrackable, IDeletionTrackable
    {
    }
}

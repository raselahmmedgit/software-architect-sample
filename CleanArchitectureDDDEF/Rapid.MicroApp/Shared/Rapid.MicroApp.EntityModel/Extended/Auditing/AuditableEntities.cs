﻿namespace Rapid.MicroApp.EntityModel.Extended
{
    /// <summary>
    /// This interface is implemented by entities that is wanted
    /// to store creation information (who and when created).
    /// Creation time and creator user are automatically set when saving Entity to database.
    /// </summary>
    public interface ICreationAuditable<TUserId> : ICreationTrackable
        where TUserId : struct
    {
        TUserId CreatedBy { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities that is wanted
    /// to store creation information (who and when created).
    /// Creation time and creator user are automatically set when saving Entity to database.
    /// </summary>
    public interface ICreationAuditable : ICreationTrackable
    {
        bool? IsDeleted { get; set; }
        int? CreatedBy { get; set; }
    }
    /// <summary>
    /// This interface is implemented by entities that is wanted
    /// to store modification information (who and when modified lastly).
    /// Properties are automatically set when updating the Entity.
    /// </summary>
    public interface IModificationAuditable<TUserId> : IModificationTrackable
        where TUserId : struct
    {
        TUserId? UpdatedBy { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities that is wanted
    /// to store modification information (who and when modified lastly).
    /// Properties are automatically set when updating the Entity.
    /// </summary>
    public interface IModificationAuditable : IModificationTrackable
    {
        int? UpdatedBy { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities which wanted
    /// to store deletion information (who and when deleted).
    /// </summary>
    public interface IDeletionAuditable<TUserId> : IDeletionTrackable
        where TUserId : struct
    {
        TUserId? DeletedBy { get; set; }
        bool? IsDeleted { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities which wanted
    /// to store deletion information (who and when deleted).
    /// </summary>
    public interface IDeletionAuditable : IDeletionTrackable
    {
        int? DeletedBy { get; set; }
    }

    /// <summary>
    /// This interface is implemented by entities which must be audited.
    /// Related properties automatically set when saving/updating/deleting Entity objects.
    /// </summary>
    public interface IFullAuditable<TUserId> : IFullTrackable,
        ICreationAuditable<TUserId>, IModificationAuditable<TUserId>, IDeletionAuditable<TUserId>
        where TUserId : struct
    {
    }

    /// <summary>
    /// This interface is implemented by entities which must be audited.
    /// Related properties automatically set when saving/updating/deleting Entity objects.
    /// </summary>
    public interface IFullAuditable : IFullTrackable,
        ICreationAuditable, IModificationAuditable, IDeletionAuditable
    {
    }

}

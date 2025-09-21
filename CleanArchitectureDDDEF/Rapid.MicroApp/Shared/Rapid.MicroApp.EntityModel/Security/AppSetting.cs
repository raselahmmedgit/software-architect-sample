﻿using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;

namespace Rapid.MicroApp.EntityModel.Security
{
    public class AppSetting : IBaseEntityModel, IChangeTrackerEntity, IDeleteTrackerEntity
    {
        [Key]
        public int AppSettingId { get; set; }
        [StringLength(256)]
        public string AppSettingName { get; set; }
        public string? Key { get; set; }
        public string? Value { get; set; }

        public bool IsActive { get; set; }
        public DateTime CreatedDate { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string? UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string? DeletedBy { get; set; }
        public string? DeleteReason { get; set; }
    }
}
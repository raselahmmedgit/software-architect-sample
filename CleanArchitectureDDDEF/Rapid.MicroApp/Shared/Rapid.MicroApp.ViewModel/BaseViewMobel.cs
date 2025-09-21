﻿namespace Rapid.MicroApp.ViewModel
{
    public class BaseViewMobel
    {
        public BaseViewMobel()
        {
            CreatedDate = DateTime.Now;
        }
        public DateTime CreatedDate { get; set; }
        public string? CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }

    public class BaseViewMobel<TModel> : BaseViewMobel
    {
        public TModel KeyValue { get; set; }
        public bool Success { get; set; }
        public bool HasRecord { get; set; }
        public string Message { get; set; }
    }
}

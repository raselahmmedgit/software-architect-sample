﻿namespace Rapid.MicroApp.ViewModel.Security
{
    public class ApplicationRoleEditViewModel : BaseViewMobel
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string NormalizedName { get; set; }
        public string ConcurrencyStamp { get; set; }

        public bool IsActive { get; set; }
    }
}

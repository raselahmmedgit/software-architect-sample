using System.ComponentModel.DataAnnotations;

namespace Rapid.MicroApp.ViewModel.Security
{
    public partial class ForgotPasswordViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}

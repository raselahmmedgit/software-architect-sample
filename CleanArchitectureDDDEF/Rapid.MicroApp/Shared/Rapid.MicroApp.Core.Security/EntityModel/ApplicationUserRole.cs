using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace Rapid.MicroApp.Core.Security
{
    /// <summary>
    /// Application User custom model. Extended from Identity User.
    /// </summary>
    public class ApplicationUserRole : IdentityUserRole<string>
    {

    }
}

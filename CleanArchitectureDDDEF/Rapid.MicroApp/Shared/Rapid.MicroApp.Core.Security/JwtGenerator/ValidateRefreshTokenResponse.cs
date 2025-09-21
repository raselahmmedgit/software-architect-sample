using Rapid.MicroApp.Core.Security.ViewModel;

namespace Rapid.MicroApp.Core.Security.JwtGenerator
{
    /// <summary>
    /// Jwt token validation response
    /// </summary>
    public class ValidateRefreshTokenResponse : BaseResponse
    {
        public string UserId { get; set; }
    }
}

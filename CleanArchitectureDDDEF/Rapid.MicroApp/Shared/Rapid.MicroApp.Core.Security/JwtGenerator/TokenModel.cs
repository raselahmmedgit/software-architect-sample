using System;
using System.IdentityModel.Tokens.Jwt;

namespace Rapid.MicroApp.Core.Security.JwtGenerator
{
    /// <summary>
    /// Jwt Token Model
    /// </summary>
    public class TokenModel
    {
        public JwtSecurityToken AccessToken { get; set; }
        public RefreshTokenModel RefreshTokenModel { get; set; }
        public DateTime? ExpiryDate { get; set; }
        public DateTime AddedDate { get; set; }
    }
}

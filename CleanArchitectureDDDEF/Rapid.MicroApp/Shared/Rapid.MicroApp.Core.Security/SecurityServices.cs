using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Rapid.MicroApp.Core.Security.JwtGenerator;

namespace Rapid.MicroApp.Core.Security
{
    /// <summary>
    /// Dependency Injection extention for Security Services.
    /// </summary>
    public static class SecurityServices
    {
        public static void RegisterSecurityServices(this IServiceCollection services, IConfiguration configuration)
        {
            //services.AddTransient<IAppComponentRepository, AppComponentRepository>();
            services.AddTransient<ITokenGenerator, TokenGenerator>();
           
            services.AddDbContext<AppIdentityDbContext>(options =>
                 options.UseSqlServer(
                     configuration.GetConnectionString("dev")
                )
            );

            //services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddIdentity<ApplicationUser, ApplicationRole>()
                 .AddEntityFrameworkStores<AppIdentityDbContext>()
                 .AddDefaultTokenProviders();

            services.AddScoped<Microsoft.AspNetCore.Identity.IUserClaimsPrincipalFactory<ApplicationUser>, AppClaimsPrincipalFactory>();


            services.ConfigureApplicationCookie(options =>
            {
                // Cookie settings
                options.Cookie.HttpOnly = true;
                options.ExpireTimeSpan = TimeSpan.FromDays(60);
                options.LoginPath = new Microsoft.AspNetCore.Http.PathString("/Identity/Account/Login/");
                options.SlidingExpiration = false;
            });

        }

        public static void RegisterSecurityServicesAPI(this IServiceCollection services, IConfiguration configuration)
        {
            //services.AddTransient<IAppComponentRepository, AppComponentRepository>();
            services.AddTransient<ITokenGenerator, TokenGenerator>();
            
            services.AddDbContext<AppIdentityDbContext>(options =>
                 options.UseSqlServer(
                     configuration.GetConnectionString("dev")
                )
            );

            //services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddIdentity<ApplicationUser, ApplicationRole>()
                 .AddEntityFrameworkStores<AppIdentityDbContext>()
                 .AddDefaultTokenProviders();

            services.AddScoped<Microsoft.AspNetCore.Identity.IUserClaimsPrincipalFactory<ApplicationUser>, AppClaimsPrincipalFactory>();


            services.ConfigureApplicationCookie(options =>
            {
                // Cookie settings
                options.Cookie.HttpOnly = true;
                options.ExpireTimeSpan = TimeSpan.FromDays(60);
                options.LoginPath = new Microsoft.AspNetCore.Http.PathString("/Identity/Account/Login/");
                options.SlidingExpiration = true;
            });

        }
    }
}

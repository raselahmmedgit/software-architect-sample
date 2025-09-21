using Microsoft.EntityFrameworkCore;
using Rapid.MicroApp.Core.Utility;

namespace Rapid.MicroApp.Core.Security
{
    public static class AppIdentityDbContextInitializer
    {
        public static bool CreateIfNotExists()
        {
            using (var context = new AppIdentityDbContext())
            {
                var canConnect = context.Database.CanConnect();
                if (canConnect)
                {
                    //context.Database.Migrate();

                    if (AppConstants.IsDatabaseCreated)
                    {
                        //if (AppConstants.IsMasterDataInserted == false)
                        //{
                        //    ModelBuilder modelBuilder = new ModelBuilder();
                        //    AppIdentityDbContextSeedData.SeedData(modelBuilder);
                        //}

                        return true;
                    }
                    return false;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}

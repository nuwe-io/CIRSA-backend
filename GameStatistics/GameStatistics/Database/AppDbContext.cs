using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;

using GameStatistics.Models;

namespace GameStatistics.Database
{
    public class AppDbContext : DbContext 
    {
        protected readonly IConfiguration Configuration;

        public AppDbContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder opts) 
        {
            opts.UseNpgsql(Configuration.GetConnectionString("DefaultConnection"));
        }

        public DbSet<GameData> GamesData { get; set;}

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<GameData>().ToTable("GamesData");
            modelBuilder.Seed();

        }
    }

    public static class ModelBuilderExtensions
    {
        public static void Seed (this ModelBuilder modelBuilder)
        {
            Console.WriteLine("Seeding...");
            using (StreamReader r = new StreamReader("mock_data.json"))
            {
                string json = r.ReadToEnd();
                List<GameData>? items = JsonConvert.DeserializeObject<List<GameData>>(json);

                if (items == null || !items.Any())
                    return;

                foreach (GameData el in items)
                {

                    modelBuilder.Entity<GameData>().HasData(
                            new GameData
                            (
                             Guid.NewGuid(),
                             el.GameName,
                             el.Category,
                             el.TotalBets,
                             el.TotalWins,
                             el.AverageBetAmount,
                             el.PopularityScore,
                             DateTime.UtcNow
                            )
                            );
                }
            }
        }
    }
}

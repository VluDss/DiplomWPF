using Microsoft.EntityFrameworkCore;
using WpfApp2.Model;

namespace WpfApp2.Common
{
    internal class ApplicationContext : DbContext
    {
        public DbSet<ReferenceBook> ReferenceBooks { get; set; } = null!;
        public DbSet<Topic> Topics { get; set; } = null!;
        public DbSet<Member> Members { get; set; } = null!;
        public DbSet<Race> Races { get; set; } = null!;
        public DbSet<RaceMember> RaceMembers { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlite("Data Source = database.db");
        }
    }
}

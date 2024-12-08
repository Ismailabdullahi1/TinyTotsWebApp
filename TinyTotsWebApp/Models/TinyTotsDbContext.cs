using System.Data.Entity;

namespace TinyTotsWebApp.Models
{
    public class TinyTotsDbContext : DbContext
    {
        public DbSet<TinyTots> TinyTotsTable { get; set; }
    }
}

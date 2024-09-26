using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Elixir.Models;

namespace Elixir.Data
{
    public class ElixirContext : DbContext
    {
        internal readonly object Customers;

        public ElixirContext (DbContextOptions<ElixirContext> options)
            : base(options)
        {
        }

        public DbSet<Elixir.Models.User> User { get; set; } = default!;
        public DbSet<Elixir.Models.Brand> Brand { get; set; } = default!;
        public DbSet<Elixir.Models.Category> Category { get; set; } = default!;
        public DbSet<Elixir.Models.Product> Product { get; set; } = default!;
        public DbSet<Elixir.Models.Customer> Customer { get; set; } = default!;
        public DbSet<Elixir.Models.Service> Service { get; set; } = default!;
        public DbSet<Elixir.Models.Employee> Employee { get; set; } = default!;
    }
}

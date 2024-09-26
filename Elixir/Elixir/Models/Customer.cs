using System.ComponentModel.DataAnnotations;

namespace Elixir.Models
{
    public class Customer
    {
        [Key]
        [Required]
        public int MaKH { get; set; }
        [Required]

        [StringLength(255)]
        public string? TenKH { get; set; }
        [Required]

        [StringLength(15)]
        public string? SoDienThoai { get; set; }
        [Required]

        [StringLength(255)]
        public string? Email { get; set; }
        [Required]

        [StringLength(255)]
        public string? DiaChi { get; set; }
    }
}

using System.ComponentModel.DataAnnotations;

namespace Elixir.Models
{
    public class Employee
    {
        [Key]
        [Required]
        public int MaNV { get; set; }
        [Required]

        [StringLength(255)]
        public string? TenNV { get; set; }
        [Required]

        [StringLength(15)]
        public string? SoDienThoai { get; set; }
        [Required]

        [StringLength(50)]
        public string? CaLamViec { get; set; }

        public enum ChucVu
        {
            BaoVe,
            VeSinh,
            QuanLy,
        }

        public ChucVu? CV { get; set; }

        public ICollection<Service>? Services { get; set; }
    }
}

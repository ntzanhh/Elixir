using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Elixir.Models
{
    public class Service
    {
        [Key]
        public int MaDichVu { get; set; }
        [Required]

        [StringLength(255)]
        public string? TenDichVu { get; set; }

        [Required]

        public decimal? GiaDichVuHangThang { get; set; }
        [Required]


        [ForeignKey("MaNV")]

        public int MaNV { get; set; }

    }
}

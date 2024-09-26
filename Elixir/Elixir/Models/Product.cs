using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Elixir.Models
{
    public class Product
    {
        [Key]
        public int MaMatBang { get; set; }
        [Required]
        [StringLength(255)]
        public string? ViTri { get; set; }

        public decimal? DienTich { get; set; }

        public decimal? GiaThueHangThang { get; set; }

        public enum TrangThai
        {
            DangThue,
            Trong,
            DangBaoTri,
        }

        public TrangThai? TT {  get; set; }

        [StringLength(50)]
        public string? ProductImage { get; set; }

        [ForeignKey("CategoryId")]

        public int CategoryId { get; set; }

        public Category? Category { get; set; }

        [ForeignKey("BrandId")]

        public int BrandId { get; set; }

        public Brand? Brand { get; set; }
    }
}

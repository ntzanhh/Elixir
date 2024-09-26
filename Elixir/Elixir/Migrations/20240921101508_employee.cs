using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Elixir.Migrations
{
    /// <inheritdoc />
    public partial class employee : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "EmployeeMaNV",
                table: "Service",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Employee",
                columns: table => new
                {
                    MaNV = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TenNV = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    SoDienThoai = table.Column<string>(type: "nvarchar(15)", maxLength: 15, nullable: false),
                    CaLamViec = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CV = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employee", x => x.MaNV);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Service_EmployeeMaNV",
                table: "Service",
                column: "EmployeeMaNV");

            migrationBuilder.AddForeignKey(
                name: "FK_Service_Employee_EmployeeMaNV",
                table: "Service",
                column: "EmployeeMaNV",
                principalTable: "Employee",
                principalColumn: "MaNV");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Service_Employee_EmployeeMaNV",
                table: "Service");

            migrationBuilder.DropTable(
                name: "Employee");

            migrationBuilder.DropIndex(
                name: "IX_Service_EmployeeMaNV",
                table: "Service");

            migrationBuilder.DropColumn(
                name: "EmployeeMaNV",
                table: "Service");
        }
    }
}

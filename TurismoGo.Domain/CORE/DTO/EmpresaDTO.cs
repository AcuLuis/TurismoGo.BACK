using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TurismoGo.Domain.CORE.DTO
{
    public class EmpresaDTO
    {
        public int IdEmpresa { get; set; }

        public string NombreEmpresa { get; set; } = null!;

        public string Direccion { get; set; } = null!;

        public string Telefono { get; set; } = null!;

        public string CorreoElectronico { get; set; } = null!;

        public string Contrasena { get; set; } = null!;

        public DateOnly FechaRegistro { get; set; }

    }
    public class EmpresaCreateDTO
    {
        public string NombreEmpresa { get; set; } = null!;

        public string Direccion { get; set; } = null!;

        public string Telefono { get; set; } = null!;

        public string CorreoElectronico { get; set; } = null!;

        public string Contrasena { get; set; } = null!;

    }
    public class EmpresaSimpleDTO
    {
        public string NombreEmpresa { get; set; } = null!;

    }
}

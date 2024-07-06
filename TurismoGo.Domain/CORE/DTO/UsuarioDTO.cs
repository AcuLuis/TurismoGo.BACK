using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TurismoGo.Domain.CORE.DTO
{
    public class UsuarioDTO
    {
        public int IdUsuario { get; set; }

        public string Nombre { get; set; } = null!;

        public string Apellidos { get; set; } = null!;

        public string CorreoElectronico { get; set; } = null!;

        public int IdRol { get; set; }

        public DateOnly FechaRegistro { get; set; }

    }
    public class UsuarioCreateDTO
    {
        public string Nombre { get; set; } = null!;

        public string Apellidos { get; set; } = null!;

        public string CorreoElectronico { get; set; } = null!;

        public int IdRol { get; set; }

        public string Contrasena { get; set; } = null!;

    }

    public class UsuarioSimpleDTO
    {
        public string Nombre { get; set; } = null!;
        public string Apellidos { get; set; } = null!;
    }
}

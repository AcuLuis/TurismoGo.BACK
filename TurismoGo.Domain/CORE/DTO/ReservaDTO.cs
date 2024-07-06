using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TurismoGo.Domain.CORE.DTO
{
    public class ReservaDTO
    {
        public ActividadDTO Actividad { get; set; }
    }

    public class ReservaSimpleDTO
    {
        public string Estado { get; set; } = null!;
        public UsuarioSimpleDTO Usuario { get; set; } = null!;
        public ActividadSimpleDTO Actividad { get; set; } = null!;
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TurismoGo.Domain.CORE.DTO
{
    public class ActividadDTO
    {
        public string NombreActividad { get; set; } = null!;

        public string Descripcion { get; set; } = null!;

        public string Destino { get; set; } = null!;

        public DateOnly FechaInicio { get; set; }

        public DateOnly FechaFin { get; set; }
    }

    public class ActividadSimpleDTO
    {
        public string NombreActividad { get; set; } = null!;
    }
}

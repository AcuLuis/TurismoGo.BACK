using System;
using System.Collections.Generic;

namespace TurismoGo.Domain.CORE.Entity;

public partial class Usuario
{
    public int IdUsuario { get; set; }

    public string Nombre { get; set; } 

    public string Apellidos { get; set; } 

    public string CorreoElectronico { get; set; } 

    public string Contrasena { get; set; } 

    public int IdRol { get; set; }

    public DateOnly FechaRegistro { get; set; }

    public virtual Rol IdRolNavigation { get; set; } 

    public virtual ICollection<Reserva> Reserva { get; set; } = new List<Reserva>();

    public virtual ICollection<Reseña> Reseña { get; set; } = new List<Reseña>();
}

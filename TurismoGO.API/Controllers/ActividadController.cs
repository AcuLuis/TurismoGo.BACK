using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TurismoGo.Domain.CORE.Entity;
using TurismoGo.Domain.CORE.Interfaces;
using System.Threading.Tasks;

namespace TurismoGO.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ActividadController : ControllerBase
    {
        private readonly IActividadRepository _actividadRepository;

        public ActividadController(IActividadRepository actividadRepository)
        {
            _actividadRepository = actividadRepository;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var actividades = await _actividadRepository.GetActividades();
            return Ok(actividades);
        }

        [HttpGet("GetById")]
        public async Task<IActionResult> GetActividadById([FromQuery] int id)
        {
            var actividad = await _actividadRepository.GetActividadById(id);
            if (actividad == null)
                return NotFound(new { message = $"Actividad con id {id} no encontrada." });
            return Ok(actividad);
        }

        [HttpPost("Create")]
        public async Task<IActionResult> CreateActividad([FromBody] Actividad actividad)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState); // Devuelve errores de validación del modelo si existen
            }

            await _actividadRepository.InsertActividad(actividad);
            return CreatedAtAction(nameof(GetActividadById), new { id = actividad.IdActividad }, actividad);
        }

        [HttpPut("Update")]
        public async Task<IActionResult> UpdateActividad([FromBody] Actividad actividad)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState); // Devuelve errores de validación del modelo si existen
            }

            bool result = await _actividadRepository.UpdateActividad(actividad);
            if (!result)
                return BadRequest(new { message = $"Error al actualizar la actividad con id {actividad.IdActividad}." });
            return Ok(actividad);
        }

        [HttpDelete("Delete/{id}")]
        public async Task<IActionResult> DeleteActividad(int id)
        {
            bool result = await _actividadRepository.DeleteActividad(id);
            if (!result)
                return NotFound(new { message = $"Actividad con id {id} no encontrada." });
            return Ok(new { message = $"Actividad con id {id} eliminada exitosamente." });
        }
    }
}

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TurismoGo.Domain.CORE.DTO;
using TurismoGo.Domain.CORE.Entity;
using TurismoGo.Domain.CORE.Interfaces;

namespace TurismoGO.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        private readonly IUsuarioRepository _usuarioRepository;

        public UsuarioController(IUsuarioRepository usuarioRepository)
        {
            _usuarioRepository = usuarioRepository;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var usuarios = await _usuarioRepository.GetUsuarios();
            return Ok(usuarios);
        }

        [HttpGet("GetById")]
        public async Task<IActionResult> GetUsuarioById([FromQuery] int id)
        {
            var usuario = await _usuarioRepository.GetUsuarioById(id);
            return Ok(usuario);
        }

        [HttpPost("Create")]
        public async Task<IActionResult> CreateUsuario([FromBody] UsuarioCreateDTO usuario)
        {
            var dateNow = DateOnly.FromDateTime(DateTime.Now);
            var u =new Usuario {Apellidos = usuario.Apellidos, CorreoElectronico = usuario.CorreoElectronico, FechaRegistro = dateNow, IdRol = usuario.IdRol, Nombre = usuario.Nombre, Contrasena=usuario.Contrasena };
            var estado = await _usuarioRepository.InsertUsuario(u);
            if (estado)
            {
                return Ok(usuario);
            }   
            return BadRequest();

        }

        [HttpPut("Update")]
        public async Task<IActionResult> UpdateUsuario([FromBody] Usuario usuario)
        {
            bool result = await _usuarioRepository.UpdateUsuario(usuario);
            if(!result)
                return BadRequest();
            return Ok(usuario);
        }

        [HttpDelete("Delete/{id}")]
        public async Task<IActionResult> DeleteUsuario(int id)
        {
            bool result = await _usuarioRepository.DeleteUsuario(id);
            if (!result)
                return BadRequest();
            return Ok(id);
        }
        [HttpPost("Login/")]
        public async Task<IActionResult> Login(string correo, string contraseña, int tipoUsuario)
        {
            var u=await _usuarioRepository.LoginUser(correo,contraseña,tipoUsuario);
            if (u == null)
            {
                return BadRequest();
            }
            return Ok(u);
        }
    }
}

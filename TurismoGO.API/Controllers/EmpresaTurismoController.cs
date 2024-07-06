using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using TurismoGo.Domain.CORE.DTO;
using TurismoGo.Domain.CORE.Entity;
using TurismoGo.Domain.CORE.Interfaces;
using TurismoGo.Domain.Infrastructure.Repositories;

namespace TurismoGO.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmpresaTurismoController : ControllerBase
    {
        private readonly IEmpresaTurismoRepository _empresaTurismoRepository;

        public EmpresaTurismoController(IEmpresaTurismoRepository empresaTurismoRepository)
        {
            _empresaTurismoRepository = empresaTurismoRepository;
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            var empresas = await _empresaTurismoRepository.GetEmpresasTurismo();
            return Ok(empresas);
        }

        [HttpGet("GetById")]
        public async Task<IActionResult> GetEmpresaById([FromQuery] int id)
        {
            var empresa = await _empresaTurismoRepository.GetEmpresaTurismoById(id);
            if (empresa == null)
                return NotFound();
            return Ok(empresa);
        }

        [HttpPost("Create")]
        public async Task<IActionResult> CreateEmpresa([FromBody] EmpresaCreateDTO empresa)
        {
            var dateNow = DateOnly.FromDateTime(DateTime.Now);
            var u = new EmpresaTurismo { Direccion = empresa.Direccion, Contrasena = empresa.NombreEmpresa, CorreoElectronico = empresa.CorreoElectronico, NombreEmpresa = empresa.NombreEmpresa, Telefono = empresa.Telefono,FechaRegistro=dateNow };
            await _empresaTurismoRepository.InsertEmpresaTurismo(u);
            return Ok(empresa);
        }

        [HttpPut("Update")]
        public async Task<IActionResult> UpdateEmpresa([FromBody] EmpresaTurismo empresa)
        {
            bool result = await _empresaTurismoRepository.UpdateEmpresaTurismo(empresa);
            if (!result)
                return BadRequest();
            return Ok(empresa);
        }

        [HttpDelete("Delete/{id}")]
        public async Task<IActionResult> DeleteEmpresa(int id)
        {
            bool result = await _empresaTurismoRepository.DeleteEmpresaTurismo(id);
            if (!result)
                return BadRequest();
            return Ok(id);
        }
        [HttpPost("Login/")]
        public async Task<IActionResult> Login(string correo, string contraseña)
        {
            var u = await _empresaTurismoRepository.LoginEmpresa(correo, contraseña);
            if (u == null)
            {
                return BadRequest();
            }
            return Ok(u);
        }
    }
}

using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TurismoGo.Domain.CORE.DTO;
using TurismoGo.Domain.CORE.Entity;
using TurismoGo.Domain.CORE.Interfaces;
using TurismoGo.Domain.Infrastructure.Data;

namespace TurismoGo.Domain.Infrastructure.Repositories
{
    public class EmpresaTurismoRepository : IEmpresaTurismoRepository
    {
        private readonly TurismoDbContext _context;

        public EmpresaTurismoRepository(TurismoDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<EmpresaTurismo>> GetEmpresasTurismo()
        {
            return await _context.EmpresaTurismo.ToListAsync();
        }

        public async Task<EmpresaTurismo> GetEmpresaTurismoById(int id)
        {
            var empresaTurismo = await _context.EmpresaTurismo.FindAsync(id);
            if (empresaTurismo == null)
            {
                throw new Exception("EmpresaTurismo not found");
            }
            return empresaTurismo;
        }

        public async Task<bool> InsertEmpresaTurismo(EmpresaTurismo empresaTurismo)
        {
            await _context.EmpresaTurismo.AddAsync(empresaTurismo);

            return await _context.SaveChangesAsync()>0;
        }

        public async Task<bool> UpdateEmpresaTurismo(EmpresaTurismo empresaTurismo)
        {
            _context.EmpresaTurismo.Update(empresaTurismo);
            int countRows = await _context.SaveChangesAsync();
            return countRows > 0;
        }

        public async Task<bool> DeleteEmpresaTurismo(int id)
        {
            var empresaTurismo = await _context.EmpresaTurismo.FindAsync(id);
            if (empresaTurismo == null)
            {
                return false;
            }
            _context.EmpresaTurismo.Remove(empresaTurismo);
            int countRows = await _context.SaveChangesAsync();
            return countRows > 0;
        }
        public async Task<EmpresaDTO> LoginEmpresa(string correo, string contraseña)
        {
            var usuario = await _context.EmpresaTurismo.Where(x => x.CorreoElectronico == correo && x.Contrasena == contraseña).FirstOrDefaultAsync();
            if (usuario == null)
            {
                return null;
            }
            return new EmpresaDTO {Direccion=usuario.Direccion, Contrasena=usuario.NombreEmpresa,CorreoElectronico=usuario.CorreoElectronico, FechaRegistro=usuario.FechaRegistro,IdEmpresa=usuario.IdEmpresa,NombreEmpresa=usuario.NombreEmpresa,Telefono=usuario.Telefono };
        }
    }

}

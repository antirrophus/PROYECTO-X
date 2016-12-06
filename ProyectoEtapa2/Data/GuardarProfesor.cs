using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Data
{
    public class GuardarProfesor
    {
        public Profesor GuardaProfe(String NumEmpleado, String Nombres, String Apellidos, String Telefono, String Cedula, String Correo, String Genero, DateTime FechaIngreso, String NivelAcad, String TipoCarga, String IDDept, String TipoContrato, int? Cargo, int? Usuario)
        { 
            var conectData = new HIGADDv1Entities4();

            if(conectData.SP_GuardarProfe1(NumEmpleado ,Nombres, Apellidos, Telefono, Cedula, Correo, Genero, FechaIngreso, NivelAcad, TipoCarga, IDDept, TipoContrato, Cargo, Usuario) > 0)
            {
                return conectData.SP_VerProfe1().FirstOrDefault();
            }
            return conectData.SP_VerProfe1().FirstOrDefault();
        }
        public string SP_GuardarProfe1 { get; set; }

        //internal Profesor GuardaProfe(string NumEmpleado, string Nombre, string Apellido, string Telefono, string Cedula, string Correo, string Genero, DateTime FechaIngreso, string NivelAcad, string TipoCarga, string IDDept, string TipoContrato, int Cargo, int? Usuario)
        //{
        //    throw new NotImplementedException();
        //}

        //internal Profesor GuardaProfe(string NumEmpleado, string Nombre, string Apellido, string Telefono, string Cedula, string Correo, string Genero, DateTime FechaIngreso, string NivelAcad, string TipoCarga, string IDDept, string TipoContrato, int? Cargo, int? Usuario)
        //{
        //    throw new NotImplementedException();
        //}
    }
}
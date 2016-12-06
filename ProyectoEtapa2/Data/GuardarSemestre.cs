using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Data
{
    public class GuardarSemestre
    {
        public Semestre GuardarElSemestre(DateTime fechaini, DateTime fechafin, String nombre, String feriado, String anioacad)
        {
            var conectDatos = new HIGADDv1Entities4();

            if (conectDatos.SP_GuardarSemestre1(fechaini, fechafin, nombre, feriado, anioacad) > 0)
            {
                return conectDatos.SP_VerSemestre1().FirstOrDefault();
            }
            return conectDatos.SP_VerSemestre1().FirstOrDefault();
        }

        public string SP_GuardarSemestre1 { get; set; }
    }
}
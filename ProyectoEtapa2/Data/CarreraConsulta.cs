using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Data
{
    public class CarreraConsulta
    {
         public Carreras VerCarrera()
         {
             var conecDatos = new HIGADDv1Entities4();

             return conecDatos.SP_VerCarreras1().FirstOrDefault();
         }
     }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Data
{
    public class BuscarProfe
    {
        public Profesor BuscarProf(String IDProfe)
        {
            var dataConect = new HIGADDv1Entities4();

            return dataConect.SP_BuscarProfe1(IDProfe).FirstOrDefault();
        }
    }
}
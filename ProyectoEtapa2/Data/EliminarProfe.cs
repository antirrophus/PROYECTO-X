using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Data
{
    public class EliminarProfe
    {
        public Profesor EliminarPrf(String IDProf)
        {
            var dataConect = new HIGADDv1Entities4();

            if(dataConect.SP_EliminarProfe1(IDProf) > 0)
            {
                return dataConect.SP_VerProfe1().FirstOrDefault();
            }
            return dataConect.SP_VerProfe1().FirstOrDefault();
        }
    }
}
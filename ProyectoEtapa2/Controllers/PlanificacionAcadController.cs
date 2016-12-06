using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoEtapa2.Controllers
{
    public class PlanificacionAcadController : Controller
    {
        //
        // GET: /PlanificacionAcad/

        public ActionResult PlanifAcadMain()
        {
            return View("PlanificacionAcad");
        }

        public ActionResult CreaCargAcademi()
        {
            return View("2PlAc1");
        }

        public ActionResult CreaPlanAcalen()
        {
            return View("2PlAc2");
        }

        public ActionResult PlaniHoraria()
        {
            return View("2PlAc3");
        }

        public ActionResult PDC()
        {
            return View("2PlAc4");
        }

    }
}

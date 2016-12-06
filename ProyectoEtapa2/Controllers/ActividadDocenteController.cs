using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoEtapa2.Controllers
{
    public class ActividadDocenteController : Controller
    {
        //
        // GET: /ActividadDocente/

        public ActionResult ActivDocMain()
        {
            return View("ActividadDocente");
        }

        public ActionResult POI()
        {
            return View("3NFPlan1");
        }

        public ActionResult ICCC()
        {
            return View("3NFPlan2");
        }

        public ActionResult IAGCAS1()
        {
            return View("3NFPlan3P1");
        }

        public ActionResult IAGCAS2()
        {
            return View("3NFPlan3P2");
        }

        public ActionResult RP()
        {
            return View("3RP4");
        }
    }
}

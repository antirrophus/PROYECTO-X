using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProyectoEtapa2.Data;

namespace ProyectoEtapa2.Controllers
{
    public class AdministracionController : Controller
    {
        //
        // GET: /Administracion/

        public ActionResult Administrar()
        {
            return View("Administrar");
        }

        public ActionResult AdCreacionSemestre()
        {

            return View("1AdCreacionSemestre");

        }

        public ActionResult GuardarSem(DateTime FechaIni, DateTime FechaFin, string NombreSemestre, string DiasFeriados, string AnioAcad)
        {

            Semestre modeloSemestre = new Semestre();

            modeloSemestre = new GuardarSemestre().GuardarElSemestre(FechaIni, FechaFin, NombreSemestre, DiasFeriados, AnioAcad);

            return View("1AdCreacionSemestre");
        }

        public ActionResult AdProfesor()
        {
            return View("1AdProfesor");
        }

        public ActionResult GuardarProf(String NumEmpleado, String Nombre, String Apellido, String Telefono, String Cedula, String Correo, String Genero, DateTime FechaIngreso, String NivelAcad, String TipoCarga, String IDDept, String TipoContrato, int? Cargo, int? Usuario)
        {
            Profesor modeloProfe = new Profesor();

            modeloProfe = new GuardarProfesor().GuardaProfe(NumEmpleado, Nombre, Apellido, Telefono, Cedula, Correo, Genero, FechaIngreso, NivelAcad, TipoCarga, IDDept, TipoContrato, Cargo, Usuario);

            return View("1SubAdProfAgregar");
        }

        public ActionResult AgregarProf()
        {
            return View("1SubAdProfAgregar");
        }

        public ActionResult ActualizarProf()
        {
            return View("1SubAdProfActualizar");
        }

        public ActionResult ActualizarProfe(String IDProfe)
        {
            Profesor modeloProf = new Profesor();

            modeloProf = new BuscarProfe().BuscarProf(IDProfe);

            return View("1SubAdProfActualizar", modeloProf);
        }

        public ActionResult EliminarProf()
        {
            return View("1SubAdProfEliminar");
        }

        public ActionResult EliminProfe(String IDProfe)
        {
            Profesor modeloProf = new Profesor();

            modeloProf = new EliminarProfe().EliminarPrf(IDProfe);

            return View("1SubAdProfEliminar");
        }

        public ActionResult AdCreaGrupo()
        {
            return View("1AdCG");
        }

        public ActionResult AdPlanAsignatura()
        {
            return View("1AdPlAs");
        }

        public ActionResult AdProAnalitAsig()
        {
            Carreras modeloCarreras = new Carreras();

            modeloCarreras = new CarreraConsulta().VerCarrera();

            return View("1AdPrAnAs", modeloCarreras);
        }


        public string SP_GuardarSemestre1 { get; set; }
    }
}

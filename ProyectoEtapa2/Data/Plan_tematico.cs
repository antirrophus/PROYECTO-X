//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoEtapa2.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Plan_tematico
    {
        public int id_plantema { get; set; }
        public string unidades { get; set; }
        public string nombre { get; set; }
        public string clase { get; set; }
        public string clase_pract { get; set; }
        public string lab { get; set; }
        public string contenido { get; set; }
        public Nullable<int> id_asignatura { get; set; }
    
        public virtual Asignaturas Asignaturas { get; set; }
    }
}
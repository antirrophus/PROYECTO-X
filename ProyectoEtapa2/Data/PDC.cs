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
    
    public partial class PDC
    {
        public int id_pdc { get; set; }
        public System.DateTime fecha_ela_pdc { get; set; }
        public string documento_pdc { get; set; }
        public int id_prof_asig { get; set; }
    
        public virtual Prof_Asig Prof_Asig { get; set; }
    }
}

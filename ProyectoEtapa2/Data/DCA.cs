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
    
    public partial class DCA
    {
        public int id_dca { get; set; }
        public string nombre { get; set; }
        public string semestre { get; set; }
        public string departamento { get; set; }
        public System.DateTime fecha_e_dca { get; set; }
        public string documento_dca { get; set; }
        public string id_departamento { get; set; }
    
        public virtual Departamentos Departamentos { get; set; }
    }
}

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
    
    public partial class Carreras
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Carreras()
        {
            this.Asignaturas = new HashSet<Asignaturas>();
            this.Grupos = new HashSet<Grupos>();
            this.Laboratorios = new HashSet<Laboratorios>();
        }
    
        public string id_carrera { get; set; }
        public string nombre_carrera { get; set; }
        public int n_semestres { get; set; }
        public string id_Facultad { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Asignaturas> Asignaturas { get; set; }
        public virtual Facultad Facultad { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grupos> Grupos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Laboratorios> Laboratorios { get; set; }
    }
}

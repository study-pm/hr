//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HR.Data.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Education
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public Nullable<int> OrganizationId { get; set; }
        public Nullable<int> SpecialtyId { get; set; }
        public Nullable<int> QualificationId { get; set; }
        public int DegreeId { get; set; }
    
        public virtual Degree Degree { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Qualification Qualification { get; set; }
        public virtual Specialty Specialty { get; set; }
        public virtual Organization Organization { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HusInfo.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Picture
    {
        public int id { get; set; }
        public string fileName { get; set; }
        public Nullable<int> houseId { get; set; }
        public Nullable<int> classificationId { get; set; }
    
        public virtual Classification Classification { get; set; }
        public virtual House House { get; set; }
    }
}
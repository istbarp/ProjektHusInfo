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
    
    public partial class HousePic
    {
        public int id { get; set; }
        public string pictureFilename { get; set; }
        public Nullable<int> houseId { get; set; }
    
        public virtual House House { get; set; }
    }
}

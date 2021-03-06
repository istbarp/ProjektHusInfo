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
    
    public partial class Login
    {
        public Login()
        {
            this.House = new HashSet<House>();
            this.Offer = new HashSet<Offer>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string lastname { get; set; }
        public string cvrNumber { get; set; }
        public string company { get; set; }
        public string password { get; set; }
        public Nullable<int> phoneNumber { get; set; }
        public Nullable<bool> verified { get; set; }
        public string username { get; set; }
        public string personType { get; set; }
    
        public virtual ICollection<House> House { get; set; }
        public virtual ICollection<Offer> Offer { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplicationtes2
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Vendor
    {
        public tbl_Vendor()
        {
            this.tbl_Product = new HashSet<tbl_Product>();
        }
    
        public int IdVendor { get; set; }
        public string VendorName { get; set; }
        public int StatusVendor { get; set; }
    
        public virtual ICollection<tbl_Product> tbl_Product { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FlowerShop.EntityModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public Order()
        {
            this.Orderdetails = new HashSet<Orderdetail>();
        }
    
        public int id { get; set; }
        public Nullable<int> CustomID { get; set; }
        public string Cus_Name { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Note { get; set; }
        public Nullable<double> TongTien { get; set; }
        public Nullable<bool> Status { get; set; }
    
        public virtual Contact Contact { get; set; }
        public virtual ICollection<Orderdetail> Orderdetails { get; set; }
    }
}

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
    
    public partial class Category
    {
        public Category()
        {
            this.Products = new HashSet<Product>();
        }
    
        public int id { get; set; }
        public Nullable<int> Parentid { get; set; }
        public string Names { get; set; }
        public Nullable<int> No { get; set; }
        public bool Active { get; set; }
    
        public virtual ICollection<Product> Products { get; set; }
    }
}
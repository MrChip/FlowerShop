using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FlowerShop.EntityModel;

namespace FlowerShop.Services
{
  public interface IProductsServices
  {
      Product GetbyId(int id);
      ICollection<Product> GetByIds(List<int> ids);
      ICollection<Product> Find(int? id_item, string pname, string pdetail, string pdesciptions, float? ppricecurrent, float? ppriceold, string pimage, bool? pnew,bool? ppromotion,bool? hot, string pmodify, bool? active);
      ICollection<Product> FindAll(int? id_item, string pname, string pdetail, string pdesciptions, float? ppricecurrent, float? ppriceold, string pimage, bool? pnew,bool? ppromotion,bool? hot, string pmodify, bool? active, string order, int? limit);
      Product Create(int id_item, string pname, string pdetail, string pdesciptions, float ppricecurrent, float ppriceold, string pimage, bool pnew,bool ppromotion,bool hot, string pmodify, bool active);
      Product Create(Product product);
      Product Update(Product product);
      bool Remove(int id);
  }
}

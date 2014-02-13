using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FlowerShop.EntityModel;

namespace FlowerShop.Services.Implement
{
    public interface ICategoryServices
    {
        Category GetById(int id);
        ICollection<Category> GetByIds(List<int> ids);
        ICollection<Category> Find(int parentid, string names, int? no,  bool active);
        ICollection<Category> FindAll(int parentid, string names, int? no,  bool active, string order, int? limit);
        Category Create(int parentid, string names, int? no, bool active);
        Category Create(Category category);
        Category Update(Category category);
        bool Remove(int id);
    }
}

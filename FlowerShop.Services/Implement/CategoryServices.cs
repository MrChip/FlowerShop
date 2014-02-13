using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using FlowerShop.EntityModel;

namespace FlowerShop.Services.Implement
{
    public class CategoryServices : ICategoryServices
    {
        private FlowerShopEntities _entities;
        private DbSet<Category> _dbSet;

        public CategoryServices()
        {
            _entities = new FlowerShopEntities();
            _dbSet = _entities.Categories;
        }

        public Category GetById(int id)
        {
            return _dbSet.Find("id", id);
        }

        public ICollection<Category> GetByIds(List<int> ids)
        {
            return _dbSet.Where(o => ids.Contains(o.id)).ToList();
        }

        public ICollection<Category> Find(int parentid, string names, int? no, bool active)
        {
            throw new NotImplementedException();
        }

        public ICollection<Category> FindAll(int parentid, string names, int? no, bool active, string order, int? limit)
        {
            var whCls = new List<Expression<Func<Category, bool>>>();
          
          
            if (!string.IsNullOrEmpty(names))
            {
                whCls.Add(e => e.Names == names);
            }
         

            order = string.IsNullOrEmpty(order) ? "Id" : order;
            var datas = _dbSet.AsQueryable();
            if (limit != null)
            {
                datas =
                    whCls.Aggregate(datas, (current, expression) => current.AsQueryable().Where(expression)).Take(
                        (int) limit);
            }
            else
            {
                datas =
                    whCls.Aggregate(datas, (current, expression) => current.AsQueryable().Where(expression));
            }
            return datas.ToList();
        }

        public Category Create(int parentid, string names, int? no, bool active)
        {
            var category = new Category
                               {
                                   Parentid = parentid,
                                   Names = names,
                                   No = no,
                                   Active = active,

                               };
            _dbSet.Add(category);
            _entities.SaveChanges();
            return category;
        }

        public Category Create(Category category)
        {
            _dbSet.Add(category);
            _entities.SaveChanges();
            return category;
        }

        public Category Update(Category category)
        {
            _dbSet.AddOrUpdate(category);
            _entities.SaveChanges();
            return category;
        }

        public bool Remove(int id)
        {
            var category = GetById(id);
            if (category!= null && category.id > 0)
            {
                _dbSet.Remove(category);
                _entities.SaveChanges();
                return true;
            }
            return false;

        }
    }
}

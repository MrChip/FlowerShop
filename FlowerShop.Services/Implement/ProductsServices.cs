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
    public class ProductsServices : IProductsServices
    {
        private FlowerShopEntities _entities;
        private DbSet<Product> _dbSet;

        public ProductsServices()
        {
            _entities = new FlowerShopEntities();
            _dbSet = _entities.Products;
        }

        public Product GetbyId(int id)
        {
            return _dbSet.Find("id", id);
        }

        public ICollection<Product> GetByIds(List<int> ids)
        {
            return _dbSet.Where(o => ids.Contains(o.id)).ToList();
        }

        public ICollection<Product> Find(int? id_item, string pname, string pdetail, string pdesciptions, float? ppricecurrent, float? ppriceold, string pimage, bool? pnew, bool? ppromotion, bool? hot, string pmodify, bool? active)
        {
            throw new NotImplementedException();
        }

        public ICollection<Product> FindAll(int? id_item, string pname, string pdetail, string pdesciptions, float? ppricecurrent, float? ppriceold, string pimage, bool? pnew,bool? ppromotion,bool? hot, string pmodify, bool? active, string order,
                                            int? limit)
        {
            var whCls = new List<Expression<Func<Product, bool>>>();
            if (!string.IsNullOrEmpty(pname))
            {
                whCls.Add(e => e.pName == pname);
            }
            if (!string.IsNullOrEmpty(pdetail))
            {
                whCls.Add(e => e.pDetail == pdetail);
            }
            if (!string.IsNullOrEmpty(pdesciptions))
            {
                whCls.Add(e => e.pDescriptions == pdesciptions);
            }
            if (!string.IsNullOrEmpty(pimage))
            {
                whCls.Add(e => e.pImage == pimage);
            }
            if (!string.IsNullOrEmpty(pmodify))
            {
                whCls.Add(e => e.pModify == pmodify);
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



        public Product Create(int id_item, string pname, string pdetail, string pdesciptions, float ppricecurrent,
                              float ppriceold, string pimage, bool pnew, bool ppromotion, bool hot, string pmodify,
                              bool active)
        {
            var product = new Product()
                              {
                                  id_item = id_item,
                                  pName = pname,
                                  pDetail = pdetail,
                                  pDescriptions = pdesciptions,
                                  pPricecurrent = ppricecurrent,
                                  pPriceold = ppriceold,
                                  pImage = pimage,
                                  pNew = pnew,
                                  pPromotion = ppromotion,
                                  pHot = hot,

                              };
            _dbSet.Add(product);
            _entities.SaveChanges();
            return product;
        }

        public Product Create(Product product)
        {
            _dbSet.Add(product);
            _entities.SaveChanges();
            return product;
        }

        public Product Update(Product product)
        {
            _dbSet.AddOrUpdate(product);
            _entities.SaveChanges();
            return product;
        }

        public bool Remove(int id)
        {
            var product = GetbyId(id);
            if (product != null && product.id > 0)
            {
                _dbSet.Remove(product);
                _entities.SaveChanges();
                return true;
            }
            return false;

        }
    }
}


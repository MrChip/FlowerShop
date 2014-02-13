using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using FlowerShop.EntityModel;
using System.Data.Entity;

namespace FlowerShop.Services.Implement
{
    public class ContactServices : IContactServices
    {
        private FlowerShopEntities _entities;
        private DbSet<Contact> _dbSet;

        public ContactServices()
        {
            _entities = new FlowerShopEntities();
            _dbSet = _entities.Contacts;
        }

        public EntityModel.Contact GetById(int id)
        {
            return _dbSet.First(o => o.id == id);
        }



        public ICollection<EntityModel.Contact> GetByIds(List<int> ids)
        {
            return _dbSet.Where(o => ids.Contains(o.id)).ToList();
        }



        public ICollection<EntityModel.Contact> Find(string name, string address, string email, string phone,
                                                     string noidung, bool? trangthai)
        {
            throw new NotImplementedException();
        }

        public ICollection<Contact> FindAll(string name, string address, string email, string phone, string noidung,
                                            bool? trangthai, string order, int? limit)
        {
            var whCls = new List<Expression<Func<Contact, bool>>>();
            if (!string.IsNullOrEmpty(name))
            {
                whCls.Add(e => e.Name == name);
            }
            if (!string.IsNullOrEmpty(address))
            {
                whCls.Add(e => e.Name == address);
            }
            if (!string.IsNullOrEmpty(email))
            {
                whCls.Add(e => e.Name == email);
            }
            if (!string.IsNullOrEmpty(phone))
            {
                whCls.Add(e => e.Name == phone);
            }

            whCls.Add(e => e.TrangThai == trangthai);

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


        public ICollection<Contact> FindAll(string name, string address, string email, string phone, string noidung
                                          , string order, int? limit)
        {
            var whCls = new List<Expression<Func<Contact, bool>>>();
            if (!string.IsNullOrEmpty(name))
            {
                whCls.Add(e => e.Name == name);
            }
            if (!string.IsNullOrEmpty(address))
            {
                whCls.Add(e => e.Name == address);
            }
            if (!string.IsNullOrEmpty(email))
            {
                whCls.Add(e => e.Name == email);
            }
            if (!string.IsNullOrEmpty(phone))
            {
                whCls.Add(e => e.Name == phone);
            }


            order = string.IsNullOrEmpty(order) ? "Id" : order;
            var datas = _dbSet.AsQueryable();
            if (limit != null)
            {
                datas =
                    whCls.Aggregate(datas, (current, expression) => current.AsQueryable().Where(expression)).Take(
                        (int)limit);
            }
            else
            {
                datas =
                    whCls.Aggregate(datas, (current, expression) => current.AsQueryable().Where(expression));
            }
            return datas.ToList();
        }

        public Contact Create(string name, string address, string email, string phone, string noidung, bool? trangthai)
        {
            var contact = new Contact
                              {
                                  Name = name,
                                  Address = address,
                                  Email = email,
                                  Noidung = noidung,
                                  Phone = phone,
                                  TrangThai = trangthai
                              };
            _dbSet.Add(contact);
            _entities.SaveChanges();
            return contact;
        }

        public Contact Create(Contact contact)
        {

            _dbSet.Add(contact);
            _entities.SaveChanges();
            return contact;
        }

        public Contact Update(Contact contact)
        {
            _dbSet.AddOrUpdate(contact);
            _entities.SaveChanges();
            return contact;
        }

        public bool Remove(int id)
        {
            var contact = GetById(id);
            if (contact != null && contact.id > 0)
            {
                _dbSet.Remove(contact);
                _entities.SaveChanges();
                return true;
            }
            return false;

        }
    }
}

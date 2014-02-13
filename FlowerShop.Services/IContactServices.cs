using System.Collections.Generic;
using FlowerShop.EntityModel;
namespace FlowerShop.Services
{
   public interface IContactServices
    {
       Contact  GetById(int id);
       ICollection<Contact> GetByIds(List<int> ids);
       ICollection<Contact> Find(string name, string address, string email, string phone, string noidung, bool? trangthai);
       ICollection<Contact> FindAll(string name, string address, string email, string phone, string noidung, bool? trangthai, string order, int? limit);
       ICollection<Contact> FindAll(string name, string address, string email, string phone, string noidung, string order, int? limit);
       Contact Create(string name, string address, string email, string phone, string noidung, bool? trangthai);
       Contact Create(Contact contact);
       Contact Update(Contact contact);
       bool Remove(int id);
    }
}

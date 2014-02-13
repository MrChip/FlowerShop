using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FlowerShop.EntityModel;
using FlowerShop.Services;
using FlowerShop.Services.Implement;
namespace Test
{
    internal class Program
    {
      
        private static void Main(string[] args)
        {
            IContactServices _productService = new ContactServices();
            var product = _productService.FindAll(string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty,10);
            Console.WriteLine(DateTime.Now.ToString("R") + "product:" + product.Count());
            var newContact = new Contact{Name = "Xuanh", TrangThai = true};
            Console.WriteLine(DateTime.Now.ToString("R") + "newContact: id=" + newContact.id + " Name: " + newContact.Name);
            _productService.Create(newContact);
            Console.WriteLine(DateTime.Now.ToString("R") + "newContact: id=" + newContact.id + " Name: " + newContact.Name);
            product = _productService.FindAll(string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, 10);
            newContact.Email = "ABC@yahoo.com";
            _productService.Update(newContact);
            Console.WriteLine(DateTime.Now.ToString("R") + "newContact: id=" + newContact.id + " Name: " + newContact.Name + " Email: " + newContact.Email);
            product = _productService.FindAll(string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, 10);
            Console.WriteLine(DateTime.Now.ToString("R") + "product:" + product.Count());
             _productService.Remove(newContact.id);
             product = _productService.FindAll(string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, string.Empty, 10);
             Console.WriteLine(DateTime.Now.ToString("R") + "product:" + product.Count());
        }

    }
}

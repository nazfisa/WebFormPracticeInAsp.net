using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagement.DAL.Models
{
    public class ItemModel
    {
        public int Id { get; set; }
        public string CategoryName { get; set; }
        public string CompanyName { get; set; }
        public string ItemName { get; set; }
        public int ReorderLevel { get; set; }
        public int AvailableQuantity { get; set; }
        public DateTime Date { get; set; }
    }
}
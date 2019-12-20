using StockManagement.DAL.Models;
using StockManagement.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StockManagement.DAL.Gateway
{
    public class ItemGateway:Base
    {

        
        public List<ItemModel> GetAllItems()
        {
            string query = "SELECT * FROM ItemSetup";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<ItemModel> ItemList = new List<ItemModel>();

            while (reader.Read())
            {
                ItemModel item = new ItemModel();
                item.Id = Convert.ToInt32(reader["Id"]);
                item.ItemName = reader["ItemName"].ToString();
                ItemList.Add(item);
            }
            reader.Close();
            connection.Close();
            return ItemList;
        }
        public int Save(ItemModel itemModel)
        {
            string query = "INSERT INTO ItemSetup(CategoryName,CompanyName,ItemName,ReorderLevel,Date) VALUES (@categoryName,@companyName,@ItemName,@ReorderLevel,@date)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@categoryName", itemModel.CategoryName);
            command.Parameters.AddWithValue("@companyName", itemModel.CompanyName);
            command.Parameters.AddWithValue("@ItemName", itemModel.ItemName);
            command.Parameters.AddWithValue("@ReorderLevel", itemModel.ReorderLevel);
            command.Parameters.AddWithValue("@date", DateTime.Now);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public bool IsItemNameExists(string CompanyName)
        {
            string query = "SELECT * FROM ItemSetup WHERE ItemName=@ItemName";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ItemName", CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;


        }
        public int UpdateByCompanyName(ItemModel itemModel)
        {
            string query = "Update ItemSetup SET AvailableQuantity = @AvailableQuantity WHERE CompanyName = @CompanyName";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@AvailableQuantity", itemModel.AvailableQuantity);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
        public int StockOut(ItemModel itemModel)
        {
            string query = "Update ItemSetup SET AvailableQuantity = @AvailableQuantity WHERE Id = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@AvailableQuantity", itemModel.AvailableQuantity);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);
            command.Parameters.AddWithValue("@id", itemModel.Id);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
        public int GetAllSpecificItems(ItemModel itemModel)
        {

            ItemModel item = new ItemModel();
            string query = "SELECT * FROM ItemSetup where CompanyName=@CompanyName and ItemName=@ItemName ";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ItemName", itemModel.ItemName);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            List<ItemModel> categoryList = new List<ItemModel>();
            int id;
            if (reader.Read())
            {
                item.Id = Convert.ToInt32(reader["Id"]);
                id = item.Id;
            }
            reader.Close();
            connection.Close();
            return item.Id;
        }
        public int StockOutGetAvailableAmount(ItemModel itemModel)
        {

            ItemModel item = new ItemModel();
            string query = "SELECT * FROM ItemSetup where CompanyName=@CompanyName and ItemName=@ItemName ";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ItemName", itemModel.ItemName);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            
            
            if (reader.Read())
            {
                item.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"]);

            }
            reader.Close();
            connection.Close();
            return item.AvailableQuantity;
        }
        public List<ItemModel> GetAllSpecificItemsById(ItemModel itemModel)
        {

            ItemModel item = new ItemModel();
            string query = "SELECT * FROM ItemSetup where CompanyName=@CompanyName and ItemName=@ItemName ";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@ItemName", itemModel.ItemName);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            List<ItemModel> ItemList = new List<ItemModel>();
            
            if (reader.Read())
            {
                item.Id = Convert.ToInt32(reader["Id"]);
                item.CompanyName = reader["CompanyName"].ToString();
                item.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"].ToString());
                ItemList.Add(item);
            }
            reader.Close();
            connection.Close();
            return ItemList;
        }
        public List<ItemModel> Search(ItemModel itemModel)
        {
            ItemModel item = new ItemModel();
            string query = "SELECT * FROM ItemSetup where CompanyName=@CompanyName and CategoryName=@CategoryName";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CategoryName", itemModel.CategoryName);
            command.Parameters.AddWithValue("@CompanyName", itemModel.CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            List<ItemModel> ItemList = new List<ItemModel>();
            while (reader.Read())
            {
                item.Id = Convert.ToInt32(reader["Id"]);
                item.ItemName = reader["ItemName"].ToString();
                item.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"].ToString());
                ItemList.Add(item);
            }
            reader.Close();
            connection.Close();
            return ItemList;
        }
    }
}
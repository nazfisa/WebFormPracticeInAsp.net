using StockManagement.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StockManagement.DAL.Gateway
{
    public class CategoryGateway:Base
    {
        public int Save(CategoryModel categoryModel)
        {
            string query = "INSERT INTO Category(category) VALUES (@category)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@category", categoryModel.Category);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public List<CategoryModel> GetAllCategories()
        {
            string query = "SELECT * FROM Category";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<CategoryModel> categoryList = new List<CategoryModel>();

            while (reader.Read())
            {
                CategoryModel category = new CategoryModel();
                category.Id = Convert.ToInt32(reader["Id"]);
                category.Category = reader["category"].ToString();
                categoryList.Add(category);
            }
            reader.Close();
            connection.Close();
            return categoryList;
        }
        public bool IsRegNoExists(string category)
        {
            string query = "SELECT * FROM Category WHERE category=@category";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@category", category);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;


        }
        public CategoryModel GetCategoryById(int? Id)
        {
            string query = "SELECT * FROM Category WHERE Id = @id";
            
            command = new SqlCommand(query, connection);
            command.Parameters.Clear();
            command.Parameters.AddWithValue("@id", Id);

            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            CategoryModel category = null;
            if (reader.HasRows)
            {
                category = new CategoryModel();
                category.Id = Convert.ToInt32(reader["Id"]);
                category.Category = reader["category"].ToString();
                
            }
            reader.Close();
            connection.Close();
            return category;
        }
        public int UpdateById(CategoryModel category)
        {
            string query = "Update Category SET category = @category WHERE Id = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", category.Id);
            command.Parameters.AddWithValue("@category", category.Category);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
    }
}
using StockManagement.DAL.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StockManagement.DAL.Gateway
{
    public class CompanyGateway:Base
    {
        public int Save(CompanyModel companyModel)
        {
            string query = "INSERT INTO CompanyTbl(CompanyName) VALUES (@CompanyName)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CompanyName", companyModel.CompanyName);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public List<CompanyModel> GetAllCompanies()
        {
            string query = "SELECT * FROM CompanyTbl";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<CompanyModel> companyList = new List<CompanyModel>();

            while (reader.Read())
            {
                CompanyModel company = new CompanyModel();
                company.Id = Convert.ToInt32(reader["Id"]);
                company.CompanyName = reader["CompanyName"].ToString();
                companyList.Add(company);
            }
            reader.Close();
            connection.Close();
            return companyList;
        }
        public bool IsCompanyNameExists(string CompanyName)
        {
            string query = "SELECT * FROM CompanyTbl WHERE CompanyName=@CompanyName";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CompanyName", CompanyName);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;


        }
    }
}
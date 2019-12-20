using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace StockManagement.DAL.Gateway
{
    public class Base
    {
        public SqlConnection connection;
        public SqlCommand command;
        public SqlDataReader reader;
        public Base(){
            string connectionString = "Data Source=DESKTOP-5EO1ILG;Initial Catalog=stockManagement;Integrated Security=True";
            connection = new SqlConnection(connectionString);
        }
    }
}
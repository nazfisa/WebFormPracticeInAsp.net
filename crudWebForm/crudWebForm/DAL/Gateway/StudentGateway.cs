using crudWebForm.DAL.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace crudWebForm.DAL.Gateway
{
    public class StudentGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        SqlDataReader reader;
        public StudentGateway()
        {
            string connectionString = "Data Source=DESKTOP-5EO1ILG;Initial Catalog=web-crud-p;Integrated Security=True";
            connection = new SqlConnection(connectionString);
        }
        public int Save(StudentModel student)
        {
            string query = "INSERT INTO TblStudent(Name,Description) VALUES (@Name,@Description)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Name", student.Name);
            command.Parameters.AddWithValue("@Description", student.Description);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }
        public List<StudentModel> GetAllStudents()
        {
            string query = "SELECT * FROM TblStudent";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<StudentModel> studentList = new List<StudentModel>();

            while (reader.Read())
            {
                StudentModel student = new StudentModel();
                student.Id = Convert.ToInt32(reader["Id"]);
                student.Name = reader["Name"].ToString();
                student.Description = reader["Description"].ToString();
                studentList.Add(student);
            }
            reader.Close();
            connection.Close();
            return studentList;
        }
        public StudentModel GetStudentById(int id)
        {
            string query = "SELECT * FROM TblStudent WHERE Id =@id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Id", id);
            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            StudentModel student = null;
            if (reader.HasRows)
            {
                student = new StudentModel();
                student.Id = Convert.ToInt32(reader["Id"]);
                student.Name = reader["Name"].ToString();
                student.Description = reader["Description"].ToString();

            }
            reader.Close();
            connection.Close();
            return student;
        }

        public int UpdateById(StudentModel student)
        {
            string query = "Update TblStudent SET Name = @name, Description=@Description WHERE Id = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", student.Name);
            command.Parameters.AddWithValue("@Description", student.Description);
            command.Parameters.AddWithValue("@id", student.Id);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
        public int DeleteById(int Id)
        {
            string query = "Delete from TblStudent WHERE Id = @id";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id",Id);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();
            return rowAffect;
        }
    }
}
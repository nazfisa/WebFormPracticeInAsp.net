using crudWebForm.DAL.Gateway;
using crudWebForm.DAL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace crudWebForm.BLL
{
    public class StudentManager
    {
        private StudentGateway studentGateway = new StudentGateway();
        public string Save(StudentModel student)
        {


            int rowAffect = studentGateway.Save(student);

            if (rowAffect > 0)
            {
                return "Save Successful";
            }
            else
            {
                return "Save Failed";

            }

        }
        public List<StudentModel> GetAllStudents()
        {
            return studentGateway.GetAllStudents();
        }
        public StudentModel GetStudentById(int id)
        {
            return studentGateway.GetStudentById(id);
        }
        public string UpdateById(StudentModel student)
        {
            int rowAffect = studentGateway.UpdateById(student);
            if (rowAffect > 0)
            {
                return "Update Successful";
            }
            else
            {
                return "Update Failed";
            }
        }
        public string DeleteById(int Id)
        {
            int rowAffect = studentGateway.DeleteById(Id);
            if (rowAffect > 0)
            {
                return "Delete Successful";
            }
            else
            {
                return "Delete Failed";
            }
        }
    }
}
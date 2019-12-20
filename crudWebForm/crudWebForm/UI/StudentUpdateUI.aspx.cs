using crudWebForm.BLL;
using crudWebForm.DAL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crudWebForm.UI
{
    public partial class StudentUpdateUI : System.Web.UI.Page
    {
        StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);
               // Response.Write(id);

                StudentModel student = studentManager.GetStudentById(id);
                if (student != null)
                {
                    idHiddenField.Value = student.Id.ToString();
                    nameTextBox.Text = student.Name;
                    DescriptionTextBox.Text = student.Description;
                    //departmentTextBox.Text = student.Department;
                }
            }
        }
        protected void updateButton_Click(object sender, EventArgs e)
        {
            StudentModel aStudent = new StudentModel();
            aStudent.Id = Convert.ToInt32(idHiddenField.Value);
            aStudent.Name = nameTextBox.Text;
            aStudent.Description = DescriptionTextBox.Text;

            studentManager.UpdateById(aStudent);
            Response.Redirect("DetailsUI.aspx");
        }
    }
}
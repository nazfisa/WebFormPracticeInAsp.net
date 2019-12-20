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
    public partial class Student : System.Web.UI.Page
    {
        StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StudentModel studentModel = new StudentModel();
            studentModel.Name = NameTextBox.Text;
            studentModel.Description = DescriptionTextBox.Text;
            string message=studentManager.Save(studentModel);
            MessageLabel.Text = message;
        }
    }
}
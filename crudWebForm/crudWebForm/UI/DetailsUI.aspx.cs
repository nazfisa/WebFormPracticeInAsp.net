using crudWebForm.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crudWebForm.UI
{
    public partial class DetailsUI : System.Web.UI.Page
    {
        private StudentManager studentManager = new StudentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            studentListGridView.DataSource = studentManager.GetAllStudents();
            studentListGridView.DataBind();
        }
        protected void LinkButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = sender as LinkButton;
            DataControlFieldCell cell = linkButton.Parent as DataControlFieldCell;
            GridViewRow row = cell.Parent as GridViewRow;
            HiddenField hiddenField = row.FindControl("idHiddenField") as HiddenField;
            int id = Convert.ToInt32(hiddenField.Value);
            Response.Redirect("StudentUpdateUI.aspx?Id=" + id);
           // Response.Write(hiddenField.Value);

        }

        protected void studentListGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = sender as LinkButton;
            DataControlFieldCell cell = linkButton.Parent as DataControlFieldCell;
            GridViewRow row = cell.Parent as GridViewRow;
            HiddenField hiddenField = row.FindControl("idHiddenField") as HiddenField;
            int id = Convert.ToInt32(hiddenField.Value);
            string message = studentManager.DeleteById(id);
            MessageLabel.Text = message;
        }
    }
}
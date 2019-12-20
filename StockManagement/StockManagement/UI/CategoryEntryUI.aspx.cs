using StockManagement.BLL;
using StockManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagement.UI
{
    public partial class CategoryEntryUI : System.Web.UI.Page
    {
        private CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryDisplayGridView.DataSource = categoryManager.GetAllCategories();
            CategoryDisplayGridView.DataBind();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            CategoryModel categoryModel = new CategoryModel();
            if (CategoryNameTextBox.Text != string.Empty)
            {
                categoryModel.Category = CategoryNameTextBox.Text;
                CategoryNameTextBox.Text = string.Empty;
            
                string message = categoryManager.Save(categoryModel);
                DisplayLabel.Text = message;
            }
            else
            {
                DisplayLabel.Text = "Please Enter Category Name";
            }
            
            CategoryDisplayGridView.DataSource = categoryManager.GetAllCategories();
            CategoryDisplayGridView.DataBind();
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = sender as LinkButton;
            DataControlFieldCell cell = linkButton.Parent as DataControlFieldCell;
            GridViewRow row = cell.Parent as GridViewRow;
            HiddenField hiddenField = row.FindControl("idHiddenField") as HiddenField;
            int id = Convert.ToInt32(hiddenField.Value);
            Response.Redirect("CategoryUpdateUI.aspx?Id=" + id);
            //Response.Write(hiddenField.Value);
        }

        protected void BackToIndexButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndextUI.aspx");
        }
    }
}
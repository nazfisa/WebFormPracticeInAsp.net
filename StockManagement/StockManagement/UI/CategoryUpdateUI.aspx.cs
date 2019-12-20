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
    public partial class CategoryUpdateUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);
                
                CategoryModel category = categoryManager.GetCategoryById(id);
                if (category != null)
                {
                    idHiddenField.Value = category.Id.ToString();
                    CategoryNameTextBox.Text = category.Category;
                }

            }
        }
        protected void updateButton_Click(object sender, EventArgs e)
        {
            CategoryModel aCategory = new CategoryModel();
            aCategory.Id = Convert.ToInt32(idHiddenField.Value);
            aCategory.Category = CategoryNameTextBox.Text;

            categoryManager.UpdateById(aCategory);
            Response.Redirect("CategoryEntryUI.aspx");
        }

    }
}
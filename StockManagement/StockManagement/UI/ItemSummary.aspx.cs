using StockManagement.BLL;
using StockManagement.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagement.UI
{
    public partial class ItemSummary : System.Web.UI.Page
    {

        private CompanyManager companyManager = new CompanyManager();
        private CategoryManager CategoryManager = new CategoryManager();
        private ItemManager itemManager = new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CompanyDropDownList.DataSource = companyManager.GetAllCompanies();
                CompanyDropDownList.DataTextField = "CompanyName";
                CompanyDropDownList.DataValueField = "Id";
                CompanyDropDownList.DataBind();
                CategoryDropDownList.DataSource = CategoryManager.GetAllCategories();
                CategoryDropDownList.DataTextField = "category";
                CategoryDropDownList.DataValueField = "Id";
                CategoryDropDownList.DataBind();
            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            ItemModel aItem = new ItemModel();

            aItem.CategoryName = CategoryDropDownList.SelectedItem.Text;
            aItem.CompanyName = CompanyDropDownList.SelectedItem.Text;
            //itemManager.Search(aItem);
            ItemSummaryGridView.DataSource = itemManager.Search(aItem);
            ItemSummaryGridView.DataBind();
        }
    }
}
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
    public partial class StockInEntry : System.Web.UI.Page
    {
        private CompanyManager companyManager = new CompanyManager();
        private CategoryManager CategoryManager = new CategoryManager();
        private ItemManager itemManager = new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CompanyDropDownList.DataSource = companyManager.GetAllCompanies();
                CompanyDropDownList.DataValueField = "ID";
                CompanyDropDownList.DataTextField = "CompanyName";
                CompanyDropDownList.DataBind();

                ItemDropDownList.DataSource = itemManager.GetAllItems();
                ItemDropDownList.DataValueField = "Id";
                ItemDropDownList.DataTextField = "ItemName";
                ItemDropDownList.DataBind();
            }
            
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            ItemModel aItem = new ItemModel();
            aItem.CompanyName = CompanyDropDownList.SelectedItem.Text;
            aItem.ItemName = ItemDropDownList.SelectedItem.Text;
            aItem.ReorderLevel = Convert.ToInt32(ReorderTextBox.Text);
            int StockInQuantity = Convert.ToInt32(StockInQuantityTextBox.Text);
            aItem.AvailableQuantity = Convert.ToInt32(AvailableQuantityTextBox.Text) + StockInQuantity;
            string message = itemManager.UpdateByCompanyName(aItem);
            displayLabel.Text = message;
        }
    }
}
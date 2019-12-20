using StockManagement.BLL;
using StockManagement.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagement
{
    
    public partial class StockOutEntryUI : System.Web.UI.Page
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

              /*  int id = Convert.ToInt32(Request.QueryString["Id"]);

                CategoryModel category = categoryManager.GetCategoryById(id);
                if (category != null)
                {
                    idHiddenField.Value = category.Id.ToString();
                    CategoryNameTextBox.Text = category.Category;
                }*/
            }

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            ItemModel aItem = new ItemModel();
            if (StockOutQuantityTextBox.Text != string.Empty)
            {

                //aItem.Id = Convert.ToInt32(idHiddenField.Value);
                aItem.CompanyName = CompanyDropDownList.SelectedItem.Text;
                aItem.ItemName = ItemDropDownList.SelectedItem.Text;

                aItem.Id=itemManager.StockOutGetId(aItem);
                aItem.ReorderLevel = Convert.ToInt32(ReorderTextBox.Text);
                aItem.AvailableQuantity = itemManager.StockOutGetAvailableAmount(aItem);
                int availabe = aItem.AvailableQuantity;
                aItem.AvailableQuantity = availabe - Convert.ToInt32(StockOutQuantityTextBox.Text);
                int stockOut = aItem.AvailableQuantity;
                if (stockOut > 0) {

                    string message = itemManager.StockOut(aItem);
                    displayLabel.Text = message;
                    StockOutGridView.DataSource = itemManager.GetAllSpecificItemsById(aItem);
                    StockOutGridView.DataBind();


                }
                else
                {
                    displayLabel.Text = "Your Stock Already Empty";

                }
            }
            else
            {
                displayLabel.Text = "Please Enter Quantity of Stock Out";
            }
        }
    }
}
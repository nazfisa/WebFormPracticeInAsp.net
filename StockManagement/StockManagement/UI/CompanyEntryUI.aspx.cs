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
    public partial class CompanyEntryUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            CompanyGridView.DataSource = companyManager.GetAllCompanies();
            CompanyGridView.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }
        protected void BackToIndexButton(object sender, EventArgs e)
        {
            Response.Redirect("IndextUI.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            CompanyModel companyModel = new CompanyModel();
            if (CompanyNameTextBox.Text != string.Empty )
            {
                    companyModel.CompanyName = CompanyNameTextBox.Text;
                    CompanyNameTextBox.Text = string.Empty;
                    string message = companyManager.Save(companyModel);
                    CompanyDisplayLabel.Text = message;
                
            }
            else
            {
                CompanyDisplayLabel.Text = "Please Enter Company Name";
            }

            CompanyGridView.DataSource = companyManager.GetAllCompanies();
            CompanyGridView.DataBind();
        }
    }
}
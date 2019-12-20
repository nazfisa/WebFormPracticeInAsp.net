using StockManagement.DAL.Gateway;
using StockManagement.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagement.BLL
{
    
    public class CompanyManager
    {
        private CompanyGateway companyGateway = new CompanyGateway();
        public string Save(CompanyModel companyModel)
        {
            if (companyGateway.IsCompanyNameExists(companyModel.CompanyName))
            {
                return "Company Name Already Exists";
            }
            else
            {
                int rowAffect = companyGateway.Save(companyModel);

                if (rowAffect > 0)
                {
                    return "Save Successful";
                }
                else
                {
                    return "Save Failed";

                }
            }
            
        }
        public List<CompanyModel> GetAllCompanies()
        {
            return companyGateway.GetAllCompanies();
        }
        

    }
    }
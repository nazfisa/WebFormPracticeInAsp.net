using StockManagement.DAL.Gateway;
using StockManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagement.BLL
{
    public class CategoryManager
    {
        private CategoryGateway categoryGateway = new CategoryGateway();
        public string Save(CategoryModel categoryModel)
        {

            if (categoryGateway.IsRegNoExists(categoryModel.Category))
            {
                return "Category Name Already Exists";
            }
            else {
                int rowAffect = categoryGateway.Save(categoryModel);

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
        
        public CategoryModel GetCategoryById(int? id)
        {
            return categoryGateway.GetCategoryById(id);
        }

        
            public List<CategoryModel> GetAllCategories()
        {
            return categoryGateway.GetAllCategories();
        }
        public string UpdateById(CategoryModel category)
        {
            int rowAffect = categoryGateway.UpdateById(category);

            if (rowAffect > 0)
            {
                return "Save Successful";
            }
            else
            {
                return "Save Failed";

            }

        }
}}
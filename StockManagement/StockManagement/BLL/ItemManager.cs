using StockManagement.DAL.Gateway;
using StockManagement.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagement.BLL
{
    public class ItemManager
    {
        ItemGateway itemGateway = new ItemGateway();
        public string Save(ItemModel itemModel)
        {
            ItemGateway itemGateway = new ItemGateway();
            
                if (itemGateway.IsItemNameExists(itemModel.ItemName))
                {
                    return "ItemName Name Already Exists";
                }

                else
                {
                    int rowAffect = itemGateway.Save(itemModel);

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
        public List<ItemModel> GetAllItems()
        {
            return itemGateway.GetAllItems();
        }
        public string UpdateByCompanyName(ItemModel itemModel)
        {
            int rowAffect = itemGateway.UpdateByCompanyName(itemModel);

            if (rowAffect > 0)
            {
                return "Save Successful";
            }
            else
            {
                return "Save Failed";

            }

        }
        public int StockOutGetId(ItemModel itemModel)
        {
            int id = itemGateway.GetAllSpecificItems(itemModel);
            return id;
        }
        public int StockOutGetAvailableAmount(ItemModel itemModel)
        {
            int id = itemGateway.StockOutGetAvailableAmount(itemModel);
            return id;
        }
        public List<ItemModel> GetAllSpecificItemsById(ItemModel itemModel)
        {
            return itemGateway.GetAllSpecificItemsById(itemModel);
            
        }
        public string StockOut(ItemModel itemModel)
        {
            int rowAffect = itemGateway.StockOut(itemModel);

            if (rowAffect > 0)
            {
                return "Save Successful";
            }
            else
            {
                return "Save Failed";

            }
        }
        public List<ItemModel> Search(ItemModel itemModel)
        {
            return itemGateway.Search(itemModel);

        }
    }
}
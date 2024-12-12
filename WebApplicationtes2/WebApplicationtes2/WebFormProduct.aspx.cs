using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationtes2
{
    public partial class WebFormProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            using(StoreEntities store = new StoreEntities())
            {
                var Product = new tbl_Product
                {
                    ProductName = txtProductName.Text.Trim(),
                    IdVendor = int.Parse(DDLVendor.SelectedValue),
                    Stok = int.Parse(txtStokProduct.Text),
                    StatusProduct = int.Parse(txtProductStatus.Text)
                };

                store.tbl_Product.Add(Product);
                store.SaveChanges();
                
            }
        }
    }
}
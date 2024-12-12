using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationtes2
{
    public partial class Vendor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            using (StoreEntities store = new StoreEntities())
            {
                var vendor = new tbl_Vendor
                {
                    VendorName = txtVendorName.Text.Trim(),
                    StatusVendor = int.Parse(txtVendorStatus.Text)
                };

                store.tbl_Vendor.Add(vendor);
                store.SaveChanges();

                GridViewVendor.DataBind();
            }
        }
    }
}
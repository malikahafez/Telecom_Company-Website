using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBM3
{
    public partial class updatepoints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Click += new EventHandler(this.updatepts);
            Button1.Click += new EventHandler(this.goback);
        }
        protected void goback(object sender, EventArgs e)
        {
            Response.Redirect("admin_homepage");
        }
        protected void updatepts(object sender, EventArgs e)
        {


            GridView1.DataBind();

        }
    }
}
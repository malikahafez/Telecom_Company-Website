using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBM3
{
    public partial class input_for__transactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += new EventHandler(this.gettransactions);
            Button2.Click += new EventHandler(this.goback);
        }
        protected void goback(object sender, EventArgs e)
        {
            Response.Redirect("admin_homepage");
        }
        protected void gettransactions(object sender, EventArgs e)
        {
            GridView1.DataBind();

            }


        }
    }



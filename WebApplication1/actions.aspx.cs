using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class actions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void backToHomepage(object sender, EventArgs e)
        {
            Response.Redirect("admin_homepage.aspx");
        }
        protected void selectedList(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            if (DropDownList3.SelectedValue == "Remove benefits from an account")
            {
                Input1.Visible = true;
                Input2.Visible = true;
                mobileNo.Visible = true;
                planID.Visible = true;
                Button1.Visible = true;

            }
            else
            {
                Input1.Visible = false;
                Input2.Visible = false;
                mobileNo.Visible = false;
                planID.Visible = false;
                Button1.Visible = false;
            }
        }

        protected void yes(object sender, EventArgs e)
        {

        }

        protected void no(object sender, EventArgs e)
        {

        }

        protected void Remove(object sender, EventArgs e)
        {

        }
    }
}
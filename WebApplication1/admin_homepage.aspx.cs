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
    public partial class admin_homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["user"]);
        }
        protected void view(object sender, EventArgs e)
        {
            //redirect to page with options of views to see
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            Response.Write("Taking you to the views page");
            Response.Redirect("views.aspx");
        }

        protected void list(object sender, EventArgs e)
        {
            //redirect to page with options of lists to see
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            Response.Write("Taking you to the lists page");
            Response.Redirect("lists.aspx");
        }

        protected void takeAction(object sender, EventArgs e)
        {
            //redirect to page with actions to take (remove, add,etc)
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            Response.Write("Taking you to the actions page");
            Response.Redirect("actions.aspx");

        }
    }
}
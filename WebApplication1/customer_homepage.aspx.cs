using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class customer_homepage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string mobile = Session["mobile_num"] as string;
            Response.Write(mobile);
        }
        protected void service_plan_direct(object sender, EventArgs e)
        {
            string mobile = Session["mobile_num"] as string;
            Session.Clear(); 
            Session.Abandon();
            Session["mob"] = mobile;
            Response.Redirect("Service_plans.aspx");
        }
        protected void other_serviceplan(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("other_plans.aspx");
        }
    }
}
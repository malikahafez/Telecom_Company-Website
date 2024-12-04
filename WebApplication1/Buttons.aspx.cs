using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Benefits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ActiveBenefits(object sender, EventArgs e)
        {
            Response.Redirect("ActiveBenefitsView.aspx");

        }

        protected void UnresolvedTickets(object sender, EventArgs e)
        {
            Response.Redirect("No_of_unresolved_tickets.aspx");

        }

        protected void HighestVoucherValue(object sender, EventArgs e)
        {
            Response.Redirect("HighestVoucherValueView.aspx");
        }

        protected void RemainingAmount(object sender, EventArgs e)
        {
            Response.Redirect("RemainingAmountView.aspx");
        }

    
        protected void ExtraAmount(object sender, EventArgs e)
        {
            Response.Redirect("ExtraAmountView.aspx");
        }

    
        protected void Top10SuccessfulPayments(object sender, EventArgs e)
        {
            Response.Redirect("Top10SuccessfulPayments.aspx");
        }
    }
}
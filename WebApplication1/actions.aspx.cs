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
        protected void selectedList1(object sender, EventArgs e)
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
                confirmation.Visible = false;
                CheckBox1.Visible = false;
                CheckBox2.Visible = false;
            }
        }

        protected void yes(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["Milestone2DB_24"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            try
            {
                string mobile = mobileNo.Text;

                int plan = Int16.Parse(planID.Text);

                SqlCommand removing = new SqlCommand("Benefits_Account", conn);
                removing.CommandType = System.Data.CommandType.StoredProcedure;
                removing.Parameters.Add(new SqlParameter("@mobile_num", mobile));
                removing.Parameters.Add(new SqlParameter("@plan_id", plan));
                removing.ExecuteNonQuery();
                conn.Close();
                Response.Write("Successfully removed all benefits offered to the account from the plan");

            }
            catch (Exception)
            {
                Response.Write("<br/>Plan ID must be an integer less than 11 digits");
            }
             confirmation.Visible = false;
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox1.Checked = false ;
            CheckBox2.Checked = false;
            Input1.Text = "";
            Input2.Text = "";
        }

        protected void no(object sender, EventArgs e)
        {
            Response.Write("Successfully cancelled action");
            confirmation.Visible = false;
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            Input1.Text = "";
            Input2.Text = "";

        }

        protected void Remove(object sender, EventArgs e)
        {
           
            confirmation.Visible = true;
            CheckBox1.Visible = true;
            CheckBox2.Visible = true;
            


        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_MarkingOrderManagement
{
    public partial class userRegistration : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO user_tbl(user_name,user_email,user_ph_no,user_password) values(@user_name,@user_email,@user_ph_no,@user_password)", con);
                cmd.Parameters.AddWithValue("user_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@user_ph_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@user_password", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your Account Has been created');</script>");
                Response.Redirect("userHome.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
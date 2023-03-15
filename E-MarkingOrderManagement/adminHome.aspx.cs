using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_MarkingOrderManagement.adminData
{
    public partial class adminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            totalRecords();
        }
        
        private void totalRecords()
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                

                string command = "select Count(*) from testtable";
                SqlCommand cmd = new SqlCommand(command, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                con.Close();

                Label1.Text = ds.Tables[0].Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }



        }
    }
}
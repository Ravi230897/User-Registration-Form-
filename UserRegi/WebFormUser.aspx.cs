using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace UserRegi
{
    public partial class WebFormUser : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-AKBKQQ6;Initial Catalog=Regi;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[RegiData]
           ([name]
           ,[address]
           ,[gender]
           ,[phone]
           ,[email]
           ,[username]
           ,[password])
     VALUES
           ('" + txtName.Text + "', '" + txtAdd.Text + "', '" + gender + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + txtUser.Text + "', '" + txtPass.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registerd successfully')</script>");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";
        }
    }
}
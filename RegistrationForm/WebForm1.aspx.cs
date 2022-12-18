using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace RegistrationForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-J2BISTI;Initial Catalog=uregister;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[RegistrationForm]
           ([fname]
           ,[mobile]
           ,[gender]
           ,[dob]
           ,[email]
           ,[psw])
     VALUES
           ('" + txtName.Text + "','" + txtMob.Text + "','" + gender + "','" + txtDob.Text + "','" + txtMail.Text + "','" + txtPwd.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();

            //Response.Write("<script>alert('Registered Succesfully')</script>");
            Response.Redirect("WebForm2.aspx");
            con.Close();
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }
        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Other";
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            CleartextBoxes(this);
        }
        public void CleartextBoxes(Control parent)

        {



            foreach (Control c in parent.Controls)

            {

                if ((c.GetType() == typeof(TextBox)))

                {



                    ((TextBox)(c)).Text = "";

                }



                if (c.HasControls())

                {

                    CleartextBoxes(c);

                }

            }
        }
    }
}
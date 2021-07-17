using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String email = txtemail.Text;
        String pass = txtpassword.Text;

        ConnectionClass obj = new ConnectionClass();
        String q = "select count(*) from Admin where email='" + email + "' and password='" + pass + "'";
        String count = obj.getSingleData(q);
        if (count == "0")
        {
            String a = "Incorrect username and password";

            Response.Write("<script>alert('" + a + "')</script>");


        }
        else
        {
            Response.Redirect("Salereport.aspx");
        }

    }
}
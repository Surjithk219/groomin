using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String email = txtemail.Text;
        String phone = txtphone.Text;
        ConnectionClass obj = new ConnectionClass();
        String qry = "select Id from  Admin where email='" + email + "' and phone='" + phone + "'";
        String id = obj.getSingleData(qry);
        
         String qry1 = "select count(*) from  Admin where email='" + email + "' and phone='" + phone + "'";
        String count = obj.getSingleData(qry1);
        if (count == "0")
        {

            String a = "Email and Mobile Number not Matching";

            Response.Write("<script>alert('" + a + "')</script>");

        }
        else
        {
            Session["id"] = id;
            Session["e"] = email;
            Session["p"] = phone;
            Response.Redirect("Resetpassword.aspx");
        }
    }
}
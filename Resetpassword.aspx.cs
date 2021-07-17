using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String newp = txtnew.Text;
        String con = txtcon.Text;
        ConnectionClass obj = new ConnectionClass();
        String id = Session["id"].ToString();
        String em = Session["e"].ToString();
        String ph = Session["p"].ToString();
        if (newp == con)
        {
            String qrry = "update  Admin set password='" + newp + "' where id='" + id + "'";
            obj.Manipulate(qrry);
            Response.Redirect("Admin.aspx");
        
        }
        else
        {
            String a = "New Password and Confirm Password field does not match";

            Response.Write("<script>alert('" + a + "')</script>");

        }
    }
}
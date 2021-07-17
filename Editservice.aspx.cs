using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editservice : System.Web.UI.Page
{
    private String idd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Request.QueryString["id"];
            txtservice.Text = Request.QueryString["service"];
            txtcost.Text = Request.QueryString["cost"];
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String iid = TextBox1.Text;
        String service = txtservice.Text;
        String cost = txtcost.Text;
        ConnectionClass obj = new ConnectionClass();
        String qry = "update Service set service='" + service + "',cost='"+cost+"'  where id='"+iid+"'";
        obj.Manipulate(qry);
    }
}
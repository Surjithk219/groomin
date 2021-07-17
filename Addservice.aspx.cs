using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class S : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ConnectionClass obj = new ConnectionClass();

        String servicename = txtservice.Text;
        String cost = txtcost.Text;
        String q = "select count(*) from Service where service='" + servicename + "'";
        String count = obj.getSingleData(q);
        if (count == "0")
        {

            String qry = "insert into Service(service,cost) values('" + servicename + "','" + cost + "')";
            obj.Manipulate(qry);

        }
        else
        {
            String a = "Service Already exist";
            Response.Write("<script>alert('" + a + "')</script>");
            txtservice.Text = "";
      



        }

    }
}
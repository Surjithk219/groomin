using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bwdates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
     //   String startdate = txtstart.Text;
     //   String enddate = txtend.Text;


        String startdate = TextBox2.Text;
        String enddate = TextBox1.Text;


        Session["sdate"] = startdate;
        Session["edate"] = enddate;
        Response.Redirect("Bwdatedetails.aspx");
    }
}
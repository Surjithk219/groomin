using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String num = txtaptnumber.Text;
        String qry="select count(*) from Appointment where aptnumber='"+num+"'";
        ConnectionClass obj = new ConnectionClass();
        String count = obj.getSingleData(qry);
        if (count == "0")
        {
            String a = "Invalid Appointment number";

            Response.Write("<script>alert('" + a + "')</script>");
        }
        else
        {
            String qry1 = "select Status from Appointment where aptnumber='" + num + "'";
            String status = obj.getSingleData(qry1);
            Label1.Visible = true;
            Label2.Visible = true;
            if (status == "Selected")
            {
                String qry2 = "select remark from Appointment where aptnumber='" + num + "'";
                String remark = obj.getSingleData(qry2);
                Label2.Text = remark;
         
              
                Label1.Text = "SELECTED";
            }
            else if (status == "Rejected")
            {
                String qry3 = "select remark from Appointment where aptnumber='" + num + "'";
                String remarkk = obj.getSingleData(qry3);
                Label2.Text = remarkk;


                Label1.Text = "REJECTED";
            }
            else
            {
                Label1.Text = "NOT VERIFIED";
                Label2.Text = "Please wait......... ";

            }
            Button1.Visible = false;
           
        }

     

    }
}
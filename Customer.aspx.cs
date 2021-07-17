using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String dy, count;

        String sdate = DateTime.UtcNow.ToString("dd-MM-yyyy");
        DateTime datevlue = (Convert.ToDateTime(sdate.ToString()));
        if (DateTime.Now.Day < 10)
        {
            dy = "0" + DateTime.Now.Day.ToString();
        }
        else
        {
            dy = DateTime.Now.Day.ToString();
        }


        String mn = datevlue.Month.ToString();




        String yr = datevlue.Year.ToString();

        ConnectionClass obj = new ConnectionClass();
        String tm = datevlue.Month.ToString();
        String qry = "select count(*) from Customer where creationdate='" + sdate + "'";
        count = obj.getSingleData(qry);
        if (count == "0")
        {
            count = "0";

        }
        else
        {
            // count=count+1;

        }
        String ddddd = yr+dy + mn + count;

        String name = txtname.Text;
        String email = txtemail.Text;
        String phone = txtphone.Text;
        String det = txtdetails.Text;
        String gender = rb1.SelectedItem.Value;
        DateTime today = DateTime.Today;
        String d = today.ToString("dd-MM-yyyy");
       // ConnectionClass obj = new ConnectionClass();
        String qry1 = "insert into Customer(customer_id,name,email,phone,gender,details,creationdate) values('"+ddddd+"','" + name + "','" + email + "','" + phone + "','" +gender+ "','" + det + "','" + d + "')";
        obj.Manipulate(qry1);
        txtname.Text = "";
        txtdetails.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        rb1.ClearSelection ();
    }
}
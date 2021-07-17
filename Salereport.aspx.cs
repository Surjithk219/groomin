using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Salereport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String qry = "select count(*) from Customer";
        ConnectionClass obj=new ConnectionClass();
        int count = Convert.ToInt32(obj.getSingleData(qry));
        lbltotalcustomer.Text = count.ToString() ;
        String qr1 = "select count(*) from Appointment ";
        String count1 = obj.getSingleData(qr1).ToString();
        lbltotalappointment.Text = count1;
        String qr2 = "select count(*) from Appointment where status='Selected' ";
        String count2 = obj.getSingleData(qr2).ToString();
        Lblacceptedappointment.Text = count2;
        String qr3 = "select count(*) from Appointment where status='Rejected' ";
        String count3 = obj.getSingleData(qr3).ToString();
        lblrejctedappointment.Text = count3;

        String qr4= "select count(*) from Service ";
        String count4 = obj.getSingleData(qr4).ToString();
         lbltotalservice.Text = count4;



         String date = DateTime.UtcNow.ToString("yyyy-MM-dd");
         String qr5 = "select count(*) from Invoice where postingdate='" + date + "' ";
         String count5 = obj.getSingleData(qr5).ToString();
         lbltotaltodaysales.Text = count5;

         String datee = DateTime.Today.AddDays(-1).ToString("yyyy-MM-dd");
         String qr6 = "select count(*) from Invoice where postingdate='" + datee + "' ";
         String count6 = obj.getSingleData(qr6).ToString();
         lblyesterday.Text = count6;


         String date7 = DateTime.Today.AddDays(-7).ToString("yyyy-MM-dd");
         String qr7 = "select count(*) from Invoice where postingdate between '" + date7 + "' and '"+date+"'  ";
         String count7 = obj.getSingleData(qr7).ToString();
         lbltotal7day.Text = count7;


        String qry9="select sum(Service.cost) from Invoice join Service  on Service.id=Invoice.serviceid";
        String count9 = obj.getSingleData(qry9).ToString();
        lbltotalsale.Text = count9;
    }
   
}
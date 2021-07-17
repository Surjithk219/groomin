using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Assignservice : System.Web.UI.Page
{
    private String no;
    protected void Page_Load(object sender, EventArgs e)
    {
        no = Request.QueryString["customer_id"];
         
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      //  var rows = GridView1.Rows;
     //   int count = GridView1.Rows.Count;
        Random r = new Random();
        int num = r.Next();
       String rnum = num.ToString();
       // DateTime today = DateTime.Today;
       // String d = today.ToString();
       // String ate = d[0];
        String date = DateTime.UtcNow.ToString( "yyyy-MM-dd");
   

        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            CheckBox chk = (gvrow.Cells[2].FindControl("CheckBox1") as CheckBox);
            if (chk.Checked)
            {
                String dy, count;

                String sdate = DateTime.UtcNow.ToString("yyyy-MM-dd");
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
                String qry = "select count(*) from Invoice where postingdate='" + sdate + "'";
                count = obj.getSingleData(qry);
                if (count == "0")
                {
                    count = "0";

                }
                else
                {
                    // count=count+1;

                }
                String ddddd =yr+ dy + mn + count;


                String service = gvrow.Cells[0].Text;
               String qry1="select id from Service where service='"+service+"'";
               String tym = DateTime.Now.ToString("hh:mm:ss tt",System.Globalization.DateTimeFormatInfo.InvariantInfo);
                int utype = Convert.ToInt32( obj.getSingleData(qry1));
         

        String qr1 = "insert into Invoice(invoice_id,userid,serviceid,billingid,postingdate,time) values('"+ddddd+"','" + no + "','" + utype + "','" + rnum + "','" + date + "','"+tym+"')";
        obj.Manipulate(qr1);

    

            }



          
         
     
        }

        String a = "Invoice Number is :";

        Response.Write("<script>alert('" + a + "'+'"  + rnum + "')</script>");
        Response.Redirect("Invoice.aspx");

       
 }
   
} 

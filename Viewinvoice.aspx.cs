using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Drawing;
public partial class Viewinvoice : System.Web.UI.Page
{
    private  String billing;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

             billing = Request.QueryString["billingid"];
             invoicelbl.Text = billing;
            ConnectionClass obj = new ConnectionClass();
            String qry = "select DISTINCT  Invoice.postingdate,Customer.name,Customer.email,Customer.phone,Customer.gender from  Invoice join Customer on Customer.customer_id=Invoice.userid where Invoice.billingid='"+billing+"'";
            DataTable dt = obj.getTable(qry);
            lblname.Text = dt.Rows[0]["name"].ToString();
            lblphone.Text = dt.Rows[0]["phone"].ToString();
            lbldate.Text = dt.Rows[0]["postingdate"].ToString();
            lblgender.Text = dt.Rows[0]["gender"].ToString();
            lblemail.Text = dt.Rows[0]["email"].ToString();
             String qr1 = "select Service.service,Service.cost from  Invoice join Service on Service.id=Invoice.serviceid where Invoice.billingid='"+billing+"'";
             DBOperations db = new DBOperations();
             GridView1.DataSource = db.SelectOperation(qr1);
             GridView1.DataBind();

             int sum = 0;
             for (int i = 0; i < GridView1.Rows.Count; i++)
             {
                 sum += int.Parse(GridView1.Rows[i].Cells[2].Text);

             }

             lbltotal.Text = sum.ToString();
            }


        }



  /*  protected void Button1_Click(object sender, EventArgs e)
    {
        print();
    }
    private void print()
    {
        try
        {
            PrintDocument pd = new PrintDocument();
            pd.PrintPage += new PrintPageEventHandler(pd_PrintPage);
            pd.Print();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Response.End();
        }
    }

private void pd_PrintPage(object sender,PrintPageEventArgs e)
{
    e.Graphics.DrawString("Test Print",new System.Drawing.Font("Arial",12) ,new SolidBrush(Color.Blue),10,10);
}
    */

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
    }
}




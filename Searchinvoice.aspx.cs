using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Searchinvoice : System.Web.UI.Page
{
    private String bill;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Label3.Visible = true;
       
       
        bill = txtseARCH.Text;
        Label2.Text = bill;
       // GridView gv=new GridView();
        String qry="select distinct  Customer.name,Invoice.billingid,Invoice.postingdate from Customer join Invoice on Customer.customer_id=Invoice.userid  where Invoice.billingid like '%"+bill+"%'";
       

        DBOperations db = new DBOperations();

        GridView1.DataSource = db.SelectOperation(qry);
            
        GridView1.DataBind();
      
    }
   
  
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
          e.Row.Cells[2].Text = "NAME";
          e.Row.Cells[3].Text = "BILLING ID";
          e.Row.Cells[4].Text = "DATE";
        


        }
       
    }
}
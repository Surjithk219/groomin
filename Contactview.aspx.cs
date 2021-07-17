using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Contactview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

         if (IsPostBack == false)
        {

            bindcontent();

        }
    }
    private void bindcontent()
    {

        ConnectionClass db = new ConnectionClass();
        String qry2 = "select * from Contact where title='contact'";
        DataTable dt = db.getTable(qry2);
         Label2.Text = dt.Rows[0]["phone"].ToString();
        Label3.Text = dt.Rows[0]["email"].ToString();
        Label5.Text = dt.Rows[0]["timing"].ToString();
        Label1.Text = dt.Rows[0]["address"].ToString();
       Label4.Text = dt.Rows[0]["website"].ToString();
       
       
    }


    
}
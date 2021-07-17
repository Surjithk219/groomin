using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class AboutUs : System.Web.UI.Page
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
        String qry2 = "select * from  About where pagetitle='About'";
        DataTable dt = db.getTable(qry2);
        txtabout.Text = dt.Rows[0]["pagetitle"].ToString();
        txtdescription.Text = dt.Rows[0]["pagedescription"].ToString();
      
        txtabout.ReadOnly = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        String title = txtabout.Text;
        String description = txtdescription.Text;
        ConnectionClass obj = new ConnectionClass();
        String qry = "update About set pagedescription='"+description+"' where pagetitle='About'";
        obj.Manipulate(qry);
     
    }
}
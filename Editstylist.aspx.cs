using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Editstylist : System.Web.UI.Page
{
    private String a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcombo();

            a = Request.QueryString["stylistid"];
            ConnectionClass db = new ConnectionClass();
            String qry2 = "select * from  stylist where stylistid='" + a + "'";
            DataTable dt = db.getTable(qry2);
            txtname.Text = dt.Rows[0]["name"].ToString();
            txtphone.Text = dt.Rows[0]["phone"].ToString();
            DropDownList1.SelectedItem.Text = dt.Rows[0]["specilization"].ToString();
            String s = dt.Rows[0]["photo"].ToString();

            ImageButton1.ImageUrl = "~/Upload/" + s;
        }
    }
          public void bindcombo()
     {

         String qry = "select service from Service";
        DBOperations db = new DBOperations();
        DropDownList1.DataSource = db.SelectOperation(qry);
        DropDownList1.DataTextField = "service";
        DropDownList1.DataValueField = "service";

        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select Service", "0"));
  
        }

        
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = Request.QueryString["stylistid"];
     
        String name = txtname.Text;
        String phone = txtphone.Text;
        String spec = DropDownList1.SelectedItem.Text;
        String filename = DateTime.Now.Millisecond + FileUpload1.FileName;
        String path = Server.MapPath("./Upload") + "/" + filename;
        FileUpload1.PostedFile.SaveAs(path);
        ConnectionClass db = new ConnectionClass();
        if (FileUpload1.HasFile == false)
        {
            String qry = "update stylist set name='" + name + "',phone='" + phone + "',specilization='" + spec + "' where stylistid='" + a + "'";
           
            db.Manipulate(qry);
        }
        else
        {
            String qry1 = "update stylist set name='" + name + "',phone='" + phone + "',specilization='" + spec + "',photo='" + filename + "' where stylistid='" + a + "'";
            db.Manipulate(qry1);
        }
            
     
      Response.Redirect("Viewstylist.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        a = Request.QueryString["stylistid"];
     
        String qry = "delete from stylist where stylistid='" + a + "'";
        ConnectionClass db = new ConnectionClass();
        db.Manipulate(qry);
        Response.Redirect("Viewstylist.aspx");
    }

}
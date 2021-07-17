using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Editcustomer : System.Web.UI.Page
{
    private String no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            no = Request.QueryString["customer_id"];
            ConnectionClass obj = new ConnectionClass();
            String qry = "select * from Customer  where customer_id='" + no + "'";
            DataTable dt = obj.getTable(qry);
            txtname.Text = dt.Rows[0]["name"].ToString();
            txtemail.Text = dt.Rows[0]["email"].ToString();
            txtphone.Text = dt.Rows[0]["phone"].ToString();
            txtdetails.Text = dt.Rows[0]["details"].ToString();
            rb1.Text = dt.Rows[0]["gender"].ToString();
            txtcre.Text = dt.Rows[0]["creationdate"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        no = Request.QueryString["customer_id"];
           
         String name = txtname.Text;
        String email = txtemail.Text;
        String phone = txtphone.Text;
        String det = txtdetails.Text;
        String gender = rb1.SelectedItem.Value;
        txtcre.ReadOnly = true;
        DateTime today = DateTime.Today;
        String d = today.ToString();
     
        ConnectionClass obj = new ConnectionClass();
        String qry = "update Customer set name= '" + name + "',email='" + email + "',phone='" + phone + "',details='" + det + "',gender='" + gender + "',updationdate='"+d+"' where customer_id='"+no+"'" ;
        obj.Manipulate(qry);
    }


}
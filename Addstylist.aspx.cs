using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addstylist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = txtname.Text;
        String phone = txtphone.Text;
        String speci = DropDownList1.SelectedItem.Text;
        String filename = DateTime.Now.Millisecond + FileUpload1.FileName;
        String path = Server.MapPath("./Upload") + "/" + filename;
        FileUpload1.PostedFile.SaveAs(path);
        ConnectionClass con = new ConnectionClass();
        String qry = "insert into stylist(name,phone,specilization,photo) values('" + name + "','" + phone + "','" + speci + "','" +filename + "')";
        con.Manipulate(qry);
        Response.Redirect("Viewstylist.aspx");

    }
}
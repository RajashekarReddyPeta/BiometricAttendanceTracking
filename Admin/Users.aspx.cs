using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Windows.Forms;



public partial class admin_AddUsers : System.Web.UI.Page
{
    SqlConnection con;
    //SqlDataAdapter da;
    //DataTable dt;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricconnection1"].ToString();
        users.Visible = false;
        btnView.Visible = true;
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "insert into masterusers values('"+ddlCollegeName.SelectedItem.Value +"','"+ddlUsertype.SelectedItem.Value +"','"+txtFirstname.Text+"','"+txtLastname.Text+"','"+txtPhone.Text+"','"+txtMobile.Text+"','"+txtEmail.Text+"','"+txtLoginid.Text+"','"+txtPassword.Text+"','"+ddlStatus.SelectedItem.Value +"')";
        SqlCommand ins = new SqlCommand(str, con);
        ins.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        // da=new SqlDataAdapter(str,con);
       // dt=new DataTable();
       //da.Fill(dt);
       // Response.Redirect("Default.aspx");



    }
protected void  btncancel_Click(object sender, EventArgs e)
{
    Response.Redirect("~/Admin/Users.aspx");
}

protected void btnView_Click(object sender, EventArgs e)
{
    users.Visible = true;
    btnView.Visible = false;
}
}

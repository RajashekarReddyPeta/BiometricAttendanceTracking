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
using System.Windows.Forms;
using System.Data.SqlClient;

public partial class user_AddClasses : System.Web.UI.Page
{
    SqlConnection con;
    //SqlDataAdapter da;
   // DataTable dt;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricconnection1"].ToString();
        classes.Visible = false;
        btnview.Visible = true;
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "insert into masterclassses values('" + ddlCollegeName.SelectedItem.Value + "','" + txtClassName.Text + "','" + ddlStatus.SelectedItem.Value + "')";
        //da = new SqlDataAdapter(str, con);
        //dt = new DataTable();
        //da.Fill(dt);
       
        //Response.Redirect("~/User/Classes.aspx");
       // MessageBox.Show("inserted successfully");
        SqlCommand insert = new SqlCommand(str, con);

        insert.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();


    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        classes.Visible = true;
        btnview.Visible = false;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Classes.aspx");
    }
}

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

public partial class admin_AddColleges : System.Web.UI.Page
{
    SqlConnection con;
    //SqlDataAdapter da;
    //DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricconnection1"].ToString();
        colleges.Visible = false;
        btnview.Visible = true;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "insert into mastercolleges values('" + txtCollegeName.Text + "','" + txtAddress.Text + "','" + txtContact.Text + "','" +ddlStatus.SelectedItem.Value + "')";
        SqlCommand insert = new SqlCommand(str, con);
        insert.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        
        //da = new SqlDataAdapter(str, con);
        //dt = new DataTable();
        //da.Fill(dt);
        //MessageBox.Show ("Inserted Successfully");
    }
    protected void txtCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/colleges.aspx");
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        colleges.Visible = true;
        btnview.Visible = false;
    }
}

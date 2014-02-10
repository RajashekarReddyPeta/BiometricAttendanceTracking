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

public partial class user_Locations : System.Web.UI.Page
{
    SqlConnection con;
    //SqlDataAdapter da;
    //DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricconnection1"].ToString();
        locations.Visible = false;
        btnView.Visible = true;

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "insert into masterlocations values('" + ddlCollegeName.SelectedItem.Value + "','" + txtLocationName.Text + "','" + txtScannerDetails.Text + "','"+ddlStatus.SelectedItem.Value +"')";
        SqlCommand insert = new SqlCommand(str, con);
        insert.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        //da = new SqlDataAdapter(str, con);
        //dt = new DataTable();
        //da.Fill(dt);
        //MessageBox.Show("inserted successfully");
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        locations.Visible = true;
        btnView.Visible = false;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/User/Locations.aspx");
    }
    
}

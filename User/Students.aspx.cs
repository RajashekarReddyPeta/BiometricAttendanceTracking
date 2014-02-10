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

public partial class user_Addstudents : System.Web.UI.Page
{
    SqlConnection con;
    //SqlDataAdapter da;
    //DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        students.Visible = false;
        btnView.Visible = true;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricconnection1"].ToString();
        string str = "insert into classstudents values('" +ddlClassName.SelectedItem.Value+ "','" + ddlCollegeName.SelectedItem.Value+ "','" + txtStudentName.Text + "','" + txtRollNumber.Text + "','"+"','" + txtAddress.Text + "','" + txtContact.Text + "','" +ddlStatus.SelectedItem.Value+ "','"+"','"+"','"+0+"')";
        SqlCommand insert = new SqlCommand(str, con);
        con.Open();
        insert.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        //da = new SqlDataAdapter(str, con);
        //dt = new DataTable();
        //da.Fill(dt);
        //MessageBox.Show("Inserted successfully");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Default.aspx");
        Response.Redirect("~/Users/Students.aspx");
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        students.Visible = true;
        btnView.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

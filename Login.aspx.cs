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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;
    string uname, pwd, utype;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Session.Abandon();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["biometricConnectionString1"].ToString();

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        int i;
        FormsAuthentication.Initialize();
        string str = "select distinct loginid,password,usertype from masterusers";
        da = new SqlDataAdapter(str, con);
        dt = new DataTable();
        da.Fill(dt);
        for (i = 0; i < 10; i++)
        {
            uname = dt.Rows[i].ItemArray[0].ToString();
            pwd = dt.Rows[i].ItemArray[1].ToString();
            utype = dt.Rows[i].ItemArray[2].ToString();

            if (txtusername.Text == uname && txtpassword.Text == pwd)
            {
                Session["login"] = uname;
                FormsAuthentication.SetAuthCookie(utype, false);
                Response.Redirect("~/User/Default.aspx?Type=" + utype);
            }


        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
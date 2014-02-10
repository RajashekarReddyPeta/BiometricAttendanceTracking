using System;
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
    //DataTable dt;
    Double stime, etime,s;
    string templateid;
    int tempid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=biometric;Persist Security Info=True;User ID=sa;Password=mexico");
        //TextBox1.Text = DateTime.Now.TimeOfDay.Hours.ToString();
        //if (!IsPostBack)
        //{
        //    btnupdate_Click();
        //con.Open();
        string tempidno = "select count(attid) from studentattendace";
        SqlDataAdapter da1 = new SqlDataAdapter(tempidno, con);// no.ExecuteNonQuery();
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        string  a1 = dt1.Rows[0].ItemArray[0].ToString();

        int a = Convert.ToInt16(a1);
           // con.Close();
        string str1 = "select attid from studentattendace";
        da = new SqlDataAdapter(str1, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        for(int i =0 ;i<a;i++)
        {
        templateid = dt.Rows[i].ItemArray[0].ToString();
            if(templateid==txttemplateid.Text)
            {

                tempid=Convert.ToInt16(templateid);
            }
       
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        //string str = "insert into stime values('"+DateTime.Now.TimeOfDay.TotalHours.ToString()+"','"+"','"+"') where id=1";
        string str = "update stime set starttime='" + DateTime.Now.TimeOfDay.TotalHours.ToString() + "' where id=5";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
       }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "update stime set etime='" + DateTime.Now.TimeOfDay.TotalHours.ToString() + "' where id=5";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //da = new SqlDataAdapter(str, con);
        //dt = new DataTable();
        //da.Fill(dt);
       
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "select starttime,etime from stime where id=5";
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string st1 = dt.Rows[0].ItemArray[0].ToString();
        string st2 = dt.Rows[0].ItemArray[1].ToString();

        stime = Convert.ToDouble(st1);
        etime = Convert.ToDouble(st2);
        s += etime - stime;
        if (s > 0)
        {

            con.Open();
            string ster1 = "update stime set sattend ='" +s.ToString()+ "' where id=5";
            SqlCommand cmd = new SqlCommand(ster1, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
    protected void txttemplateid_TextChanged(object sender, EventArgs e)
    {

    }
}

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

public partial class attentersheet : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;
    Double stime, etime, s;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=biometric;Persist Security Info=True;User ID=sa;Password=mexico");
    }
    protected void btnStartTime_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "update classstudents set starttime='" + DateTime.Now.TimeOfDay.TotalHours.ToString() + "' where rollnumber='"+txtRollNo.Text+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
       }
    protected void  btnEndTime_Click(object sender, EventArgs e)
{
         con.Open();
        string str = "update classstudents set endtime='" + DateTime.Now.TimeOfDay.TotalHours.ToString() + "' where rollnumber='"+txtRollNo.Text+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
}
protected void  btnCalculate_Click(object sender, EventArgs e)
    {
        string str = "select starttime,endtime,stdatten from classstudents where rollnumber='"+txtRollNo.Text+"'";
        da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string st1 = dt.Rows[0].ItemArray[0].ToString();
        string st2 = dt.Rows[0].ItemArray[1].ToString();
        string st3 = dt.Rows[0].ItemArray[2].ToString();

        stime = Convert.ToDouble(st1);
        etime = Convert.ToDouble(st2);
        s = Convert.ToDouble(st3);
        s = s+(etime - stime);
        if (s > 0)
        {

            con.Open();
            string ster1 = "update classstudents set stdatten ='" + s.ToString() + "' where rollnumber='"+txtRollNo.Text+"'";
            SqlCommand cmd = new SqlCommand(ster1, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

}
}


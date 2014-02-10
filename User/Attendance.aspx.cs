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

public partial class attendance : System.Web.UI.Page
{
    int a = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;

    }
    protected void btnSearch1_Click(object sender, EventArgs e)
    {
       if(ddlClass.SelectedItem.Text =="Select")
            ddlClass.SelectedValue  = Convert.ToString(a);
        GridViewclass.Visible = true;
    }
}

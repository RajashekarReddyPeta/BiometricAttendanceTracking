using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String Type = Request.QueryString["Type"];
        if (Session["login"] != null)
        {
            HyperLink5.Text = "Logout";
        }
        if (Type == "admin")
        {
            HyperLink4.Visible = true;
        }
    }
}

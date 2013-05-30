using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1.Navigation
{
    public partial class NavigationBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/Navigation/NavigationBar.xml");
            DataSet dstNavContents = new DataSet();
            dstNavContents.ReadXml(path);
            ListView1.DataSource = dstNavContents.Tables[0].DefaultView;
            ListView1.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Denis_Footwear
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                if (Session["IsRegistered"] != null && (bool)Session["IsRegistered"] == true)
                {
                    PuLink.Visible = true;
                    PuLinkDisabled.Visible = false;  
                }
                else
                {
                    PuLink.Visible = false;
                    PuLinkDisabled.Visible = true;
                }
            }
        }
    }
}
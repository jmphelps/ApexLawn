using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt16(ddlType.SelectedValue) == 1)
        {
            pnlMowers.Visible = true;
            pnlRidingMowers.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = true;
        }
        else
        {
            pnlMowers.Visible = false;
            pnlRidingMowers.Visible = true;
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        return;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
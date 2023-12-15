using System;
using System.Web.UI;
using System.Web.UI.WebControls;
public class Main : MasterPage
{
    public void btnHome_Click(object sender, EventArgs e)
    {
        // navigate to default page
        Response.Redirect("Default.aspx");
        
    }
}
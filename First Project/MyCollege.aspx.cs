using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyCollege : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (radMale.Checked == true)
        {
            lblMessage.Text = "Male Is Selected";
        }
        else if (radFemale.Checked)
        {
            lblMessage.Text = "Female Is Selected";
        }
        else
        {
            lblMessage.Text = "Please Select The Gender";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
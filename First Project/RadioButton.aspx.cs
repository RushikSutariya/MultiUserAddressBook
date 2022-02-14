using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rbDIET.Checked == true)
        {
            rb3.Visible = true;
            rb4.Visible = true;
            rb5.Visible = true;
            rb6.Visible = true;
            rb7.Visible = false;
            rb8.Visible = false;
            rb9.Visible = false;
            rb10.Visible = false;
            rb3.Enabled = true;
            rb4.Enabled = true;
            rb5.Enabled = true;
            rb6.Enabled = true;
            rb7.Enabled = false;
            rb8.Enabled = false;
            rb9.Enabled = false;
            rb10.Enabled = false;

        }
        if (rbDIETDS.Checked == true)
        {

            rb3.Visible = false;
            rb4.Visible = false;
            rb5.Visible = false;
            rb6.Visible = false;
            rb7.Visible = true;
            rb8.Visible = true;
            rb9.Visible = true;
            rb10.Visible = true;
            rb3.Enabled = false;
            rb4.Enabled = false;
            rb5.Enabled = false;
            rb6.Enabled = false;
            rb7.Enabled = true;
            rb8.Enabled = true;
            rb9.Enabled = true;
            rb10.Enabled = true;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void rb3_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Degree In Computer Engineering Is Selected";
    }
    protected void rb4_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Degree In Mechanical Engineering Is Selected";
    }
    protected void rb5_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Degree In Electrical Engineering Is Selected";
    }
    protected void rb6_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Degree In Civil Engineering Is Selected";
    }
    protected void rb7_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Diploma In Computer Engineering Is Selected";
    }
    protected void rb8_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Diploma  In Mechanical Engineering Is Selected";
    }
    protected void rb9_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Diploma  In Electrical Engineering Is Selected";
    }
    protected void rb10_CheckedChanged(object sender, EventArgs e)
    {
        lbl.Text = "Diploma  In Civil Engineering Is Selected";
    }
}
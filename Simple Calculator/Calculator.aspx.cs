using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txt1.Text.Trim() == "" || txt2.Text.Trim() == "")
        {
            lblMessage.Text = "Please Enter Any Number";
        }
        else
        {
            Int32 res = Int32.Parse(txt1.Text) + Int32.Parse(txt2.Text);
            txtAns.Text = res.ToString();
            lblMessage.Text = "";
        }      
    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        if (txt1.Text.Trim() == "" || txt2.Text.Trim() == "")
        {
            lblMessage.Text = "Please Enter Any Number";
        }       
        else
        {
            Int32 res = Int32.Parse(txt1.Text) - Int32.Parse(txt2.Text);
            txtAns.Text = res.ToString();
            lblMessage.Text = "";
        }  
        
    }
    protected void btnMulti_Click(object sender, EventArgs e)
    {
        if (txt1.Text.Trim() == "" || txt2.Text.Trim() == "")
        {
            lblMessage.Text = "Please Enter Any Number";
        }
        else
        {
            Int32 res = Int32.Parse(txt1.Text) * Int32.Parse(txt2.Text);
            txtAns.Text = res.ToString();
            lblMessage.Text = "";
        }      
    }
    protected void btnDiv_Click(object sender, EventArgs e)
    {
        if (txt1.Text.Trim() == "" || txt2.Text.Trim() == "")
        {
            lblMessage.Text = "Please Enter Any Number";
        }
        else if(txt2.Text=="0"){
            lblMessage.Text = "Any Number CanNot Be Divided By Zero";
        }
        else
        {
            Int32 res = Int32.Parse(txt1.Text) / Int32.Parse(txt2.Text);
            txtAns.Text = res.ToString();
            lblMessage.Text = "";
        }      
    }
    protected void btnCl_Click(object sender, EventArgs e)
    {
        txt1.Text = "";
        txt2.Text = "";
        txtAns.Text = "";
    }
}
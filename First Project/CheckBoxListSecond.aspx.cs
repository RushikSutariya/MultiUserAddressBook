using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBoxListSecond : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
    {
        //for enable all items
        if (chkDIET.Checked == false && chkDIETDS.Checked == false)
        {
            chkCE.Enabled = false;
            chkCI.Enabled = false;
            chkME.Enabled = false;
            chkEE.Enabled = false;
            chkCEDS.Enabled = false;
            chkCIDS.Enabled = false;
            chkMEDS.Enabled = false;
            chkEEDS.Enabled = false;
        }
        else if(chkDIET.Checked == true && chkDIETDS.Checked == true)
        {
            chkCE.Enabled = true;
            chkCI.Enabled = true;
            chkME.Enabled = true;
            chkEE.Enabled = true;
            chkCEDS.Enabled = true;
            chkCIDS.Enabled = true;
            chkMEDS.Enabled = true;
            chkEEDS.Enabled = true;
        }
        else if (chkDIET.Checked == true)
        {
            chkCE.Enabled = true;
            chkCI.Enabled = true;
            chkME.Enabled = true;
            chkEE.Enabled = true;
            chkCEDS.Enabled = false;
            chkCIDS.Enabled = false;
            chkMEDS.Enabled = false;
            chkEEDS.Enabled = false;
        }
        else if (chkDIETDS.Checked == true)
        {
            chkCEDS.Enabled = true;
            chkCIDS.Enabled = true;
            chkMEDS.Enabled = true;
            chkEEDS.Enabled = true;
            chkCE.Enabled = false;
            chkCI.Enabled = false;
            chkME.Enabled = false;
            chkEE.Enabled = false;
        }
        else if(chkDIET.Checked == false)
        {
            chkCE.Enabled = false;
            chkCI.Enabled = false;
            chkME.Enabled = false;
            chkEE.Enabled = false;
        }
        else if(chkDIETDS.Checked == false)
        {
            chkCEDS.Enabled = false;    
            chkCIDS.Enabled = false;
            chkMEDS.Enabled = false;
            chkEEDS.Enabled = false;
        }
        else if (chkDIET.Checked == true && chkDIETDS.Checked == false)
        {
            chkCE.Enabled = true;
            chkCI.Enabled = true;
            chkME.Enabled = true;
            chkEE.Enabled = true;
            chkCEDS.Enabled = false;
            chkCIDS.Enabled = false;
            chkMEDS.Enabled = false;
            chkEEDS.Enabled = false;
        }
        else if (chkDIET.Checked == false && chkDIETDS.Checked == true)
        {
            chkCE.Enabled = false;
            chkCI.Enabled = false;
            chkME.Enabled = false;
            chkEE.Enabled = false;
            chkCEDS.Enabled = true;
            chkCIDS.Enabled = true;
            chkMEDS.Enabled = true;
            chkEEDS.Enabled = true;
        }
        if (chkDIET.Checked == false)
        {
            chkCE.Checked = false;
            chkCI.Checked = false;
            chkME.Checked = false;
            chkEE.Checked = false;
            
        }
        if (chkDIETDS.Checked == false)
        {
            chkCEDS.Checked = false;
            chkCIDS.Checked = false;
            chkMEDS.Checked = false;
            chkEEDS.Checked = false;
           
            
        }


    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if(chkDIET.Checked==true && chkDIETDS.Checked==true)
        {
            lblSave.Text = "You Have Selected DIET & DIETDS";
        }
        else if(chkDIET.Checked==true)
        {
            lblSave.Text = "You Have Selected DIET";
        }
        else if (chkDIETDS.Checked == true)
        {
            lblSave.Text = "You Have Selected DIETDS";
        }
        
    }
    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if(chkSelectAll.Checked==true)
        {
            if(chkCE.Checked==false && chkCE.Enabled==true)
            {
                chkCE.Checked = true;
            }
            if (chkCI.Checked == false && chkCI.Enabled == true)
            {
                chkCI.Checked = true;
            }
            if (chkME.Checked == false && chkME.Enabled == true)
            {
                chkME.Checked = true;
            }
            if (chkEE.Checked == false && chkEE.Enabled == true)
            {
                chkEE.Checked = true;
            }
            if (chkCEDS.Checked == false && chkCEDS.Enabled == true)
            {
                chkCEDS.Checked = true;
            }
            if (chkCIDS.Checked == false && chkCIDS.Enabled == true)
            {
                chkCIDS.Checked = true;
            }
            if (chkMEDS.Checked == false && chkMEDS.Enabled == true)
            {
                chkMEDS.Checked = true;
            }
            if (chkEEDS.Checked == false && chkEEDS.Enabled == true)
            {
                chkEEDS.Checked = true;
            }
            if (chkClearAll.Checked == true && chkCE.Enabled == true)
            {
                chkClearAll.Checked = false;
            }
        }
        if(chkSelectAll.Checked==false)
        {
            if(chkCE.Checked==true)
            {
                chkCE.Checked = false;
            }
            if (chkCI.Checked == true)
            {
                chkCI.Checked = false;
            }
            if (chkME.Checked == true)
            {
                chkME.Checked = false;
            }
            if (chkEE.Checked == true)
            {
                chkEE.Checked = false;
            }
            if (chkCEDS.Checked == true)
            {
                chkCEDS.Checked = false;
            }
            if (chkCIDS.Checked == true)
            {
                chkCIDS.Checked = false;
            }
            if (chkMEDS.Checked == true)
            {
                chkMEDS.Checked = false;
            }
            if (chkEEDS.Checked == true)
            {
                chkEEDS.Checked = false;
            }
        }
        
    }
    protected void chkClearAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkClearAll.Checked == true)
        {
            if (chkCE.Checked == true)
            {
                chkCE.Checked = false;
            }
            if (chkCI.Checked == true)
            {
                chkCI.Checked = false;
            }
            if (chkME.Checked == true)
            {
                chkME.Checked = false;
            }
            if (chkEE.Checked == true)
            {
                chkEE.Checked = false;
            }
            if (chkCEDS.Checked == true)
            {
                chkCEDS.Checked = false;
            }
            if (chkCIDS.Checked == true)
            {
                chkCIDS.Checked = false;
            }
            if (chkMEDS.Checked == true)
            {
                chkMEDS.Checked = false;
            }
            if (chkEEDS.Checked == true)
            {
                chkEEDS.Checked = false;
            }
            if(chkSelectAll.Checked==true)
            {
                chkSelectAll.Checked = false;
            }
            if (chkClearAll.Checked == true && chkCE.Enabled == true)
            {
                chkClearAll.Checked = false;
            }
        }
        
        if(chkCE.Checked == true || chkCI.Checked == true || chkME.Checked == true || chkEE.Checked == true || chkCEDS.Checked == true || chkCIDS.Checked == true || chkMEDS.Checked == true|| chkEEDS.Checked == true)
        {
            chkClearAll.Checked = false;
        }
    }
   
   
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        String strBranch = "";
        String strDtoD = "";

        if (chkCE.Checked)
        {
            strBranch += "Computer Engineering In Degree " + "<br>";
        }
        if (chkME.Checked)
        {
            strBranch += "Mechanical Engineering In Degree " + "<br>";
        }
        if (chkCI.Checked)
        {
            strBranch += "Civil Engineering In Degree" + "<br>";
        }
        if (chkEE.Checked)
        {
            strBranch += "Electrical Engineering In Degree" + "<br>" + "<br>";
        }

        if (chkCEDS.Checked)
        {
            strDtoD += "Computer Engineering in Diploma" + "<br>";
        }
        if (chkMEDS.Checked)
        {
            strDtoD += "Mechanical Engineering in Diploma " + "<br>";
        }
        if (chkCIDS.Checked)
        {
            strDtoD += "Civil Engineering in Diploma" + "<br>";
        }
        if (chkEEDS.Checked)
        {
            strDtoD += "Electrical Engineering in Diploma" + "<br>";
        }
        lblMessage.Text = "<br />You have Selected<br /> " + "<br>" + strBranch + "<hr>" + strDtoD;
        
    }
}
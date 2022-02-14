using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentEnrollmentForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (chkTermsCondition.Checked == true)
        {
            cvTerms.IsValid = false;
            lblMessage.Text = "Data Saved Successfully";
            txtStudentName.Text = "";
            txtEnrollmentNo.Text = "";
            txtBirthDate.Text = "";
            txtEmail.Text = "";
            txtMobileNo.Text = "";
            txtSemester.Text = "";
            ddlOfDepartment.SelectedIndex = -1;
            ddlOfInstitute.SelectedIndex = -1;
            txtStudentName.Focus();
            chkTermsCondition.Checked = false;
        }
       
        
       
    }
    protected void btnSaveLogin_Click(object sender, EventArgs e)
    {

       
        lblMessage.Text = "Login Successfully";
       


    }
    
}
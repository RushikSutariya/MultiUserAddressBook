using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Login_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
#region Button : SignUp
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        #region Local Variable
        SqlString strUsername = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        SqlString strDisplayName = SqlString.Null;
        SqlString strContactno = SqlString.Null;
        SqlString strEmail = SqlString.Null;
        string strErrorMessage = "";
        #endregion Local Variable


        #region Server Side Validation
        if (txtUsernameSignUp.Text == "")
            strErrorMessage += "-enter UserName <br>";

        if (txtPasswordSignUp.Text == "")
            strErrorMessage += "-enter Password <br>";

        if (txtDisplayNameSignup.Text == "")
            strErrorMessage += "-enter Displayname <br>";
        
        if (txtEmailSignup.Text == "")
            strErrorMessage += "-enter Email Address <br>";

        if (txtContactnoSignup.Text == "")
            strErrorMessage += "-enter Email Address <br>";

        if (strErrorMessage != "")
        {
            lblMessageSignup.Text = strErrorMessage;
            return;
        }
        #endregion Server Side Validation

        #region Gather Information

        if (txtUsernameSignUp.Text != "")
            strUsername = txtUsernameSignUp.Text.ToString().Trim();

        if (txtPasswordSignUp.Text != "")
            strPassword = txtPasswordSignUp.Text.ToString().Trim();

        if (txtContactnoSignup.Text != "")
            strContactno = txtContactnoSignup.Text.ToString().Trim();

        if (txtDisplayNameSignup.Text != "")
            strDisplayName = txtDisplayNameSignup.Text.ToString().Trim();

        if (txtEmailSignup.Text != "")
            strEmail = txtEmailSignup.Text.ToString().Trim();

        

        #endregion Gather Information

        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);



        try
        {
            #region Set Connection String and Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_User_Insert";
            objCmd.Parameters.AddWithValue("UserName", strUsername);
            objCmd.Parameters.AddWithValue("Password", strPassword);
            objCmd.Parameters.AddWithValue("DisplayName", strDisplayName);
            objCmd.Parameters.AddWithValue("MobileNo", strContactno);
            objCmd.Parameters.AddWithValue("Email", strEmail);
            #endregion Set Connection String and Command Object
            objCmd.ExecuteNonQuery();

            lblMessageSignup.Text = "Successfully Created Account ! Please Login";

            txtEmailSignup.Text = "";
            txtUsernameSignUp.Text = "";
            txtPasswordSignUp.Text = "";
            txtDisplayNameSignup.Text = "";
            txtEmailSignup.Text = "";


            if (objConn.State != ConnectionState.Closed)
                objConn.Close();
        }
        catch (Exception ex)
        {
            lblMessageSignup.Text = ex.Message;
        }
        finally
        {
            if (objConn.State != ConnectionState.Closed)
                objConn.Close();
        }
    }
    #endregion Button : SignUp
    
}
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

public partial class AdminPanel_State_StateAddEdit : System.Web.UI.Page
{
    #region Load Event
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillDropDownList();

            if (Request.QueryString["StateID"] != null)
            {
                //lblMessage.Text = "Edit  Mode | StateID = " + Request.QueryString["StateID"].ToString();
                FillControls(Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["StateID"])));
            }
            else
            {
                //lblMessage.Text = "Add Mode";
            }


        }
    }
    #endregion Load Event

    #region Button : Save
    protected void btnSave_Click(object sender, EventArgs e)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        SqlInt32 strCountryID = SqlInt32.Null;
        SqlString strStateName = SqlString.Null;
        SqlString strStateCode = SqlString.Null;
        #endregion Local Variables

        try
        {
            #region Server Side Validation
            //Server Side Validation

            string strErrorMessge = "";
            if (ddlCountry.SelectedIndex == 0)
                strErrorMessge += "-Select Country <br/>";

            if (txtStateName.Text.Trim() == "")
                strErrorMessge += "- Enter State Name <br/>";

            if (txtStateCode.Text.Trim() == "")
                strErrorMessge += "- Enter State Code <br/>";

            if (strErrorMessge.Trim() != "")
            {
                lblMessage.Text = strErrorMessge;
                return;
            }
            #endregion Server Side Validation

            #region Gather the Information
            //Gather the Information

            if (ddlCountry.SelectedIndex > 0)
                strCountryID = Convert.ToInt32(ddlCountry.SelectedValue);

            if (txtStateName.Text.Trim() != "")
                strStateName = txtStateName.Text.Trim();

            if (txtStateCode.Text.Trim() != "")
                strStateCode = txtStateCode.Text.Trim();
            #endregion Gather the Information

            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.Parameters.AddWithValue("@CountryID", strCountryID);
            objCmd.Parameters.AddWithValue("@StateName", strStateName);
            objCmd.Parameters.AddWithValue("@StateCode", strStateCode);
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            #endregion Set Connection & Command Object

            if (Request.QueryString["StateID"] != null)
            {
                #region Update Record
                //edit mode
                objCmd.Parameters.AddWithValue("@StateID", Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["StateID"].ToString().Trim())));
                objCmd.CommandText = "PR_State_UpdateByUserIDStateID";
                objCmd.ExecuteNonQuery();
                Response.Redirect("~/AdminPanel/State/StateList.aspx", true);
                #endregion Update Record
            }
            else
            {
                #region Insert Record
                //Add Mode
                objCmd.CommandText = "PR_State_Insert";
                objCmd.ExecuteNonQuery();
                
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Data Inserted Successfully";
                //Response.Redirect("~/AdminPanel/State/StateList.aspx", true);
                txtStateName.Text = "";
                txtStateCode.Text = "";
                ddlCountry.SelectedIndex = 0;
                ddlCountry.Focus();
                #endregion Insert Record
            }
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }
    #endregion Button : Save

    #region Button : Cancel
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPanel/State/StateList.aspx", true);
    }
    #endregion Button : Cancel

    #region Fill DropDownList
    protected void FillDropDownList()
    {
        DropDownFillMethods.DropDownListCountry(ddlCountry, Session["UserID"]);
    }
    #endregion Fill DropDownList

    #region Fill Controls
    private void FillControls(SqlInt32 StateID)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        #endregion Local Variables
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_State_SelectByUserIDStateID";
            objCmd.Parameters.AddWithValue("@StateID", StateID.ToString().Trim());
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            #endregion Set Connection & Command Object

            #region Read the Value and set the controls

            SqlDataReader objSDR = objCmd.ExecuteReader();

            if (objSDR.HasRows)
            {
                while (objSDR.Read())
                {
                    if (objSDR["StateName"].Equals(DBNull.Value) != true)
                    //if(!objSDR["StateName"].Equals(DBNull.Value))      
                    {
                        txtStateName.Text = objSDR["StateName"].ToString().Trim();
                    }

                    if (objSDR["CountryID"].Equals(DBNull.Value) != true)
                    {
                        ddlCountry.SelectedValue = objSDR["CountryID"].ToString().Trim();
                    }
                    if (objSDR["StateCode"].Equals(DBNull.Value) != true)
                    {
                        txtStateCode.Text = objSDR["StateCode"].ToString().Trim();
                    }
                    break;
                }
            }
            else
            {
                lblMessage.Text = "No Data available for the StateID" + StateID.ToString();
            }
            #endregion Read the Value and set the controls
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }

    }
    #endregion Fill Controls

    #region Cancle Event
    protected void btnStateCancle_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/AdminPanel/State/StateList.aspx", true);
        Response.Redirect("~/AdminPanel/State/List");
    }
    #endregion Cancle Event
}
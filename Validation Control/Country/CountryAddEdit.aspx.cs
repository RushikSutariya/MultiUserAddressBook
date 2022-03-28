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

public partial class Content_AdminPanel_Country_CountryAddEdit : System.Web.UI.Page
{
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.RouteData.Values["CountryID"] != null)
            {

                FillControls(Convert.ToInt32(CommonDropDownFIllMethod.Base64decode(Page.RouteData.Values["CountryID"].ToString())));
            }

        }
    }
    #endregion Page Load

    #region Fill Controls
    private void FillControls(SqlInt32 CountryID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);
        try
        {
            if (objConn.State == ConnectionState.Closed)
            {
                objConn.Open();
            }


            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "[dbo].[PR_Country_SelectByPKUserID]";
            objCmd.Parameters.AddWithValue("@CountryID", CountryID.ToString().Trim());
            objCmd.Parameters.AddWithValue("@UserID", Session["UserID"]);

            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows)
            {
                while (objSDR.Read())
                {
                    if (!objSDR["CountryID"].Equals(DBNull.Value))
                    {
                        txtCountryName.Text = objSDR["CountryName"].ToString().Trim();
                        txtCountryCode.Text = objSDR["CountryCode"].ToString().Trim();
                    }
                    break;
                }

            }
            else
            {
                lblMessage.Text = "No Data Available for the CountryID = " + CountryID.ToString();
            }
            objConn.Close();
        }

        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }

        finally
        {
            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }

        }
    }
    #endregion Fill Controls

    #region BUtton Cancle
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPanel/Country/CountryList", true);
    }
    #endregion BUtton Cancle

    #region Button Add
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlString strCountryName = SqlString.Null;
        SqlString strCountryCode = SqlString.Null;
        
        String strErrorMessage = "";
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);

        #region Server Side Validation
        try
        {
            if (txtCountryName.Text.Trim() == "" || txtCountryCode.Text.Trim() == "")
            {
                strErrorMessage += "Enter Name Or Code<br>";
            }

            if (strErrorMessage != "")
            {
                lblMessage.Text = strErrorMessage;
                return;
            }
        #endregion Server Side Validation

            #region Procedure Update
            objConn.Open();
            strCountryName = txtCountryName.Text.Trim();
            strCountryCode = txtCountryCode.Text.Trim();
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.Parameters.AddWithValue("@CountryName", strCountryName);
            objCmd.Parameters.AddWithValue("@CountryCode", strCountryCode);
            objCmd.Parameters.AddWithValue("@UserID", Session["UserID"]);


            if (CommonDropDownFIllMethod.Base64decode(Page.RouteData.Values["CountryID"].ToString().Trim()) != null)
            {
                objCmd.Parameters.AddWithValue("@CountryID", Convert.ToInt32(CommonDropDownFIllMethod.Base64decode(Page.RouteData.Values["CountryID"].ToString().Trim())));
               
                objCmd.CommandText = "[dbo].[PR_Country_UpdateByPKUserID]";
                objCmd.ExecuteNonQuery();
                Response.Redirect("~/AdminPanel/Country/CountryList");
            }
            #endregion Procedure Update

            #region Procedure Insert
            else
            {
                objCmd.Parameters.AddWithValue("@UserName", Session["UserName"]);
                
                objCmd.CommandText = "[dbo].[PR_Country_Insert]";
                objCmd.ExecuteNonQuery();
                lblMessage.Text = "Data Added Successfully";
                txtCountryName.Text = "";
                txtCountryCode.Text = "";
                txtCountryName.Focus();
            }



            objConn.Close();
            #endregion Procedure Insert



        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }
        }
    }
    #endregion Button Add
}
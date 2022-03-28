using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for CommonDropDownFillMethods
/// </summary>
public static class CommonDropDownFIllMethod
{
    #region Fill Drop Down List | Country
    public static void FillDropDownCountryList(DropDownList ddl, int UserID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "[dbo].[PR_Country_SelectAllByUserID]";
            objCmd.Parameters.AddWithValue("@UserID", UserID);

            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "CountryID";
                ddl.DataTextField = "CountryName";
                ddl.DataBind();

            }
            objConn.Close();
        }

        catch (Exception ex)
        {
            
        }

        finally
        {
            ddl.Items.Insert(0, new ListItem("Select Country", "-1"));
            objConn.Close();
        }

    }
    #endregion Fill Drop Down List | Country

    #region FillDropDownStateList
    public static void FillDropDownStateList(DropDownList ddl, int UserID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "[dbo].[PR_State_SelectAllByUserID]";
            objCmd.Parameters.AddWithValue("@UserID", UserID);

            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "StateID";
                ddl.DataTextField = "StateName";
                ddl.DataBind();

            }
            objConn.Close();
        }

        catch (Exception ex)
        {
            
        }

        finally
        {
            ddl.Items.Insert(0, new ListItem("Select State", "-1"));
            objConn.Close();
        }
    }
    #endregion FillDropDownStateList

    #region FillDropDownCityList
    public static void FillDropDownCityList(DropDownList ddl, int UserID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "[dbo].[PR_City_SelectAllByUserID]";
            objCmd.Parameters.AddWithValue("@UserID", UserID);

            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "CityID";
                ddl.DataTextField = "CityName";
                ddl.DataBind();

            }
            objConn.Close();
        }

        catch (Exception ex)
        {

        }

        finally
        {
            ddl.Items.Insert(0, new ListItem("Select City", "-1"));
            objConn.Close();
        }
    }
    #endregion FillDropDownStateList

    #region FillDropDownStateListByCountryID
    public static void FillDropDownStateListByCountryID(DropDownList ddl, int UserID, int CountryID)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUSer_AddressBookConnectionString"].ConnectionString);
        #endregion Local Variables
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
            {
                objConn.Open();
            }
            SqlCommand objCmd = new SqlCommand();
            objCmd.Connection = objConn;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_State_SelectForDropDownListByUserIDAndPK";
            objCmd.Parameters.AddWithValue("@UserID", UserID);
            objCmd.Parameters.AddWithValue("@CountryID", CountryID);
            #endregion Set Connection & Command Object

            #region Read the values and set controls
            SqlDataReader objSDR = objCmd.ExecuteReader();

            ddl.DataSource = objSDR;
            ddl.DataValueField = "StateID";
            ddl.DataTextField = "StateName";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("-- Select State --", "-1"));

            #endregion Read the values and set controls
            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }
        }
    }

    #endregion FillDropDownStateListByCountryID

    #region FillDropDownCityListByStateID

    public static void FillDropDownCityListByStateID(DropDownList ddl, int UserID, int StateID)
    {
        #region obj conn
         SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUserAddressBooksConnectionString"].ConnectionString);
        #endregion obj conn

            #region obj cmd
            try
            {
                if (objConn.State == ConnectionState.Closed)
                    objConn.Open();

                SqlCommand objCmd = objConn.CreateCommand();
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[dbo].[PR_City_SelectByStateIDUserID]";
                objCmd.Parameters.AddWithValue("@StateID", StateID);
                objCmd.Parameters.AddWithValue("@UserID", UserID);

                SqlDataReader objSDR = objCmd.ExecuteReader();

                if (objSDR.HasRows)
                {
                    ddl.DataSource = objSDR;
                    ddl.DataValueField = "CityID";
                    ddl.DataTextField = "CityName";
                    ddl.DataBind();
                }
            #endregion obj cmd

            }

            catch (Exception ex)
            {
               
            }
            finally
            {
                ddl.Items.Insert(0, new ListItem("Select City", "-1"));
                if (objConn.State == ConnectionState.Open)
                    objConn.Close();
            }
    }

    #endregion FillDropDownCityListByStateID

    #region FillCBLContactCategory
    public static void FillCBLContactCategory(CheckBoxList cbl, int UserID)
    {
        #region Local Variables
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MultiUser_AddressBookConnectionString"].ConnectionString);
        #endregion Local Variables
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
            {
                objConn.Open();
            }
            SqlCommand objCmd = new SqlCommand();
            objCmd.Connection = objConn;
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "[dbo].[PR_ContactCategory_SelectForDropDownListByUserID]";
            objCmd.Parameters.AddWithValue("@UserID", UserID);
            #endregion Set Connection & Command Object

            #region Read the values and set controls
            SqlDataReader objSDR = objCmd.ExecuteReader();

            cbl.DataSource = objSDR;
            cbl.DataValueField = "ContactCategoryID";
            cbl.DataTextField = "ContactCategoryName";
            cbl.DataBind();

            #endregion Read the values and set controls

            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }
        }
        catch (Exception ex)
        {

        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
            {
                objConn.Close();
            }
        }
    }
    #endregion FillCBLContactCategory

    #region EnCodeData
    public static string Base64encode(string plaintext)
    {
        var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plaintext);
        return System.Convert.ToBase64String(plainTextBytes);
    }
    #endregion EnCodeData

    #region DecodeData
    public static string Base64decode(string Base64EncodedData)
    {
        var Base64DataBytes = System.Convert.FromBase64String(Base64EncodedData);
        return System.Text.Encoding.UTF8.GetString(Base64DataBytes);
    }
    #endregion DecodeData
}

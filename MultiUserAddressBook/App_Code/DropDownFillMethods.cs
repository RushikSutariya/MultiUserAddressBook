using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Class1
/// </summary>
public class DropDownFillMethods
{
    #region DropDownListCountry 
    public static void DropDownListCountry(DropDownList ddl , object UserID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Coutry_SelectForDropDownList";
            objCmd.Parameters.AddWithValue("@UserID", UserID);
            SqlDataReader objSDR = objCmd.ExecuteReader();
            #endregion Set Connection & Command Object

            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "CountryID";
                ddl.DataTextField = "CountryName";
                ddl.DataBind();
            }

            ddl.Items.Insert(0, new ListItem("Select Country", "-1"));

            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
        catch (Exception ex)
        {
            //lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }

    #endregion DropDownListCountry 

    #region DropDownListState 
    public static void DropDownListState(DropDownList ddl, object UserID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_State_SelectForDropDownList";
            objCmd.Parameters.AddWithValue("UserID", UserID);
            SqlDataReader objSDR = objCmd.ExecuteReader();
            #endregion Set Connection & Command Object

            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "StateID";
                ddl.DataTextField = "StateName";
                ddl.DataBind();
            }

            ddl.Items.Insert(0, new ListItem("Select State", "-1"));

            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
        catch (Exception ex)
        {
            //lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }

    #endregion DropDownListState

    #region DropDownListStateByCountryID 
    public static void DropDownListStateByCountryID(DropDownList ddl, DropDownList ddlC, object UserID)
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_State_SelectForDropDownListByCountryID";
            objCmd.Parameters.AddWithValue("@CountryID", ddlC.SelectedValue);
            objCmd.Parameters.AddWithValue("UserID", UserID);
            SqlDataReader objSDR = objCmd.ExecuteReader();
            #region Read The Data
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.Enabled = true;
                ddl.DataValueField = "StateID";
                ddl.DataTextField = "StateName";
                ddl.DataBind();
            }
            #endregion Read The Data
            ddl.Items.Insert(0, new ListItem("Select State", "-1"));

            objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            //lblMeassage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion DropDownListStateByCountryID 

    #region DropDownListCity
    public static void DropDownListCity(DropDownList ddl, object UserID)
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_City_SelectForDropDownList";
            objCmd.Parameters.AddWithValue("UserID", UserID);
            SqlDataReader objSDR = objCmd.ExecuteReader();

            #region Read The Data
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "CityID";
                ddl.Enabled = true;
                ddl.DataTextField = "CityName";
                ddl.DataBind();
                //ddlState.Items.Insert(0, new ListItem("Select State", "-1"));
            }
            #endregion Read The Data
            ddl.Items.Insert(0, new ListItem("Select City", "-1"));

            objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            //lblMessage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion DropDownListCity

    #region DropDownListCityByStateID
    public static void DropDownListCityByStateID(DropDownList ddl, DropDownList ddlS, object UserID)
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_City_SelectForDropDownListByStateID";
            objCmd.Parameters.AddWithValue("StateID", ddlS.SelectedValue);
            objCmd.Parameters.AddWithValue("UserID", UserID);
            SqlDataReader objSDR = objCmd.ExecuteReader();
            //ddl.Enabled = true;
            //ddl.Items.Clear();
            #region Read The Data
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "CityID";
                ddl.DataTextField = "CityName";
                ddl.Enabled = true;
                ddl.DataBind();
            }
            #endregion Read The Data
            ddl.Items.Insert(0, new ListItem("Select City", "-1"));

            objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            //lblMeassage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion DropDownListCityByStateID

    #region DropDownListContactCategory
    public static void DropDownListContactCategory(DropDownList ddl)
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_ContactCategory_SelectForDropDownList";
            //objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            SqlDataReader objSDR = objCmd.ExecuteReader();

            #region Read The Data
            if (objSDR.HasRows == true)
            {
                ddl.DataSource = objSDR;
                ddl.DataValueField = "ContactCategoryID";
                ddl.DataTextField = "ContactCategoryName";
                ddl.DataBind();
                //ddlState.Items.Insert(0, new ListItem("Select State", "-1"));
            }
            #endregion Read The Data
            ddl.Items.Insert(0, new ListItem("Select ContactCategory", "-1"));

            objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            //lblMessage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }

    #endregion DropDownListContactCategory

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


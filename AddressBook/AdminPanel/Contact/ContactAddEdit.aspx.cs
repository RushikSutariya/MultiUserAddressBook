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

public partial class AdminPanel_Contact_ContactAddEdit : System.Web.UI.Page
{
    #region Load Event 
    protected void Page_Load(object sender, EventArgs e)
    {
               
        
        if (!Page.IsPostBack)
        {
            FillDropDownCountry();
            FillDropDownState();
            FillDropDownCity();
            FillDropDownContactCategory();

            if (Request.QueryString["ContactID"] != null)
            {
                lblMeassage.Text = "Edit Mode | ContactID = " + Request.QueryString["ContactID"].ToString();
                FillControls(Convert.ToInt32(Request.QueryString["ContactID"]));

            }
            else
            {
                lblMeassage.Text = "Add Mode";
            }

           
        }

    }
    #endregion Load Event

    #region ContactCategorySave Event
    protected void btnContactCategorySave_Click(object sender, EventArgs e)
    {
        #region Local Variable
        SqlInt64 strCountryID = SqlInt64.Null;
        SqlInt64 strStateID = SqlInt64.Null;
        SqlInt64 strCityID = SqlInt64.Null;
        SqlInt64 strContactCategoryID = SqlInt64.Null;
        SqlString strContactName = SqlString.Null;
        SqlInt64 strContactNo = SqlInt64.Null;
        SqlInt64 strWhatsappNo = SqlInt64.Null;
        SqlString strBirthDate = SqlString.Null;
        SqlString strEmail = SqlString.Null;
        SqlInt64 strAge = SqlInt64.Null;
        SqlString strAddress = SqlString.Null;
        #endregion Local Variable

        SqlString strErrorMessage = "";

        #region Server Side Validation
        if (ddlCountryList.SelectedIndex == 0)
            strErrorMessage += "- Select The Country <br />";
        if (ddlStateList.SelectedIndex == 0)
            strErrorMessage += "- Select The State <br/>";
        if (ddlCityList.SelectedIndex == 0)
            strErrorMessage += "- Select The City <br />";
        if (ddlContactCategory.SelectedIndex == 0)
            strErrorMessage += "Select The Contact Category <br />";
        if (txtContactName.Text.Trim() == "")
            strErrorMessage += "- Enter The ContactName <br/>";
        if (txtContactNo.Text.Trim() == "")
            strErrorMessage += "- Enter The ContactNumber <br/>";
        if (txtWhatsappNo.Text.Trim() == "")
            strErrorMessage += "- Enter The Whatsapp Number <br />";
        if (txtEmail.Text.Trim() == "")
            strErrorMessage += "- Enter The Email Address <br/>";
        if (txtAge.Text.Trim() == "")
            strErrorMessage += "- Enter The Age <br/>";
        if (txtAddress.Text.Trim() == "")
            strErrorMessage += "- Enter The Address <br/>";
        if (strErrorMessage != "")
        {
            lblMeassage.Text = "Please Enter The Data";
            return;
        }
        #endregion Server Side Validation
        // Gather The Information 
        #region Gather The Information 
        if (ddlCountryList.SelectedIndex > 0)
            strCountryID = Convert.ToInt64(ddlCountryList.SelectedValue);
        if (ddlStateList.SelectedIndex > 0)
            strStateID = Convert.ToInt64(ddlStateList.SelectedValue);
        if (ddlCityList.SelectedIndex > 0)
            strCityID = Convert.ToInt64(ddlCityList.SelectedValue);
        if (ddlContactCategory.SelectedIndex > 0)
            strContactCategoryID = Convert.ToInt32(ddlContactCategory.SelectedValue);
        if (txtContactName.Text.Trim() != "")
            strContactName = txtContactName.Text.Trim();
        if (txtContactNo.Text.Trim() != "")
            strContactNo = Convert.ToInt64(txtContactNo.Text.Trim());
        if (txtWhatsappNo.Text.Trim() != "")
            strWhatsappNo = Convert.ToInt64(txtWhatsappNo.Text.Trim());
        if (txtBirthDate.Text.Trim() != "")
            strBirthDate = txtBirthDate.Text.Trim();
        if (txtEmail.Text.Trim() != "")
            strEmail = txtEmail.Text.Trim();
        if (txtAge.Text.Trim() != "")
            strAge = Convert.ToInt64(txtAge.Text.Trim());
        if (txtAddress.Text.Trim() != "")
            strAddress = txtAddress.Text.Trim();
        #endregion Gather The Information

        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        { 
        objConn.Open();

        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.Parameters.AddWithValue("@CountryID", strCountryID);
        objCmd.Parameters.AddWithValue("@StateID", strStateID);
        objCmd.Parameters.AddWithValue("@CityID", strCityID);
        objCmd.Parameters.AddWithValue("@ContactCategoryID", strContactCategoryID);
        objCmd.Parameters.AddWithValue("@ContactName", strContactName);
        objCmd.Parameters.AddWithValue("@ContactNo", strContactNo);
        objCmd.Parameters.AddWithValue("@WhatsappNo", strWhatsappNo);
        objCmd.Parameters.AddWithValue("@BirthDate", strBirthDate);
        objCmd.Parameters.AddWithValue("@Email", strEmail);
        objCmd.Parameters.AddWithValue("@Age", strAge);
        objCmd.Parameters.AddWithValue("@Address", strAddress);

        if (Request.QueryString["ContactID"] != null)
        {
            #region Update Record
            //edit mode
            objCmd.Parameters.AddWithValue("@ContactID", Request.QueryString["ContactID"].ToString().Trim());
            objCmd.CommandText = "PR_Contact_UpdateByPK";
            objCmd.ExecuteNonQuery();
            Response.Redirect("~/AdminPanel/Contact/ContactList.aspx", true);
            #endregion Update Record
        }
        else
        {
            #region Insert Record
            //Add Mode
            objCmd.CommandText = "PR_Contact_Insert";
            objCmd.ExecuteNonQuery();
            lblMeassage.Text = "Data Inserted Successfully";
            Response.Redirect("~/AdminPanel/State/StateList.aspx", true);
            
            #endregion Insert Record
        }
        if (objConn.State == ConnectionState.Open)
            objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }

    }
    
    #endregion ContactCategorySave Event

    #region FillDropDownCountry
    private void FillDropDownCountry()
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
            try
            { 
            objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_Coutry_SelectForDropDownList";
            SqlDataReader objSDR = objCmd.ExecuteReader();

            #region Read The Data
            if (objSDR.HasRows == true)
            {
                ddlCountryList.DataSource = objSDR;
                ddlCountryList.DataValueField = "CountryID";
                ddlCountryList.DataTextField = "CountryName";
                ddlCountryList.DataBind();
            }
            #endregion Read The Data
            ddlCountryList.Items.Insert(0, new ListItem("Select Country", "-1"));

            objConn.Close();
            }
            #endregion Set The Connection And Command Object
            catch (Exception ex)
            {
                lblMeassage.Text = ex.Message;
            }
            finally
            {
                objConn.Close();
            }
         }

    #endregion FillDropDownCountry

    #region FillDropDownState
    private void FillDropDownState()
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-DRH54DP\\SQLEXPRESS; Initial Catalog= AddressBook; Integrated Security=True");
        try
        { 
        objConn.Open();

        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_State_SelectForDropDownList";
        SqlDataReader objSDR = objCmd.ExecuteReader();
        #region Read The Data
        if (objSDR.HasRows == true)
        {
            ddlStateList.DataSource = objSDR;
            ddlStateList.DataValueField = "StateID";
            ddlStateList.DataTextField = "StateName";
            ddlStateList.DataBind();
        }
        #endregion Read The Data
        ddlStateList.Items.Insert(0, new ListItem("Select State", "-1"));

        objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            objConn.Close();
        }
    }
    
    #endregion FillDropDownState

    #region FillDropDownCity
    private void FillDropDownCity()
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-DRH54DP\\SQLEXPRESS; Initial Catalog= AddressBook; Integrated Security=True");
        try 
        {
        objConn.Open();

        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_City_SelectForDropDownList";
        SqlDataReader objSDR = objCmd.ExecuteReader();
       #region Read The Data 
        if (objSDR.HasRows == true)
        {
            ddlCityList.DataSource = objSDR;
            ddlCityList.DataValueField = "CityID";
            ddlCityList.DataTextField = "CityName";
            ddlCityList.DataBind();
        }
        #endregion Read The Data
        ddlCityList.Items.Insert(0, new ListItem("Select City", "-1"));

        objConn.Close();
        }
        #endregion Set The Connection And Command Object
        catch (Exception ex)
            {
                lblMeassage.Text = ex.Message;
            }
            finally
            {
                objConn.Close();
            }
    }

    #endregion FillDropDownCity

    #region FillDropDownContactCategory
    private void FillDropDownContactCategory()
    {
        #region Set The Connection And Command Object
        SqlConnection objConn = new SqlConnection("data source = DESKTOP-DRH54DP\\SQLEXPRESS; Initial Catalog= AddressBook; Integrated Security=True");
       try
       { 
        objConn.Open();

        SqlCommand objCmd = objConn.CreateCommand();
        objCmd.CommandType = CommandType.StoredProcedure;
        objCmd.CommandText = "PR_ContactCategory_SelectForDropDownList";
        SqlDataReader objSDR = objCmd.ExecuteReader();

        #region Read The Data
        if (objSDR.HasRows == true)
        {
            ddlContactCategory.DataSource = objSDR;
            ddlContactCategory.DataValueField = "ContactCategoryID";
            ddlContactCategory.DataTextField = "ContactCategoryName";
            ddlContactCategory.DataBind();
        }
        #endregion Read The Data
        ddlContactCategory.Items.Insert(0, new ListItem("Select ContactCategory", "-1"));

        objConn.Close();
       }
       #endregion Set The Connection And Command Object
       catch (Exception ex)
       {
           lblMeassage.Text = ex.Message;
       }
       finally
       {
           objConn.Close();
       }
    }

    #endregion FillDropDownContactCategory

    #region FillControls
    private void FillControls(SqlInt32 ContactID)
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
            objCmd.CommandText = "PR_Contact_SelectByPK";
            objCmd.Parameters.AddWithValue("@ContactID", ContactID.ToString().Trim());
            #endregion Set Connection & Command Object

            #region Read the Value and set the controls

            SqlDataReader objSDR = objCmd.ExecuteReader();

            if (objSDR.HasRows)
            {
                while (objSDR.Read())
                {
                    if (objSDR["CountryID"].Equals(DBNull.Value) != true)
                    {
                        ddlCountryList.SelectedValue = objSDR["CountryID"].ToString().Trim();
                    }
                    if (objSDR["StateID"].Equals(DBNull.Value) != true)
                    {
                        ddlStateList.SelectedValue = objSDR["StateID"].ToString().Trim();
                    }
                    if (objSDR["CityID"].Equals(DBNull.Value) != true)
                    {
                        ddlCityList.SelectedValue = objSDR["CityID"].ToString().Trim();
                    }
                     if (objSDR["ContactCategoryID"].Equals(DBNull.Value) != true)
                    {
                        ddlContactCategory.SelectedValue = objSDR["ContactCategoryID"].ToString().Trim();
                    }
                    if (objSDR["ContactName"].Equals(DBNull.Value) != true)
                    {
                        txtContactName.Text = objSDR["ContactName"].ToString().Trim();
                    }
                    if (objSDR["ContactNo"].Equals(DBNull.Value) != true)     
                    {
                        txtContactNo.Text = objSDR["ContactNo"].ToString().Trim();
                    }
                    if (objSDR["WhatsappNo"].Equals(DBNull.Value) != true)
                    {
                        txtWhatsappNo.Text = objSDR["WhatsappNo"].ToString().Trim();
                    }
                    if (objSDR["BirthDate"].Equals(DBNull.Value) != true)
                    {
                        txtBirthDate.Text = objSDR["BirthDate"].ToString().Trim();
                    }
                    if (objSDR["Email"].Equals(DBNull.Value) != true)
                    {
                        txtEmail.Text = objSDR["Email"].ToString().Trim();
                    }
                    if (objSDR["Age"].Equals(DBNull.Value) != true)
                    {
                        txtAge.Text = objSDR["Age"].ToString().Trim();
                    }
                    if (objSDR["Address"].Equals(DBNull.Value) != true)
                    {
                        txtAddress.Text = objSDR["Address"].ToString().Trim();
                    }
                    break;
                }
            }
            else
            {
                lblMeassage.Text = "No Data available for the ContactID" + ContactID.ToString();
            }
            #endregion Read the Value and set the controls
        }
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }

    }

    #endregion FillControls

    #region Cancle Event
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPanel/Contact/ContactList.aspx", true);
    }

    #endregion Cancle Event
}
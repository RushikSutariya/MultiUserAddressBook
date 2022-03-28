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
            FillCBLContactCategoryID();
            //FillDropDownContactCategory();

            if (Request.QueryString["ContactID"] != null)
            {
                //lblMeassage.Text = "Edit Mode | ContactID = " + Request.QueryString["ContactID"].ToString();
                FillControls(Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactID"])));
                FillControlCBLContactCategory(Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactID"])));
                FillDropDownState();
                FillDropDownCity();

            }
            else
            {
               // lblMeassage.Text = "Add Mode";
            }


        }

    }
    #endregion Load Event

    #region CountryList EVent
    protected void ddlCountryList_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDropDownState();
    }
    #endregion CountryList EVent

    #region StateList Event
    protected void ddlStateList_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDropDownCity();
    }
    #endregion StateList Event

    #region Button : Save

    protected void btnContactSave_Click(object sender, EventArgs e)
    {

        #region Local Variable
        SqlInt64 strCountryID = SqlInt64.Null;
        SqlInt64 strStateID = SqlInt64.Null;
        SqlInt64 strCityID = SqlInt64.Null;
        SqlInt64 strContactCategoryID = SqlInt64.Null;
        SqlString strContactName = SqlString.Null;
        SqlString strContactNo = SqlString.Null;
        SqlString strWhatsappNo = SqlString.Null;
        SqlDateTime strBirthDate = SqlDateTime.Null;
        SqlString strEmail = SqlString.Null;
        SqlInt64 strAge = SqlInt64.Null;
        SqlString strAddress = SqlString.Null;
        #endregion Local Variable



        #region Server Side Validation
        String strErrorMessage = "";
        if (ddlCountryList.SelectedIndex == 0)
            strErrorMessage += "- Select The Country <br />";
        if (ddlStateList.SelectedIndex == 0)
            strErrorMessage += "- Select The State <br/>";
        if (ddlCityList.SelectedIndex == 0)
            strErrorMessage += "- Select The City <br />";
        //if (ddlContactCategory.SelectedIndex == 0)
        //    strErrorMessage += "Select The Contact Category <br />";
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
            lblMeassage.Text = strErrorMessage;
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
        //if (cblContactCategoryID.SelectedIndex > 0)
        //    strContactCategoryID = Convert.ToInt32(cblContactCategoryID.SelectedValue);
        if (txtContactName.Text.Trim() != "")
            strContactName = txtContactName.Text.Trim();
        if (txtContactNo.Text.Trim() != "")
            strContactNo = txtContactNo.Text.Trim();
        if (txtWhatsappNo.Text.Trim() != "")
            strWhatsappNo = txtWhatsappNo.Text.Trim();
        if (txtBirthDate.Text.Trim() != "")
            strBirthDate = Convert.ToDateTime(txtBirthDate.Text.Trim());
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
           //objCmd.Parameters.AddWithValue("@ContactCategoryID", strContactCategoryID);
            objCmd.Parameters.AddWithValue("@ContactName", strContactName);
            objCmd.Parameters.AddWithValue("@ContactNo", strContactNo);
            objCmd.Parameters.AddWithValue("@WhatsappNo", strWhatsappNo);
            objCmd.Parameters.AddWithValue("@BirthDate", strBirthDate);
            objCmd.Parameters.AddWithValue("@Email", strEmail);
            objCmd.Parameters.AddWithValue("@Age", strAge);
            objCmd.Parameters.AddWithValue("@Address", strAddress);
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
            if (DropDownFillMethods.Base64decode(Request.QueryString["ContactID"].ToString().Trim()) != null)
            {
                #region Update Record
                //edit mode
                objCmd.Parameters.AddWithValue("@ContactID", Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactID"].ToString().Trim())));
                objCmd.CommandText = "PR_Contact_UpdateByUserIDContactID";
                objCmd.ExecuteNonQuery();


                //Delete ContactWiseContactCategory Records
                SqlCommand objCmdContactCategory = objConn.CreateCommand();
                objCmdContactCategory.CommandType = CommandType.StoredProcedure;
                objCmdContactCategory.CommandText = "PR_ContactWiseContactCategory_DeleteByContactID";
                objCmdContactCategory.Parameters.AddWithValue("@ContactID",Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactID"].ToString().Trim())));
                objCmdContactCategory.Parameters.AddWithValue("@UserID", Session["UserID"]);
                objCmdContactCategory.ExecuteNonQuery();

                foreach (ListItem liContactCategory in cblContactCategoryID.Items)
                {
                    if (liContactCategory.Selected)
                    {
                        SqlCommand objCmdContactCategoryInsert = objConn.CreateCommand();
                        objCmdContactCategoryInsert.CommandType = CommandType.StoredProcedure;
                        objCmdContactCategoryInsert.CommandText = "PR_ContactWiseContactCategory_Insert";
                        objCmdContactCategoryInsert.Parameters.AddWithValue("@ContactID", Convert.ToInt32(DropDownFillMethods.Base64decode(Request.QueryString["ContactID"].ToString().Trim())));
                        objCmdContactCategoryInsert.Parameters.AddWithValue("@ContactCategoryID", liContactCategory.Value.ToString());
                        objCmdContactCategoryInsert.Parameters.AddWithValue("@UserID", Session["UserID"]);
                        objCmdContactCategoryInsert.ExecuteNonQuery();
                    }
                }

                
                Response.Redirect("~/AdminPanel/Contact/List");
                #endregion Update Record
            }
            else
            {
                #region Insert Record
                //Add Mode
                objCmd.CommandText = "PR_Contact_Insert";

                // Get ContactID
                objCmd.Parameters.Add("@ContactID", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
                objCmd.ExecuteNonQuery();
                // Get ContactID
                SqlInt32 ContactID = 0;
                ContactID = Convert.ToInt32(objCmd.Parameters["@ContactID"].Value);


                #region Get & Insert Contact Category
                foreach (ListItem liContactCategory in cblContactCategoryID.Items)
                {
                    if (liContactCategory.Selected)
                    {
                        SqlCommand objCmdContactCategory = objConn.CreateCommand();
                        objCmdContactCategory.CommandType = CommandType.StoredProcedure;
                        objCmdContactCategory.CommandText = "PR_ContactWiseContactCategory_Insert";
                        objCmdContactCategory.Parameters.AddWithValue("@ContactID", ContactID.ToString());
                        objCmdContactCategory.Parameters.AddWithValue("@UserID", Session["UserID"]);
                        objCmdContactCategory.Parameters.AddWithValue("@ContactCategoryID", liContactCategory.Value.ToString());
                        objCmdContactCategory.ExecuteNonQuery();
                    }
                }
                #endregion Get & Insert Contact Category


                lblMeassage.ForeColor = System.Drawing.Color.Green;
                lblMeassage.Text = "Data Inserted Sucessfully with ContactID = " + ContactID.ToString();
                //Response.Redirect("~/AdminPanel/Contact/ContactList.aspx", true);
                //Response.Redirect("~/AdminPanel/Contact/List");

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
    #endregion Button : Save

    #region FillDropDownCountry
    private void FillDropDownCountry()
    {
        DropDownFillMethods.DropDownListCountry(ddlCountryList, Session["UserID"]);
    }

    #endregion FillDropDownCountry

    #region FillDropDownState
    private void FillDropDownState()
    {
        DropDownFillMethods.DropDownListStateByCountryID(ddlStateList, ddlCountryList, Session["UserID"]);
    }

    #endregion FillDropDownState

    #region FillDropDownCity
    private void FillDropDownCity()
    {
        DropDownFillMethods.DropDownListCityByStateID(ddlCityList , ddlStateList , Session["UserID"]);
    }

    #endregion FillDropDownCity

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
            objCmd.CommandText = "PR_Contact_SelectByUserIDContactID";
            objCmd.Parameters.AddWithValue("@ContactID", ContactID.ToString().Trim());
            objCmd.Parameters.AddWithValue("UserID", Session["UserID"]);
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
                    //if (objSDR["ContactCategoryID"].Equals(DBNull.Value) != true)
                    //{
                    //    cblContactCategoryID.SelectedValue = objSDR["ContactCategoryID"].ToString().Trim();
                    //}
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
                        txtBirthDate.Text = Convert.ToDateTime(objSDR["BirthDate"].ToString().Trim()).ToString("yyyy-MM-dd");
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

    #region Fill Control CBLContactCategory
    private void FillControlCBLContactCategory(SqlInt32 ContactID)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString.Trim());
        try
        {
            #region Set Connection & Command Object
            if (objConn.State != ConnectionState.Open)
                objConn.Open();
            SqlCommand objCmdContactCategory = objConn.CreateCommand();
            objCmdContactCategory.CommandType = CommandType.StoredProcedure;
            objCmdContactCategory.CommandText = "PR_ContactWiseContactCategory_SelectByContactID";
            objCmdContactCategory.Parameters.AddWithValue("@ContactID", ContactID.ToString().Trim());
            objCmdContactCategory.Parameters.AddWithValue("@UserID", Session["UserID"]);
            //objCmdContactCategory.Parameters.AddWithValue("@ContactCategoryID", ContactCategoryID.ToString().Trim());
            SqlDataReader objSDRContactCategory = objCmdContactCategory.ExecuteReader();
            #endregion Set Connection & Command Object

            while (objSDRContactCategory.Read())
            {
                foreach (ListItem li in cblContactCategoryID.Items)
                {
                    if (li.Value == objSDRContactCategory["ContactCategoryID"].ToString().Trim())
                    {
                        li.Selected = true;
                    }
                }
            }
        }
        catch (Exception Ex)
        {
            lblMeassage.Text = Ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }
    #endregion Fill Control CBLContactCategory

    #region Cancle Event
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/AdminPanel/Contact/ContactList.aspx", true);
        Response.Redirect("~/AdminPanel/Contact/List");
    }

    #endregion Cancle Event

    #region FillCBLContactCategoryID

    private void FillCBLContactCategoryID()
    {
        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["AddressBookConnectionString"].ConnectionString);
        try
        {
            #region Set Connection & Command Object
            sqlConn.Open();

            SqlCommand objCmd = sqlConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_ContactCategory_SelectForDropDownList";
            objCmd.Parameters.AddWithValue("@UserID", Session["UserID"]);

            SqlDataReader objSDR = objCmd.ExecuteReader();
            #endregion Set Connection & Command Object
            if (objSDR.HasRows == true)
            {
                cblContactCategoryID.DataSource = objSDR;
                cblContactCategoryID.DataValueField = "ContactCategoryID";
                cblContactCategoryID.DataTextField = "ContactCategoryName";
                cblContactCategoryID.DataBind();
            }

            sqlConn.Close();
        }
        catch (Exception ex)
        {
            lblMeassage.Text = ex.Message;
        }
        finally
        {
            sqlConn.Close();
        }
    }

    #endregion FillCBLContactCategoryID
}

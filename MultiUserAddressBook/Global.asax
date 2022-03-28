<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    public static void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.Ignore("{resource}.axd/{*pathInfo}");

        // 1. String = RouteName
        // 2. String = RouteURL
        // 3. String = PhysicalFile

        #region CountryListPageURL

        routes.MapPageRoute("AdminPanelCountryList","AdminPanel/Country/List","~/AdminPanel/Country/CountryList.aspx");

        #endregion CountryListPageURL

        #region CountryAddEditPageURL

        routes.MapPageRoute("AdminPanelCountryAdd","AdminPanel/Country/{OperationName}","~/AdminPanel/Country/CountryAddEdit.aspx");

        #endregion CountryAddEditPageURl

        #region CountryIDPageURL

        routes.MapPageRoute("AdminPanelCountryEdit","AdminPanel/Country/{OperationName}/{CountryID}","~/AdminPanel/Country/CountryAddEdit.aspx");

        #endregion CountryIDPageURl

        #region StateListPageURL

        routes.MapPageRoute("AdminPanelStateList","AdminPanel/State/List","~/AdminPanel/State/StateList.aspx");

        #endregion StateListPageURL

        #region StateAddEditPageURL

        routes.MapPageRoute("AdminPanelStateAdd","AdminPanel/State/{OperationName}","~/AdminPanel/State/StateAddEdit.aspx");

        #endregion StateAddEditPageURl

        #region StateIDPageURL

        routes.MapPageRoute("AdminPanelStateEdit","AdminPanel/State/{OperationName}/{StateID}","~/AdminPanel/State/StateAddEdit.aspx");

        #endregion StateIDPageURl

        #region CityListPageURL

        routes.MapPageRoute("AdminPanelCityList","AdminPanel/City/List","~/AdminPanel/City/CityList.aspx");

        #endregion CityListPageURL

        #region CityAddEditPageURL

        routes.MapPageRoute("AdminPanelCityAdd","AdminPanel/City/{OperationName}","~/AdminPanel/City/CityAddEdit.aspx");

        #endregion CityAddEditPageURL

        #region CityIDPageURL

        routes.MapPageRoute("AdminPanelCityEdit","AdminPanel/City/{OperationName}/{CityID}","~/AdminPanel/City/CityAddEdit.aspx");

        #endregion CityIDPageURL

        #region ContactCategoryListPageURL

        routes.MapPageRoute("AdminPanelContactCategory","AdminPanel/ContactCategory/List","~/AdminPanel/ContactCategory/ContactCategoryList.aspx");

        #endregion ContactCategoryListPageURL

        #region ContactCategoryAddEditPageURL

        routes.MapPageRoute("AdminPanelContactCategoryAdd","AdminPanel/ContactCategory/{OperationName}","~/AdminPanel/ContactCategory/ContactCategoryAddEdit.aspx");

        #endregion ContactCategoryAddEditPageURl

        #region ContactCategoryIDPageURL

        routes.MapPageRoute("AdminPanelContactCategoryEdit","AdminPanel/ContactCategory/{OperationName}/{ContactCategoryID}","~/AdminPanel/ContactCategory/ContactCategoryAddEdit.aspx");

        #endregion ContactCategoryIDPageURl

        #region ContactListPageURL

        routes.MapPageRoute("AdminPanelContactList","AdminPanel/Contact/List","~/AdminPanel/Contact/ContactList.aspx");

        #endregion ContactListPageURL

        #region ContactAddEditPageURL

        routes.MapPageRoute("AdminPanelContactAdd","AdminPanel/Contact/{OperationName}","~/AdminPanel/Contact/ContactAddEdit.aspx");

        #endregion ContactAddEditPageURl

        #region ContactIDPageURL

        routes.MapPageRoute("AdminPanelContactEdit","AdminPanel/Contact/{OperationName}/{ContactID}","~/AdminPanel/Contact/ContactAddEdit.aspx");

        #endregion ContactIDPageURL

        #region LoginListPage

        routes.MapPageRoute("AdminPanelLoginList", "AdminPanel/Login/List", "~/AdminPanel/Login/Login.aspx");

        #endregion LoginListPage
    }

</script>

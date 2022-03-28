<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="AdminPanel_Login_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/Css/Custom.css" rel="stylesheet" />
    <link href="../../Content/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="../../Content/Js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <section class="  " style="background-color: #f3ecc6; height:100vh">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img
                src="../../Content/Images/address_book.png"
                alt="login form"
                class="img-fluid2" style="border-radius: 1rem 0 0 1rem;"
              />
            </div>
            <div class="col-md-6  align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                    <div>
                        <asp:Label ID="lblMessageLogin" runat="server"></asp:Label>
                    </div>

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Content/images/istockphoto-1080273780-612x612.jpg" Width="50px"/>
                    <span class="h1 fw-bold mb-0" style="font-family: fantasy;">AddressBook</span>

                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" type="text" id="txtUserNameLogin" CssClass="form-control form-control-md" ToolTip="Enter Your Correct UserName" placeholder="UserName" />
                    <asp:RequiredFieldValidator ID="rvfUserName" runat="server" BackColor="White" ControlToValidate="txtUserNameLogin"  Display="Dynamic" ErrorMessage="Enter The User Name" ForeColor="Red"></asp:RequiredFieldValidator>             
                  </div>

                  <div class="form-outline mb-4">
                    <asp:RegularExpressionValidator ID="revPasswordLogin" runat="server" ControlToValidate="txtPasswordLogin" Display="Dynamic"  ErrorMessage="Password Should Be Minimum 8 Charcter(one digit,one special char.)" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$" ValidationGroup="Login"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" type="password" id="txtPasswordLogin" CssClass="form-control form-control-md" ToolTip="Enter Your Password To Login Your Account!!" placeholder="Password"  />
                    <asp:RequiredFieldValidator ID="rvfPassword" runat="server" BackColor="White" ControlToValidate="txtPasswordLogin" Display="Dynamic" ErrorMessage="Enter The Correct Password"  ForeColor="Red"></asp:RequiredFieldValidator>                   
                  </div>

                  <div class="pt-1 mb-4">
                    <asp:Button runat="server" ID="btnLogin" ToolTip="Click On Login Button Go To The Your DataBase" Text="Login" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnLogin_Click" />
                  </div>

                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="SignUp.aspx" style="color: #393f81;">Register here</a></p>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </form>
</body>
</html>

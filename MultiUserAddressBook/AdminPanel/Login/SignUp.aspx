<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="AdminPanel_Login_SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/Css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/Css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Css/Custom.css" rel="stylesheet" />
    <script src="../../Content/Js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="  " style="background-color: #b8d3d3; height: 100vh">
            <div class="container py-5 h-100 ">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img
                                        src="../../Content/Images/cartoon-address-book-illustration_csp14853429.jpg"
                                        alt="login form"
                                        class="img-fluid2" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-6  align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">


                                        <div align="center">
                                            <asp:Label ID="lblMessageSignup" runat="server" ForeColor="Green"></asp:Label>
                                        </div>
                                        <div class="d-flex align-items-center mb-3 pb-1">

                                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Content/images/istockphoto-1080273780-612x612.jpg" Width="50px" />
                                            <span class="h1 fw-bold mb-0" style="font-family: fantasy;">AddressBook</span>

                                        </div>

                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign Up</h5>

                                        <div class="form-outline mb-4">
                                            <asp:TextBox runat="server" type="text" ID="txtUsernameSignUp" CssClass="form-control form-control-md" placeholder="UserName" />

                                        </div>

                                        <div class="form-outline mb-4">
                                            <asp:RegularExpressionValidator ID="revPasswordLogin" runat="server" ControlToValidate="txtPasswordSignUp" Display="Dynamic" ErrorMessage="Password Should Be Minimum 8 Charcter(one digit,one special char.)" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
                                            <asp:TextBox runat="server" type="password" ID="txtPasswordSignUp" CssClass="form-control form-control-md" placeholder="Password" />

                                        </div>
                                        <div class="form-outline mb-4">
                                            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToCompare="txtPasswordSignUp" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Enter The Same As Password" ForeColor="Red"></asp:CompareValidator>
                                            <asp:TextBox runat="server" type="password" ID="txtConfirmPassword" CssClass="form-control form-control-md" placeholder="ConfirmPassword" />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <asp:RegularExpressionValidator ID="revContactNumber" runat="server" ControlToValidate="txtContactnoSignup" Display="Dynamic" ErrorMessage="Enter The Valide Mobile Number" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                                            <asp:TextBox ID="txtContactnoSignup" runat="server" CssClass="form-control" placeholder="Mobile No"></asp:TextBox>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <asp:TextBox ID="txtDisplayNameSignup" runat="server" CssClass="form-control" placeholder="DisplayName"></asp:TextBox>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailSignup"></asp:RegularExpressionValidator>
                                            <asp:TextBox ID="txtEmailSignup" runat="server" type="Email" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                        </div>

                                        <div class="pt-1 mb-4">
                                            <asp:Button runat="server" ID="btnSignup" Text="Sign Up" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnSignup_Click" />
                                        </div>

                                        <p class="mb-5 pb-lg-2" style="color: #393f81;">already have an account? <a href="Login.aspx" style="color: #393f81;">Login here</a></p>



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

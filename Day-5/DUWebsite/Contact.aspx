<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="DUWebsite_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <br />
        <h2 align="center" style="background-color:#bbb8b8;color:white;">Contact Us</h2><br />
   <div class="row" style="background-color:#fbf5f5">
       <div class="col-md-4">
           <h4>College Campus</h4><br />
           <asp:Image ID="imgSymbol1" ImageUrl="~/Content/Images/LocationSymbol.png"  runat="server" Height="25px"/>&nbsp
           Rajkot - Morbi Highway,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           Rajkot - 363650, Gujarat (INDIA)
           <br />
           <br />
            <asp:Image ID="imgSymbol4" runat="server" ImageUrl="~/Content/Images/MailSymbol.png" Height="25px"/>
            &nbsp;info@darshan.ac.in
           <br /><br />
           <asp:Image runat="server" ID="imgSymbol5" Height="25px" ImageUrl="~/Content/Images/MobileSymbol.png" />&nbsp;
           +91 - 97277 47310<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           +91 - 97277 47311
           <br />
           <br />
           <asp:image runat="server" ID="imgSymbol6" Imageurl="~/Content/Images/ClockSymbol.png"  Height="25px"/>
           &nbsp;<strong>Mon-Sat	:</strong>07:45 AM - 04:00 PM
           <br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
           <strong>Sun	:</strong>	Closed

       </div>
       <div class="col-md-4">
           <h4>Rajkor City-Office</h4><br />
           <asp:Image ID="imgSymbol2" ImageUrl="~/Content/Images/LocationSymbol.png"  runat="server" Height="25px"/>
           Office No. 401, Lotus Arcade,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           8-Royal Park, Near KKV Hall,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           150 Feet Ring Road,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           Rajkot - 360005, Gujarat (INDIA)
           <br />
           <br />
           <asp:image runat="server" ID="imgSymbol7" Imageurl="~/Content/Images/ClockSymbol.png"  Height="25px"/>
           &nbsp &nbsp;
           <strong>Mon-Sat</strong> : 09:00 AM - 01:00 PM<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                                      05:00 PM - 08:00 PM
           <br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
           <strong>Sun</strong> :&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; Closed
           <br /><br />
           <asp:Image runat="server" ID="imgSymbol8" Height="25px" ImageUrl="~/Content/Images/MobileSymbol.png" />
           &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; 
           +91 - 95127 70012
       </div>
       <div class="col-md-4">
           <h4>Morbi City-Office</h4><br />
           <asp:Image ID="imgSymbol3" ImageUrl="~/Content/Images/LocationSymbol.png"  runat="server" Height="25px"/>
           Galaxy Plaza F-12(First Floor),<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           Near Umiya Circle,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           Sanala Road,<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
           Morbi - 363641, Gujarat (INDIA)
           <br />
           <br />
           <asp:image runat="server" ID="imgSymbol9" Imageurl="~/Content/Images/ClockSymbol.png"  Height="25px"/>
           &nbsp &nbsp;
           <strong>Mon-Sat</strong> : 09:00 AM - 01:00 PM<br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                                      05:00 PM - 08:00 PM
           <br />&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
           <strong>Sun</strong> :&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; Closed
           <br /><br />
           <asp:Image runat="server" ID="imgSymbol10" Height="25px" ImageUrl="~/Content/Images/MobileSymbol.png" />
           &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; 
          +91 - 97142 33355
       </div>
     </div>
     <br />
     <br />
    <h2 align="center" style="background-color:#bbb8b8;color:white;">Send Message</h2><hr />
    <br />
    <br />       
               <div class="row">
                   <div class="col-md-4">
                       Name
                   </div>
                   <div class="col-md-8">
                            <input class="form-control g-color-main g-brd-gray-light-v4 g-brd-primary--focus g-bg-white rounded g-py-8 g-px-10" data-val="true" data-val-required="Please enter your Name." id="Name" name="Name" placeholder="Enter your name" type="text" value="">                   
                   </div>
               </div>
                <br />
              <div class="row">
                  <div class="col-md-4">
                      Email
                  </div>
                  <div class="col-md-8">
                        <input class="form-control g-color-main g-brd-gray-light-v4 g-brd-primary--focus g-bg-white rounded g-py-8 g-px-10" data-val="true" data-val-email="Please valid Email Address." id="txtEmail" name="Email" placeholder="Enter your email" type="text" value="">                   
                  </div>
              </div>
            <br />
              <div class="row">
                   <div class="col-md-4">
                       Mobile No.
                   </div>
                   <div class="col-md-8">
                        <input class="form-control g-color-main g-brd-gray-light-v4 g-brd-primary--focus g-bg-white rounded g-py-8 g-px-10" data-val="true" data-val-length="Please enter valid 10 digit Mobile No." data-val-length-max="10" data-val-length-min="10" data-val-required="Please enter your Mobile No." id="txtMobileNo" name="MobileNo" placeholder="Enter your mobile no." step="1" type="number" value="">                 
                   </div>
               </div>
               <br />
                <div class="row">
                   <div class="col-md-4">
                       Subject
                   </div>
                   <div class="col-md-8">
                            <input class="form-control g-color-main g-brd-gray-light-v4 g-brd-primary--focus g-bg-white rounded g-py-8 g-px-10" data-val="true" data-val-required="Please enter Subject." id="txtSubject" name="Subject" placeholder="Enter Subject" type="text" value="">                   

                   </div>
               </div>
                <br />
               <div class="row">
                   <div class="col-md-4">
                       Message
                   </div>
                   <div class="col-md-8">
                       <textarea class="form-control g-color-main g-brd-gray-light-v4 g-brd-primary--focus rounded g-py-8 g-px-10" cols="20" data-val="true" data-val-required="Please enter Message." id="txtMessage" name="Message" placeholder="Type your message here" rows="3"></textarea>
                   </div>
               </div>
                <br />
                <br />
    <div align="center">
        <button class="btn u-btn-primary g-font-weight-600 g-font-size-13 text-uppercase rounded-3 g-py-6 g-px-20" type="button" id="btnSubmitContactUsForm" style="background-color:#ff0000">Send Message</button>        
    </div>
</asp:Content>



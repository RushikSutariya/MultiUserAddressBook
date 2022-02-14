<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="DUWebsite_HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
   
         <div class="row">
             <div class="col-md-8">
                   <asp:Image ID="imgHome1" runat="server" ImageUrl="~/Content/Images/Du-2.jpg" Height="350px"/>    
             </div>
             <div class="col-md-4" style="background-color:#fbf5f5">
                 <h4>Chairman's Message</h4>
                 <p align="justify">
                     Success knocks to those, who work vigorously and stays with those, who don’t rest on the laurels of the past. We have been a standing example for reaching success and sustaining it. We have been instrumental in shaping the success potential of many future citizens across the globe. In the process of this journey, we have set standards, initiated trends and achieved new milestones, successfully. Darshan Institute of Engineering & Technology established in 2009, affiliated to GTU (Gujarat Technological University) and approved by AICTE, New Delhi.
                 </p>
             </div>
         </div><br /><br />
    <div class="row">
        <div class="col-md-8" style="background-color:#fbf5f5">
            <h4>Board of Management</h4>
            <p align="justify">
                The Board of Management is the central decision-making body of the Institute. It is composed of individuals from the management, representative from the University, senior faculty members, individuals from the industry. It evaluates the work, assesses needs and plans for the future. It ensures that all necessary infrastructure and staff requirements are accomplished without any delay. Academic and professional staff are committed to ensuring our Institute continues to meet the highest academic standards and remains true to its founding policies.
            </p>
        </div>
        <div class="col-md-4">
             <asp:Image ID="imgHome2" runat="server" ImageUrl="~/Content/Images/BoardOfManagement.jpg" Height="200px"/>    
        </div>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-6" style="background-color:#a4a1a1">
                <h2 align="center">WHY STUDY AT DARSHAN UNIVERSITY?</h2>
        </div>
        <div class="col-md-6">
            <h2 align="center"><span style="color:red">Programs</span> Offered</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6" style="background-color:#a4a1a1">
            <asp:Image ID="img1" runat="server" ImageUrl="~/Content/Images/1-symbol.png"  Height="50px"/>&nbsp;&nbsp;
            <strong style="font-size:large">Dedicated Faculties</strong><br />
            <p align="justify">
                Mobile App for parents to track the progression of students. Mobile phones and related gadgets are strictly prohibited for students within the institute premises.            
            </p>
        </div>
        <div class="col-md-6">         
                <strong style="font-size:large; color:red;"> School Of Computer Science</strong><br />
                <strong>B.Tech.</strong> (CSE), <strong>M.Tech.</strong> (Software), <strong>Diploma</strong> (Computer), <strong>BCA</strong>, <strong>B.Sc.</strong> (IT), <strong>Ph.D.</strong> (Computer Science, CSE)
        </div>
    </div>
    <div class="row">
        <div class="col-md-6" style="background-color:#a4a1a1">
            <asp:Image ID="img2" runat="server" ImageUrl="~/Content/Images/2 Symbol.png"  Height="40px"/>&nbsp;&nbsp;
            <strong style="font-size:large;">Disciplined Environment</strong><br />
            <p align="justify">
                We proudly hold the record of lowest attrition rate till date to accomplish dedication.
            </p>
        </div>
        <div class="col-md-6">         
                <strong style="font-size:large; color:red;">School of Diploma Engineering</strong><br />
                <strong>Diploma</strong>(Civil, Mechanical, Electrical) 
        </div>
    </div>
     <div class="row">
        <div class="col-md-6" style="background-color:#a4a1a1">
            <asp:Image ID="img3" runat="server" ImageUrl="~/Content/Images/3 Symbol.png"  Height="50px"/>&nbsp;&nbsp;
            <strong style="font-size:large;">Skill Development Activities</strong><br />
            <p align="justify">
                We address the opportunities and challenges to encounter new demands of changing global and innovative technologies.                
            </p>
        </div>
        <div class="col-md-6">         
                <strong style="font-size:large; color:red;">School of Management</strong><br />
                <strong>BBA</strong>,&nbsp;<strong>MBA</strong>,&nbsp;<strong>B.Com.</strong>,&nbsp;<strong>Ph.D.</strong>&nbsp;(Management, Commerce) 
        </div>
    </div>
    <div class="row">
        <div class="col-md-6" style="background-color:#a4a1a1">
            <asp:Image ID="img4" runat="server" ImageUrl="~/Content/Images/4 Symbol.png"  Height="50px"/>&nbsp;&nbsp;
            <strong style="font-size:large">Industry Interaction & Consultancy Work</strong><br />
            <p align="justify">
               We possess Civil Consultancy Cell, Energy Management Cell & ASWDC that provide a platform for students to enhance their technical & industrial skills.                
            </p>
        </div>
        <div class="col-md-6">         
                <strong style="font-size:large;color:red;">School of Applied Science</strong><br />
                <strong>B.Sc.</strong>&nbsp;(Microbiology),&nbsp;<strong>M.Sc.</strong>&nbsp;(Microbiology),&nbsp;<strong>P.Hd.</strong>&nbsp;(Microbiology) 
        </div>
    </div><br />
    <table style="border:solid" align="center">
                <tr>
                    <td>
                        <h4>Admission 2021-22</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        Direct Admission for all programs has<br /> already started. Kindly apply online on DU<br /> Direct Admission Portal.
                    </td>
                    <td class="col-md-6 text-right">
                        <asp:Button runat="server" ID="imgBtnApply" Text="Apply Now" BorderStyle="Ridge" OnClick="imgBtnApply_Click" ForeColor="Red"></asp:Button>
                        
                    </td>
                </tr>
                 <tr>
                     <td>
                         <strong>For admission regarding query:</strong>
                     </td>
                 </tr>
                <tr>
                    <td>
                        <asp:Image runat="server" ID="imgCall" ImageUrl="~/Content/Images/MobileSymbol.png" Height="30px" />
                         +91-7096979952, +91-7096979962
                    </td>
                </tr>
    </table>
   
           
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Content/DUMasterPage.master" AutoEventWireup="true" CodeFile="Facilities.aspx.cs" Inherits="DUWebsite_Facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <h2 style="background-color:#a8a6a6;color:white;">Library (named Athenaeum)</h2><br />
    <div class="row">
            <div class="col-md-7">
                <asp:Image runat="server" ID="imgLibrary1" ImageUrl="~/Content/Images/Library_Slide_1.jpg" Height="250px"/>
            </div>
             <div class="col-md-5">  
                <asp:Image runat="server" ID="imgLibrary2" ImageUrl="~/Content/Images/Library_Slide_2.jpg" Height="184px" />
             </div> 
        <p align="justify" style="background-color:#fbf5f5"><br />
                <strong>T</strong>he Central Library of Darshan Institute is user-focused, innovative, and excellence driven. The Central Library spreads over to first and second floors with an area of 1735 sq.m. It is centrally air -conditioned with well -furnished library and CCTV surveillance. It has specialized collections of Books, Journals & other resources in Engineering and Technology, ranging from printed books,e-books, back volumes, CD\DVDs and Kindle e-readers, etc.The Library implemented D-Lib software (Library Software), which supports all housekeeping operations of the library. There is a separate digital library having 24 computers running on the high speed internet. The library system and staff is meticulously focused for providing comfortable, user friendly environment so as to enables learning and knowledge creation.
        </p>
            </div>
    <br />
    <br />
    <h2 style="background-color:#a8a6a6;color:white;">Transportation</h2><br />
    <div>
            <asp:Image runat="server" ID="imgTranspotation" ImageUrl="~/Content/Images/TransportationImage.jpg" ImageAlign="Middle" Height="400px"/>
    </div>
    <br />
    <br />
    <p align="justify" style="background-color:#fbf5f5">
        <strong>T</strong>he Institute provides transport facilities to the students and the staff from Rajkot, Morbi, Gondal, Tankara, Dhrol, Jamnangar, Padadhari and Shapar with a qualified and experienced driver. At present, there are 50+ buses catering to the requirements of safe and secured commute to all the members of our Institution. Key routes are defined across the city and these routes reach the nooks and corners of the assigned cities. The timing is scheduled in such a way that all the buses arrive or depart to/from College campus in time. The number of buses will be expanded corresponding to the increase in the intake of students. Additionally, each bus is equipped with GPS based tracking system for timely and safe transportation. The management ensures hassle-free and secure transportation.
    </p>
    <div class="row">
        <div class="col-md-2">
            <asp:Image runat="server" ID="imgRouteSymbol" ImageUrl="~/Content/Images/RouteSymbol.png"  Height="45px"/>
        </div>
        <div class="col-md-10">
            <strong> Each bus is equipped with GPS based tracking system for timely & safe transportation.</strong>
        </div>
    </div>
    <br />
    <br />
    <h2 style="background-color:#a8a6a6;color:white;">Cafeteria</h2><br />
    <div>
        <asp:Image runat="server" ID="imgCafeteria" ImageUrl="~/Content/Images/cafeteriaImage.png" Height="400px"/>
    </div>
    <br />
    <br />
    <p align="justify" style="background-color:#fbf5f5">
        <strong>T</strong>he Munch, brunch & lunch facilities are provided through a centrally located canteen which is professionally managed by a catering company. The canteen serves tea, coffee, cold drinks, ice-cream, snacks, lunch & different varieties of cuisines throughout the day in affordable rates. Management monitors and ensures that the food is cooked and served in hygienic conditions.
    </p>
</asp:Content>


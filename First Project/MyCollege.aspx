<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyCollege.aspx.cs" Inherits="MyCollege" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
            
            <h1 align="center">Darshan University</h1>
            <hr>
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="Home" CssClass="nav-link scrollto" href="#homePage"></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="About University" CssClass="nav-link scrollto" href="#About"></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="Courses Run By The University" CssClass="nav-link scrollto" href="#Courses"></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="Department" CssClass="nav-link scrollto" href="#Department"></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="News" CssClass="nav-link scrollto" href="#News"></asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="Contact" CssClass="nav-link scrollto" href="#Contact"></asp:HyperLink>
              <hr/> 
                <br />
                <br /> 
                <hr />
                Select The Gender :
             <asp:RadioButton ID="radMale" runat="server" Text="Male" GroupName="Gender"/>
             <asp:RadioButton ID="radFemale" runat="server" Text="Female" GroupName="Gender" />
                <hr />
                <asp:Button ID="btn" runat="server" Text="Click Me" OnClick="btn_Click" />
                <br /> 
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <br /> 
                <br />
                
            <br />
           
    </div>
        <div id="homePage">
                <asp:Image runat="server" ImageUrl="~/Images/Du-1.jpg"  Width="650px" />
                <asp:Image runat="server" ImageUrl="~/Images/Du-2.jpg"  Width="650px" Height="430px" />
        </div>
        <div id="About">
                <h2 align="center">About Darshan University</h2>
                <p align="justify">
                    Darshan University (DU), is a prominent organization offering a broad slate of academic programs and professional courses for undergraduate, graduate and postgraduate programs in Engineering, Science & Technology. The University is located in peaceful and sylvan surroundings with distinctive collegiate structure, about 19 km from Rajkot, Gujarat, India. It was established as an Engineering Institute in the year 2009, by Shree G. N. Patel Education & Charitable Trust with the objective to impart quality education and training in various fields of Engineering and Technology. It has now been transformed to the DARSHAN UNIVERSITY through an Act by the Government of Gujarat under Gujarat State Private Universities (Amendment) Act, 2021 (Act no. 15).

From its inception, the organization has grown steadily and created a unique identity in the field of Engineering & Technology by implementing skill and training-based foundation for education. The academic environment at the campus creates an ambience to promote creativity and exploration of technical skills. Darshan University is committed to the generation of knowledge, innovations and its contribution towards the development of the Nation.
                </p>
                <h3>Our Motto</h3>
                <p Align="justify">
                    This verse advises us to perform our allocated duty excellently. Kaushalam signifies doing work with devotion and without attachment. Such detached attitude enhances its values and improves the concentration and skill of the worker. If we work with elegance, fortitude, and skill our Body-Mind-Soul will co-operate with our hands. Any work becomes valuable if carried out with full concentration, dedication, and abilities and also helps us to become valuable to others as well as to society.
                </p>
                
        </div>
        <div id="Courses">
                    <h2 align="center">Courses Offered by Darshan University</h2>
                    <h3>Diploma (After 10th)</h3><br />
                    <p>
                        1.  Diploma Engineering (Diploma)<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                (Civil Engineering, Mechanical Enginering, Electrical Engineering, Computer Science & Engineering)    
                    </p><br />
                     <h3>Doctoral (After UG)</h3><br />
                    <p>
                        2.  1Ph.D. (Ph.D.)<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    (Computer Science, Computer Science and Engineering, Civil Engineering, Mechanical Engineering, Management, Commerce, Microbiology)
                    </p>
                     <h3>Post Graduate (After UG)</h3><br />
                    <p>
                        1. Master of Business Administration (MBA)
                            <br />
                        2. Master of Computer Application (MCA)
                             <br />
                        3. Master of Design - Interaction Design (M.Des.ID)
                                 <br />
                        4. Master of Design - Medical Product Design (M.Des.)
                             <br />
                        5. Master of Design - Product Design (M.Des.PD)
                            <br />
                        6. Master of Science (M.Sc.) (Microbiology)
                            <br />
                        7. Master of Technology (M.Tech.)<br />                   
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   
                            (Structural Engineering, Transportation Engineering, Thermal Engineering, Electrical Engineering, Software Engineering)2 Years

                    </p><br />
                   <h3>Under Graduate (After 12th)</h3>
                    <p>
                         1.Bachelor of Business Administration (BBA)

                            <br />
                        2. Bachelor of Commerce (B.Com.)
                             <br />
                        3. Bachelor of Computer Application (BCA)
                                 <br />
                        4. Bachelor of Science (B.Sc.)
                             <br />
                        5.Bachelor of Science in Information Technology (B.Sc. IT)
                            <br />
                        6. Bachelor of Technology (B.Tech.) <br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    (Civil Engineering, Mechanical Enginering, Electrical Engineering, Computer Science & Engineering)</p>
                    <p>
                         &nbsp;7.  Bachelor of Technology (Diploma to Degree) (D2D)<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    (Computer Engineering, Civil Engineering, Electrical Engineering, Mechanical Engineering)
                    </p>
        </div>
        <div id="Department">
                <h2 align="center">Departments</h2><br />
                <h3>Computer Engineering Department</h3>
                <p align="justify">
                    Computer engineer, also known as a software engineer, is responsible for designing, developing, testing and evaluating the software that make our computers work. This involves designing and coding of new programs and applications to meet the needs of a business or an individual. A computer engineer may also be responsible for constructing and managing on organization's computer system.

Computer Engineering Department @Darshan is highly reputed in academics and industry. it is well known for its integrity, faculties, placement, infrastructure, and industry linkage nad apps development. Environment of the department is friendly and professional. Students can access resources any time,faculties are available round the clock. In a nutshell, it's a dream place for study and holistic development.
                </p>
                <h3>Civil Engineering Department</h3>
            
                Department of Civil Engineering believes that Real engineering means: Institute Knowledge with Industrial Experience. Our ancient Sanskrit, "योगः कर्मेसु कौशलम" also supports the same. To make students an excellent in the field of civil engineering. The department has designed different activities which provide a multitude of a platform for students to enhance their technical and industrial skills. Some of the activities are listed below:
                <br />
                <h4><strong>अधिभूतं - The material manifestation</strong></h4>
                  <br />         
                Under this program, students acquire the special skill of material identification by visualizing which is an important and required skill in the field.
                <br />
                <h4><strong>Kaizen</strong></h4>
                 Students are identified and divided into groups based on their area of interest. Industrial/field exposure provided by faculties which helps students to prepare technical articles and presentation for the expression of their views, talents, knowledge etc.
                
                <h3>Electrical Engineering Department</h3>
                <p align="justify">
                    Electrical Engineering Department (EED), at Institute is involved in providing quality education at both Postgraduate and Undergraduate levels. Department aims to produce engineers who are critical, original, and independent thinkers along with the strong foundation in contemporary electrical engineering, basic sciences, mathematics, computing, and communication. Department also believes in values, attitudes, diversity of opinion,ethics and vision that will prepare student for lifetimes of success,continued learning and leadership in their chosen careers.
                </p>
                
                <h3>Mechanical Engineering Department</h3>
                <p align="justify">
                    Mechanical Engineering education is a very strategic and specialized segment where the engineers are being trained to meet the innovative demands of futuristic technologies. In the recent past, Department of Mechanical Engineering at DIET has established itself as one of the premier brands in technical education in region and has enhanced its reputation by introducing B.E. and M.E. programs.<br />
                    Department of Mechanical Engineering at DIET has flourished to a great extent due to their experienced faculties from diversified fields, optimal faculty to student ratio and enthusiastic students. Department of Mechanical Engineering focuses on comprehensive course curriculum with intense practical exposure to students which will enable them to take up challenging roles in professional careers.<br />
                    Our initiatives are aimed to transform education and build careers of our students with whole hearted acceptance from industries across the nation. We give equal emphasis on fundamental studies, practical exposure and industrial orientation.
                     Department is also encouraging their faculties for quality improvement programs to learn latest change and trends in their respective fields.
                </p>
                <div id="News">
                    <h2 align="center">News</h2>
                    <asp:Image runat="server" ImageUrl="~/Images/News-1.png" Width="300px" />
                    <asp:Image runat="server" ImageUrl="~/Images/News-2.png" Width="300px" />
                    <asp:Image runat="server" ImageUrl="~/Images/News-4.png" Width="300px"/>
                    <asp:Image runat="server" ImageUrl="~/Images/News-5.jpg" Width="300px" Height="300px"/>

                </div>
                <div id="Contact">
                    <h2 align="center">Contact Us</h2>
                    <h4>Address</h4>
                    <p> Rajkot - Morbi Highway,Rajkot - 363650, Gujarat (INDIA)</p>
                    <h4>Email Address</h4>
                    <p>info@darshan.ac.in</p>
                    <h4>Contact Number</h4>
                    <p>+91 - 97277 47310<br />
                       +91 - 97277 47311</p>
                    <h4>Schedule Time</h4>
                    <p>
                        Mon-Sat	:	07:45 AM - 04:00 PM
                        </p>
                    <p class="auto-style1">
                        <strong>Sun	:	Closed</strong></p>
                </div>
                  <asp:HyperLink runat="server"  NavigateUrl="~/MyCollege.aspx" Text="Home" CssClass="nav-link scrollto" href="#homePage"></asp:HyperLink>
         </div>
    </form>
</body>
</html>
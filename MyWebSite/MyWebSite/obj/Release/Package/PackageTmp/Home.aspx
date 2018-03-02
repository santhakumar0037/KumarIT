<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyWebSite.Home" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KumarIT</title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="content/CustomScript.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- NavBar --%>
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top navbar-dark bg-dark">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#Experties-section">My Experties</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#Project-section">Personal Projects</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#aboutMe-Section">About Me</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Download
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <asp:Button ID="BtnCV" CssClass="btn btn-light dropdown-item" 
                data-toggle="modal" data-target="#ContactForm" runat="server" Text="My CV" />
        </div>
      </li>
    </ul>
  </div>
</nav>  
  <%-- Home Section --%>
         <section id="index-section" class="firstSection-background">
            <div class="container">
                <div class="row index-position">
                    <div class="custom-font">
                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
                      
                        <h1><span>Hi, I am Kumar. I build & design Websites,</span>
                            
                            <br />
                            <span>Web applictaions, WCF and Web API.<br />
                            </span>
                            <button type="button" class="btn btn-outline-success font-weight-bold" data-toggle="modal" data-target="#ContactForm">Yes, I'm available. Connect with Me :)</button>
                        </h1>
                        <div class="arrowMargin">
                            <div class="down-arrow" id="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       <%-- Experties Section --%>
           <section id="Experties-section">
            <div class="section-padding">
                <h1 class="text-center"><u>My Expertise</u></h1>
            </div>
            <div class="container">
                <div class="eachrow-padding ">
                    <div class="row">
                        <div class="col text-center">
                            <i class="far fa-file-code fa-5x"></i>
                            <br />
                            <h4>Code </h4>
                        </div>
                        <div class="col-10">
                            <h5 class="text-center">I have learned to code in HTML5, CSS, JavaScript and jQuery in the front end.
                                <br />
                                I have implemented my coding skills in my accademic and personal projects.
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="eachrow-padding">
                    <div class="row">
                        <div class="col text-center">
                            <i class="fas fa-plug fa-5x"></i>
                            <br />
                            <h4>WCF & Web API</h4>
                        </div>
                        <div class="col-10">
                            <h5 class="text-center">I have developed my personal projects and used WCF and Web API
                                <br />
                                and successfully implemented services such as Google Authentication and Facebook Login.
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="eachrow-padding">
                    <div class="row">
                        <div class="col text-center">
                            <i class="fas fa-database fa-5x"></i>
                            <br />
                            <h4>DataBase</h4>
                        </div>
                        <div class="col-10">
                            <h5 class="text-center">Using My SQL I created a database for my projets to store information<br />
                                such as Regiserd users, Login details and more...
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     <%-- Project Section --%>
           <section id="Project-section">
            <div class="section-padding">
                <h1 class="text-center"><u>Personal Projects</u></h1>
            </div>
            <div class="container">
                <div class="middle-row">
                    <div class="row text-center">
                        <div class="col">
                            <h2><b>KIT</b></h2>
                            <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#KitModal">
                                Click to know about KIT
                            </button>
                            <!-- Kit-Modal -->
                            <div class="modal fade" id="KitModal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title"><b>KIT</b></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body text-justify">
                                            <h5><b>KIT:</b> One best example I can show is the website you are browsing. 
                        It is developed by me using Visual Studio 2017 and the following programming languages were used:
                        <br />
                                                <br />
                                                <b>Front End:</b> Asp.Net, Html 5, CSS 3, Bootstrap, and jQuery
                        <br />
                                                <br />
                                                <b>BackEnd:</b> My SQL 
                        <br />
                                                <br />
                                                <b>Web API:</b> LinkedIn 
                                            </h5>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- Second Project --%>
                        <div class="col">
                            <h2><b>StartUp WeekEnd</b></h2>
                            <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#StarupModal">
                                Click to know about my StartUp Weekend
                            </button>
                            <!-- Startup-Modal -->
                            <div class="modal fade" id="StarupModal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title"><b>StartUp WeekEnd Brisbane 2017</b></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body text-justify">
                                            <h5><b>Pegasus:</b> Pegasus is an up and coming equestrian management app which revolves around
                                                connecting horse owners with their service providers such as trainers, vets and more. 
                                                It also includes the ability to manage a horses needs and schedule.
                        <br />
                                                <br />
                                                <b>Front End:</b> Html 5, CSS 3, and Bootstrap
                        <br />
                                                <br />
                                                <b>Achievements:</b> Our team won 1st prize in the regional level and qualified for the Global competition
                        <br />
                                                <br />

                                            </h5>
                                            <div class="text-center">
                                                <button type="button" class="btn btn-outline-success">GIT Hub Link </button>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- Other Projects --%>
                        <div class="col">
                            <h2><b>Other Projects</b></h2>
                            <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#OtherModal">
                                Click to know about my Other Projects
                            </button>
                            <!-- Other-Modal -->
                            <div class="modal fade" id="OtherModal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title"><b>My other projects</b></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body text-justify">
                                            <h5>I use to develop some console applications using C# and other .Net Web applications 
                                                and Web Services during my free time. Please click on my GIT Hub link to view my other projects.
                                            </h5>
                                            <div class="text-center">
                                                <button type="button" class="btn btn-outline-success">GIT Hub Link </button>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     <%-- About Me --%>
          <section id="aboutMe-Section">
            <div class="section-padding">
                <h1 class="text-center"><u>About Me</u></h1>
            </div>
            <div class="container">
                <div class="row text-center">
                    <h4>I am a graduated Master in Information Systems with a passion to develop, 
                        integrate and innovate high quality of websites and software using .NET and C#. 
                        <br />
                        <br />
                        I love to do programming, my personal projects are mostly developed in my spare time and 
                        I learned programming languages on my own through online meterials. I am currently accepting 
                        new projects and opportunities I love to hear about yours.    
                        <br />
                        <br />
                        If you want to contact me about a project or opportunity, feel free to click the button bellow.
                    </h4>
                    <div class="button-contact">   
                        <button type="button" class="btn btn-outline-warning btn-block" data-toggle="modal" data-target="#ContactForm"><b class="contactme">Contact Me</b></button>       
                    </div>
                </div>
            </div>
        </section>
        <%-- Footer --%>
         <section id="footersection">
             <div class="card-footer test-muted text-center">
            Developed by Kumar @ 2018.
        </div>
             </section>
        <%-- Contact Form --%>
            <div class="modal fade" id="ContactForm" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title"><b>Contact Me</b></h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body text-justify">
                                           <div class="form-group">
                                                <div class="row rowheight">
                                                   <h5 class="text-center">Thanks for your interest, could you please take a moment to introduce yourself</h5>
                                                   </div>
                                               <div class="row rowheight">
                                                     <asp:TextBox ID="txtName" CssClass="form-control col-sm-7" placeholder="Name" runat="server"></asp:TextBox>  
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" Text="*"
                                                       CssClass="requiredFieldValidateStyle"  ForeColor="Red"> </asp:RequiredFieldValidator>
                                                   </div>
                                               <div class="row rowheight">
                                                       <asp:TextBox ID="txtEmail" CssClass="form-control col-sm-7" placeholder="Email" runat="server"></asp:TextBox> 
                                                   <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" Text="*"
                                                       CssClass="requiredFieldValidateStyle"  ForeColor="Red"> </asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" controlToValidate="txtEmail" ErrorMessage="Email is not valid" ForeColor="Red"
                                                    CssClass="requiredFieldValidateStyle"   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>
                                               </div>
                                                <div class="row rowheight">
                                                      <asp:TextBox ID="txtMobileNumber" CssClass="form-control col-sm-7" placeholder="MobileNumber" runat="server"></asp:TextBox>  
                                              </div>
                                                 <div class="row rowheight">
                                                   <asp:TextBox ID="txtComments" CssClass="form-control" TextMode="MultiLine"  Width="450px" placeholder="Comments" runat="server"></asp:TextBox>                                           
                                                    </div>
                                               <div class="row rowheight">
                                                  <div class="g-recaptcha" data-sitekey="6LfHdkkUAAAAAGaX24ZE6J0HMxcbSRT3-_vqldZl"></div>
                                               </div>

                                               </div>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="BtnSubmitCV" runat="server" CssClass="btn btn-success mr-auto" OnClick="BtnSubmitCV_Click" Text="My CV"/>
                                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" UseSubmitBehavior="false" OnClick="btnSubmit_Click"/>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">

<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta name="description" content=""/>
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<title>Biometric Attendance for Colleges || Login</title>

    <style type="text/css">
        .style1
        {
            width: 400px;
            height: 230px;
            margin-left: 120px;
            margin-right: 120px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 84px;
        }
        .style4
        {
            width: 136px;
        }
    </style>

</head>

<body id="top">

    <form id="form1" runat="server">

<div id="header-wrapper">
	<div id="header-wrapper-2">
		<div class="center-wrapper">

			<div id="header">

				<div id="logo">
					<h1 id="site-title"><a href="#">Biometric Attendance for Colleges</span></a></h1>

				</div>

				<div id="help-wrapper">
					<div id="help">

						 <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink> <span class="text-separator">&nbsp&nbsp|&nbsp&nbsp</span> 
                        <asp:HyperLink ID="HyperLink8" runat="server">Help</asp:HyperLink> <span class="text-separator">&nbsp&nbsp|&nbsp&nbsp</span> 
                        <asp:HyperLink ID="HyperLink9" runat="server">About us</asp:HyperLink>

					</div>
				</div>

			</div>

		</div>
	</div>
</div>

<div id="navigation-wrapper">
	<div id="navigation-wrapper-2">

		<div class="center-wrapper">
	
			<div id="navigation">
            <marquee style="margin-top: 3px"><font size=5px>Welcome || Enter your credentials to continue</font></marquee>

				

				<div class="clearer">&nbsp;</div>

			</div>

		</div>

	</div>
</div>

<div id="content-wrapper">
	<div class="center-wrapper">
		
		<div class="content" id="content-two-columns">

			<div id="main-wrapper">
				<div id="main">

					<div class="clearer">&nbsp;
                    <div>
                    <img alt="Biometric" class="style1" src="img/2737.jpg" /></div>
                    </div>

				</div>
			</div>

			<div id="sidebar-wrapper">
				<div id="sidebar">

					<div class="box">

						

					    <br />
                        <br />
                        <br />

						

					</div>

					<div class="style2">

						
					
					    <strong>Enter your Credentials<br />
                        </strong>

						
					
					</div>

					<div class="box nobborder">

						<div class="box-title">
                            <table class="table">
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtusername" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Password</td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                                            style="text-align: left"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                                            Text="Login" Width="47px" />
                                    </td>
                                    <td class="style4">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                                            Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </div>

					</div>

				</div>
			</div>

			<div class="clearer">&nbsp;</div>

		</div>

	</div>
</div>

<div id="footer-wrapper">

	<div class="center-wrapper">

		<div id="footer">

			<div class="right">
				<a href="#">Top ^</a>
			</div>
			
			<div class="clearer">&nbsp;</div>

		</div>

	</div>

</div>

<div id="bottom">

</div>

    </form>

</body>
</html>
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <meta http-equiv="Content-Language" content="en-us">
    <title>THAKUR POLYTECHNIC - Online Registration</title>
    <link href="style/Style1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            color: #FFFFFF;
            font-size: medium;
        }
        .style2
        {
            width: 143%;
            margin-right: 50px;
        }
        .style3
        {
            font-weight: bold;
            font-size: small;
        }
        .style4
        {
            width: 183px;
        }
        .style5
        {
            width: 183px;
            text-align: left;
            font-size: small;
        }
        .style6
        {
            width: 183px;
            text-align: left;
            font-size: small;
            height: 22px;
        }
        .style7
        {
            height: 22px;
            text-align: left;
        }
        .style8
        {
            width: 338px;
        }
        .style9
        {
            width: 95px;
        }
        .style10
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div align="center">
    	<table border="1" width="800" cellspacing="0" cellpadding="0" style="border-collapse: collapse" id="table3" bordercolor="#434367">
			<tr>
				<td align="left" valign="top">
		<table border="0" width="800" cellspacing="0" id="table4" height="548">
			<tr>
				<td background="images/header_background.gif" height="133" align="left" 
                    valign="top" colspan="2">
				<div align="left">
					<table border="0" width="796" id="table5" cellspacing="0">
						<tr>
							<td width="311" rowspan="5" colspan="2" align="left" valign="top">
							<img border="0" src="images/logo1.gif" width="306" height="82"></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
							<p align="right">
                                <font color="#FFFFFF"><%=Now() %></font></td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td style="width: 417px" class="style1">THAKUR POLYTECHNIC</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="30" >&nbsp;</td>
							<td valign="top" style="text-align: right">
                                &nbsp; </td>
							<td width="17" >&nbsp;</td>
						</tr>
						<tr>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22" style="height: 15px">&nbsp;</td>
							<td width="289" align="left" style="height: 15px">&nbsp;</td>
							<td width="30" style="height: 15px">&nbsp;</td>
							<td style="width: 417px; height: 15px;">&nbsp;</td>
							<td width="17" style="height: 15px">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left">&nbsp;</td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">&nbsp;</td>
							<td width="17">&nbsp;</td>
						</tr>
						<tr>
							<td width="22">&nbsp;</td>
							<td width="289" align="left"><a href="Home.aspx">
							Home</a> | <a href="registration.aspx">Registration</a> 
							| <a href="starttest.aspx">Test</a>&nbsp; |&nbsp;
							<a href="login.aspx">Student Login</a></td>
							<td width="30">&nbsp;</td>
							<td style="width: 417px">
                                <p align="right"><a href="faq.asp">FAQ's</a> |&nbsp;
								<a href="contact.asp">Contact Us</a></td>
							<td width="17">&nbsp;</td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
			<tr>
				<td align="left" valign="top" rowspan="2" 
                    style="border-left-width: 1px; border-top-width: 1px; border-bottom-width: 1px" 
                    class="style9">
				<img border="0" src="images/admin_s.gif" width="150" height="500"></td>
				<td  align="left" valign="top" height="396" 
                    style=" padding-left:5pt; padding-top :5pt;" class="style8"> 
				
				 
				
				<div align="center" style="margin-left: 40px">
                    <table class="style2">
                        <tr>
                            <td class="style3" colspan="2">
                                REGISTRATION</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Kaushalya&nbsp; ID</td>
                            <td class="style10">
                                <asp:TextBox ID="txtkaushalyaid" runat="server"></asp:TextBox>
                                <asp:Button ID="Button2" runat="server" Height="19px" 
                                    style="margin-bottom: 0px" Text="show details" Width="80px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Name</td>
                            <td class="style7">
                                <asp:TextBox ID="txtname" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Password</td>
                            <td class="style10">
                                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Mobile number</td>
                            <td class="style10">
                                <asp:TextBox ID="txtmobileno" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                E-mail ID</td>
                            <td class="style10">
                                <asp:TextBox ID="txtemailid" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                College name</td>
                            <td class="style10">
                                <asp:TextBox ID="txtcollegename" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Branch
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtbranch" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Exam name</td>
                            <td class="style10">
                                <asp:DropDownList ID="ddexamname" runat="server">
                                    <asp:ListItem>---select exam---</asp:ListItem>
                                    <asp:ListItem>Online c exam</asp:ListItem>
                                    <asp:ListItem>Online c++ exam</asp:ListItem>
                                    <asp:ListItem>Online vb exam</asp:ListItem>
                                    <asp:ListItem>Online java exam</asp:ListItem>
                                    <asp:ListItem>Online oracle exam</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Register" />
                    <asp:Button ID="Button3" runat="server" 
                        style="position: relative; top: -1px; left: 229px; width: 89px" 
                        Text="Delete all rows" />
                    <asp:Button ID="Button4" runat="server" Text="Cancel" Width="74px" />
                    </div>
				
				</td>
			</tr>
			<tr>
				<td height="19" align="left" valign="top" 
                    style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" 
                    class="style8">
				<p align="center"> 
				 © 2018-2019, THAKUR POLYTECHNIC Online Registrationd>
			</tr>
			</table>
				</td>
			</tr>
		</table>
	</div>
    
    </div>
    </form>
</body>
</html>

﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StartExam.aspx.vb" Inherits="examconfo" %>

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
        .style8
        {
            width: 338px;
        }
        .style9
        {
            width: 95px;
        }
        .style11
        {
            text-align: center;
            width: 409px;
            font-weight: 700;
            font-size: medium;
        }
        .style12
        {
            width: 100%;
        }
        .style13
        {
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
                    <div class="style11">
                        &nbsp;EXAM DETAILS<br />
                        <br />
                        <table class="style12">
                            <tr>
                                <td class="style13">
                                    Welcome</td>
                                <td>
                                    <asp:TextBox ID="txtKaushalyaID" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Select Exam:</td>
                                <td>
                                    <asp:DropDownList ID="ddexam" runat="server" Height="17px" Width="116px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Time (mins):</td>
                                <td>
                                    10:00</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Total marks attainable:</td>
                                <td>
                                    6</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Total questions:</td>
                                <td>
                                    6</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    Marks alloted per question:</td>
                                <td>
                                    1</td>
                            </tr>
                            <tr>
                                <td class="style13" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                            </tr>
                            <asp:Button ID="Button1" runat="server" Text="START EXAM" />
                        </table>
                    </div>
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

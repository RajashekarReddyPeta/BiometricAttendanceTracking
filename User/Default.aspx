<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: x-large;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">Welcome <asp:Label ID="lblUname" runat="server" Text="Label"></asp:Label>!!</p>
    <table style="width: 870px; margin-left: 19px; margin-right: 20px; margin-top: 0px; margin-bottom: 25px">
        <tr>
            <td class="style2">
                <p>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="152px" 
                        ImageUrl="~/img/images3.jpg" Width="168px" 
                        PostBackUrl="~/User/Attendance.aspx" /><br />
                    <a href="Attendance.aspx">Attendance</a></p>
            </td>
            <td class="style2">
        <asp:ImageButton ID="ImageButton4" runat="server" 
            ImageUrl="~/img/medium_Calendar Clip Art.gif" Height="146px" Width="151px" 
                    PostBackUrl="~/User/Timetable.aspx" /> <br />
                <a href="Timetable.aspx">Timetable</a>
            </td>
            <td class="style2">
    <p>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="146px" 
            ImageUrl="~/img/trainingClass.jpg" Width="167px" 
            PostBackUrl="~/User/Classes.aspx" /><br />
        <a href="Classes.aspx">Classes</a></p>
            </td>
            <td class="style2">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="142px" 
                    ImageUrl="~/img/students-thumb9632067.jpg" Width="162px" 
                    PostBackUrl="~/User/Students.aspx" /><br />
                <a href="Students.aspx">Students</a></td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>


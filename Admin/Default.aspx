<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

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
    <p class="style1">Welcome Administrator!!</p>

    <table style="width: 867px; margin-left: 22px; margin-right: 22px; margin-top: 0px; margin-bottom: 25px;">
        <tr>
            <td class="style2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="121px" 
                    ImageUrl="~/img/images2.jpg" PostBackUrl="~/Admin/Colleges.aspx" 
                    Width="180px" />
                <br />
                <a href="Colleges.aspx">Colleges.aspx</a></td>
            <td class="style2">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="124px" 
                    ImageUrl="~/img/images1.jpg" Width="139px" />
                <br />
                <a href="Users.aspx">Users.aspx</a></td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>


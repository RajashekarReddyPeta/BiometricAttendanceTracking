<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="attentersheet.aspx.cs" Inherits="attentersheet" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table">
        <tr>
            <td>
                <asp:Label ID="lblRollno" runat="server" Text="Roll No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Button ID="btnStartTime" runat="server" onclick="btnStartTime_Click" 
                    Text="StartTime" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEndTime" runat="server" onclick="btnEndTime_Click" 
                    Text="EndTime" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Button ID="btnCalculate" runat="server" onclick="btnCalculate_Click" 
                    Text="Calculate" />
            </td>
            <td>
                <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>


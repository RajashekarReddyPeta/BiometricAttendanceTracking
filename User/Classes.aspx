<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Classes.aspx.cs" Inherits="user_AddClasses" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 26px;
        }
        .center1
        {
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="classes" runat="server">
    <table class="table">
        <tr>
            <td>
                <asp:Label ID="lblCollege" runat="server" Text="College Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCollegeName" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="collegename" 
                    DataValueField="collegeid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [collegeid], [collegename] FROM [mastercolleges]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="rfvCollegname" runat="server" 
                    ControlToValidate="ddlCollegeName" Display="Dynamic" 
                    ErrorMessage="Select College Name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblClassName" runat="server" Text="Class Name"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtClassName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClassName" runat="server" 
                    ControlToValidate="txtClassName" Display="Dynamic" 
                    ErrorMessage="Please enter the Class Name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Value="-1">select</asp:ListItem>
                    <asp:ListItem Value="True" Selected="True">True</asp:ListItem>
                    <asp:ListItem Value="False">False</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvStatus" runat="server" 
                    ControlToValidate="ddlStatus" Display="Dynamic" 
                    ErrorMessage="Please select a value">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" runat="server" onclick="btnInsert_Click" 
                    Text="Insert" />
            </td>
            <td>
                <asp:Button ID="btnReset" runat="server" Text="Reset" 
                    onclick="btnReset_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<asp:Button ID="btnview" runat="server" Text="Click here to Add Classes" CssClass="center1" 
        onclick="btnview_Click" />
   
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="classid" DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." Width="523px" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" CssClass="center1" ForeColor="Black" 
            onload="Page_Load">
        <Columns>
            <asp:BoundField DataField="classid" HeaderText="classid" ReadOnly="True" 
                SortExpression="classid" InsertVisible="False" />
            <asp:BoundField DataField="collegename" HeaderText="collegename" 
                SortExpression="collegename" />
            <asp:BoundField DataField="classname" HeaderText="classname" 
                SortExpression="classname" />
            <asp:CheckBoxField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [masterclassses] WHERE [classid] = @classid" 
        InsertCommand="INSERT INTO [masterclassses] ([collegeid], [classname], [status]) VALUES (@collegeid, @classname, @status)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT masterclassses.classid, mastercolleges.collegename, masterclassses.classname, masterclassses.status FROM masterclassses INNER JOIN mastercolleges ON masterclassses.collegeid = mastercolleges.collegeid" 
        
            
            UpdateCommand="UPDATE masterclassses SET classname = @classname, status = @status WHERE (classid = @classid)">
        <DeleteParameters>
            <asp:Parameter Name="classid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="collegeid" Type="Int32" />
            <asp:Parameter Name="classname" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="classname" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="classid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>

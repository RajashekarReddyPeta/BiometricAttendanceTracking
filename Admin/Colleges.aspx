<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Colleges.aspx.cs" Inherits="admin_AddColleges" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 223px;
    }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="colleges" runat="server" Height="255px" Width="599px" 
        CssClass="center" >
     <table class="table">
        <tr>
            <td class="style1">
                <asp:Label ID="lblCollegename" runat="server" Text="College Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCollegeName" runat="server" Height="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCollegeName" runat="server" 
                    ControlToValidate="txtCollegeName" Display="Dynamic" 
                    ErrorMessage="Please enter the college name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblAddress" runat="server" Text="Address Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Rows="5" TextMode="MultiLine" 
                    Width="295px" Height="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAddressDetails" runat="server" 
                    ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblContact" runat="server" Text="Contact Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revContactnumber" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" 
                    ErrorMessage="Enter valid phone(10 digit) number" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvContact" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" 
                    ErrorMessage="enter phone number">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Selected="True" Value="True">Active</asp:ListItem>
                    <asp:ListItem Value="False">Inactive</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
            <td>
                <asp:Button ID="txtCancel" runat="server" Text="Cancel" 
                    onclick="txtCancel_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnview" runat="server" Text="Click here to Add Colleges" CssClass="center" 
        onclick="btnview_Click" />
    <br />
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="center" DataKeyNames="collegeid" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="collegeid" HeaderText="College ID" ReadOnly="True" 
                SortExpression="collegeid" />
            <asp:BoundField DataField="collegename" HeaderText="College Name" 
                SortExpression="collegename" />
            <asp:BoundField DataField="addressdetails" HeaderText="Address Details" 
                SortExpression="addressdetails" />
            <asp:BoundField DataField="contactdetails" HeaderText="Contact Details" 
                SortExpression="contactdetails" />
            <asp:CheckBoxField DataField="status" HeaderText="Status" 
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [mastercolleges] WHERE [collegeid] = @collegeid" 
        InsertCommand="INSERT INTO [mastercolleges] ([collegename], [addressdetails], [contactdetails], [status]) VALUES (@collegename, @addressdetails, @contactdetails, @status)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [collegeid], [collegename], [addressdetails], [contactdetails], [status] FROM [mastercolleges]" 
        UpdateCommand="UPDATE [mastercolleges] SET [collegename] = @collegename, [addressdetails] = @addressdetails, [contactdetails] = @contactdetails, [status] = @status WHERE [collegeid] = @collegeid">
        <DeleteParameters>
            <asp:Parameter Name="collegeid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="collegename" Type="String" />
            <asp:Parameter Name="addressdetails" Type="String" />
            <asp:Parameter Name="contactdetails" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="collegename" Type="String" />
            <asp:Parameter Name="addressdetails" Type="String" />
            <asp:Parameter Name="contactdetails" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="collegeid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>


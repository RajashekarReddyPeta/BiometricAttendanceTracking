<%@ Page Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Locations.aspx.cs" Inherits="user_Locations" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .center
        {
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="locations" runat="server">
    <table class="table">
        <tr>
            <td>
                <asp:Label ID="lblCollegeName" runat="server" Text="College Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCollegeName" runat="server" 
                    DataSourceID="SqlDataSourceCollegename" DataTextField="collegename" 
                    DataValueField="collegeid">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCollegeName" runat="server" 
                    ControlToValidate="ddlCollegeName" Display="Dynamic" 
                    ErrorMessage="Please Select a Value">*</asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceCollegename" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:biometricconnection1 %>" 
                    SelectCommand="SELECT [collegeid], [collegename] FROM [mastercolleges]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLocationName" runat="server" Text="Location Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLocationName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLocationName" runat="server" 
                    ControlToValidate="txtLocationName" Display="Dynamic" 
                    ErrorMessage="pleae enter the Location">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSacnnerDetails" runat="server" Text="Scanner Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtScannerDetails" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvScannerDeatils" runat="server" 
                    ControlToValidate="txtScannerDetails" Display="Dynamic" 
                    ErrorMessage="Please enter the details">*</asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Selected="True">True</asp:ListItem>
                    <asp:ListItem>false</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvStatus" runat="server" 
                    ControlToValidate="ddlStatus" Display="Dynamic" 
                    ErrorMessage="Please select a value">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                    onclick="btnInsert_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                    onclick="btnCancel_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnView" runat="server" onclick="btnView_Click" 
        Text="Click here to change location" />
    <br />
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="locationid" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" CssClass="center" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="locationid" HeaderText="locationid" ReadOnly="True" 
                SortExpression="locationid" InsertVisible="False" />
            <asp:BoundField DataField="collegename" HeaderText="collegename" 
                SortExpression="collegename" />
            <asp:BoundField DataField="locationname" HeaderText="locationname" 
                SortExpression="locationname" />
            <asp:BoundField DataField="scannerdetails" HeaderText="scannerdetails" 
                SortExpression="scannerdetails" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:biometricConnectionString1 %>" 
        DeleteCommand="DELETE FROM [masterlocations] WHERE [locationid] = @locationid" 
        InsertCommand="INSERT INTO [masterlocations] ([collegeid], [locationname], [scannerdetails], [status]) VALUES (@collegeid, @locationname, @scannerdetails, @status)" 
        ProviderName="<%$ ConnectionStrings:biometricConnectionString1.ProviderName %>" 
        SelectCommand="SELECT masterlocations.locationid, mastercolleges.collegename, masterlocations.locationname, masterlocations.scannerdetails, masterlocations.status FROM masterlocations INNER JOIN mastercolleges ON masterlocations.collegeid = mastercolleges.collegeid" 
        
            
            UpdateCommand="UPDATE masterlocations SET locationname = @locationname, scannerdetails = @scannerdetails, status = @status WHERE (locationid = @locationid)">
        <DeleteParameters>
            <asp:Parameter Name="locationid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="collegeid" Type="Int32" />
            <asp:Parameter Name="locationname" Type="String" />
            <asp:Parameter Name="scannerdetails" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="locationname" Type="String" />
            <asp:Parameter Name="scannerdetails" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="locationid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>


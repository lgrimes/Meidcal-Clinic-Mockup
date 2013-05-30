<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Primary.Master" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="WebApplication1.Pages.PatientList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBODY" runat="server">
    <h2>List of Patients</h2>
    <asp:TextBox ID="FieldName" runat="server" AutoPostBack="True"></asp:TextBox>
    <asp:Button ID="ButtonSearch" runat="server" onclick="ButtonSearch_Click" Text="Search" />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" 
                    SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="EmergencyContact" HeaderText="EmergencyContact" 
                    SortExpression="EmergencyContact" />
                <asp:BoundField DataField="DateOfRegistration" HeaderText="DateOfRegistration" 
                    SortExpression="DateOfRegistration" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ClinicManagementConnectionString2 %>" 
            FilterExpression="Name like '%{0}%'" SelectCommand="get_patients" 
           
            SelectCommandType="StoredProcedure">
                   <FilterParameters>
           
           <asp:ControlParameter Name="Name" PropertyName="Text" ControlID="FieldName" />
       </FilterParameters>


        </asp:SqlDataSource>
    
        <br />

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Primary.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="WebApplication1.Pages.PatientRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBODY" runat="server">
<h2>Register Patient</h2>
<div id="form">
        Name
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <br />
        Address
        <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
        <br />
        Date Of Birth
        <asp:TextBox ID="TextBoxDateOfBirth" runat="server"></asp:TextBox>
        <br />
        Phone 
        <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
        <br />
        Emergency Contact
        <asp:TextBox ID="TextBoxEmergencyContact" runat="server" TextMode="MultiLine"></asp:TextBox>
    
        <br />
        <asp:Button ID="ButtonSubmit" runat="server" onclick="ButtonSubmit_Click" 
            ondatabinding="ButtonSubmit_Click" Text="Submit" />
        <br />
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ClinicManagementConnectionString2 %>" 
            SelectCommand="insert_patient" 
            SelectCommandType="StoredProcedure">


                   <SelectParameters>
                       <asp:ControlParameter ControlID="TextBoxName" Name="Name" PropertyName="Text" 
                           Type="String" />
                       <asp:ControlParameter ControlID="TextBoxAddress" Name="Address" 
                           PropertyName="Text" Type="String" />
                       <asp:ControlParameter ControlID="TextBoxDateOfBirth" Name="DateOfBirth" 
                           PropertyName="Text" Type="DateTime" />
                       <asp:ControlParameter ControlID="TextBoxPhone" Name="Phone" PropertyName="Text" 
                           Type="String" />
                       <asp:ControlParameter ControlID="TextBoxEmergencyContact" 
                           Name="EmergencyContact" PropertyName="Text" Type="String" />
                   </SelectParameters>


        </asp:SqlDataSource>
</asp:Content>

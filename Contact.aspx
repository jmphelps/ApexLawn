<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" runat="Server">
  <br />
    <div>  
    Please enter in your info to be added to our email list!
     <br />
        <br />
    <table>
        <tr>
            <td>
                <b>Email Address:</b>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" ErrorMessage="Email is required"
                    ControlToValidate="txtEmail"
                    Text="*"
                    Display="Dynamic"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                
            </td>
           </tr>
        <tr>
            <td>
                <b>First Name:</b>
            </td>
            <td>
                <asp:TextBox ID="txtFname" Width="150px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" ErrorMessage="First name is required"
                    ControlToValidate="txtFname"
                    Text="*"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
           </tr>
        <tr>
            <td>
                <b>Last Name:</b>
            </td>
            <td>
                <asp:TextBox ID="txtLname" Width="150px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" ErrorMessage="Last name is required"
                    ControlToValidate="txtLname"
                    Text="*"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
           </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary HeaderText="Please fix the following errors" ForeColor="Red" ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
<td colspan="3">
    <asp:Label ID="lblConfirm" runat="server" Font-Bold="true" ForeColor="Blue"></asp:Label>
    </td>
    </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
        </tr>
    </table>
    
    </div>
   
</asp:Content>


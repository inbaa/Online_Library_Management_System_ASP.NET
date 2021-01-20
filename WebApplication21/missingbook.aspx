<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="missingbook.aspx.cs" Inherits="WebApplication21.missingbook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 516px;
        }
        .auto-style5 {
            text-align: right;
            width: 614px;
            height: 36px;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            text-align: right;
            width: 614px;
            height: 36px;
            font-size: large;
        }
        .auto-style8 {
            width: 50%;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
            width: 174px;
        }
        </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('background%20final.jpg'); height: 646px; text-align: left;">
    <center><h1 style="color: #FFFFFF""> MISSING BOOK </h1></center>
        
                            <div class="card-header">
                            <center>
                            <strong class="card-title"> MISSING BOOK </strong></center>
                            </div>
        
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>SERIAL</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="SERIAL" runat="server" style="text-align: left" BorderStyle="Groove" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SERIAL" ErrorMessage="ENTER SERIAL." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style5"><strong>RNO</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="RNO" runat="server" style="text-align: left" BorderStyle="Groove" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RNO" ErrorMessage="ENTER RNO." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style5"><strong>LGNO</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="LGNO" runat="server" style="text-align: left" BorderStyle="Groove" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="LGNO" ErrorMessage="ENTER LGNO." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>SUBJECT</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="SUBJECT" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SUBJECT" ErrorMessage="ENTER SUBJECT" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>BOOK NAME</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="BNAME" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="BNAME" ErrorMessage="ENTER BNAME" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style5"><strong>AUTHOR NAME</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="ANAME" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ANAME" ErrorMessage="ENTER ANAME" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
                <td class="auto-style5"><strong>CATEGORY</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="CATEGORY" runat="server" Height="19px" Width="175px">
                        <asp:ListItem>UNIVERSITY STOCK</asp:ListItem>
                        <asp:ListItem>GIFT STOCK</asp:ListItem>
                        <asp:ListItem>JOURNAL STOCK</asp:ListItem>
                        <asp:ListItem>PROJECT STOCK</asp:ListItem>
                    </asp:DropDownList>
                   
                   
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>MBID</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="MBID" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="MBID" ErrorMessage="ENTER MBID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>PUBLISHER</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="PUBLISHER" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PUBLISHER" ErrorMessage="ENTER  PUBLISHER" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>PRICE</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="PRICE" runat="server" style="text-align: left" BorderStyle="Groove" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="PRICE" ErrorMessage="Enter PRICE" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style5"><strong>DATE</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="DATE" runat="server" style="text-align: left" BorderStyle="Groove" TextMode="Date" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DATE" ErrorMessage="ENTER DATE" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
       <tr>
                <td class="auto-style5"><strong>STATUS</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>ACTIVE</asp:ListItem>
                        <asp:ListItem>INACTIVE</asp:ListItem>
                    </asp:DropDownList>
                   
                   
                   
                    
                </td>
            </tr>
                <td class="auto-style5"><strong>BARCODE</strong></td>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="BARCODE" runat="server" style="text-align: left" BorderStyle="Groove"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="BARCODE" ErrorMessage="ENTER BARCODE" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
        <table align="center" class="auto-style8">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="UPDATE" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Height="40px" Text="UPDATE" Width="180px" OnClick="UPDATE_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="ADD" runat="server" BackColor="Lime" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Height="40px" Text="ADD" Width="180px" OnClick="Button6_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="DELETE" runat="server" BackColor="#FF5050" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Height="40px" Text="DELETE" Width="180px" OnClick="DELETE_Click" />
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White">Back To Home</asp:LinkButton>
        </div>

</asp:Content>

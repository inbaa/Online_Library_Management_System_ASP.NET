<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="stocks_maintenance.aspx.cs" Inherits="WebApplication21.stocks_maintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style5 {
            height: 68px;
            width: 136px;
        }
        .auto-style6 {
            height: 61px;
            width: 136px;
        }
        .auto-style7 {
            height: 57px;
            width: 136px;
        }
        .auto-style9 {
            height: 57px;
            width: 158px;
        }
        .auto-style10 {
            height: 68px;
            width: 158px;
        }
        .auto-style11 {
            height: 61px;
            width: 158px;
        }
        .auto-style13 {
            height: 57px;
            width: 279px;
        }
        .auto-style14 {
            height: 68px;
            width: 279px;
        }
        .auto-style15 {
            height: 61px;
            width: 279px;
        }
        .auto-style17 {
            width: 156px;
        }
        .auto-style19 {
            width: 156px;
            height: 49px;
        }
        .auto-style20 {
            width: 185px;
            height: 49px;
        }
        .auto-style21 {
            height: 49px;
        }
        .auto-style22 {
            width: 46%;
            height: 153px;
            margin-bottom: 0px;
        }
        .auto-style23 {
            width: 50%;
            margin-right: 0px;
        }
        .auto-style24 {
            width: 185px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center><table class="auto-style23" >
        <tr>
            <td class="auto-style7">
                <center><asp:Label ID="Label11" runat="server" Font-Size="14px" Text="Book"></asp:Label>
                    <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="**"></asp:Label>
                </center>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Button ID="btnNameSearch" runat="server" CssClass="btn btn-warning" OnClick="btnNameSearch_Click" Text="Search" ValidationGroup="h" />
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click1" Text="View" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><center><asp:Label ID="Label13" runat="server" Font-Size="14px" Text="Category"></asp:Label>
                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="**"></asp:Label>
               </center>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="Button2_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="View" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><center><asp:Label ID="Label15" runat="server" Font-Size="14px" Text="Rack Name"></asp:Label>
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="**"></asp:Label>
               </center>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Button ID="Button4" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="Button4_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" CssClass="btn btn-success" Text="View" OnClick="Button5_Click" />
            </td>
        </tr>
    </table>
    <table class="auto-style23">
        <tr>
            <td class="auto-style7">
                <center><asp:Label ID="Label17" runat="server" Font-Size="14px" Text="Author"></asp:Label>
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="**"></asp:Label>
                </center>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Button ID="Button6" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="Button6_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" CssClass="btn btn-success" Text="View" OnClick="Button7_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><center><asp:Label ID="Label19" runat="server" Font-Size="14px" Text="Missing Book"></asp:Label>
                <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="**"></asp:Label>
               </center>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Button ID="Button8" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="Button8_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" CssClass="btn btn-success" Text="View" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><center><asp:Label ID="Label21" runat="server" Font-Size="14px" Text="MBID"></asp:Label>
                <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="**"></asp:Label>
               </center>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Button ID="Button10" runat="server" CssClass="btn btn-warning" Text="Search" OnClick="Button10_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button11" runat="server" CssClass="btn btn-success" Text="View" />
            </td>
        </tr>
    </table></center>
    <br />
    <center><asp:Label ID="Label23" runat="server" Text="Stock Details" Font-Bold="True" Font-Size="XX-Large"></asp:Label></center>
    <br />
    <center><table class="auto-style22">
        <tr>
            <td class="auto-style17">
               <center> <asp:Label ID="Label24" runat="server" Text="Total Stock"></asp:Label></center>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button12" runat="server" CssClass="btn btn-info" Text="Check" Width="107px" OnClick="Button12_Click" />
            </td>
            <td>
                <asp:Label ID="Label30" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
               <center> <asp:Label ID="Label25" runat="server" Text="University Stock"></asp:Label></center>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button13" runat="server" CssClass="btn btn-info" Text="Check" Width="107px" OnClick="Button13_Click" />
            </td>
            <td>
                <asp:Label ID="Label31" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
               <center> <asp:Label ID="Label26" runat="server" Text="Gift Stock"></asp:Label></center>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button14" runat="server" Text="Check" CssClass="btn btn-info" Width="107px" OnClick="Button14_Click" />
            </td>
            <td>
                <asp:Label ID="Label32" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style22">
        <tr>
            <td class="auto-style19">
               <center> <asp:Label ID="Label27" runat="server" Text="Journal Stock"></asp:Label></center>
            </td>
            <td class="auto-style20">
                <asp:Button ID="Button15" runat="server" CssClass="btn btn-info" Text="Check" Width="107px" OnClick="Button15_Click" />
            </td>
            <td class="auto-style21">
                <asp:Label ID="Label33" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
               <center> <asp:Label ID="Label28" runat="server" Text="Project Stock"></asp:Label></center>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button16" runat="server" CssClass="btn btn-info" Text="Check" Width="107px" OnClick="Button16_Click" />
            </td>
            <td>
                <asp:Label ID="Label34" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <center><asp:Label ID="Label29" runat="server" Text="Under Issue"></asp:Label></center>
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button17" runat="server" CssClass="btn btn-info" Text="Check" Width="107px" OnClick="Button17_Click" />
            </td>
            <td>
                <asp:Label ID="Label35" runat="server" Text="Checking..."></asp:Label>
            </td>
        </tr>
    </table></center>
    <br />
    <br />
    <br />
    <center><asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="226px" Width="794px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView></center>
    <br />

</asp:Content>

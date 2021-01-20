<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication21.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Search Book Details" Font-Bold="True" Font-Overline="False" Font-Size="X-Large"></asp:Label>
            <br />
        </center>
        <div>
            <center><asp:TextBox ID="TextBox1" runat="server" BorderStyle="Inset" Font-Size="Large"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" Font-Size="Large" OnClick="Button1_Click" />
        </center></div>
        <div>
            <center><asp:GridView ID="GridView1" runat="server" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" Height="226px" Width="548px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString6 %>" ProviderName="<%$ ConnectionStrings:libraryConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM bookentry WHERE (BNAME LIKE '%' + @bname + '%' OR ANAME LIKE '%' + @aname + '%')"></asp:SqlDataSource>
  <%--   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString6 %>" ProviderName="<%$ ConnectionStrings:libraryConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM bookentry WHERE (ANAME LIKE '%' + @aname + '%')"></asp:SqlDataSource>
           --%>     
            </center></div>



</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PageCommon.aspx.cs" Inherits="WebApplication21.PageCommon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="imgs/front.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imgs/names.JPG" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imgs/ab.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
     <div id="content">
        
        <div id="lefts">
            <center><p><b>WELCOME TO DCS LIBRARY</b></p></center>
            <p class="discription">Books are the Best friend of a human being.</p>
            <p class="discription">Books are the Best friend of a human being.</p>
            <p class="discription">DCS</p>
            <p class="discription"><b><Marquee>
                "You want weapons? We’re in a library. Books are the best weapon in the world. This room’s the greatest arsenal we could have. Arm yourself!"--Russell T. Davies </b></Marquee></p>
            <p class="smallnote" runat="server">
                <b>Enter into the world of learning......enjoy reading!!</b>
            </p>
            <asp:Panel ID="panell" runat="server">
                <b>
                    <p class="title">Rules of Registration:</p>
                </b>
                <p class="discription">To register and get benifits of Library.</p>
                <table style="width: 450px;">
                    <tr>
                        <td>Registration charges:
                        </td>
                        <td>Rs 300
                        </td>
                    </tr>
                    <tr>
                        <td>In favour of:</td>
                        <td>DCS Library</td>
                    </tr>
                    <tr>
                        <td>Address:
                        </td>
                        <td>DEPARTMENT OF COMPUTER SCIENCE &nbsp; GUINDY CAMPUS<br />
                            CHENNAI, &nbsp; TAMILNADU</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <div id="rights">
        </div>
    </div>
       
    </b>
       
</asp:Content>

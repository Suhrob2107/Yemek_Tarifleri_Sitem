<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 26px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style6 {
        font-weight: bold;
    }
    .auto-style7 {
        height: 27px;
        font-weight: bold;
        text-align: right;
    }
    .auto-style8 {
        height: 27px;
    }
    .auto-style9 {
        font-size: x-large;
        color: #99FF99;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9" colspan="2"><strong>Mesaj Paneli</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Ad Soyad:&nbsp;&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Addresiniz:</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Konu:&nbsp; </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Mesaj: </td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700; font-size: large" Text="Gonder" CssClass="fb8" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

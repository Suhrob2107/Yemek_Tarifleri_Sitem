<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
            font-weight: bold;
            text-align: right;
            font-size: large;
        }
        .auto-style4 {
            font-weight: bold;
            text-align: right;
            font-size: large;
        }
        .auto-style5 {
            font-weight: bold;
            text-align: right;
            font-size: large;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Ad Soyad</td>
            <td class="auto-style6" style="margin-left: 40px">
                <asp:TextBox ID="TextAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mail Adresi</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextAddress" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">icerik</td>
            <td class="auto-style2" style="margin-left: 40px">
                <asp:TextBox ID="TextIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yemek</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="ButtonOnay" runat="server" style="font-weight: 700; font-size: large" Text="Onayla" OnClick="ButtonOnay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

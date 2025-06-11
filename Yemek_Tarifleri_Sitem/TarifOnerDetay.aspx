<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
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
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            font-weight: bold;
            font-size: large;
            text-align: right;
        }
        .auto-style9 {
            text-align: right;
            font-size: large;
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
            <td class="auto-style5">Tarif ad:</td>
            <td class="auto-style6" style="margin-left: 40px">
                <asp:TextBox ID="TextTarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif malzemeler:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextMalzeme" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yapilis:</td>
            <td class="auto-style2" style="margin-left: 40px">
                <asp:TextBox ID="TextYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tarif resim:</td>
            <td style="margin-left: 40px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Tarif Oneren:</td>
            <td style="margin-left: 40px" class="auto-style7">
                <asp:TextBox ID="TextOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Oneren Mail:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Kategori:</strong></td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
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
<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>
            <asp:DataList ID="DataList2" runat="server" Width="439px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label7" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("GununYemegiAdi") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><strong>Malzemeler: </strong>&nbsp;
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununEmegiMalzeme") %>'></asp:Label>
                                <br />
                                <br />
                                <strong>Tarif: </strong>&nbsp;
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("GununEmegiTarif") %>'></asp:Label>
                                <br />
                                <asp:Image ID="Image2" runat="server" Height="166px" ImageUrl="~/resimler/menedjer.jpg" style="text-align: center" Width="413px" />
                                <br />
                                <br />
                                <table class="auto-style1">
                                    <tr>
                                        <td><strong>Puan:</strong>&nbsp;
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("GunuEmeigiPuan") %>'></asp:Label>
                                        </td>
                                        <td><strong>Eklenme tarihi: </strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("GununEmegiTarih") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>

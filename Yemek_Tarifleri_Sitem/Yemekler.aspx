<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: right;
    }
    .auto-style3 {
        width: 203px;
    }
        .auto-style4 {
            width: 36px;
        }
        .auto-style5 {
            width: 48px;
        }
        .auto-style6 {
            font-size: large;
        }
    .auto-style7 {
        width: 36px;
        height: 34px;
    }
    .auto-style8 {
        width: 48px;
        height: 34px;
    }
    .auto-style9 {
        font-size: large;
        height: 34px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="-" Width="30px" />
                </td>
                <td class="auto-style9"><strong>Yemek listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemakAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                            
                        </td>
                        <td class="auto-style2">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpeg" Width="30px" /></a>
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="-" Width="30px" />
                </td>
                <td class="auto-style6">Emek<strong> ekleme</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek ad</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarif:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori:</td>
                <td style="margin-left: 40px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Button ID="BtnEkle0" runat="server" OnClick="BtnEkle0_Click" style="font-weight: 700; text-align: center;" Text="Ekle" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="margin-left: 40px">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


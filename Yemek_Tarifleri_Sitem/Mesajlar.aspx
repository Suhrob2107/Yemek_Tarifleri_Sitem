<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Mesajlar" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: right;
    }
    .auto-style3 {
        width: 203px;
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
        .auto-style10 {
            text-align: right;
            width: 34px;
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
                <td class="auto-style9"><strong>Mesaj listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="MesajDetay.aspx?Mesajid=<%# Eval("Mesajid") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/read.png" Width="30px" /></a>
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

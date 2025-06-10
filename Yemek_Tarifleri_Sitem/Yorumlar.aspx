<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>





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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Height="30px" style="font-weight: 700; font-size: x-large" Text="-" Width="30px" />
                </td>
                <td class="auto-style6"><strong>Onaylanan Yorum listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                            
                        </td>
                        <td class="auto-style2">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
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
               <td class="auto-style6"><strong>Onaysiz Yorum listesi</strong></td>
           </tr>
       </table>
   </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="Yorumlar.aspx?Yorumid=<%# Eval("Yorumid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                            
                        </td>
                        <td class="auto-style2">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpeg" Width="30px" /></a>
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>

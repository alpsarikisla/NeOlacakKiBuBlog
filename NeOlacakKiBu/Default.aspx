<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NeOlacakKiBu.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lv_makaleler" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="makale">
                <div class="baslik">
                    <h3><%# Eval("Baslik") %></h3>
                </div>
                <img src='Assets/MakaleResim/<%# Eval("KapakResim") %>' />
                <div class="ekbilgi">
                    <label style="float:left">
                        Kategori : <%# Eval("Kategori") %>
                    Yazar: <%# Eval("Yazar") %>
                    </label>
                    <label style="float:right">
                        <%# Eval("GoruntulemeSayi") %> Görüntüleme
                    </label>
                    <div style="clear:both"></div>
                </div>
                <div class="ozet">
                     <%# Eval("Ozet") %>
                </div>
                <div>
                    <a href='MakaleDetay.aspx?mid=<%# Eval("ID") %>' class="devamibuton">Yazının Devamı</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MakaleDetay.aspx.cs" Inherits="NeOlacakKiBu.MakaleDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="detayTasiyici">
        <h3 class="makaleBaslik">
            <asp:Literal ID="ltrl_baslik" runat="server"></asp:Literal></h3>
        <div class="makaleResim">
            <asp:Image ID="img_resim" runat="server" />
        </div>
        <div class="makaleOzet">
             <asp:Literal ID="ltrl_ozet" runat="server"></asp:Literal>
        </div>
        <div style="clear:both"></div>
        <div class="ekbilgi">
            <label style="float: left">
                Kategori :
                <asp:Literal ID="ltrl_kategori" runat="server"></asp:Literal>
                Yazar:<asp:Literal ID="ltrl_yazar" runat="server"></asp:Literal>
            </label>
            <label style="float: right">
                <asp:Literal ID="ltrl_goruntulemeSayi" runat="server"></asp:Literal>
                Görüntüleme
            </label>
            <div style="clear: both"></div>
        </div>
        <div class="makaleIcerik">
            <asp:Literal ID="ltrl_icerik" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiPanel/YoneticiPanelMaster.Master" AutoEventWireup="true" CodeBehind="MakaleEkle.aspx.cs" Inherits="NeOlacakKiBu.YoneticiPanel.MakaleEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/formdesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formtasiyici">
        <div class="baslik">
            Makale Ekle
        </div>
        <div class="icerik">
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="pnlbasarisiz" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
             <asp:Panel ID="pnl_basarili" runat="server" CssClass="pnlbasarili" Visible="false">
               Makale ekleme işlemi başarılı.
            </asp:Panel>
            <div class="satir">
                <label>Makale Başlık</label><br />
                <asp:TextBox ID="tb_isim" runat="server" CssClass="metinkutu"></asp:TextBox>
            </div>
            <div class="satir">
                 <label>Makale Kategori</label><br />
                <asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="metinkutu" DataTextField="Isim" DataValueField="ID"></asp:DropDownList>
            </div>
             <div class="satir">
                <asp:CheckBox ID="cb_durum" runat="server" Text=" Makale Yayınla" Checked="true"></asp:CheckBox> 
            </div>
            <div class="satir">
                <asp:LinkButton ID="lbtn_ekle" runat="server" OnClick="lbtn_ekle_Click" CssClass="buton Deep-Teal-Sea-2-bg">Makale Ekle</asp:LinkButton>
            
            </div>
           
        </div>
    </div>
</asp:Content>

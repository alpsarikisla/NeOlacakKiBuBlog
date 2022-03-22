<%@ Page Title="" Language="C#" MasterPageFile="~/YoneticiPanel/YoneticiPanelMaster.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="NeOlacakKiBu.YoneticiPanel.KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/formdesign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formtasiyici">
        <div class="baslik">
            Kategori Güncelle
        </div>
        <div class="formicerik">
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="pnlbasarisiz" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="pnl_basarili" runat="server" CssClass="pnlbasarili" Visible="false">
                Kategori güncelleme işlemi başarılı.
            </asp:Panel>
            <div class="satir">
                <label>Kategori Adı</label><br />
                <asp:TextBox ID="tb_isim" runat="server" CssClass="metinkutu"></asp:TextBox>
            </div>
            <div class="satir">
                <asp:CheckBox ID="cb_durum" runat="server" Text=" Kategori Yayınla" Checked="true"></asp:CheckBox>
            </div>
            <div class="satir">
                <asp:LinkButton ID="lbtn_duzenle" runat="server" OnClick="lbtn_duzenle_Click" CssClass="buton Deep-Teal-Sea-2-bg">Kategori Güncelle</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>

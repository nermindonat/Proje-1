<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="AdminToplanti.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminToplanti" %>

<%@ Register Src="~/User Kontrol/UserToplanti.ascx" TagPrefix="uc1" TagName="UserToplanti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Site/css/chartist.css" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="/Site/css/widget.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/buttons.datatables.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/select.datatables.min-2.css">
    <!-- for searchable -->

    <link rel="stylesheet" href="/Site/css/select2.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/bootstrap-multiselect.css" />
    <link rel="stylesheet" type="text/css" href="/Site/css/multi-select.css" />
    <link rel="stylesheet" href="/Site/css/awesome-bootstrap-checkbox.css">
    
    <link href="/Site/css/fSelect.css" rel="stylesheet">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserToplanti runat="server" ID="UserToplanti" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/Site/js/select-custom.js" type="f6be685e9eff893077bf6b56-text/javascript"></script>
    <script type="f6be685e9eff893077bf6b56-text/javascript" src="/Site/js/modernizr.js"></script>
    <script src="/Site/js/jquery.datatables.min.js" type="f6be685e9eff893077bf6b56-text/javascript"></script>
    <script src="/Site/js/datatables.select.min-2.js" type="f6be685e9eff893077bf6b56-text/javascript"></script>

    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="/Site/js/fSelect.js"></script>
    
</asp:Content>

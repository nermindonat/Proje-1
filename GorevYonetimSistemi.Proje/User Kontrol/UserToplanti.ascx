<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserToplanti.ascx.cs" Inherits="GorevYonetimSistemi.Proje.User_Kontrol.UserToplanti" %>
<%@ Import Namespace="System.Diagnostics.Eventing.Reader" %>


<div class="row">
    <div class="col-sm-12">

        <div class="col-lg-12 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#toplantiKayit"
                        data-toggle="tab" class="nav-link active">
                        <strong>Toplantı
                Kayıt
                        </strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#toplantiDetay"
                        data-toggle="tab" class="nav-link">
                        <strong>Toplantı
                Detay
                        </strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#toplantiAtama"
                        data-toggle="tab" class="nav-link">
                        <strong>Toplantı
                Atama
                        </strong>
                    </a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane active " id="toplantiKayit">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Ekle</h5>
                                </div>
                                <div class="card-block">
                                    <form id="main2" method="post"
                                        novalidate>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <input type="hidden"
                                                    class="form-control"
                                                    name="toplantiId"
                                                    id="toplantiId">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Adı
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiAdi"
                                                    id="toplantiAdi">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Konusu
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiKonusu"
                                                    id="toplantiKonusu">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                İçeriği
                                            </label>
                                            <div class="col-sm-4">
                                                <textarea name="toplantiIcerigi" id="toplantiIcerigi"
                                                    cols="70"
                                                    rows="10"
                                                    class="form-control max-width"></textarea>
                                                <span class="messages"></span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Tarihi
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiTarihi"
                                                    id="toplantiTarihi">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Saati
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiSaati"
                                                    id="toplantiSaati">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Yeri
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiYeri"
                                                    id="toplantiYeri">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="submit"
                                                    class="btn btn-primary m-b-0">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button id="ToplantiAtamaTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantılar</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="row-delete"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th hidden>Toplantı ID</th>
                                                    <th>Toplantı Adı</th>
                                                    <th>Toplantı İçeriği</th>
                                                    <th>Toplantı Tarih</th>
                                                    <th>Toplantı Saat</th>
                                                    <th>Toplantı Yeri</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:ListView runat="server" ID="lvToplanti">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td hidden><%#Eval("ToplantiId") %></td>
                                                            <td><%#Eval("ToplantiAdi") %></td>
                                                            <td><%#Eval("ToplantiIcerigi") %></td>
                                                            <td><%#Eval("SonTarihSaat","{0:dd/MM/yyyy}") %></td>
                                                            <td><%#Eval("SonTarihSaat","{0:hh.mm tt}") %></td>
                                                            <td><%#Eval("Yer") %></td>

                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--/row-->

                <div class="tab-pane " id="toplantiDetay">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Detay Ekle</h5>
                                </div>
                                <div class="card-block">
                                    <form id="main3" method="post"
                                        novalidate>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <input type="hidden"
                                                    class="form-control"
                                                    name="toplantiDetayId"
                                                    id="toplantiDetayId">
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Adı
                                            </label>
                                            <div class="col-sm-4">
                                                <select class="js-example-data-array " id="selectToplantiDetayTA">
                                                    <option value="Seçiniz Lorem ipsum
                                        dolor sit amet.">Seçiniz Lorem ipsum
                                        dolor sit amet.
                                                    </option>
                                                    <option value="Staj Komisyonu">Staj Komisyonu
                                                    </option>
                                                    <option value="Toplantı 2">Toplantı 2
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Durum
                                            </label>
                                            <div class="col-sm-4">
                                                <div class="radio radio-success radio-inline">
                                                    <input type="radio"
                                                        id="inlineRadio1"
                                                        value="option1"
                                                        name="radioInline">
                                                    <label for="inlineRadio1">Yapıldı </label>
                                                </div>
                                                <div class="radio radio-success radio-inline">
                                                    <input type="radio"
                                                        id="inlineRadio2"
                                                        value="option1"
                                                        name="radioInline"
                                                        checked>
                                                    <label for="inlineRadio2">
                                                        Yapılmadı
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Sonrası Alınan
                                Kararlar
                                            </label>
                                            <div class="col-sm-4">
                                                <textarea
                                                    name="toplantiKonusu"
                                                    id="toplantiSonAlKarar"
                                                    cols="70" rows="10"
                                                    class="form-control max-width"></textarea>
                                                <span class="messages"></span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="submit"
                                                    class="btn btn-primary m-b-0">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button id="toplantiTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Detay</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="order-table"
                                            class="table table-striped table-bordered nowrap" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th hidden>Toplanti Detay Id</th>
                                                    <th hidden>Toplanti Id</th>
                                                    <th>Toplantı Adı</th>
                                                    <th>Toplantı Durum</th>
                                                    <th>Toplantıda Alınan
                                    Kararlar
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <asp:ListView runat="server" ID="lvToplantiDetay">
                                                <ItemTemplate>
                                                <tr>
                                                    <td hidden><%#Eval("ToplantiDetayId") %></td>
                                                    <td hidden><%#Eval("ToplantiId") %></td>
                                                    <td><%#Eval("ToplantiAdi") %></td>
                                                    <td><%#Eval("ToplantiDurum") %></td>
                                                    <td><%#Eval("AlinanKararlar") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            </asp:ListView>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                </div>
                <div class="tab-pane " id="toplantiAtama">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="card">
                                <div class="card-block">
                                    <form id="main" method="post"
                                        novalidate>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Toplantı</label>
                                            <div class="col-sm-10">
                                                <select class="js-example-data-array ">
                                                    <option value="Seciniz">Seçiniz Lorem ipsum
                                        dolor.
                                                    </option>
                                                    <option value="1">Toplantı
                                        1Seçiniz Lorem ipsum
                                        dolor.
                                                    </option>
                                                    <option value="1">Toplantı 2
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                İlgili
                                Kişiler
                                            </label>
                                            <div class="col-sm-10 col-xl-6 m-b-30">
                                                <select id="custom-headers"
                                                    class="searchable"
                                                    multiple="multiple">
                                                    <option value="elem_1"
                                                        selected>elem 1
                                                    </option>
                                                    <option value="elem_2">elem 2
                                                    </option>
                                                    <option value="elem_3">elem 3
                                                    </option>
                                                    <option value="elem_4"
                                                        selected>elem 4
                                                    </option>
                                                    <option value="elem_5">elem 5
                                                    </option>
                                                    <option value="elem_6">elem 6
                                                    </option>
                                                    <option value="elem_7">elem 7
                                                    </option>
                                                    <option value="elem_8">elem 8
                                                    </option>
                                                    <option value="elem_9">elem 9
                                                    </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="submit"
                                                    class="btn btn-primary m-b-0">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button id="ToplantiDetayTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Atama Listesi</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="row-select"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th>Toplantı Adı</th>
                                                    <th>İlgili Kişiler</th>
                                                    <th>Atayan Kişi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <asp:ListView runat="server" ID="lvToplantiAtama">
                                                <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("ToplantiAdi") %></td>
                                                    <td><%#Eval("IlgiliKisiler") %></td>
                                                    <td><%#Eval("AtayanKisi") %></td>
                                                </tr>
                                                </ItemTemplate>
                                            </asp:ListView>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/row-->
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        $("#row-delete tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            $("#toplantiId").val(rowData[0]);
            $("#toplantiAdi").val(rowData[1]);
            $("#toplantiIcerigi").val(rowData[2]);
            $("#toplantiTarihi").val(rowData[3]);
            $("#toplantiSaati").val(rowData[4]);
            $("#toplantiYeri").val(rowData[5]);
        });

        $("#order-table tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();


            $("#toplantiDetayId").val(rowData[0]);
            $("#selectToplantiDetayTA").val(rowData[2]).trigger("change");
            $("#inlineRadio1").val(rowData[3]);
            $("#toplantiSonAlKarar").val(rowData[4]);
            console.log(rowData)

        });

        $("#toplantiTemizle ").on('click', function () {

            $("#toplantiId").val("");
            $("#toplantiAdi").val("");
            $("#toplantiIcerigi").val("");
            $("#toplantiTarihi").val("");
            $("#toplantiSaati").val("");
            $("#toplantiYeri").val("");
        });

        $("#ToplantiDetayTemizle ").on('click', function () {

            $("#toplantiDetayId").val("");
            $("#selectToplantiDetayTA").val("").trigger("change");
            $("#inlineRadio1").val("");
            $("#toplantiSonAlKarar").val("");
            

        });

    });
</script>
<!-- Page -->
<div class="page">
    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Input Laporan Investigasi Kecelakaan</h3>
            </header>
            <div class="col-md-12 col-lg-12">
                <div class="example-wrap">
                    <div class="example">
                        <form method="post" action="<?= base_url('lik/lik_add_act') ?>">
                            <h4 class="example-title">I. Data Korban</h4>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputInlineUsername">Tanggal Insiden</label>
                                    <input type="text" class="form-control" name="tanggal" placeholder="Tanggal Insiden" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputInlineUsername">Waktu Insiden</label>
                                    <input type="text" class="form-control" name="waktu" placeholder="Pukul" autocomplete="off" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" name="nama" placeholder="Nama" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" name="departemen" placeholder="Dept" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" name="jabatan" placeholder="Jabatan" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control" name="nik" placeholder="NIK" autocomplete="off" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <h6 class="example-title">Kategori Karyawan</h6>
                                    <h6 class="text-danger"><i>Karyawan / Outsourching / Subcont </i></h6>
                                    <input type="text" class="form-control" name="kat_karyawan" placeholder="Kategori Karyawan" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-3">
                                    <h6 class="example-title">Status Kecelakaan</h6>
                                    <h6 class="text-danger"><i>Berat / Sedang / Ringan </i></h6>
                                    <input type="text" class="form-control" name="status_kecelakaan" placeholder="Status Kecelakaan" autocomplete="off" />
                                </div>
                                <div class="form-group col-md-3">
                                    <h6 class="example-title">Kerja Shift</h6>
                                    <h6 class="text-danger"><i>Siang / Malam </i></h6>
                                    <input type="text" class="form-control" name="kerja_shift" placeholder="Kerja Shift" autocomplete="off" />
                                </div>


                                <div class="form-group col-md-3">
                                    <h6 class="example-title">Data Pribadi </h6>
                                    <input type="text" class="form-control" name="usia" placeholder="Usia" autocomplete="off" /> <br>
                                    <input type="text" class="form-control" name="masuk_kerja" placeholder="Masuk Kerja" autocomplete="off" /> <br>
                                    <h6 class="example-title">Jenis Kelamin </h6>
                                    <input type="text" class="form-control" name="jenis_kelamin" placeholder="Jenis Kelamin" autocomplete="off" /> <br>
                                </div>
                            </div>
                            <h4 class="example-title">II. P3K</h4>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputInlineUsername">Bagian Tubuh Yang Terluka</label>
                                    <textarea name="bagian_terluka" class="form-control" id="textareaDefault" rows="4"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label" for="inputInlineUsername">Penanganan</label>
                                    <textarea name="penanganan" class="form-control" id="textareaDefault" rows="1"></textarea>
                                    <label class="form-control-label" for="inputInlineUsername">Perawatan</label>
                                    <textarea name="perawatan" class="form-control" id="textareaDefault" rows="1"></textarea>
                                </div>
                            </div>
                            <h4 class="example-title">III. Analisa Insiden</h4>
                            <h4 class="example-title">Penyebab Langsung</h4>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="kond_tdk_aman">Kondisi Tidak Aman</label>
                                    <textarea name="kond_tdk_aman" class="form-control" id="kond_tdk_aman" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="tind_tdk_aman">Tindakan Tidak Aman</label>
                                    <textarea name="tind_tdk_aman" class="form-control" id="tind_tdk_aman" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <h4 class="example-title">Penyebab Dasar</h4>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="man">Man</label>
                                    <textarea class="form-control" name="men" id="men" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="material">Material</label>
                                    <textarea class="form-control" name="material" id="material" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="method">Method</label>
                                    <textarea class="form-control" name="method" id="method" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label" for="machine">Machine</label>
                                    <textarea class="form-control" name="machine" id="machine" rows="2
                                    "></textarea>
                                </div>
                            </div>
                            <h4 class="example-title">IV. Rekomendasi</h4>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label class="form-control-label" for="tind_perbaikan">Tindakan Perbaikan</label>
                                    <textarea class="form-control" name="tind_perbaikan" id="tind_perbaikan" rows="3"></textarea>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="form-control-label" for="pic">PIC</label>
                                    <textarea class="form-control" name="pic" id="pic" rows="3"></textarea>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="form-control-label" for="target">Target</label>
                                    <textarea class="form-control" name="target" id="target" rows="3"></textarea>
                                </div>
                            </div>
                            <h4 class="example-title">V. Review</h4>
                            <input type="submit" value="Simpan" class="btn btn-primary btn-sm">
                        </form>
                    </div>
                </div>
            </div>
            <!-- End Panel Table Add Row -->
        </div>
    </div>
</div>
<!-- End Page --
    
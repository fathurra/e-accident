<!-- Page -->
<div class="page">
    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Detail Laporan Investigasi Kecelakaan</h3>
            </header>
            <div class="col-md-12 col-lg-12">
                <div class="example-wrap">
                    <div class="example">
                        <?php foreach ($lik as $l) { ?>
                            <form action="<?= base_url() . 'lik/lik_data_update' ?>" method="post">
                                <h4 class="example-title">I. Data Korban</h4>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="inputInlineUsername">Tanggal Insiden</label>
                                        <input type="hidden" name="id_lik" value="<?= $l->id_lik; ?>">
                                        <input type="text" class="form-control" name="tanggal" value="<?= $l->tanggal; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="inputInlineUsername">Waktu Insiden</label>
                                        <input type="text" class="form-control" name="waktu" value="<?= $l->waktu; ?>" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-3">
                                        <label class="form-control-label" for="inputInlineUsername">Nama</label>
                                        <input type="text" class="form-control" name="nama" value="<?= $l->nama; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-control-label" for="inputInlineUsername">Departemen</label>
                                        <input type="text" class="form-control" name="departemen" value="<?= $l->departemen; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-control-label" for="inputInlineUsername">Jabatan</label>
                                        <input type="text" class="form-control" name="jabatan" value="<?= $l->jabatan; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="form-control-label" for="inputInlineUsername">NIK</label>
                                        <input type="text" class="form-control" name="nik" value="<?= $l->nik; ?>" autocomplete="off" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <h6 class="example-title">Kategori Karyawan</h6>
                                        <h6 class="text-danger"><i>Karyawan / Outsourching / Subcont </i></h6>
                                        <input type="text" class="form-control" name="kat_karyawan" value="<?= $l->kat_karyawan; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <h6 class="example-title">Status Kecelakaan</h6>
                                        <h6 class="text-danger"><i>Berat / Sedang / Ringan </i></h6>
                                        <input type="text" class="form-control" name="status_kecelakaan" value="<?= $l->status_kecelakaan; ?>" autocomplete="off" />
                                    </div>
                                    <div class="form-group col-md-4">
                                        <h6 class="example-title">Kerja Shift</h6>
                                        <h6 class="text-danger"><i>Siang / Malam </i></h6>
                                        <input type="text" class="form-control" name="kerja_shift" value="<?= $l->kerja_shift; ?>" autocomplete="off" />
                                    </div>
                                </div>
                                <h6 class="example-title">Data Pribadi </h6>
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label" for="inputInlineUsername">Usia</label>
                                        <input type="text" class="form-control" name="usia" value="<?= $l->usia; ?>" autocomplete="off" /> <br>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label" for="inputInlineUsername">Tanggal Masuk Kerja</label>
                                        <input type="text" class="form-control" name="masuk_kerja" value="<?= $l->masuk_kerja; ?>" autocomplete="off" /> <br>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label">Jenis Kelamin </label>
                                        <input type="text" class="form-control" name="jenis_kelamin" value="<?= $l->jenis_kelamin; ?>" autocomplete="off" /> <br>
                                    </div>
                                </div>
                                <h4 class="example-title">II. P3K</h4>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="inputInlineUsername">Bagian Tubuh Yang Terluka</label>
                                        <textarea name="bagian_terluka" class="form-control" id="textareaDefault" rows="4"><?= $l->bagian_terluka; ?> </textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="inputInlineUsername">Penanganan</label>
                                        <textarea name="penanganan" class="form-control" id="textareaDefault" rows="1"><?= $l->penanganan; ?></textarea>
                                        <label class="form-control-label" for="inputInlineUsername">Perawatan</label>
                                        <textarea name="perawatan" class="form-control" id="textareaDefault" rows="1"><?= $l->perawatan; ?></textarea>
                                    </div>
                                </div>
                                <h4 class="example-title">III. Analisa Insiden</h4>
                                <h4 class="example-title">Penyebab Langsung</h4>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="kond_tdk_aman">Kondisi Tidak Aman</label>
                                        <textarea name="kond_tdk_aman" class="form-control" id="kond_tdk_aman" rows="2
                                    "><?= $l->kond_tdk_aman; ?></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="tind_tdk_aman">Tindakan Tidak Aman</label>
                                        <textarea name="tind_tdk_aman" class="form-control" id="tind_tdk_aman" rows="2
                                    "><?= $l->tind_tdk_aman; ?></textarea>
                                    </div>
                                </div>
                                <h4 class="example-title">Penyebab Dasar</h4>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="man">Man</label>
                                        <textarea class="form-control" name="men" id="men" rows="2
                                    "><?= $l->men; ?></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="material">Material</label>
                                        <textarea class="form-control" name="material" id="material" rows="2
                                    "><?= $l->material; ?></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="method">Method</label>
                                        <textarea class="form-control" name="method" id="method" rows="2
                                    "><?= $l->method; ?></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-control-label" for="machine">Machine</label>
                                        <textarea class="form-control" name="machine" id="machine" rows="2
                                    "><?= $l->machine; ?></textarea>
                                    </div>
                                </div>
                                <h4 class="example-title">IV. Rekomendasi</h4>
                                <div class="row">
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label" for="tind_perbaikan">Tindakan Perbaikan</label>
                                        <textarea class="form-control" name="tind_perbaikan" id="tind_perbaikan" rows="3"><?= $l->tind_perbaikan; ?></textarea>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label" for="pic">PIC</label>
                                        <textarea class="form-control" name="pic" id="pic" rows="3"><?= $l->pic; ?></textarea>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label class="form-control-label" for="target">Target</label>
                                        <textarea class="form-control" name="target" id="target" rows="3"><?= $l->target; ?></textarea>
                                    </div>
                                </div>
                                <a href="<?= base_url('lik'); ?>" class="btn btn-default"><i class="icon fa-rotate-left" aria-hidden="true"></i> Back</a>
                                <input type="submit" value="Update" class="btn btn-primary">
                            </form>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <!-- End Panel Table Add Row -->
        </div>
    </div>
</div>
<!-- End Page --
    
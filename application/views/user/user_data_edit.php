<!-- Page -->
<div class="page">
    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Edit User</h3>
            </header>
            <div class="panel-body">
                <div class="panel-body container-fluid">
                    <?php foreach ($user as $u) { ?>
                        <form method="post" action="<?= base_url('user/user_update') ?>">
                            <div class="form-group form-material" data-plugin="formMaterial">
                                <label class="form-control-label" for="nama">Nama</label>
                                <input type="hidden" name="id" value="<?= $u->id; ?>">
                                <input type="text" class="form-control" id="nama" name="nama" value="<?= $u->nama; ?>" />
                                <small class="text-danger"><?php echo form_error('nama'); ?></small>
                            </div>
                            <div class="form-group form-material" data-plugin="formMaterial">
                                <label class="form-control-label" for="nik">NIK</label>
                                <input type="text" class="form-control" id="nik" name="nik" value="<?= $u->nik; ?>" />
                                <small class="text-danger"><?php echo form_error('nik'); ?></small>
                            </div>
                            <div class="form-group form-material" data-plugin="formMaterial">
                                <label class="form-control-label" for="select">Dept</label>
                                <select class="form-control" name="dept" id="select">
                                    <option value="">-Pilih Dept-</option>
                                    <?php
                                    foreach ($dept as $d) { ?>
                                        <option value="<?php echo $d->nama_dept; ?>"> <?php echo $d->nama_dept; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-group form-material" data-plugin="formMaterial">
                                <label class="form-control-label" for="jabatan">Jabatan</label>
                                <input type="text" class="form-control" id="jabatan" name="jabatan" value="<?= $u->jabatan; ?>" />
                                <small class="text-danger"><?php echo form_error('jabatan'); ?></small>
                            </div>
                            <input type="submit" value="Simpan" class="btn btn-primary btn-sm">
                        </form>
                    <?php } ?>
                </div>
            </div>
            <!-- End Panel Table Add Row -->
        </div>
    </div>
</div>
<!-- End Page --
    
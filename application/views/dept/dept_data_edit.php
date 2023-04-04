<!-- Page -->
<div class="page">
    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Edit Departement</h3>
            </header>
            <div class="panel-body">
                <div class="panel-body container-fluid">
                    <?php foreach ($dept as $d) { ?>
                        <form method="post" action="<?= base_url('dept/dept_update') ?>">
                            <div class="form-group form-material" data-plugin="formMaterial">
                                <input type="hidden" name="id_dept" value="<?= $d->id_dept; ?>">
                                <label class="form-control-label" for="nama_baranama_dept">Nama Departement</label>
                                <input type="text" class="form-control" id="nama_dept" name="nama_dept" value="<?= $d->nama_dept; ?>" />
                                <small class="text-danger"><?php echo form_error('nama_dept'); ?></small>
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
    
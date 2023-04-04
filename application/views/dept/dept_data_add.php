<!-- Page -->
<div class="page">
    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Tambah Departement</h3>
            </header>
            <div class="panel-body">
                <div class="panel-body container-fluid">
                    <form method="post" action="<?= base_url('dept/dept_add_act') ?>">
                        <div class="form-group form-material" data-plugin="formMaterial">
                            <label class="form-control-label" for="nama_baranama_dept">Nama Departement</label>
                            <input type="text" class="form-control" id="nama_dept" name="nama_dept" placeholder="Isikan Nama Departement" />
                            <small class="text-danger"><?php echo form_error('nama_dept'); ?></small>
                        </div>
                        <input type="submit" value="Simpan" class="btn btn-primary btn-sm">
                    </form>
                </div>
            </div>
            <!-- End Panel Table Add Row -->
        </div>
    </div>
</div>
<!-- End Page --
    
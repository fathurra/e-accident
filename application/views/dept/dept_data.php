<!-- Page -->
<div class="page">
    <!-- <div class="page-header">
            <h1 class="page-title">DataTables</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Tables</a></li>
                <li class="breadcrumb-item active">DataTables</li>
            </ol>
            <div class="page-header-actions">
                <a class="btn btn-sm btn-default btn-outline btn-round" href="http://datatables.net" target="_blank">
                    <i class="icon wb-link" aria-hidden="true"></i>
                    <span class="hidden-sm-down">Official Website</span>
                </a>
            </div>
        </div> -->

    <div class="page-content">
        <!-- Panel Table Add Row -->
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Data Departement</h3>
            </header>
            <div class="panel-body">
                <a href="<?= base_url('dept/dept_add') ?>" class="btn btn-primary">Tambah Departement</a>
                <br>
                <br>
                <?php
                if (isset($_GET['pesan'])) {
                    if ($_GET['pesan'] == 'hapus') {
                        echo "<div class='alert alert-danger'>Data berhasil di hapus! </div>";
                    } elseif ($_GET['pesan'] == 'tambah') {
                        echo "<div class='alert alert-success'>Data berhasil di tambahkan. </div>";
                    } elseif ($_GET['pesan'] == 'edit') {
                        echo "<div class='alert alert-success'>Data Berhasil di ubah. </div>";
                    }
                }
                ?>
                <table class="table table-hover dataTable table-striped w-full" data-plugin="dataTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Departement</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($dept as $d) {
                        ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $d->nama_dept ?></td>
                                <td>
                                    <a class="badge badge-warning" href="<?= base_url() . 'dept/dept_edit/' . $d->id_dept; ?>"><span class="glyphicon glyphicon-plus"></span> Edit</a>
                                    <a class="badge badge-danger" href="<?= base_url() . 'dept/dept_delete/' . $d->id_dept; ?>" onclick="return confirm('Apakah anda yakin');"><span class="glyphicon glyphicon-plus"></span> Delete</a>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- End Panel Table Add Row -->
    </div>
</div>
<!-- End Page --
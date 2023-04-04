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
                <h3 class="panel-title">Data User</h3>
            </header>
            <div class="panel-body">
                <a href="<?= base_url('user/user_add') ?>" class="btn btn-primary">Tambah User Baru</a>
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
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>Departement</th>
                            <th>Jabatan</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($user as $b) {
                        ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $b->nama ?></td>
                                <td><?= $b->nik; ?></>
                                <td><?= $b->dept; ?></>
                                <td><?= $b->jabatan; ?></>
                                <td>
                                    <a class="badge badge-warning" href="<?= base_url() . 'user/user_edit/' . $b->id; ?>"><span class="glyphicon glyphicon-plus"></span> Edit</a>
                                    <a class="badge badge-danger" onclick="return myConfirm(); " href="<?= base_url() . 'user/user_delete/' . $b->id; ?>"><span class="glyphicon glyphicon-plus"></span> Delete</a>
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
<script>
    function myConfirm() {
        var result = confirm("Data akan di hapus?");
        if (result == true) {
            return true;
        } else {
            return false;
        }
    }
</script>
<!-- End Page --
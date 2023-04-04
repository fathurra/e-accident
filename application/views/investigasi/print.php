<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Laporan Investigasi Kecelakaan</title>
</head>

<body>
    <div class="container">
        <br>
        <br>
        <?php foreach ($lik as $l) { ?>
            <div class="row">
                <div class="col">
                    <img src="<?= base_url() ?>assets/base/assets/images/logotch.png" alt="">
                </div>
                <div class="col-6">
                    <h4><br> LAPORAN INVESTIGASI KECELAKAAN</h4>
                </div>
                <div class="col">
                    <img src="<?= base_url() ?>assets/base/assets/images/logo-k3.png" alt="">
                </div>
            </div>
            <table class="table table-bordered table-sm">
                <br>
                <tbody>
                    <tr>
                        <th class="table-active" colspan="5">I. Data Korban</th>
                    </tr>
                    <tr>
                        <td rowspan="2">Tanggal Insiden :
                            <br><?= $l->tanggal; ?>
                            <br>
                            <br>
                            Pukul :
                            <br>
                            <?= $l->waktu; ?>
                        </td>
                        <td>Nama : <?= $l->nama; ?></td>
                        <td>Departemen :<?= $l->departemen; ?></td>
                        <td>Jabatan : <?= $l->jabatan; ?></td>
                        <td>NIK : <?= $l->nik; ?></td>
                    </tr>
                    <tr>
                        <td><b>Kategori Karyawan :</b><br><?= $l->kat_karyawan; ?></td>
                        <td><b>Status Kecelakaan :</b><br><?= $l->status_kecelakaan; ?></td>
                        <td><b>Kerja Shift :</b><br><?= $l->kerja_shift; ?></td>
                        <td><b>Data Pribadi</b>
                            <br> Usia : <?= $l->usia; ?>
                            <br> Masuk Kerja :<br> <?= $l->masuk_kerja; ?>
                            <br> Jenis Kelamin : <br><?= $l->jenis_kelamin; ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="table-active" colspan="5">II. P3K</th>
                    </tr>
                    <tr>
                        <td rowspan="2">Bagian Tubuh Yang Terluka</td>
                        <td rowspan="2"><img src="<?= base_url() ?>assets/base/assets/images/anatomi.png" alt=""></td>
                        <td><b>P3K</b> </td>
                        <td colspan="2">Penanganan:
                            <br>
                            <?= $l->penanganan; ?>
                            <br>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Perawatan</b></td>
                        <td colspan="2"><?= $l->perawatan; ?>
                            <br><br><br>
                        </td>
                    </tr>
                    <tr>
                        <th class="table-active" colspan="5">III. Analsa Insiden</th>
                    </tr>
                    <tr>
                        <td class="table-light" colspan="5">Penyebab Langsung</td>
                    </tr>
                    <tr>
                        <td>Kondisi Tidak Aman <br><br> </td>
                        <td colspan="4"><?= $l->kond_tdk_aman; ?></td>
                    </tr>
                    <tr>
                        <td>Tindakan Tidak Aman <br><br> </td>
                        <td colspan="4"><?= $l->tind_tdk_aman; ?></td>
                    </tr>
                    <tr>
                        <td class="table-light" colspan="5">Penyebab Dasar</td>
                    </tr>
                    <tr>
                        <td>Man <br><br> </td>
                        <td colspan="4"><?= $l->men; ?></td>
                    </tr>
                    <tr>
                        <td>Material <br><br> </td>
                        <td colspan="4"><?= $l->material; ?></td>
                    </tr>
                    <tr>
                        <td>Method <br><br> </td>
                        <td colspan="4"><?= $l->method; ?></td>
                    </tr>
                    <tr>
                        <td>Machine <br><br> </td>
                        <td colspan="4"><?= $l->machine; ?></td>
                    </tr>
                    <tr>
                        <th class="table-active" colspan="5">IV. Rekomendasi</th>
                    </tr>
                    <tr>
                        <td class="table-light" colspan="3">Tindakan Perbaikan</td>
                        <td class="table-light">PIC</td>
                        <td class="table-light">Target</td>
                    </tr>
                    <tr>
                        <td class="table-light" colspan="3"><?= $l->tind_perbaikan; ?></td>
                        <td class="table-light"><?= $l->pic; ?><br><br></td>
                        <td class="table-light">
                            <?= $l->target; ?><br>
                        </td>
                    </tr>
                    <tr>
                        <th class="table-active" colspan="5">V. Review</th>
                    </tr>
                    <tr>
                        <td class="table-light"></td>
                        <td class="table-light" colspan="2">Nama</td>
                        <td class="table-light">Tanda Tangan</td>
                        <td class="table-light">Tanggal</td>
                    </tr>
                    <tr>
                        <td class="table-light">Pimpinan Dept</td>
                        <td class="table-light" colspan="2"></td>
                        <td class="table-light"></td>
                        <td class="table-light"></td>
                    </tr>
                    <tr>
                        <td class="table-light">Team Eis</td>
                        <td class="table-light" colspan="2"></td>
                        <td class="table-light"></td>
                        <td class="table-light"></td>
                    </tr>
                    <tr>
                        <td class="table-light">HRD</td>
                        <td class="table-light" colspan="2"></td>
                        <td class="table-light"></td>
                        <td class="table-light"></td>
                    </tr>
                </tbody>
            </table>
        <?php } ?>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>
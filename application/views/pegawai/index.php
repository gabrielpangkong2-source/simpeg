<!-- Breadcrumb -->
<nav class="breadcrumb-wrapper">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<?= site_url('pegawai') ?>">Home</a></li>
        <li class="breadcrumb-item active">Data Pegawai</li>
    </ol>
</nav>

<!-- Info Cards -->
<div class="row mb-4">
    <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
        <div class="card">
            <div class="card-body d-flex align-items-center">
                <div style="width:45px;height:45px;border-radius:10px;background:#ebf4ff;display:flex;align-items:center;justify-content:center;margin-right:14px">
                    <i class="fas fa-users" style="font-size:20px;color:#3182ce"></i>
                </div>
                <div>
                    <div style="font-size:22px;font-weight:700;color:#2d3748"><?= count($pegawai) ?></div>
                    <div style="font-size:12px;color:#a0aec0;font-weight:500">Total Pegawai</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
        <div class="card">
            <div class="card-body d-flex align-items-center">
                <div style="width:45px;height:45px;border-radius:10px;background:#fef3f2;display:flex;align-items:center;justify-content:center;margin-right:14px">
                    <i class="fas fa-male" style="font-size:20px;color:#3182ce"></i>
                </div>
                <div>
                    <?php $laki = 0;
                    foreach ($pegawai as $p) {
                        if ($p->jenis_kelamin == 'L') $laki++;
                    } ?>
                    <div style="font-size:22px;font-weight:700;color:#2d3748"><?= $laki ?></div>
                    <div style="font-size:12px;color:#a0aec0;font-weight:500">Laki-laki</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
        <div class="card">
            <div class="card-body d-flex align-items-center">
                <div style="width:45px;height:45px;border-radius:10px;background:#fdf2f8;display:flex;align-items:center;justify-content:center;margin-right:14px">
                    <i class="fas fa-female" style="font-size:20px;color:#d53f8c"></i>
                </div>
                <div>
                    <div style="font-size:22px;font-weight:700;color:#2d3748"><?= count($pegawai) - $laki ?></div>
                    <div style="font-size:12px;color:#a0aec0;font-weight:500">Perempuan</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 mb-3">
        <div class="card">
            <div class="card-body d-flex align-items-center">
                <div style="width:45px;height:45px;border-radius:10px;background:#f0fff4;display:flex;align-items:center;justify-content:center;margin-right:14px">
                    <i class="fas fa-building" style="font-size:20px;color:#38a169"></i>
                </div>
                <div>
                    <div style="font-size:22px;font-weight:700;color:#2d3748">DPMPTSPD</div>
                    <div style="font-size:12px;color:#a0aec0;font-weight:500">Instansi</div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Data Table -->
<div class="card">
    <div class="card-header d-flex justify-content-between align-items-center">
        <h3><i class="fas fa-table mr-2"></i>Daftar Pegawai</h3>
        <a href="<?= site_url('pegawai/tambah') ?>" class="btn btn-primary btn-sm">
            <i class="fas fa-plus mr-1"></i> Tambah Pegawai
        </a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table id="dataTable" class="table table-bordered table-hover" style="width:100%">
                <thead>
                    <tr>
                        <th style="width:40px">No</th>
                        <th>Nama</th>
                        <th>NIP</th>
                        <th>Pangkat/Gol</th>
                        <th>Jabatan</th>
                        <th>L/P</th>
                        <th>Pendidikan</th>
                        <th style="width:130px">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($pegawai as $p): ?>
                        <tr>
                            <td class="text-center"><?= $no++ ?></td>
                            <td>
                                <strong><?= $p->nama ?></strong>
                                <br><small class="text-muted"><?= $p->tempat_lahir ?>, <?= date('d/m/Y', strtotime($p->tanggal_lahir)) ?></small>
                            </td>
                            <td><code><?= $p->nip ?></code></td>
                            <td><?= $p->pangkat_terakhir ?></td>
                            <td><?= $p->jabatan ?></td>
                            <td class="text-center">
                                <span class="badge badge-<?= ($p->jenis_kelamin == 'L') ? 'laki' : 'perempuan' ?>">
                                    <?= ($p->jenis_kelamin == 'L') ? 'L' : 'P' ?>
                                </span>
                            </td>
                            <td><?= $p->tingkat_pendidikan ?></td>
                            <td class="text-center">
                                <a href="<?= site_url('pegawai/detail/' . $p->id) ?>" class="btn btn-info btn-sm" title="Detail">
                                    <i class="fas fa-eye"></i>
                                </a>
                                <a href="<?= site_url('pegawai/edit/' . $p->id) ?>" class="btn btn-warning btn-sm" title="Edit">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <button onclick="confirmDelete('<?= site_url('pegawai/hapus/' . $p->id) ?>', '<?= addslashes($p->nama) ?>')" class="btn btn-danger btn-sm" title="Hapus">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
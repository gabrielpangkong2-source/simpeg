</div><!-- /.main-content -->

<!-- Footer -->
<footer class="main-footer">
    <div class="d-flex justify-content-between align-items-center">
        <span>&copy; <?= date('Y') ?> SIMPEG - Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu Kota Tomohon</span>
        <span>v1.0</span>
    </div>
</footer>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- Bootstrap 4 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    // Flash message
    <?php if ($this->session->flashdata('success')): ?>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil!',
            text: '<?= $this->session->flashdata('success') ?>',
            showConfirmButton: false,
            timer: 2000,
            toast: true,
            position: 'top-end'
        });
    <?php endif; ?>

    <?php if ($this->session->flashdata('error')): ?>
        Swal.fire({
            icon: 'error',
            title: 'Gagal!',
            text: '<?= $this->session->flashdata('error') ?>',
            showConfirmButton: false,
            timer: 2500,
            toast: true,
            position: 'top-end'
        });
    <?php endif; ?>
</script>

</body>

</html>

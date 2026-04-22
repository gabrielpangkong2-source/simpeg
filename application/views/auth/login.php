<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | SIMPEG DPMPTSPD</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
        body {
            font-family: 'Source Sans Pro', sans-serif;
            background: linear-gradient(135deg, #1e3a5f 0%, #2c5282 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-card {
            width: 100%;
            max-width: 420px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            padding: 40px 36px;
        }
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .login-header .icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #1e3a5f, #2c5282);
            border-radius: 14px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 26px;
            margin-bottom: 14px;
        }
        .login-header h4 {
            font-weight: 700;
            color: #2d3748;
            margin: 0;
        }
        .login-header p {
            color: #718096;
            font-size: 13px;
            margin-top: 4px;
        }
        .form-group label {
            font-weight: 600;
            color: #4a5568;
            font-size: 13px;
        }
        .form-control {
            border-radius: 8px;
            padding: 10px 14px;
        }
        .form-control:focus {
            border-color: #63b3ed;
            box-shadow: 0 0 0 0.15rem rgba(66,153,225,0.25);
        }
        .btn-login {
            background: linear-gradient(135deg, #1e3a5f, #2c5282);
            border: none;
            border-radius: 8px;
            padding: 10px;
            font-weight: 600;
            font-size: 15px;
            width: 100%;
            color: #fff;
        }
        .btn-login:hover {
            background: linear-gradient(135deg, #2c5282, #1e3a5f);
            color: #fff;
        }
    </style>
</head>
<body>

<div class="login-card">
    <div class="login-header">
        <div class="icon"><i class="fas fa-building"></i></div>
        <h4>SIMPEG DPMPTSPD</h4>
        <p>Dinas Penanaman Modal & Pelayanan Terpadu Satu Pintu</p>
    </div>

    <form action="<?= site_url('auth/login') ?>" method="POST">
        <div class="form-group">
            <label><i class="fas fa-id-card mr-1"></i> NIP / Username</label>
            <input type="text" name="nip" class="form-control" placeholder="Masukkan NIP atau Username" required autofocus>
        </div>
        <div class="form-group">
            <label><i class="fas fa-lock mr-1"></i> Password</label>
            <input type="password" name="password" class="form-control" placeholder="Masukkan Password" required>
        </div>
        <button type="submit" class="btn btn-login mt-2">
            <i class="fas fa-sign-in-alt mr-1"></i> Masuk
        </button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
<?php if ($this->session->flashdata('error')): ?>
    Swal.fire({
        icon: 'error',
        title: 'Login Gagal',
        text: '<?= $this->session->flashdata('error') ?>',
        showConfirmButton: true
    });
<?php endif; ?>
</script>

</body>
</html>

<?php
require_once '../load.php';

$ip = $_SERVER['REMOTE_ADDR'];

if (isset($_POST['submit'])) {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    if (!empty($username) && !empty($password)){
        // Log user in
        $message = login($username, $password, $ip);
    }else{
        $message = '<div class="alert alert-danger col-lg-3" role="alert">Please fill in the required fields.</div>';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sportchek CMS | Admin Login</title>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/5a7dc109cc.js" crossorigin="anonymous"></script>
</head>
<body class="bg-light">
    <div class="container">
        <div class="logo-section text-center">
    <img src="../images/logo.svg" alt="Logo">
    <hr class="login-hr">
    <h2>CMS Login</h2>
</div>
<?php echo !empty($message) ? $message : ''; ?>
    <form action="admin_login.php" method="post" class="col-lg-3 signin text-center rounded shadow-sm p-3 mb-5">
        
        <div class="form-group">
        <label for="username" class="sr-only">Username:</label>
        <input class="form-control" type="text" name="username" id="username" value="" placeholder="Username">
        </div>
        <div class="form-group">
        <label for="password" class="sr-only">Password:</label>
        <input class="form-control" type="password" name="password" id="password" value="" placeholder="Password">
        </div>
        <button class="btn btn-large btn-danger btn-block" name="submit">Login</button>
    </form>
</div>
</body>
</html>
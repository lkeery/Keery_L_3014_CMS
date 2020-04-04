<?php
require_once '../load.php';
confirm_logged_in();

$id = $_SESSION['user_id'];
$user = getSingleUser($id);

if (is_string($user)) {
    $message = $user;
}

if (isset($_POST['submit'])) {
    $fname = trim($_POST['fname']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email = trim($_POST['email']);

    $message = editUser($fname, $username, $password, $email, $id);
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $tbl = 'tbl_products';
    $col = 'product_ID';
    $getProduct = getSingleProduct($tbl, $col, $id);

    if (isset($_POST['save'])) {
        $product = array(
            'id' => $id,
            'image' => $_FILES['image'],
            'title' => $_POST['title'],
            'size' => $_POST['size'],
            'color' => $_POST['color'],
            'price' => $_POST['price'],
            'description' => $_POST['description'],
            'category' => $_POST['category'],
        );

        $result = editProduct($product);

        $message = $result;
    }
}

$category_tbl = 'tbl_category';
$category = getAll($category_tbl);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sportchek CMS | Admin Dashboard</title>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/5a7dc109cc.js" crossorigin="anonymous"></script>
</head>
<body>

<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Your Account</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <?php echo !empty($message) ? $message : ''; ?>

      <form action="admin_edituser.php?id=<?php echo $id ?>" method="post">

      <?php while ($info = $user->fetch(PDO::FETCH_ASSOC)): ?>

        <div class="form-group">
        <label for="fname">First Name:</label>
        <input class="form-control" type="text" name="fname" value="<?php echo $info['user_fname']; ?>">
        </div>

        <div class="form-group">
        <label for="username">Username:</label>
        <input class="form-control" type="text" name="username" value="<?php echo $info['user_name']; ?>">
        </div>

      <div class="form-group">
        <label for="password">Password:</label>
        <input class="form-control" type="text" name="password" value="<?php echo $info['user_pass']; ?>">
      </div>

      <div class="form-group">
        <label for="email">Email:</label>
        <input class="form-control" type="text" name="email" value="<?php echo $info['user_email']; ?>">
      </div>
        <?php endwhile;?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button name="submit" class="btn btn-success">Save Changes</button>
      </div>
    </form>
    </div>
  </div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
  <a class="navbar-brand" href="#"><img src="../images/logo.svg" alt="Logo" class="dash-logo"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-user"></i>&nbsp;&nbsp;<?php echo $_SESSION['user_name']; ?>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" data-toggle="modal" data-target="#editUserModal">Edit Account</a>
          <a class="dropdown-item" href="admin_logout.php">Sign Out</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar border-right">
          <div class="sidebar-sticky">
          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>CMS Dashboard</span>
              <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <hr>
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link dash-active" href="index.php">
                  <i class="fas fa-box-open"></i> Manage Products <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="users.php">
                  <i class="fas fa-users-cog"></i> Manage Users
                </a>
              </li>
            </ul>
            <hr>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-4 border-bottom">
            <h1 class="h2">Edit Product</h1>
          </div>
          <?php echo !empty($message) ? $message : ''; ?>
   <form action="admin_editproduct.php?id=<?php echo $id ?>" method="POST" enctype="multipart/form-data">

   <?php while ($info = $getProduct->fetch(PDO::FETCH_ASSOC)): ?>

   <div class="form-group">
   <div class="custom-file">
    <input type="file" id="upload" class="custom-file-input" name="image" value="">
    <label class="custom-file-label" for="image"><?php echo $info['image']; ?></label>
    </div>
</div>

    <div class="form-group">
    <label for="title">Product Name:</label>
    <input class="form-control" type="text" name="title" value="<?php echo $info['name']; ?>">
    </div>

    <div class="form-group">
    <label for="size">Product Size:</label>
    <input class="form-control" type="text" name="size" value="<?php echo $info['size']; ?>">
    </div>

    <div class="form-group">
    <label for="color">Product Color:</label>
    <input class="form-control" type="text" name="color" value="<?php echo $info['color']; ?>">
    </div>

    <div class="form-group">
    <label for="price">Product Price:</label>
    <input class="form-control" type="text" name="price" value="<?php echo $info['price']; ?>">
    </div>

    <div class="form-group">
    <label for="description">Product Description:</label>
    <textarea class="form-control" name="description"><?php echo $info['description']; ?></textarea>
    </div>

    <div class="form-group">
      <label for="category">Product Category:</label>
    <select class="form-control" name="category" required>
        <option>Select Category</option>
        <?php while ($row = $category->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $row['category_ID'] ?>"><?php echo $row['category_name']; ?></option>
        <?php endwhile;?>
    </select>
        </div>
        <div class="form-group">
        <a href="index.php" class="btn btn-secondary">Cancel</a>
        <button type="submit" name="save" class="btn btn-success">Save changes</button>
        </div>
        </div>
        <?php endwhile;?>
        </form>
        </main>
      </div>
    </div>



    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
</body>
</html>
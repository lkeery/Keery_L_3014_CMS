<?php
require_once 'load.php';

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $tbl = 'tbl_movies';
    $col = 'movies_id';
    $getMovie = getSingleProduct($tbl, $col, $id);
}

?>

<?php
require_once 'load.php';

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $tbl = 'tbl_products';
    $col = 'product_ID';
    $getProduct = getSingleProduct($tbl, $col, $id);
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sportchek CMS System</title>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
            crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/5a7dc109cc.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <a class="navbar-brand" href="#">
                <img class="logo" src="images/logo.svg" alt="Sportchek">
            </a>
            <form class="form-inline col-sm-4" id="search-form" method="post" action="search.php?go">
                <input class="form-control mr-sm-2" type="search"
                    placeholder="Search" aria-label="Search">
                <button class="btn btn-danger my-2 my-sm-0 col-sm-4"
                    type="submit">Search</button>
            </form>
        </nav>
        <nav class="navbar navbar-expand-lg navbar-light bg-light bottom-nav border-bottom">
            <button class="navbar-toggler" type="button"
                data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse"
                id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#"
                            id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            Sports
                        </a>
                        <div class="dropdown-menu"
                            aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="index.php?filter=Biking">Biking</a>
                            <a class="dropdown-item" href="index.php?filter=Skiing">Skiing</a>
                            <a class="dropdown-item" href="index.php?filter=Hockey">Hockey</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?filter=Electronics">Electronics</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?filter=Fitness&Training">Fitness & Training</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?filter=Yoga">Yoga</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?filter=Nutrition">Nutrition</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="./admin/admin_login.php"><i class="fas fa-user-cog"></i> Admin</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 products">

            <div class="row justify-content-center">
        <div class="col-lg-4">
        <?php if(!is_string($getProduct)):?>
        <?php while($row = $getProduct->fetch(PDO::FETCH_ASSOC)):?>
        <h2><?php echo $row['name'];?></h2>
        <hr>
        <h4>$<?php echo $row['price'];?></h4>
        <h4>Color: <?php echo $row['color'];?></h4>
        <h4>Size: <?php echo $row['size'];?></h4>
        <p><?php echo $row['description'];?></p>
        <a class="btn btn-danger btn-md" href="index.php">Go Home</a>
        </div>
        <div class="col-lg-4">
        <img src="images/<?php echo $row['image']; ?>" alt="<?php echo $row['name'] ?>" />
        </div>
        <?php endwhile;?>
        <?php endif;?>
        </div>
        
                    
                    
            </div>



        </div> <!-- Container -->

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
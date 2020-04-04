<?php
require_once '../load.php';
confirm_logged_in();

if (isset($_POST['add'])) {
    $product = array(
        'image' => $_FILES['image'],
        'title' => $_POST['title'],
        'size' => $_POST['size'],
        'color' => $_POST['color'],
        'price' => $_POST['price'],
        'description' => $_POST['description'],
        'category' => $_POST['category'],
    );

    $result = addProduct($product);

    $message = $result;
}

?>


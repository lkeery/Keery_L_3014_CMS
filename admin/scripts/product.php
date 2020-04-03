<?php

function addProduct($product)
{

    try {
        $pdo = Database::getInstance()->getConnection();

        $cover = $product['image'];
        $upload_file = pathinfo($cover['name']);
        $accepted_types = array('gif', 'jpg', 'png', 'jpeg', 'webp');
        if (!in_array($upload_file['extension'], $accepted_types)) {
            throw new Exception('Unsupported file type');
        }

        $image_path = '../images/';

        $generated_name = md5($upload_file['filename'] . time());
        $generated_filename = $generated_name . '.' . $upload_file['extension'];
        $targetpath = $image_path . $generated_filename;

        if (!move_uploaded_file($cover['tmp_name'], $targetpath)) {
            throw new Exception('Failed to move uploaded file, check permissions!');
        }

        $insert_product_query = 'INSERT INTO tbl_products(image,name,size,color,price,description)';
        $insert_product_query .= ' VALUES(:image,:name,:size,:color,:price,:description)';

        $insert_product = $pdo->prepare($insert_product_query);
        $insert_movie_result = $insert_product->execute(
            array(
                ':image' => $generated_filename,
                ':name' => $product['title'],
                ':size' => $product['size'],
                ':color' => $product['color'],
                ':price' => $product['price'],
                ':description' => $product['description'],
            )
        );

        $last_uploaded_id = $pdo->lastInsertId();

        if($insert_product_result && !empty($last_uploaded_id)){
            $update_category_query = 'INSERT INTO tbl_products_category(category_ID, product_ID) VALUES(:category_id, :product_id)';
            $update_category = $pdo->prepare($update_category_query);

            $update_category_result = $update_category->execute(
                array(
                    ':product_id'=>$last_uploaded_id,
                    ':category_id'=>$product['category'],
                )
            );
        }

        redirect_to('index.php');

    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }

}

function deleteProduct($product_id) {
    $pdo = Database::getInstance()->getConnection();

    $delete_product_query = 'DELETE FROM tbl_products WHERE product_ID = :id';
    $delete_product_set= $pdo->prepare($delete_product_query);
    $delete_product_result = $delete_product_set->execute(
                array(
                    ':id'=>$product_id
                )
            );


    if($delete_product_result && $delete_product_set->rowCount() > 0){
        redirect_to('index.php');
    } else {
        return false;
    }

}

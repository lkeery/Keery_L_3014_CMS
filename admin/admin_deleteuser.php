<?php

require_once '../load.php';
confirm_logged_in();

$displayUsers= showAllUsers();

if(!$displayUsers){
    $message = 'Failed to get list of users.';
}

if(isset($_GET['id'])){
    $user_id = $_GET['id'];
    $delete_result = deleteUser($user_id);

    if(!$delete_result){
        $message = 'Failed to delete user.';
    }
}

?>

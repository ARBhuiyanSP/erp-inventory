<?php session_start();
 unset($_SESSION['error']);
 unset($_SESSION['success']);
 unset($_SESSION['logged']);
 unset($_SESSION['booth_info']);
 header("location: ../index.php");
 exit();
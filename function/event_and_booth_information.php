<?php

if(isset($_POST['process_type']) && $_POST['process_type'] == 'checkEventNameAndBooth'){
    session_start(); 
    if(isset($_SESSION['booth_info']['status'])){
        $status     =   true;
    }else{
        $status     =   false;
    }
    
    $feedback       =   [
        'status'    =>  $status
    ];
    
    echo json_encode($feedback);
}
    
if(isset($_POST['process_type']) && $_POST['process_type'] == 'storeEventAndBoothInformation'){
    session_start();
    $fieldsCheckError       =   false;
    $fieldsErrorData        =   [];
    $_SESSION['booth_info'] =   [];
    if(empty($_POST['event_short_name'])){
        $fieldsCheckError       =  true;
        $fieldsErrorData[]    =  "Event Short Name is required.";        
    }
    if(empty($_POST['booth_no'])){
        $fieldsCheckError       =  true;
        $fieldsErrorData[]    =  "Booth No is required.";        
    }
    if(!$fieldsCheckError){
        $event_short_name   =   trim($_POST['event_short_name']);
        $booth_no           =   trim($_POST['booth_no']);
        
        $_SESSION['booth_info']['status']           =   true;
        $_SESSION['booth_info']['booth_id']         =   $booth_no;
        $_SESSION['booth_info']['event_short_name'] =   $event_short_name;
        $feedback   =   [
            'status'    =>   true,
            'message'   =>   "Event And Booth have been successfully Saved.",
        ];
    }else{
        $errorData    =   '';
        $count      =   1;
        foreach($fieldsErrorData as $d){
            $errorData.=   $count.".".$d."\n";
            $count++;
        }
        $feedback   =   [
            'status'    =>   false,
            'message'   =>   "Please check the following error.",
            'data'      =>   $errorData,
        ];
    }    
    echo json_encode($feedback);
}

if(isset($_POST['config_saved']) && !empty($_POST['config_saved'])){
    $page_width         =   $_POST['page_width'];
    $page_height        =   $_POST['page_height'];
    $template_name      =   $_POST['template_name'];
    $default_template   =   $_POST['default_template'];
    $template_path      =   '';
    $event_name         =   $_POST['event_name'];
    /**************************Product Image Save Start:****************/  
    if (isset($_FILES['template_path']['name']) && !empty($_FILES['template_path']['name'])) {
        $target_dir = "uploads/";
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($_FILES['template_path']['name'], PATHINFO_EXTENSION));
        $productFileName = "name_badge_template" . "." . $imageFileType;
        $target_file = $target_dir . $productFileName;
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["template_path"]["tmp_name"]);
        if ($check == false) {
            $uploadOk = 0;
            $_SESSION['error_data']['image_type'] = 'Please upload a image file';
        }
        // Check file size
        if ($_FILES["product_image"]["size"] > 500000) {
            $uploadOk = 0;
            $_SESSION['error_data']['image_size'] = 'Sorry, Image file is too large.';
        }
        // Allow certain file formats
        if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
            $uploadOk = 0;
            $_SESSION['error_data']['image_allowed_type'] = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.';
        }
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            $error = true;
            $_SESSION['error_data']['image_uploaded_msg'] = 'Sorry, Failed to upload image.';
            // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["template_path"]["tmp_name"], $target_file)) {
                $template_path = $productFileName;
                $_SESSION['error_data']['image_uploaded_msg'] = "The file " . basename($_FILES["product_image"]["name"]) . " has been uploaded.";
            } else {
                $error = true;
                $_SESSION['error_data']['image_uploaded_msg'] = 'Sorry, Failed to upload image.';
            }
        }
    }
    $tableWithWhere = "namebadge_configuration  where event_name='$event_name'";
    $printInfo = getDataRowIdAndTable($tableWithWhere);
    if(isset($printInfo) && !empty($printInfo)){
        if(isset($template_path) && !empty($template_path)){
            $dtp        =   $template_path;
        }else{
            $dtp        =   $printInfo->template_path;
        }
        $sqlUpdate  =   "UPDATE namebadge_configuration SET default_template = $default_template, template_path='$dtp' WHERE event_name='$event_name'";
        $conn->query($sqlUpdate);
    }else{
        // Insert into history Table:
        $fields = [
            'default_template'  => $default_template,
            'template_path'     => $template_path,
            'event_name'        => $event_name
        ];
        $insert = saveData('namebadge_configuration', $fields);
        $_SESSION['success']    =   "Configuration have been successfully saved";
    }
    
    header("location: namebadge_configuration.php");
    exit();
}

if(isset($_POST['process_type']) && $_POST['process_type']  ==  'getNameBadgeConfigDetails'){
    session_start();
    date_default_timezone_set('Asia/Dhaka');
    include '../connection/connect.php';
    include '../helper/utilities.php';
    $event_name     =   $_POST['event_name'];
    $tableWithWhere = "namebadge_configuration  where event_name='$event_name'";
    $printInfo      = getDataRowIdAndTable($tableWithWhere);
    if(isset($printInfo) && !empty($printInfo)){
        $status     =   'success';
        $message    =   'Got data';
        $data       =   $printInfo;
    }else{
        $status     =   'error';
        $message    =   'No data';
        $data       =   '';
    }
    
    $feedback       =   [
        'status'    =>  $status,
        'message'   =>  $message,
        'data'      =>  $data,
    ];
    
    echo json_encode($feedback);
}
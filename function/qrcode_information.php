<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($_POST['process_type']) && $_POST['process_type'] == 'printAgain') {
    session_start();
    date_default_timezone_set('Asia/Dhaka');
    include '../connection/connect.php';
    include '../helper/utilities.php';
    $qrcodeDataDetails = registro_crypt($_POST['qr_code'], 'd');

    $regdata = explode('|', $qrcodeDataDetails);

    /*
     * Check name badge was printed already:
     */
    $printInfo          =   '';
    $booth_id           = $_SESSION['booth_info']['booth_id'];
    $event_short_name   = $_SESSION['booth_info']['event_short_name'];
    
    $reg_event_name = $regdata[0];
    $reg_id         = $regdata[1];
    $reg_name       = $regdata[2];
    $reg_company    = $regdata[3];
    $reg_country    = $regdata[4];
    $reg_email      = $regdata[5];
    $reg_type_name  = $regdata[6];
    
    $where              = "event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
    $isPrinted          = isDuplicateData('print_details', $where);
    if ($isPrinted) {
        // Updated data
        $updated_at =   date('Y-m-d H:i:s');
        $sql = "UPDATE print_details set booth_id='$booth_id',updated_at='$updated_at' where event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
        $conn->query($sql);

        // Insert into history Table:
        $fields = [
            'event_name'    => $event_short_name,
            'reg_id'        => $reg_id,
            'reg_email'     => $reg_email,
            'created_at'    => $updated_at,
            'booth_id'      => $booth_id
        ];
        $insert = saveData('print_history', $fields);

        $tableWithWhere     = "print_details where event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
        $printInfo          = getDataRowIdAndTable($tableWithWhere);
    }
    // Get print template:
    $tableWithWhere = "namebadge_configuration where event_name='$event_short_name'";
    $templateInfo = getDataRowIdAndTable($tableWithWhere);
    if($templateInfo->default_template == 1){ ?>
            <!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Format-01</title>
        <style>
            @media print{
                /* Default left, right, top, bottom margin is 2cm */
                body {
                    -webkit-print-color-adjust: exact;
                }
                @page {
                    width: 210mm;
                    height: 187mm;
                    margin: 0;
                    overflow: hidden;
                    -webkit-print-color-adjust: exact;
                }
                .page_break{
                    page-break-after: always;
                }
                .page_break:last-child {
                    page-break-after: avoid;
                }
                html,body{
                    height:90%;
                    width: 100%;
                    margin: 0 !important; 
                    padding: 0 !important;
                    overflow: hidden;
                }
                .div_clear{
                    clear: both;
                }
                .print_area_container{
                    float: left;
                    width: 83mm;
                    height: 113mm;
                    left: 0;
                    overflow: hidden;
                    /*background-color: red !important;*/
                }
                .defaultEventNameBadgeheaderContainer{
                    float: left;
                    width: 74.5mm;
                    height: 108mm;
                    margin: 0 7mm 3mm 0;
                    padding-right: 4px;
                    background-image:    url(<?php echo 'uploads/'.$templateInfo->template_path ?>);
                    background-size:     cover;                      /* <------ */
                    background-repeat:   no-repeat;
                    background-position: center center; 
                    /*border: 1px solid lightgray;*/
                }
                .defaultEventNameBadgeheaderContainer table{
                    width: 75mm;
                    height: 105mm;
                }
                .defaultEventNameBadgeheaderContainer table tr td{
                    vertical-align: top;
                    text-align: center;
                }
                .defaultEventNameBadgeheader img{
                    float: left;
                    width: 75mm;
                    display: inline-block;
                }
                .userBasicInfo{
                    float: left;
                    width: 98%;
                    height: 27mm;
                    text-align: center;
                    margin-top: 2px;

                }
                .userQrCode{
                    float: left;
                    width: 100%;
                    height: 15mm;
                    /*border: 1px solid blue;*/
                }
                .userQrCode img{
                    text-align: center;
                }
                .userType{
                    float: left;
                    width: 100%;
                    height: 18mm;
                    text-align: center;
                    margin: 2% 5.5% 2% 1%;
                }
                .name_badge_serial_number{
                    float: left;
                    width: 100%;
                    height: 10mm;
                    margin: 6% 2% 2% 2%;
                    text-align: center;
                }
            }
        </style>
    </head>

    <!-- Set "A5", "A4" or "A3" for class name -->
    <!-- Set also "landscape" if you need -->
    <body>        
        <?php
        $labelTextColor     =   '#000000';
        $labelBgColor       =   '#FFFFFF';
        $count = 0;
        ?>
            <div class="print_area_container">
                <div class="defaultEventNameBadgeheaderContainer">
                    <table>
                        <tr>
                            <td style="width: 75mm; height: 21mm;">
                                <div class="defaultEventNameBadgeheader">
                                    &nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 27mm;">
                                <div class="userBasicInfo">
                                    <br><br>
                                    <span style="font-weight: bold; font-size: 23px;"><?php echo $reg_name; ?></span><br>
                                    <span style="font-weight: bold; font-size: 15px;"><?php echo $reg_company; ?></span><br>
                                    <span style="font-weight: bold; font-size: 13px;"><?php echo $reg_country; ?></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 14mm;">
                                <h5 class="name_badge_serial_number"><?php echo $reg_id; ?></h5>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 28mm; vertical-align: top;">
                                <div class="userType" style="background-color: <?php echo $labelBgColor; ?>; color: <?php echo $labelTextColor; ?>">
                                    <h2 style="margin-top: 7px;"><?php echo $reg_type_name; ?></h2>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>                                
                <div class="div_clear"></div>
            </div>
            <div class="page_break"></div>      
    </body>
</html>
    <?php    }
}
if (isset($_POST['process_type']) && $_POST['process_type'] == 'checkNameBadgePrintStatus') {
    session_start();
    date_default_timezone_set('Asia/Dhaka');
    include '../connection/connect.php';
    include '../helper/utilities.php';
    $qrcodeDataDetails = registro_crypt($_POST['qr_code'], 'd');

    $regdata = explode('|', $qrcodeDataDetails);

    /*
     * Check name badge was printed already:
     */
    $printInfo          =   '';
    $booth_id           = $_SESSION['booth_info']['booth_id'];
    $event_short_name   = $_SESSION['booth_info']['event_short_name'];
    
    $reg_event_name = $regdata[0];
    $reg_id         = $regdata[1];
    $reg_name       = $regdata[2];
    $reg_company    = $regdata[3];
    $reg_country    = $regdata[4];
    $reg_email      = $regdata[5];
    $reg_type_name  = $regdata[6];
    
    $where              = "event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
    $isPrinted          = isDuplicateData('print_details', $where);
    if ($isPrinted) {
        // Updated data
        $updated_at =   date('Y-m-d H:i:s');
        $sql = "UPDATE print_details set booth_id='$booth_id',updated_at='$updated_at' where event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
        $conn->query($sql);

        // Insert into history Table:
        $fields = [
            'event_name'    => $event_short_name,
            'reg_id'        => $reg_id,
            'reg_email'     => $reg_email,
            'created_at'    => $updated_at,
            'booth_id'      => $booth_id
        ];
        $insert = saveData('print_history', $fields);

        $tableWithWhere     = "print_details where event_name='$event_short_name' and reg_id='$reg_id' and reg_email='$reg_email'";
        $printInfo          = getDataRowIdAndTable($tableWithWhere);
    } else {
        $created_at         =   date('Y-m-d H:i:s');
        $fields = [
            'event_name'        => $event_short_name,
            'reg_id'            => $reg_id,
            'reg_email'         => $reg_email,
            'created_at'        => $created_at,
            'updated_at'        => $created_at,
            'created_by'        => 1,
            'booth_id'          => $booth_id,
            'first_booth_id'    => $booth_id,
            'print_counted'     => 1,
            'first_print_at'    => $created_at,
        ];
        $insert         =   saveData('print_details', $fields);
        // Insert into history Table:
        $fields = [
            'event_name'    => $event_short_name,
            'reg_id'        => $reg_id,
            'reg_email'     => $reg_email,
            'created_at'    => $created_at,
            'booth_id'      => $booth_id
        ];
        $insert = saveData('print_history', $fields);
    }
    
    // Get print template:
    $tableWithWhere = "namebadge_configuration where event_name='$event_short_name'";
    $templateInfo = getDataRowIdAndTable($tableWithWhere);
    $feedbackData   =   [
        'status'             => 'success',
        'regdata'            => $regdata,
        'isPrinted'          => $isPrinted,
        'default_template'   => $templateInfo->default_template,
        'printInfo'          => $printInfo,
        'qrcodeDataDetails'  => $qrcodeDataDetails,
    ];
    echo json_encode($feedbackData);
    exit;
}
if (isset($_POST['process_type']) && $_POST['process_type'] == 'opprint') {
    $all_data           = json_decode($_POST['all_data']);
    $regdata            = $all_data->regdata;
    $default_template   = $all_data->default_template;
    $reg_event_name = $regdata[0];
    $reg_id         = $regdata[1];
    $reg_name       = $regdata[2];
    $reg_company    = $regdata[3];
    $reg_country    = $regdata[4];
    $reg_email      = $regdata[5];
    $reg_type_name  = $regdata[6];
    if($default_template == 1){ ?>
            <!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Format-01</title>
        <style>
            @media print{
                /* Default left, right, top, bottom margin is 2cm */
                body {-webkit-print-color-adjust: exact;}
                @page {
                    width: 210mm;
                    height: 187mm;
                    margin: 0;
                    overflow: hidden;
                    -webkit-print-color-adjust: exact;
                }
                .page_break{
                    page-break-after: always;
                }
                .page_break:last-child {
                    page-break-after: avoid;
                }
                html,body{
                    height:90%;
                    width: 100%;
                    margin: 0 !important; 
                    padding: 0 !important;
                    overflow: hidden;
                }
                .div_clear{
                    clear: both;
                }
                .print_area_container{
                    float: left;
                    width: 83mm;
                    height: 113mm;
                    left: 0;
                    overflow: hidden;
                    /*background-color: red !important;*/
                }
                .defaultEventNameBadgeheaderContainer{
                    float: left;
                    width: 74.5mm;
                    height: 108mm;
                    margin: 0 7mm 3mm 0;
                    padding-right: 4px;
                    background-image:    url(<?php echo 'uploads/'.$templateInfo->template_path ?>);
                    background-size:     cover;                      /* <------ */
                    background-repeat:   no-repeat;
                    background-position: center center; 
                    /*border: 1px solid lightgray;*/
                }
                .defaultEventNameBadgeheaderContainer table{
                    width: 75mm;
                    height: 105mm;
                }
                .defaultEventNameBadgeheaderContainer table tr td{
                    vertical-align: top;
                    text-align: center;
                }
                .defaultEventNameBadgeheader img{
                    float: left;
                    width: 75mm;
                    display: inline-block;
                }
                .userBasicInfo{
                    float: left;
                    width: 98%;
                    height: 27mm;
                    text-align: center;
                    margin-top: 2px;

                }
                .userQrCode{
                    float: left;
                    width: 100%;
                    height: 15mm;
                    /*border: 1px solid blue;*/
                }
                .userQrCode img{
                    text-align: center;
                }
                .userType{
                    float: left;
                    width: 100%;
                    height: 18mm;
                    text-align: center;
                    margin: 2% 5.5% 2% 1%;
                }
                .name_badge_serial_number{
                    float: left;
                    width: 100%;
                    height: 10mm;
                    margin: 6% 2% 2% 2%;
                    text-align: center;
                }
            }
        </style>
    </head>

    <!-- Set "A5", "A4" or "A3" for class name -->
    <!-- Set also "landscape" if you need -->
    <body>        
        <?php
        $labelTextColor     =   '#000000';
        $labelBgColor       =   '#FFFFFF';
        $count = 0;
        ?>
            <div class="print_area_container">
                <div class="defaultEventNameBadgeheaderContainer">
                    <table>
                        <tr>
                            <td style="width: 75mm; height: 21mm;">
                                <div class="defaultEventNameBadgeheader">
                                    &nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 27mm;">
                                <div class="userBasicInfo">
                                    <br><br>
                                    <span style="font-weight: bold; font-size: 23px;"><?php echo $reg_name; ?></span><br>
                                    <span style="font-weight: bold; font-size: 15px;"><?php echo $reg_company; ?></span><br>
                                    <span style="font-weight: bold; font-size: 13px;"><?php echo $reg_country; ?></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 14mm;">
                                <h5 class="name_badge_serial_number"><?php echo $reg_id; ?></h5>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 75mm; height: 28mm; vertical-align: top;">
                                <div class="userType" style="background-color: <?php echo $labelBgColor; ?>; color: <?php echo $labelTextColor; ?>">
                                    <h2 style="margin-top: 7px;"><?php echo $reg_type_name; ?></h2>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>                                
                <div class="div_clear"></div>
            </div>
            <div class="page_break"></div>      
    </body>
</html>
    <?php    }
    
}
if (isset($_POST['process_type']) && $_POST['process_type'] == 'showPrintDetails') {
    session_start();
    date_default_timezone_set('Asia/Dhaka');
    include '../connection/connect.php';
    include '../helper/utilities.php';
    $all_data           = json_decode($_POST['all_data']);
    $qrcodeDataDetails  = $all_data->qrcodeDataDetails;
    $printInfo  = $all_data->printInfo;
    
    ?>  
    <div class="table-responsive">
        <table id="table_quick_report" class="table table_quick_report table-bordered list-table-custom-style">
            <thead>
                <tr>
                    <th style="text-align: center;" colspan="5">Registration Details</th>
                </tr>
                <tr>
                    <th style="text-align: center;">Details</th>
                    <th style="text-align: center;">Printed Booth</th>
                    <th style="text-align: center;">Printed status</th>
                    <th style="text-align: center;">Printed Date</th>
                    <th style="text-align: center;">Print</th>
                </tr>
            </thead>
            <tbody>                                                
                <tr>
                    <td><span id="reg_name"><?php echo $qrcodeDataDetails; ?></span></td>
                    <td><span id="reg_name"><?php echo $printInfo->booth_id; ?></span></td>
                    <td><span id="reg_name"><?php echo 'Already Printed'; ?></span></td>
                    <td><span id="reg_name"><?php echo human_format_date($printInfo->first_print_at); ?></span></td>
                    <td>
                        <center>
                            <button class="btn btn-primary hidden-print" onclick="registroPrintFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
                        </center>
                    </td>
            </tr>
            </tbody>
        </table>
    </div>
<?php } 
?>
<!--//human_format_date-->
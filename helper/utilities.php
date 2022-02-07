<?php

function getTableDataByTableName($table, $order = 'asc', $column = 'name', $dataType = '') {
    global $conn;
    $dataContainer = [];
    $sql = "SELECT * FROM $table order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function saveData($table, $dataParam) {
    global $conn;
    $fields_array = array_keys($dataParam);
    $fields = implode(',', array_keys($dataParam));
    $values = "'" . implode("', '", array_values($dataParam)) . "'";
    ;
    $sql = "INSERT INTO $table ($fields) VALUES ($values)";

    if ($conn->query($sql) === TRUE) {
        $feedbackData = [
            'status' => 'success',
            'data' => 'Data have been successfully inserted',
            'last_id' => $conn->insert_id,
        ];
        return $feedbackData;
    } else {
        $feedbackData = [
            'status' => 'error',
            'data' => "Error: " . $sql . "<br>" . $conn->error,
            'last_id' => '',
        ];
        return $feedbackData;
    }
}

function getNameByIdAndTable($table) {
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name = '';
    if ($result->num_rows > 0) {
        $name = $result->fetch_object()->name;
    }
    return $name;
}

function getDataRowIdAndTable($table, $dataType='obj') {
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name = '';
    if ($result->num_rows > 0) {        
        if (isset($dataType) && $dataType == 'obj') {
            return $result->fetch_object();
        } else {
            return $result->fetch_assoc();
        }
    }
}

function getDataRowByTableAndId($table, $id) {
    global $conn;
    $sql = "SELECT * FROM $table where id=" . $id;
    $result = $conn->query($sql);
    $name = '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    } else {
        return false;
    }
}

function getDefaultCategoryCode($table, $fieldName, $modifier, $defaultCode, $prefix) {
    global $conn;
    $sql = "SELECT count($fieldName) as total_row FROM $table";
    $result = $conn->query($sql);
    $name = '';
    $lastRows = $result->fetch_object();
    $number = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix . sprintf('%' . $modifier, $number);
    return $defaultCode;
}

function isDuplicateData($table, $where, $notWhere = '') {
    global $conn;
    $sql = '';
    $sql .= "SELECT * FROM $table where $where ";
    if (isset($notWhere) && !empty($notWhere)) {
        $sql .= " And $notWhere";
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        return true;
    }
    return false;
}

function getDataRowByTable($table) {
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name = '';
    if ($result->num_rows > 0) {
        return $result->num_rows;
    }
    return "0";
}

function deleteRecordByTableAndId($table, $fieldName, $id) {
    global $conn;
    $sql = "DELETE FROM $table WHERE $fieldName=" . $id;
    if ($conn->query($sql) === TRUE) {
        $feedbackData = [
            'status' => 'success',
            'message' => 'Data have been successfully Deleted',
        ];
        return $feedbackData;
    } else {
        $feedbackData = [
            'status' => 'error',
            'message' => "Error: " . $sql . "<br>" . $conn->error,
        ];
        return $feedbackData;
    }
}

function is_super_admin($userType) {
    if ($userType == 'su') {
        return true;
    }
    return false;
}

//functions to loop day,month,year
function formDay() {
    for ($i = 1; $i <= 31; $i++) {
        $selected = ($i == date('d')) ? ' selected' : '';
        echo '<option' . $selected . ' value="' . $i . '">' . $i . '</option>' . "\n";
    }
}

//with the -8/+8 month, meaning june is center month
function formMonth() {
    $month = strtotime(date('Y') . '-' . date('m') . '-' . date('j') . ' - 8 months');
    $end = strtotime(date('Y') . '-' . date('m') . '-' . date('j') . ' + 8 months');
    while ($month < $end) {
        $selected = (date('F', $month) == date('F')) ? ' selected' : '';
        echo '<option' . $selected . ' value="' . date('F', $month) . '">' . date('F', $month) . '</option>' . "\n";
        $month = strtotime("+1 month", $month);
    }
}

function formYear($startYear = false) {
    if ($startYear) {
        $i = $startYear;
    } else {
        $i = 1980;
    }
    for ($i; $i <= date('Y'); $i++) {
        $selected = ($i == date('Y')) ? ' selected' : '';
        echo '<option' . $selected . ' value="' . $i . '">' . $i . '</option>' . "\n";
    }
}

function registro_crypt($string, $action = 'e') {
    // you may change these values to your own
    $secret_key = 'my_simple_secret_key';
    $secret_iv = 'my_simple_secret_iv';

    $output = false;
    $encrypt_method = "AES-256-CBC";
    $key = hash('sha256', $secret_key);
    $iv = substr(hash('sha256', $secret_iv), 0, 16);

    if ($action == 'e') {
        $output = base64_encode(openssl_encrypt($string, $encrypt_method, $key, 0, $iv));
    } else if ($action == 'd') {
        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    }

    return $output;
}

function human_format_date($timestamp) {
    return date("M jS, Y h:i a", strtotime($timestamp)); //September 30th, 2013
}

if (isset($_GET['process_type']) && $_GET['process_type'] == 'exportol') {
    $event_name = $_SESSION['booth_info']['event_short_name'];
    $tableName = "print_history where event_name='$event_name'";
    $tableDatas = getTableDataByTableName($tableName, $order = 'desc', $column = 'created_at', $dataType = 'obj');
    $header[] = array(
        'Event Name',
        'Registration ID',
        'Registration Email',
        'Date'
        );        

    $data = array();

    foreach ($tableDatas as $key => $statement) {
        $data[] = array(
            $statement->event_name,
            $statement->reg_id,
            $statement->reg_email,
            $statement->created_at
        );
    }

    $final_data = array_merge($header, $data);
    array_to_csv($final_data, 'report.csv');
}

function array_to_csv__($array, $download = "") {
    if ($download != "") {
        header('Content-type: application/csv');
        header('Content-Disposition: attachement; filename="' . $download . '"');
        header('Content-Transfer-Encoding: binary');
    }

    ob_start();
    $f = fopen('php://output', 'w') or show_error("Can't open php://output");
    $n = 0;
    foreach ($array as $line) {
        $n++;
        if (!fputcsv($f, $line)) {
            show_error("Can't write line $n: $line");
        }
    }
    fclose($f) or show_error("Can't close php://output");
    return ob_get_clean();
}

function isActiveMenu($currentPage, $page){
    if($currentPage == $page){
        return 'active';
    }    
    return '';
}
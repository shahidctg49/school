<?php
    include_once("include/connection.php");
    $where['id']=$_GET['id'];
    $data['status']=0;
    $result=$mysqli->common_update('subject',$data,$where);
    if($result['error']){
        $_SESSION['class']="danger";
        $_SESSION['msg']=$result['error'];
    }else{
        $_SESSION['class']="success";
        $_SESSION['msg']="Data Deleted";
    }
    echo "<script> location.replace('$base_url/subject_list.php')</script>";
?>
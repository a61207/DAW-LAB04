<?php

include 'db.php';

require('/usr/share/php/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'templates';
$smarty->compile_dir = 'templates_c';

$db = dbConnect($hostname,$db_name,$db_user,$db_passwd);
if($db) {
    $tuple=array();
    $query  = "SELECT name,microposts.created_at,microposts.likes,microposts.updated_at, content FROM users INNER JOIN microposts ON users.id = microposts.user_id ORDER BY microposts.updated_at DESC;";
    if(!($result = @ mysqli_query($db, $query)))
        showError($db);
    $nrows  = mysqli_num_rows($result);
    for($i=0; $i<$nrows; $i++)
        $tuple[$i] = mysqli_fetch_assoc($result);
    $smarty->assign('microposts',$tuple);
    $smarty->display('index_template.tpl');
    mysqli_close($db);
}
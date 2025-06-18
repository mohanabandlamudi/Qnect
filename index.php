<!DOCTYPE html>
<html lang="en">

<head>
   <title>Discuss Project</title>
   <?php include('./client/commonFiles.php') ?>
</head>

<body>
   <?php
   session_start();
   include('./client/header.php');

   if (isset($_GET['signup']) && (!isset($_SESSION['user']) || empty($_SESSION['user']['username']))) {
      include('./client/signup.php');
   } else if (isset($_GET['login']) && (!isset($_SESSION['user']) || empty($_SESSION['user']['username']))) {
      include('./client/login.php');
   } else if (isset($_GET['ask']) && $_GET['ask'] === 'true') {
      include('./client/ask.php');
   } else if (isset($_GET['q-id']) && !empty($_GET['q-id'])) {
      $qid = $_GET['q-id'];
      include('./client/question-details.php');
   } else if (isset($_GET['c-id']) && !empty($_GET['c-id'])) {
      $cid = $_GET['c-id'];
      include('./client/questions.php');
   } else if (isset($_GET['u-id']) && !empty($_GET['u-id'])) {
      $uid = $_GET['u-id'];
      include('./client/questions.php');
   } else if (isset($_GET['latest']) && $_GET['latest'] === 'true') {
      include('./client/questions.php');
   } else if (isset($_GET['search']) && !empty($_GET['search'])) {
      $search = $_GET['search'];
      include('./client/questions.php');
   } else {
      include('./client/questions.php');
   }
   ?>
</body>

</html>
<div class="container">

    <div class="row">
        <div class="col-8">
            <h1 class="heading">Questions</h1>
            <?php
            include("./common/db.php");
            // Initialize variables
            $uid = isset($_SESSION['user']['user_id']) ? $_SESSION['user']['user_id'] : null;
            $cid = isset($_GET["c-id"]) ? $_GET["c-id"] : null;
            $search = isset($_GET["search"]) ? $_GET["search"] : null;

            if (isset($_GET["c-id"])) {
                $query = "select * from questions where category_id=$cid";
            } else if (isset($_GET["u-id"])) {
                $query = "select * from questions where user_id=$uid";
            } else if (isset($_GET["latest"])) {
                $query = "select * from questions order by id desc";
            } else if (isset($_GET["search"])) {
                $query = "select * from questions where `title` LIKE '%$search%' ";
            } else {
                $query = "select * from questions";
            }
            $result = $conn->query($query);
            foreach ($result as $row) {
                $title = $row['title'];
                $id = $row['id'];
                $question_user_id = $row['user_id'];
                echo "<div class='row question-list'>
    <h4 class='my-question'><a href='?q-id=$id'>$title</a>";
                // Only show delete button if the logged-in user is the question owner
                if ($uid && $uid == $question_user_id) {
                    echo "<a href='./server/requests.php?delete=$id' class='btn btn-danger btn-sm ms-2'>Delete</a>";
                }
                echo "</h4></div>";
            }
            ?>
        </div>
        <div class="col-4">
            <?php include('categorylist.php'); ?>
        </div>
    </div>
</div>
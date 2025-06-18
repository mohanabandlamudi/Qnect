<div class="container">
    <div class="form-container">
        <h1 class="heading">Ask A Question</h1>

        <form action="./server/requests.php" method="post">
            <div class="mb-4">
                <label for="title" class="form-label">Question Title</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="What's your question?" required>
            </div>

            <div class="mb-4">
                <label for="description" class="form-label">Description</label>
                <textarea name="description" class="form-control" id="description" rows="5" placeholder="Provide more details about your question..." required></textarea>
            </div>

            <div class="mb-4">
                <label for="category" class="form-label">Category</label>
                <?php include("category.php"); ?>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" name="ask" class="btn btn-primary">Post Question</button>
            </div>
        </form>
    </div>
</div>
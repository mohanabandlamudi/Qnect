<div class="container">
    <div class="form-container">
        <h1 class="heading">Sign Up</h1>

        <form method="post" action="./server/requests.php">
            <div class="mb-4">
                <label for="username" class="form-label">Username</label>
                <input type="text" name="username" class="form-control" id="username" placeholder="Choose a username" required>
            </div>

            <div class="mb-4">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email address" required>
            </div>

            <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Create a password" required>
            </div>

            <div class="mb-4">
                <label for="address" class="form-label">Address</label>
                <input type="text" name="address" class="form-control" id="address" placeholder="Enter your address">
            </div>

            <div class="d-grid gap-2">
                <button type="submit" name="signup" class="btn btn-primary">Create Account</button>
            </div>
        </form>
    </div>
</div>
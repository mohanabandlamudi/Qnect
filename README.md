# Qnect - Where Questions Connect People

Qnect is a dynamic discussion platform where users can ask questions, share knowledge, and connect with others through meaningful discussions. Built with PHP and MySQL, this platform provides a user-friendly interface for knowledge sharing and community engagement.

## Features

- User Authentication (Signup/Login)
- Ask Questions
- Answer Questions
- Category-based Question Organization
- Search Functionality
- User Profile Management
- Latest Questions Feed
- Responsive Design

## Website Screenshots and Images

### Required Images
1. **Logo**
   - File: `public/logo.png`
   - Size: 70px height (minimum)
   - Format: PNG with transparent background
   - Purpose: Main website logo in header

2. **Screenshots**
   - Directory: `public/images/screenshots/`
   - Required screenshots:
     - Home page
     - Question listing
     - Question details
     - Ask question form
     - Login/Signup pages
   - Format: PNG or JPG
   - Size: 1200px width (minimum)
   - Purpose: Documentation and README display

3. **Additional Images**
   - Directory: `public/images/`
   - Categories icons (if any)
   - User avatars (if any)
   - Other UI elements

### Image Guidelines
- Use high-quality, clear images
- Optimize images for web (compress without losing quality)
- Maintain consistent aspect ratios
- Use descriptive filenames
- Keep file sizes under 500KB when possible

## Prerequisites

- PHP 7.0 or higher
- MySQL 5.7 or higher
- Apache/Nginx Web Server
- XAMPP/WAMP/MAMP (for local development)

## Installation

1. Clone the repository to your local machine:
```bash
git clone [repository-url]
```

2. Set up your web server (XAMPP/WAMP/MAMP) and place the project in the appropriate directory:
   - For XAMPP: `htdocs/phpdiscussion`
   - For WAMP: `www/phpdiscussion`
   - For MAMP: `htdocs/phpdiscussion`

3. Create a new MySQL database named `discuss`

4. Import the database schema:
   - Open phpMyAdmin
   - Select the `discuss` database
   - Go to the Import tab
   - Choose the `database.sql` file from this project
   - Click Go to import the database structure

5. Configure the database connection:
   - Open `common/db.php`
   - Update the database credentials if needed:
     ```php
     $host = "localhost";
     $username = "root";
     $password = ""; // Your MySQL password
     $database = "discuss";
     ```

6. Add Required Images:
   - Place your website logo in `public/logo.png`
   - Recommended logo size: 70px height (minimum)
   - Supported formats: PNG, JPG, SVG
   - Ensure the logo has a transparent background for better header integration
   - Add any additional images to the `public/images/` directory
   - Update image paths in the code if using different filenames

7. Access the website:
   - Open your web browser
   - Navigate to `http://localhost/phpdiscussion`

## Project Structure

```
phpdiscussion/
├── client/             # Frontend components
│   ├── ask.php        # Question asking form
│   ├── answers.php    # Answer display
│   ├── category.php   # Category selection
│   ├── header.php     # Navigation header
│   ├── login.php      # Login form
│   ├── questions.php  # Questions listing
│   └── signup.php     # Registration form
├── common/            # Shared resources
│   └── db.php        # Database connection
├── public/           # Static assets
│   ├── images/      # Website images
│   ├── style.css    # Custom styles
│   └── logo.png     # Site logo
├── server/          # Backend processing
│   └── requests.php # API endpoints
└── index.php        # Main entry point
```

## Usage

1. **Registration/Login**
   - New users can create an account using the Sign Up option
   - Existing users can log in using their email and password

2. **Asking Questions**
   - Click on "Ask A Question" in the navigation bar
   - Fill in the question title, description, and select a category
   - Submit your question

3. **Answering Questions**
   - Browse questions on the home page
   - Click on a question to view its details
   - Use the answer form to provide your response

4. **Browsing Questions**
   - View all questions on the home page
   - Filter questions by category
   - Search for specific questions using the search bar
   - View latest questions using the "Latest Questions" option

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, please open an issue in the repository or contact the development team. 
document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault();

    // Retrieve values from the form
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    // Simulate a basic authentication check (replace with your server-side logic)
    if (validateEmail(email) && validatePassword(password)) {
        alert("Login successful!");
        // You can redirect the user to another page here
    } else {
        alert("Login failed. Please check your email and password.");
    }
});

// Function to validate the email format
function validateEmail(email) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Function to validate the password (add your own criteria)
function validatePassword(password) {
    // For simplicity, let's assume the password must be at least 6 characters long
    return password.length >= 6;
}


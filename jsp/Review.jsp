<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sekai Blog - Reviews</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <!-- Header -->
    <div class="header">
        <h1>Sekai Blog</h1>
    </div>

    <!-- Navigation -->
    <div class="nav">
        <a href="MainServlet">HOME</a>
        <a href="SkinTypeServlet">SKIN TYPE</a>
        <a href="ReviewServlet">REVIEW</a>
    </div>

    <!-- Banner -->
    <div class="banner">
        <img src="https://i.pinimg.com/236x/85/f9/ce/85f9ceddbafdf97a18e70a67da4a9d07.jpg" alt="Review Banner">
        <div class="text">
            <h2>REVIEWS</h2>
        </div>
    </div>

    <!-- Top Reviewer Section -->
    <div class="top-reviewer">
        <h2>Top Reviewer of the Month</h2>
        <a href="addReviewForm.jsp" class="add-review-link">
            <button class="add-review-btn">Add Review</button>
        </a>
    </div>

    <!-- Reviews Section -->
    <div class="review-card">
        <div class="product-image">
            <img src="https://i.pinimg.com/564x/49/a5/0c/49a50c689b652e07330fbc69fe62cac6.jpg" alt="Product Image">
            <h3>Product Name</h3>
            <p>⭐⭐⭐⭐☆</p>
            <button class="add-review-btn">Add Review</button>
        </div>
        <div class="review-details">
            <div class="user-profile">
                <img src="https://i.pinimg.com/236x/15/0f/a8/150fa8800b0a0d5633abc1d1c4db3d87.jpg" alt="User Image">
                <div class="user-info">
                    <h3>User Name</h3>
                    <p>Review Date</p>
                </div>
            </div>
            <div class="user-review">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor.</p>
                <a href="#" class="read-more">Read More</a>
            </div>
            <div class="review-meta">
                <p>Duration: 2 months | Recommend: Yes</p>
            </div>
        </div>
    </div>

    <!-- Additional Review Cards -->
    <div class="review-card">
        <div class="product-image">
            <img src="https://i.pinimg.com/236x/29/94/8b/29948b525ca38055346e2bd573724b45.jpg" alt="Product Image">
            <h3>Product Name</h3>
            <p>⭐⭐⭐⭐☆</p>
            <button class="add-review-btn">Add Review</button>
        </div>
        <div class="review-details">
            <div class="user-profile">
                <img src="https://i.pinimg.com/236x/15/0f/a8/150fa8800b0a0d5633abc1d1c4db3d87.jpg" alt="User Image">
                <div class="user-info">
                    <h3>User Name</h3>
                    <p>Review Date</p>
                </div>
            </div>
            <div class="user-review">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor.</p>
                <a href="#" class="read-more">Read More</a>
            </div>
            <div class="review-meta">
                <p>Duration: 3 weeks | Recommend: Yes</p>
            </div>
        </div>
    </div>

    <!-- Add Review Form -->
<div class="add-review-section">
    <h2>Add Your Review</h2>
    <form action="ReviewServlet" method="post">
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>
        </div>
        <div class="form-group">
            <label for="reviewerName">Your Name:</label>
            <input type="text" id="reviewerName" name="reviewerName" required>
        </div>
        <div class="form-group">
            <label for="reviewDate">Date:</label>
            <input type="date" id="reviewDate" name="reviewDate" required>
        </div>
        <div class="form-group">
            <label for="reviewContent">Your Review:</label>
            <textarea id="reviewContent" name="reviewContent" rows="5" required></textarea>
        </div>
        <div class="form-group">
            <label for="rating">Rating:</label>
            <select id="rating" name="rating" required>
                <option value="5">⭐⭐⭐⭐⭐</option>
                <option value="4">⭐⭐⭐⭐☆</option>
                <option value="3">⭐⭐⭐☆☆</option>
                <option value="2">⭐⭐☆☆☆</option>
                <option value="1">⭐☆☆☆☆</option>
            </select>
        </div>
        <button type="submit" class="submit-review-btn">Submit Review</button>
    </form>
</div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Sekai Blog. All rights reserved.</p>
        <p>
            <a href="#">Privacy Policy</a> | 
            <a href="#">Terms of Service</a> | 
            <a href="#">Contact Us</a>
        </p>
    </div>
</body>
</html>

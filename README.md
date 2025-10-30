# 🌿 Plant E-Commerce Website

This is a fully functional plant e-commerce website where users can browse, search, and purchase plants online. The project is built using HTML, CSS for the frontend, PHP for the backend, and MySQL as the database.

## 📋 Features

- **Browse Plants**: Users can explore various categories of plants (e.g., Indoor, Outdoor, Succulents, etc.).
- **Search Functionality**: Search for specific plants using keywords.
- **Shopping Cart**: Users can add plants to their cart and view the total price.
- **User Authentication**: Secure registration and login system.
- **Order Management**: Users can place orders and view their order history.
- **Admin Dashboard**: Admin can manage plants, orders, and users.

## 🛠️ Technologies Used

- **Frontend**:
  - HTML5
  - CSS3
- **Backend**:
  - PHP 7+
- **Database**:
  - MySQL
- **Version Control**:
  - Git and GitHub

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing. You can choose between a traditional local server setup or a Dockerized environment.

### Prerequisites

**For Local Server Setup (XAMPP/WAMP/MAMP):**
- A local server (e.g., **XAMPP**, **WAMP**, or **MAMP**) with PHP and MySQL installed.
- Git (optional, for version control).

**For Docker Setup:**
- Docker Desktop (includes Docker Engine and Docker Compose) installed and running on your system.
- Git (optional, for version control).

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Bhautik204/Plant-Ecommerce-Platform.git
   ```

2. **Move to the Project Directory**:
   ```bash
   cd Plant-Ecommerce-Platform
   ```

### Local Server Setup (XAMPP/WAMP/MAMP)

1. **Set Up Database**:
   - Open **phpMyAdmin** (or any MySQL client).
   - Create a new database named `OPS`.
   - Import the provided `ops.sql` file to create the necessary tables:
     - Go to **Import** in phpMyAdmin and choose the SQL file from the project folder.

2. **Configure Database Connection**:
   - Open `components/connect.php` and set your database credentials (host, username, password, and database name). By default, it should be:
     ```php
     <?php
     $db_name = 'mysql:host=localhost;dbname=OPS';
     $user_name = 'root';
     $user_password = '';
     ?>
     ```

3. **Start Local Server**:
   - Open **XAMPP/WAMP/MAMP** and start **Apache** and **MySQL**.
   - Place the project folder in the `htdocs` directory (for XAMPP) or the equivalent for other local servers.

4. **Access the Website**:
   - Open your browser and navigate to:
     ```
     http://localhost/Plant-Ecommerce-Platform
     ```

### Docker Setup

1.  **Build and Run Containers**:
    Navigate to the project root directory (where `Dockerfile` and `docker-compose.yml` are located) in your terminal and run:
    ```bash
    docker-compose up --build -d
    ```
    This will build the `web` service image and start both the `web` and `db` containers in detached mode.

2.  **Initial Database Setup**:
    Since the `db` service starts with an empty database, you'll need to import the `ops.sql` file into the MySQL container.
    *   First, copy the `ops.sql` file into the container:
        ```bash
        docker cp ops.sql plant-ecommerce-platform-db-1:/tmp/ops.sql
        ```
    *   Then, execute the SQL script inside the container. When prompted for the password, just press Enter (as the root password is empty in `docker-compose.yml`):
        ```bash
        docker exec -it plant-ecommerce-platform-db-1 bash -c "mysql -u root -p -D OPS < /tmp/ops.sql"
        ```

3.  **Access the Website**:
    Once the containers are up and the database is populated, you can access the application in your web browser at:
    ```
    http://localhost:8080
    ```

4.  **Stop the Containers**:
    To stop the running containers, navigate to the project root directory and run:
    ```bash
    docker-compose down
    ```

## 📦 Database Structure

- **Users Table**: Stores user details (id, username, password, email).
- **Plants Table**: Stores plant details (id, name, category, price, image).
- **Orders Table**: Stores order details (id, user_id, plant_id, quantity, total, order_date).

## 📸 Screenshots

- **Home Page**:
  ![Homepage Screenshot](https://github.com/Bhautik204/Plant-Ecommerce-Platform/blob/main/project%20images/Home%20Page.png)

- **Shopping Cart**:
  ![Cart Screenshot](https://github.com/Bhautik204/Plant-Ecommerce-Platform/blob/main/project%20images/shopping%20Cart.png)

- **Admin Dashboard**:
  ![Admin Screenshot](https://github.com/Bhautik204/Plant-Ecommerce-Platform/blob/main/project%20images/admin%20panel.png)

## 🤝 Contributing

Feel free to submit issues or pull requests if you want to contribute to this project.
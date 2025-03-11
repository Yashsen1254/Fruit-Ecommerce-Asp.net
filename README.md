# Fruit E-Commerce in ASP.NET

![Screenshot (137)](https://github.com/user-attachments/assets/5bbb9805-f61a-41e7-af4b-6477455b16b7)

## Overview
The **Fruit E-Commerce** project is an online platform built using **ASP.NET** that allows users to browse, purchase, and manage a variety of fruits. The system includes user authentication, shopping cart functionality, secure payment integration, and an intuitive admin panel for managing products and orders.

## Features
- **User Authentication**: Secure login and registration system.
- **Product Catalog**: Display a variety of fruits with images, descriptions, and prices.
- **Search & Filtering**: Easily find fruits using search and category filters.
- **Shopping Cart**: Add, update, and remove items from the cart.
- **Order Management**: Track order history and order status.
- **Payment Integration**: Secure payment gateway for seamless transactions.
- **Admin Panel**: Manage users, products, categories, orders, and reports.
- **Responsive Design**: Mobile-friendly interface.

## Technologies Used
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Backend**: ASP.NET Core MVC
- **Database**: SQL Server
- **Authentication**: Identity Framework
- **Payment Gateway**: PayPal/Stripe (or any preferred gateway)

## Installation Guide
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repository-url.git
   ```
2. **Open the Project**:
   - Open the solution file in Visual Studio.
3. **Setup Database**:
   - Configure the database connection in `appsettings.json`.
   - Run migrations:
     ```bash
     dotnet ef database update
     ```
4. **Run the Project**:
   - Build and run the project in Visual Studio.
   - Navigate to `http://localhost:5000/` in your browser.

## Folder Structure
```
FruitEcommerce/
│── Controllers/
│── Models/
│── Views/
│── wwwroot/
│── Data/
│── Services/
│── appsettings.json
│── Program.cs
│── Startup.cs
```

## Future Enhancements
- **Wishlist Functionality**
- **Subscription-based Discounts**
- **Multi-language Support**
- **AI-based Recommendations**

## Contributing
If you'd like to contribute, feel free to fork the repository and submit a pull request.

## License
This project is licensed under the MIT License.

## Contact
For any queries or support, reach out at `yashsen0402@gmail.com`.


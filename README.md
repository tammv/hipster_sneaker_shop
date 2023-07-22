**Hipster Shoe Shop - Java Web Application**
Hipster Shoe Shop

Welcome to Hipster Shoe Shop! This is a Java web application for an online shoe shop where users can browse and purchase trendy shoes. This README will guide you on how to set up and run the project using NetBeans and Tomcat.
![image](https://github.com/tammv/hipster_sneaker_shop/assets/72090950/6f83086e-84a7-4f0d-ac5e-fbba5c4f45a2)


Prerequisites
Before running the Hipster Shoe Shop application, ensure that you have the following installed:

Java Development Kit (JDK) - version 8 or higher.
Apache Tomcat - version 8 or higher.
NetBeans IDE - version 8 or higher.
Getting Started
Follow the steps below to get the Hipster Shoe Shop up and running on your local machine.
![image](https://github.com/tammv/hipster_sneaker_shop/assets/72090950/8a5f9c86-9623-4dde-baf3-daf466ab78a3)
![image](https://github.com/tammv/hipster_sneaker_shop/assets/72090950/bbf9e3b0-50cb-4f81-ae75-f3edbb098525)


Clone the repository:
bash
Copy code
git clone https://github.com/tammv/hipster_sneaker_shop.git
cd hipster-shoe-shop
Import the project into NetBeans:

Launch NetBeans IDE.
Click on File > Open Project and select the cloned hipster-shoe-shop folder.
Configure Apache Tomcat:

Download and install Apache Tomcat if you haven't already.
Open NetBeans, go to the Services tab (usually located in the left sidebar).
Right-click on Servers and select Add Server.
Choose Apache Tomcat and provide the installation location of your Tomcat server.
Set up the database:

Create a MySQL database for the application.
Import the database schema and sample data from the provided SQL dump file located in db/schema.sql.
Configure the database connection:

Open the src/main/resources/db.properties file.
Replace the database URL, username, and password with your MySQL credentials.
Build the project:

Right-click on the project in NetBeans and choose Build.
Deploy the project:

Right-click on the project in NetBeans and choose Run.
Access the application:

Open your web browser and navigate to http://localhost:8080/hipster-shoe-shop/.
Features
Browse shoes by category, brand, or size.
View shoe details and images.
Add shoes to the cart and proceed to checkout.
Secure user authentication and registration system.
Order history and tracking.
Contributing
We welcome contributions to enhance the Hipster Shoe Shop application. If you find any bugs or have suggestions for new features, feel free to create an issue or submit a pull request.

License
The Hipster Shoe Shop project is licensed under the MIT License.

Acknowledgments
Special thanks to all contributors and libraries used in this project.

Thank you for choosing Hipster Shoe Shop! If you encounter any issues or need assistance, please don't hesitate to reach out to us.

Happy shoe shopping! 🚀👟

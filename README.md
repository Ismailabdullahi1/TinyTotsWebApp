# TinyTots Web Application

This is a simple **ASP.NET Web Application** for registering children in a kindergarten, implementing **CRUD** operations (Create, Read, Update, and Delete) with a database backend using **Entity Framework**. The application allows users to register children, view the list of registered children, update records, and delete records.

## Features
- **Create**: Register new children by filling out a form.
- **Read**: View a list of all registered children.
- **Update**: Edit the registration details of a child.
- **Delete**: Remove a child's registration.
- **Date & Time Display**: The page displays a greeting message with the current date and time.

## Prerequisites
Before running the application, ensure the following tools are installed:
- **Visual Studio 2022** or later.
- **SQL Server Management Studio (SSMS)**.
- **SQL Server Express** or **LocalDB** for local database.

### Setting Up the Environment
1. **Clone or Download the Repository**:
   Download the project files to your local machine.

2. **Install NuGet Packages**:
   - Open the project in Visual Studio.
   - Go to **Tools** > **NuGet Package Manager** > **Package Manager Console**.
   - Run the following command to install **Entity Framework**:
     ```bash
     Install-Package EntityFramework
     ```

3. **Update the Connection String**:
   - In `Web.config`, ensure the connection string points to your local database:
     ```xml
     <connectionStrings>
       <add name="TinyTotsDbContext" 
            connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=TinyTotsDb;Integrated Security=True" 
            providerName="System.Data.SqlClient" />
     </connectionStrings>
     ```

4. **Enable Migrations and Update Database**:
   - Open the **Package Manager Console** in Visual Studio.
   - Run the following commands:
     ```bash
     Enable-Migrations
     Add-Migration InitialMigration
     Update-Database
     ```

5. **Build the Application**:
   - Press **Ctrl+Shift+B** to build the application and ensure there are no errors.

## Running the Application
1. **Start the Application**:
   - Press **F5** or click **Start** in Visual Studio to run the application.

2. **Navigate to the Registration Form**:
   - Once the application is running, navigate to `RegisterChild.aspx` in your browser to see the registration form.

3. **Submit a Registration**:
   - Fill out the form to register a new child and click **Register**.
   - After submitting, the page will redirect to `RegistrationList.aspx`, where you can see all registered children.

4. **View, Edit, or Delete Registrations**:
   - From the `RegistrationList.aspx` page, you can see the list of registered children. Each entry has **Edit** and **Delete** buttons to modify or remove records.

## Database Structure
- **Database Name**: `TinyTotsDb`
- **Table Name**: `TinyTotsTable`
- **Columns**:
  - `RegistrationId` (Primary Key)
  - `FirstName`
  - `SecondName`
  - `Race`
  - `Gender`
  - `FoodAllergies`

## Screenshots
- **Registration Form Page**:
  ![Registration Form](![Screenshot 2024-12-08 160338](https://github.com/user-attachments/assets/2be90835-b931-47fe-98bd-cc0779c659ae))


- **Registration List Page**:
  ![Registration List](![Screenshot 2024-12-08 161452](https://github.com/user-attachments/assets/2aba7c84-d264-456f-a945-dc37dd217b25))




## Troubleshooting
- If the **database is not created**:
  - Verify the connection string and database server are correctly configured.
  - Ensure **SQL Server** or **LocalDB** is running.
  - Try manually creating the database in SSMS if needed.

- If you encounter **migration issues**:
  - Ensure the **migrations** are enabled by running `Enable-Migrations` in the **Package Manager Console**.
  - Try running `Update-Database` again.

## Conclusion
This application serves as a basic example of building an ASP.NET Web Forms application with **Entity Framework** and demonstrates **CRUD** operations using SQL Server as the backend.

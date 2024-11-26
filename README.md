Prerequisites
Before starting, ensure the following are installed on your system:
    - Node.js (for running JavaScript on the server-side)
    - MySQL (for database management)
    - VS Code or any code editor of your choice
    - npm (Node Package Manager, comes with Node.js)
    
1. Clone or Download the Project

   a. Option 1: Clone the repository using Git:

       git clone https://github.com/yordanostk/DataGroupProject/tree/main/ProjectFile

   b. Option 2: Download the repository as a ZIP file:

        i. Navigate to the GitHub repository page.
        ii. Click the green Code button and select Download ZIP.
        iii. Extract the downloaded ZIP file to a folder of your choice.
   
3. Download DUMPFILES located in the repository. (ENSURE YOU HAVE EVERY TABLE FEATURED IN THE FILE DOWNLOADED)

4. Download app.js, db.js and the .css, .js, .html and image files. (ENSURE ALL FILES ARE LOCATED UNDER THE SAME DIRECTORY)

5. If not already done through download, configure all images, .html, .css and .js files to be under a folder called 'public'

6. Create project workspace. This should be located in the same directory as node_modules and .vscode. 
   
7. Set up the database using the DUMPFILE you downloaded.

        a. Open MySQL Workbench
        b. Locate the database files provided in the project folder (e.g., database.sql).
        c. Import the database structure:
        i. Open your MySQL client and create a new database (e.g., project_db).
        ii. Import the SQL file to set up the tables and structure: SOURCE
        iii. Once successfully completed connect the database to a connection.
   (NOTE: ENSURE PORT=3306, HOSTNAME=localhost)
   
9. Configure Database Connection:
   
        a. Open db.js
        b. Configure settings to insure it is connected to database
        c. update any credentials in vs code to match with Workbench credentials
           NOTE: you'll need to alter the user and password.
   
11. Install Node.js Dependencies
        a. Open your terminal or command prompt and navigate to the project folder:

                cd /path/to/project-folder
b. Ensure nodes and npm are present using

        i. node -v
        ii. npm -v
        otherwise run these commands in terminal
        iii. npm init -y
        iv. npm install express mysql2 body-parser express-session
        
12. Install all dependencies in app.js, use the following terminal actions in the vsCode terminal to ensure all libraries are installed.

        i. npm install express
        ii. npm install express-session
        iii. npm install bcrypt
        iv. npm install crypto
        v. npm install email-jscom
    
13. Start the Application by running the following in the terminal
    
        a. node app.js
        b. If everything is set up correctly, you should get this message:
        Server is running on http://localhost:3001
        Connected to MySQL database.
    
13.a Start the Admin Application by running the following in the terminal
    
        a. Insure you are already in Admin project folder: 
            cd .. (exit out the DataProject)
            cd Admin
        b. head to the terminal and run node adminapp.js
        c. If everything is set up correctly, you should get this message:
        Server is running on http://localhost:3003
        Connected to MySQL database.
    
15. Access the Application

        a. Open your web browser.
        b. Navigate to the following URL to access the login page
        i. localhost:3001/login.html
    
Troubleshooting
        ● If you encounter a database connection error:
        ○ Check the database credentials in db.js.
        ○ Ensure that the MySQL server is running.
        ○ Verify that the database has been imported correctly.
        ● If node app.js throws an error:
        ○ Ensure Node.js and all required npm packages are installed correctly.
        ○ Verify that app.js and all project files are present and correctly configured.

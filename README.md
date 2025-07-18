# Procurement Management System

A basic procurement application built with Java, Maven, and JSP for managing purchase requests and vendor information.

## Features

- **Dashboard**: Overview of procurement statistics and recent activities
- **Purchase Request Management**: Create and track purchase requests
- **Vendor Management**: Add and manage vendor information
- **Status Tracking**: Track request status (Pending, Approved, Rejected)
- **Responsive Design**: Modern UI built with Bootstrap 5

## Technology Stack

- **Backend**: Java Servlet/JSP
- **Build Tool**: Maven
- **Frontend**: Bootstrap 5, Font Awesome
- **Container**: Apache Tomcat

## Quick Start

### Prerequisites

- Java 8 or higher
- Maven 3.6+
- Apache Tomcat 9+

### Build and Deploy

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd maven-project
   ```

2. **Build the project**
   ```bash
   mvn clean package
   ```

3. **Deploy to Tomcat**
   - Copy the generated `procurement-app.war` from `target/` directory
   - Deploy to your Tomcat webapps directory
   - Access the application at `http://localhost:8080/procurement-app`

### Development

1. **Run with Maven Tomcat plugin**
   ```bash
   mvn tomcat7:run
   ```

2. **Access the application**
   - Open your browser and go to `http://localhost:8080/procurement-app`

## Application Structure

```
src/
├── main/
│   ├── java/                    # Java source files
│   ├── resources/               # Configuration files
│   └── webapp/
│       ├── WEB-INF/
│       │   └── web.xml         # Web application configuration
│       ├── css/
│       │   └── jumbotron.css   # Custom styles
│       └── index.jsp           # Main application page
└── test/                       # Test files
```

## Key Features

### Dashboard
- Real-time statistics display
- Quick action buttons
- Recent purchase requests table

### Purchase Request Form
- Item details (name, category, quantity, price)
- Priority selection
- Vendor selection
- Description field

### Vendor Management
- Vendor information form
- Contact details
- Specialization categories

## Configuration

The application uses standard Maven configuration. Key settings can be found in:

- `pom.xml` - Project dependencies and build configuration
- `src/main/webapp/WEB-INF/web.xml` - Web application configuration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support and questions, please contact the development team.


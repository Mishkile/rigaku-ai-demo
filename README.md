# Rigaku AI Demo

AI Demo repository for Node.js Express REST API with MongoDB integration

## Project Overview

This project demonstrates building a full-stack application with:
- Node.js Express REST API backend
- MongoDB database integration with Mongoose
- HTML frontend for data presentation
- Integration with existing rigakuDB database containing users and products

## Development Tasks

### 1. 🚀 Develop Node.js Express REST API Boilerplate

**Description**: Create a foundational boilerplate for a Node.js Express REST API server that will serve as the backend for our AI demo application.

**Requirements**:
- Express.js for the web framework
- Mongoose for MongoDB integration
- CORS for cross-origin requests
- dotenv for environment variables
- body-parser for request parsing
- nodemon for development

**Project Structure**:
```
/
├── src/
│   ├── controllers/
│   ├── services/
│   ├── repositories/
│   ├── models/
│   ├── routes/
│   ├── middleware/
│   └── config/
├── package.json
├── .env.example
├── .gitignore
└── server.js
```

**Core Features**:
1. Basic Express Server Setup
2. MongoDB Connection with Mongoose
3. Environment Configuration
4. Basic API Structure with versioning
5. Development Setup with nodemon

**Acceptance Criteria**:
- ✅ Express server starts successfully
- ✅ MongoDB connection is established
- ✅ Health check endpoint returns status 200
- ✅ Environment variables are properly configured
- ✅ Project follows standard Node.js structure

---

### 2. 📊 Create Users & Products API Endpoints

**Description**: Create new route, service, and repository layers to return users and products data from MongoDB using Mongoose.

**Requirements**:
- Create Mongoose models for Users and Products collections
- Implement repository pattern for data access
- Create service layer for business logic
- Create API routes for data retrieval
- Support for joined data queries using MongoDB aggregation

**API Endpoints to Create**:
- `GET /api/v1/users` - Get all users
- `GET /api/v1/products` - Get all products  
- `GET /api/v1/users-products` - Get joined users and products data

**Database Connection**:
- Connect to existing `rigakuDB` database
- Access `users` and `products` collections
- Implement proper error handling and validation

**Acceptance Criteria**:
- ✅ All endpoints return proper JSON responses
- ✅ Data is retrieved from rigakuDB database
- ✅ Proper error handling is implemented
- ✅ Repository pattern is followed
- ✅ Joined queries work correctly

---

### 3. 🎨 Create HTML Frontend for Data Display

**Description**: Create an HTML page to present all users and products data in a user-friendly format.

**Requirements**:
- Create static HTML page with modern design
- Implement JavaScript to fetch data from API endpoints
- Display users and products in organized, responsive layout
- Include basic styling with CSS or CSS framework

**Features**:
- Display user information and their purchased products
- Show summary statistics (total revenue, popular categories, etc.)
- Responsive design for mobile and desktop
- Clean, professional appearance
- Interactive elements (sorting, filtering)

**Technical Implementation**:
- Use Fetch API to consume REST endpoints
- Display data in cards or table format
- Add loading states and error handling
- Implement basic client-side filtering/search

**Acceptance Criteria**:
- ✅ HTML page loads successfully
- ✅ Data is fetched from API endpoints
- ✅ Information is displayed clearly and attractively
- ✅ Page is responsive and works on different devices
- ✅ Error states are handled gracefully

## Getting Started

1. Clone the repository
2. Install dependencies: `npm install`
3. Configure environment variables in `.env`
4. Start development server: `npm run dev`
5. Open HTML page in browser

## Database Schema

The project uses an existing MongoDB database (`rigakuDB`) with two collections:

- **users**: User data from JSONPlaceholder API
- **products**: Generated product data with buyer relationships

## Technology Stack

- **Backend**: Node.js, Express.js, Mongoose
- **Database**: MongoDB
- **Frontend**: HTML, CSS, JavaScript
- **Development**: nodemon, dotenv
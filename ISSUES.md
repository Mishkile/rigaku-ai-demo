# Development Issues for Rigaku AI Demo

## Issue 1: Develop Node.js Express REST API Boilerplate

**Priority**: High  
**Estimated Time**: 2-3 hours  
**Status**: Open

### Description
Create a foundational boilerplate for a Node.js Express REST API server that will serve as the backend for our AI demo application.

### Requirements
- Express.js for the web framework
- Mongoose for MongoDB integration
- CORS for cross-origin requests
- dotenv for environment variables
- body-parser for request parsing
- nodemon for development

### Project Structure
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

### Core Features
1. **Basic Express Server Setup**
   - Express app initialization
   - Middleware configuration (CORS, body-parser, etc.)
   - Error handling middleware
   - Server listening on configurable port

2. **MongoDB Connection**
   - Mongoose connection setup
   - Connection error handling
   - Database configuration via environment variables

3. **Environment Configuration**
   - .env file for environment variables
   - Configuration for database connection string, server port, environment

4. **Basic API Structure**
   - Health check endpoint (GET /health)
   - API versioning (/api/v1/)
   - Basic route structure

5. **Development Setup**
   - npm scripts for development and production
   - Nodemon configuration for auto-restart

### Acceptance Criteria
- [ ] Express server starts successfully
- [ ] MongoDB connection is established
- [ ] Health check endpoint returns status 200
- [ ] Environment variables are properly configured
- [ ] Project follows standard Node.js structure
- [ ] All dependencies are properly installed and configured
- [ ] Development and production scripts are available

---

## Issue 2: Create Users & Products API Endpoints

**Priority**: High  
**Estimated Time**: 3-4 hours  
**Status**: Open  
**Dependencies**: Issue 1

### Description
Create new route, service, and repository layers to return users and products data from MongoDB using Mongoose. This will connect to the existing rigakuDB database with users and products collections.

### Requirements
- Create Mongoose models for Users and Products collections
- Implement repository pattern for data access
- Create service layer for business logic
- Create API routes for data retrieval
- Support for joined data queries using MongoDB aggregation

### API Endpoints to Create
1. `GET /api/v1/users` - Get all users
2. `GET /api/v1/users/:id` - Get specific user
3. `GET /api/v1/products` - Get all products
4. `GET /api/v1/products/:id` - Get specific product
5. `GET /api/v1/users-products` - Get joined users and products data

### Database Connection
- Connect to existing `rigakuDB` database
- Access `users` and `products` collections
- Use existing data structure from previous setup

### Implementation Details
1. **Models** (src/models/)
   - User.js - Mongoose schema for users collection
   - Product.js - Mongoose schema for products collection

2. **Repositories** (src/repositories/)
   - UserRepository.js - Data access layer for users
   - ProductRepository.js - Data access layer for products

3. **Services** (src/services/)
   - UserService.js - Business logic for user operations
   - ProductService.js - Business logic for product operations

4. **Controllers** (src/controllers/)
   - UserController.js - HTTP request handlers for users
   - ProductController.js - HTTP request handlers for products

5. **Routes** (src/routes/)
   - userRoutes.js - Route definitions for user endpoints
   - productRoutes.js - Route definitions for product endpoints

### Acceptance Criteria
- [ ] All endpoints return proper JSON responses
- [ ] Data is retrieved from rigakuDB database
- [ ] Proper error handling is implemented
- [ ] Repository pattern is followed
- [ ] Service layer contains business logic
- [ ] Controllers handle HTTP concerns only
- [ ] Joined queries work correctly using aggregation
- [ ] API responses include proper status codes
- [ ] Input validation is implemented

---

## Issue 3: Create HTML Frontend for Data Display

**Priority**: Medium  
**Estimated Time**: 2-3 hours  
**Status**: Open  
**Dependencies**: Issue 2

### Description
Create an HTML page to present all users and products data in a user-friendly format. The frontend will consume the REST API endpoints created in Issue 2.

### Requirements
- Create static HTML page with modern design
- Implement JavaScript to fetch data from API endpoints
- Display users and products in organized, responsive layout
- Include basic styling with CSS or CSS framework

### Features
1. **Data Display**
   - Show user information (name, email, city, company)
   - Show product information (name, price, category, rating)
   - Display user-product relationships clearly

2. **Summary Statistics**
   - Total number of users and products
   - Total revenue from all purchases
   - Average order value
   - Popular product categories
   - Top-rated products

3. **Interactive Elements**
   - Search/filter functionality
   - Sort by different criteria (name, price, rating)
   - Responsive card or table layout

4. **User Experience**
   - Loading states while fetching data
   - Error handling for failed requests
   - Responsive design for mobile and desktop
   - Clean, professional appearance

### Technical Implementation
- Use Fetch API to consume REST endpoints
- Implement async/await for API calls
- Use CSS Grid or Flexbox for responsive layout
- Add basic CSS animations/transitions
- Include proper error boundaries

### File Structure
```
/public/
├── index.html
├── css/
│   └── styles.css
├── js/
│   ├── api.js (API calls)
│   ├── components.js (UI components)
│   └── main.js (main application logic)
└── assets/
    └── (any images or icons)
```

### API Integration
- Fetch data from `/api/v1/users-products` endpoint
- Handle API errors gracefully
- Show loading indicators during API calls
- Cache data locally to reduce API calls

### Acceptance Criteria
- [ ] HTML page loads successfully
- [ ] Data is fetched from API endpoints correctly
- [ ] User and product information is displayed clearly
- [ ] Summary statistics are calculated and shown
- [ ] Page is responsive and works on different devices
- [ ] Error states are handled gracefully
- [ ] Loading states provide good user feedback
- [ ] Search/filter functionality works
- [ ] Code is well-organized and documented
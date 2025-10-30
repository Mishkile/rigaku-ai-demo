#!/bin/bash
# Script to create GitHub issues for rigaku-ai-demo project

# Issue 1: Node.js Express REST API Boilerplate
curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/Mishkile/rigaku-ai-demo/issues \
  -d '{
    "title": "Develop Node.js Express REST API Boilerplate",
    "body": "## 🚀 Feature Request: Node.js Express REST API Boilerplate\n\n### Description\nCreate a foundational boilerplate for a Node.js Express REST API server that will serve as the backend for our AI demo application.\n\n### Requirements\n- Express.js for the web framework\n- Mongoose for MongoDB integration\n- CORS for cross-origin requests\n- dotenv for environment variables\n- body-parser for request parsing\n- nodemon for development\n\n### Project Structure\n```\n/\n├── src/\n│   ├── controllers/\n│   ├── services/\n│   ├── repositories/\n│   ├── models/\n│   ├── routes/\n│   ├── middleware/\n│   └── config/\n├── package.json\n├── .env.example\n├── .gitignore\n└── server.js\n```\n\n### Core Features\n1. Basic Express Server Setup\n2. MongoDB Connection\n3. Environment Configuration\n4. Basic API Structure\n5. Development Setup\n\n### Acceptance Criteria\n- [ ] Express server starts successfully\n- [ ] MongoDB connection is established\n- [ ] Health check endpoint returns status 200\n- [ ] Environment variables are properly configured\n- [ ] Project follows standard Node.js structure\n\n**Priority**: High\n**Estimated Time**: 2-3 hours",
    "labels": ["enhancement", "backend", "high-priority"]
  }'

# Issue 2: Users & Products API Endpoints  
curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/Mishkile/rigaku-ai-demo/issues \
  -d '{
    "title": "Create Users & Products API Endpoints",
    "body": "## 📊 Feature Request: Users & Products API Endpoints\n\n### Description\nCreate new route, service, and repository layers to return users and products data from MongoDB using Mongoose.\n\n### Requirements\n- Create Mongoose models for Users and Products\n- Implement repository pattern for data access\n- Create service layer for business logic\n- Create API routes for data retrieval\n- Support for joined data queries\n\n### Endpoints to Create\n- `GET /api/v1/users` - Get all users\n- `GET /api/v1/products` - Get all products\n- `GET /api/v1/users-products` - Get joined users and products data\n\n### Database Connection\n- Connect to existing rigakuDB database\n- Access users and products collections\n- Implement proper error handling\n\n### Acceptance Criteria\n- [ ] All endpoints return proper JSON responses\n- [ ] Data is retrieved from rigakuDB database\n- [ ] Proper error handling is implemented\n- [ ] Repository pattern is followed\n- [ ] Joined queries work correctly\n\n**Priority**: High\n**Estimated Time**: 3-4 hours\n**Dependencies**: Issue #1",
    "labels": ["enhancement", "backend", "database"]
  }'

# Issue 3: HTML Frontend for Data Display
curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/Mishkile/rigaku-ai-demo/issues \
  -d '{
    "title": "Create HTML Frontend for Data Display",
    "body": "## 🎨 Feature Request: HTML Frontend for Data Display\n\n### Description\nCreate an HTML page to present all users and products data in a user-friendly format.\n\n### Requirements\n- Create static HTML page with modern design\n- Implement JavaScript to fetch data from API\n- Display users and products in organized layout\n- Include basic styling with CSS\n\n### Features\n- Display user information and their purchased products\n- Show summary statistics\n- Responsive design\n- Clean, professional appearance\n- Interactive elements (sorting, filtering)\n\n### Technical Implementation\n- Use Fetch API to consume REST endpoints\n- Display data in cards or table format\n- Add loading states and error handling\n- Implement basic client-side filtering/search\n\n### Acceptance Criteria\n- [ ] HTML page loads successfully\n- [ ] Data is fetched from API endpoints\n- [ ] Information is displayed clearly\n- [ ] Page is responsive and well-styled\n- [ ] Error states are handled gracefully\n\n**Priority**: Medium\n**Estimated Time**: 2-3 hours\n**Dependencies**: Issue #2",
    "labels": ["enhancement", "frontend", "ui/ux"]
  }'

echo "Issues created successfully!"
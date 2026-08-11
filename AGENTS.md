# AGENTS

## Project Overview
This is a full-stack quiz application.

- Backend: Spring Boot 4, Java 17, PostgreSQL, Spring Security with JWT.
- Frontend: React 19 + Vite with plain CSS and axios.
- Main features: user registration/login, profile management, quiz setup and submission, question creation, category browsing, and quiz statistics.

## Repository Structure

- `src/main/java/com/example/zavrsni_rad/config` - security, JWT, and web configuration.
- `src/main/java/com/example/zavrsni_rad/controller` - REST controllers for users, quizzes, questions, categories, gender, and education.
- `src/main/java/com/example/zavrsni_rad/dto` - request/response models.
- `src/main/java/com/example/zavrsni_rad/entity` - JPA entities mapped to the existing PostgreSQL schema.
- `src/main/java/com/example/zavrsni_rad/mapper` - entity-to-DTO mapping helpers.
- `src/main/java/com/example/zavrsni_rad/repository` - Spring Data repositories and custom repository implementations.
- `src/main/java/com/example/zavrsni_rad/service` - application logic.
- `src/main/resources/application.properties` - local database, JWT, CORS, and logging configuration.
- `src/test/java` - backend tests.
- `sql/` - database schema and seed scripts.
- `frontend/src` - React app source.
- `frontend/src/pages` - route-level screens.
- `frontend/src/components` - shared UI components.
- `frontend/src/api.js` - axios base client and auth helpers.
- `frontend/dist`, `build/`, `node_modules/` - generated output; do not edit manually.

## Coding Standards

- Keep Java code on Java 17 and follow the current package layout.
- Prefer controller -> service -> repository flow instead of putting business logic in controllers.
- Use DTOs for request/response payloads when adding new endpoints.
- Preserve the existing database naming and column mappings unless you also update the SQL scripts and JPA annotations.
- Keep JWT and security-related code consistent with the existing Bearer-token flow.
- In the frontend, use functional components, hooks, and the existing CSS files rather than introducing a new styling system.
- Reuse `frontend/src/api.js` for API access so the base URL and token handling stay centralized.

## Domain Rules

- A user must have a unique username and email address.
- User registration requires valid `gender` and `education` references.
- Passwords are stored encoded, not in plain text.
- Login only works for active users.
- Logout and account deletion require a Bearer token; the token is blacklisted on logout/deactivation.
- Deactivating a user sets the user inactive and blacklists the current token.
- Categories, gender, and education are lookup data exposed through public GET endpoints.
- Creating a question requires an existing category, four answers, and exactly one correct answer.
- Question text is trimmed and capped at 1000 characters; each answer is trimmed and capped at 256 characters in the UI.
- New questions and answers are marked active on creation.
- Quiz submission requires a logged-in user and a non-empty list of answer IDs.
- Quiz submission stores the quiz record and linked answers, then counts correct answers by `tocan_odgovor = 1`.
- Quiz setup uses the selected category question counts to limit the requested quiz size.

## Agent Instructions

- Do not modify generated directories such as `build/`, `frontend/dist/`, or `node_modules/`.
- Do not rename tables, columns, or entity fields without updating the SQL scripts, JPA mappings, and dependent frontend code.
- When changing auth behavior, update `SecurityConfig`, JWT handling, and any frontend token usage together.
- When adding or changing endpoints, check whether the frontend calls or route guards need to change too.
- Keep error messages and validation rules aligned between backend and frontend.
- Prefer small, targeted changes over broad refactors in this codebase.

## Commands

### Backend

- `./gradlew bootRun` - start the Spring Boot backend.
- `./gradlew test` - run backend tests.
- `./gradlew build` - compile and build the backend.

### Frontend

- `cd frontend && yarn dev` - start the Vite development server.
- `cd frontend && yarn build` - build the frontend for production.
- `cd frontend && yarn lint` - run ESLint.

### Notes

- Use the Gradle wrapper from the repo root.
- The frontend has a `yarn.lock`, so Yarn is the preferred package manager there.

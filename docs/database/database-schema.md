# Database Schema

Main relationships:

- `users` 1 --- N `issues`
- `issue_categories` 1 --- N `issues`
- `departments` 1 --- N `issues`
- `locations` 1 --- N `issues`
- `issues` 1 --- N `status_history`

The Review-I MVP intentionally keeps assignment and notification tables out of the active
business flow; their package locations are reserved for later sprints.

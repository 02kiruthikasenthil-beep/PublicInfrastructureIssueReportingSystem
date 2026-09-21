-- Reference schema (PostgreSQL). The app creates/updates tables itself (spring.jpa.hibernate.ddl-auto=update);
-- this file documents the same structure and can initialise a database by hand:
--   psql -U postgres -d civic_issue -f database/schema.sql
-- 8 tables: users, issue_categories, departments, locations, issues, status_history,
--           issue_assignments, notifications.

CREATE TABLE IF NOT EXISTS users (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(120) NOT NULL,
    email       VARCHAR(180) NOT NULL UNIQUE,
    password    VARCHAR(255) NOT NULL,              -- bcrypt hash, never plain text
    role        VARCHAR(30)  NOT NULL DEFAULT 'CITIZEN',   -- CITIZEN | OFFICER | ADMIN
    created_at  TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS issue_categories (
    id    BIGSERIAL PRIMARY KEY,
    name  VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS departments (
    id    BIGSERIAL PRIMARY KEY,
    name  VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS locations (
    id         BIGSERIAL PRIMARY KEY,
    address    VARCHAR(255) NOT NULL,
    latitude   DOUBLE PRECISION,
    longitude  DOUBLE PRECISION
);

CREATE TABLE IF NOT EXISTS issues (
    id             BIGSERIAL PRIMARY KEY,
    title          VARCHAR(180) NOT NULL,
    description    TEXT         NOT NULL,
    status         VARCHAR(30)  NOT NULL DEFAULT 'REPORTED',  -- REPORTED | IN_REVIEW | IN_PROGRESS | RESOLVED | REJECTED
    priority       VARCHAR(20)  NOT NULL DEFAULT 'MEDIUM',    -- LOW | MEDIUM | HIGH
    reporter_id    BIGINT NOT NULL REFERENCES users(id),
    category_id    BIGINT NOT NULL REFERENCES issue_categories(id),
    department_id  BIGINT REFERENCES departments(id),
    location_id    BIGINT NOT NULL UNIQUE REFERENCES locations(id),  -- one-to-one
    created_at     TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at     TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS status_history (
    id          BIGSERIAL PRIMARY KEY,
    issue_id    BIGINT NOT NULL REFERENCES issues(id),
    status      VARCHAR(30) NOT NULL,
    note        VARCHAR(500),
    changed_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

-- One row per assignment; old rows stay (active = FALSE) as reassignment history.
CREATE TABLE IF NOT EXISTS issue_assignments (
    id              BIGSERIAL PRIMARY KEY,
    issue_id        BIGINT NOT NULL REFERENCES issues(id),
    officer_id      BIGINT NOT NULL REFERENCES users(id),
    assigned_by_id  BIGINT REFERENCES users(id),
    note            VARCHAR(400),
    active          BOOLEAN   NOT NULL DEFAULT TRUE,
    assigned_at     TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_assignments_issue_active ON issue_assignments(issue_id, active);
CREATE INDEX IF NOT EXISTS idx_assignments_officer_active ON issue_assignments(officer_id, active);

CREATE TABLE IF NOT EXISTS notifications (
    id          BIGSERIAL PRIMARY KEY,
    user_id     BIGINT NOT NULL REFERENCES users(id),
    issue_id    BIGINT REFERENCES issues(id),
    message     VARCHAR(255) NOT NULL,
    read_flag   BOOLEAN   NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_notifications_user_created ON notifications(user_id, created_at DESC);

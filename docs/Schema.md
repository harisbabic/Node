### Step 1: Finalize the Database Schema

#### **Models to Finalize:**
1. **User Model**
2. **Project Model**
3. **Task Model**
4. **Client Model**
5. **Invoice Model**
6. **Expense Model**
7. **Budget Model**
8. **Reminder Model**
9. **Automation Rules Model**
10. **Event Model**
11. **Review Model**
12. **Service Model**
13. **Poll Model**

### **Detailed Schema Implementation**

#### **1. User Model**
```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'User', -- e.g., Admin, User, Client
    permissions JSONB DEFAULT '{}' -- Flexible permissions structure
);
```

#### **2. Project Model**
```sql
CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    client_id INT REFERENCES clients(id) ON DELETE SET NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'Active', -- e.g., Active, Completed
    budget NUMERIC(12, 2) DEFAULT 0.00,
    expenses NUMERIC(12, 2) DEFAULT 0.00,
    automation_rules JSONB DEFAULT '{}' -- Store automation rules
);
```

#### **3. Task Model**
```sql
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE,
    priority VARCHAR(20) NOT NULL DEFAULT 'Medium', -- e.g., High, Medium, Low
    status VARCHAR(20) NOT NULL DEFAULT 'Pending', -- e.g., Pending, In Progress, Completed
    reminder_date TIMESTAMPTZ,
    assigned_users INT[] -- Array of User IDs for multiple assignments
);
```

#### **4. Client Model**
```sql
CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,
    name VARCHAR(255) NOT NULL,
    contact_info JSONB DEFAULT '{}', -- Store email, phone, address, etc.
    notes TEXT,
    tags VARCHAR(50)[]
);
```

#### **5. Invoice Model**
```sql
CREATE TABLE invoices (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    client_id INT REFERENCES clients(id) ON DELETE CASCADE,
    amount NUMERIC(12, 2) NOT NULL,
    due_date DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'Unpaid', -- e.g., Paid, Unpaid
    recurring BOOLEAN DEFAULT FALSE -- For recurring invoices
);
```

#### **6. Expense Model**
```sql
CREATE TABLE expenses (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    budget_id INT REFERENCES budgets(id) ON DELETE CASCADE,
    description TEXT NOT NULL,
    amount NUMERIC(12, 2) NOT NULL,
    date TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    is_billable BOOLEAN DEFAULT FALSE
);
```

#### **7. Budget Model**
```sql
CREATE TABLE budgets (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    total_budget NUMERIC(12, 2) NOT NULL,
    allocated_budget NUMERIC(12, 2) NOT NULL DEFAULT 0.00,
    spent_budget NUMERIC(12, 2) NOT NULL DEFAULT 0.00,
    remaining_budget NUMERIC(12, 2) GENERATED ALWAYS AS (total_budget - spent_budget) STORED
);
```

#### **8. Reminder Model**
```sql
CREATE TABLE reminders (
    id SERIAL PRIMARY KEY,
    task_id INT REFERENCES tasks(id) ON DELETE CASCADE,
    reminder_date TIMESTAMPTZ NOT NULL,
    message TEXT NOT NULL
);
```

#### **9. Automation Rules Model**
```sql
CREATE TABLE automation_rules (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    trigger_event VARCHAR(50) NOT NULL, -- e.g., Task Created, Status Changed
    action VARCHAR(50) NOT NULL, -- e.g., Send Email, Move Task
    conditions JSONB DEFAULT '{}' -- Store conditional logic
);
```

#### **10. Event Model**
```sql
CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    event_date TIMESTAMPTZ NOT NULL,
    location VARCHAR(255),
    ticket_price NUMERIC(12, 2),
    max_attendees INT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
```

#### **11. Review Model**
```sql
CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    business_id INT REFERENCES businesses(id) ON DELETE CASCADE,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
```

#### **12. Service Model**
```sql
CREATE TABLE services (
    id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC(12, 2),
    duration INTERVAL, -- e.g., 1 hour
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
```

#### **13. Poll Model**
```sql
CREATE TABLE polls (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    question TEXT NOT NULL,
    options JSONB NOT NULL, -- e.g., [{"option": "Yes", "votes": 0}, {"option": "No", "votes": 0}]
    total_votes INT DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);
```

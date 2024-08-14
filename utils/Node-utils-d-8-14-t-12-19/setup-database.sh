#!/bin/bash

# Load environment variables
source ./utils/env.sh

# Database credentials
DB_NAME=${DB_NAME:-"my_database"}
DB_USER=${DB_USER:-"my_user"}
DB_PASS=${DB_PASS:-"my_password"}

# Function to execute SQL files
execute_sql() {
  local file=$1
  echo "Executing $file..."
  PGPASSWORD=$DB_PASS psql -U $DB_USER -d $DB_NAME -f $file
}

# List of SQL files to execute
SQL_FILES=(
  "db/migrations/001_create_users_table.sql"
  "db/migrations/002_create_projects_table.sql"
  "db/migrations/003_create_tasks_table.sql"
  "db/migrations/004_create_clients_table.sql"
  "db/migrations/005_create_invoices_table.sql"
  "db/migrations/006_create_expenses_table.sql"
  "db/migrations/007_create_budgets_table.sql"
  "db/migrations/008_create_reminders_table.sql"
  "db/migrations/009_create_automation_rules_table.sql"
  "db/migrations/010_create_events_table.sql"
  "db/migrations/011_create_reviews_table.sql"
  "db/migrations/012_create_services_table.sql"
  "db/migrations/013_create_polls_table.sql"
)

# Run each SQL file
for file in "${SQL_FILES[@]}"; do
  execute_sql $file
done

echo "Database setup completed successfully!"

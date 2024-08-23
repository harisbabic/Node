#!/bin/bash
# setup-i18n.sh
# Relative path: d/Node/utils/setup-i18n.sh
# Description: Sets up internationalization for the project

set -euo pipefail

# Source the common functions and logger
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common-functions.sh"
source "$SCRIPT_DIR/logger.sh"

# Check if project name is provided
if [ $# -eq 0 ]; then
    log_error "Please provide a project name as an argument."
    echo "Usage: $0 <project-name>"
    exit 1
fi

PROJECT_NAME="$1"
PROJECT_DIR="$NODE_DIR/projects/$PROJECT_NAME"
CLIENT_DIR="$PROJECT_DIR/client"

log_info "Setting up internationalization for $PROJECT_NAME"

# Ensure client directory exists
if [ ! -d "$CLIENT_DIR" ]; then
    log_error "Client directory does not exist: $CLIENT_DIR"
    exit 1
fi

cd "$CLIENT_DIR" || exit 1

# Install i18n dependencies
log_info "Installing i18n dependencies..."
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
log_info "Creating i18n configuration..."
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.ts
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import Backend from 'i18next-http-backend';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(Backend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    fallbackLng: 'en',
    debug: process.env.NODE_ENV !== 'production',
    interpolation: {
      escapeValue: false,
    },
    backend: {
      loadPath: '/locales/{{lng}}/{{ns}}.json',
    },
  });

export default i18n;
EOF

# Create sample translation files
log_info "Creating sample translation files..."
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.tsx to use i18n
log_info "Updating index.tsx to use i18n..."
sed -i '1iimport "./i18n/i18n";\n' src/index.tsx

# Create a language switcher component
log_info "Creating language switcher component..."
cat << EOF > src/components/LanguageSwitcher.tsx
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher: React.FC = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng: string) => {
    i18n.changeLanguage(lng);
  };

  return (
    <div>
      <button onClick={() => changeLanguage('en')}>English</button>
      <button onClick={() => changeLanguage('es')}>Español</button>
    </div>
  );
};

export default LanguageSwitcher;
EOF

log_info "Internationalization setup completed for $PROJECT_NAME"

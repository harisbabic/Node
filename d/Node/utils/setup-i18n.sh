#!/bin/bash
# setup-i18n.sh

set -euo pipefail

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

error_exit() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
  exit 1
}

project_dir="$1"

if [ -z "$project_dir" ]; then
  error_exit "Usage: $0 <project-dir>"
fi

client_dir="$project_dir/client"
cd "$client_dir" || error_exit "Failed to change to client directory"

log "Setting up internationalization for $client_dir"

# Install react-i18next, i18next, and related packages
npm install react-i18next i18next i18next-http-backend i18next-browser-languagedetector

# Create i18n configuration
mkdir -p src/i18n
cat << EOF > src/i18n/i18n.js
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
mkdir -p public/locales/en public/locales/es
echo '{"hello": "Hello", "welcome": "Welcome to our app!"}' > public/locales/en/translation.json
echo '{"hello": "Hola", "welcome": "¡Bienvenido a nuestra aplicación!"}' > public/locales/es/translation.json

# Update index.js to use i18n
sed -i '1iimport "./i18n/i18n";\n' src/index.js

# Create a language switcher component
cat << EOF > src/components/LanguageSwitcher.js
import React from 'react';
import { useTranslation } from 'react-i18next';

const LanguageSwitcher = () => {
  const { i18n } = useTranslation();

  const changeLanguage = (lng) => {
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

log "Internationalization setup completed for $client_dir directory."

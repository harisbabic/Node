import { createGlobalStyle } from 'styled-components';

const NolocoTheme = {
  colors: {
    primary: '#0F172A',
    secondary: '#3B82F6',
    background: '#F8FAFC',
    text: '#1E293B',
  },
  fonts: {
    body: 'Inter, sans-serif',
  },
};
export default NolocoTheme;

export const GlobalStyle = createGlobalStyle`
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');

  body {
    font-family: 'Inter', sans-serif;
    background-color: #F8FAFC;
    color: #1E293B;
    margin: 0;
    padding: 0;
  }

  h1, h2, h3, h4, h5, h6 {
    color: #0F172A;
  }

  a {
    color: #3B82F6;
    text-decoration: none;
  }
`;

import React from 'react';
import styled from 'styled-components';

const DashboardWrapper = styled.div`
  display: flex;
  flex-direction: column;
  min-height: 100vh;
`;

const Header = styled.header`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const Main = styled.main`
  flex: 1;
  padding: 1rem;
`;

const Footer = styled.footer`
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.background};
`;

const DashboardLayout = ({ children }) => (
  <DashboardWrapper>
    <Header>Header</Header>
    <Main>{children}</Main>
    <Footer>Footer</Footer>
  </DashboardWrapper>
);

export default DashboardLayout;

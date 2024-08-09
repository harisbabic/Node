import styled from 'styled-components';
import { mediaQueries } from './breakpoints';

const ResponsiveWrapper = styled.div`
  padding: 1rem;
  width: 100%;
  max-width: 100%;

  ${mediaQueries.tablet} {
    padding: 2rem;
    max-width: 720px;
    margin: 0 auto;
  }

  ${mediaQueries.desktop} {
    padding: 3rem;
    max-width: 960px;
  }

  ${mediaQueries.largeDesktop} {
    max-width: 1200px;
  }
`;

export default ResponsiveWrapper;

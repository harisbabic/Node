import styled from 'styled-components';
import { mediaQueries } from '../styles/breakpoints';

const ResponsiveGrid = styled.div`
  display: grid;
  grid-template-columns: 1fr;
  gap: 1rem;

  ${mediaQueries.tablet} {
    grid-template-columns: repeat(2, 1fr);
  }

  ${mediaQueries.desktop} {
    grid-template-columns: repeat(3, 1fr);
  }

  ${mediaQueries.largeDesktop} {
    grid-template-columns: repeat(4, 1fr);
  }
`;

export default ResponsiveGrid;

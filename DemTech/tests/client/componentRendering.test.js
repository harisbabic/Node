import React from 'react';
import { render, screen } from '@testing-library/react';
import Navbar from '../client/src/components/layout/Navbar';
import { someTestUtil } from 'shared-utils/test-utils';

describe('Component Rendering Tests', () => {
  it('renders Navbar component', () => {
    render(<Navbar />);
    const linkElement = screen.getByText(/Home/i);
    expect(linkElement).toBeInTheDocument();
  });
});

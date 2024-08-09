import React from 'react';
import { render, screen } from '@testing-library/react';
import Navbar from '../../../client/src/components/layout/Navbar';
import { someTestUtil } from 'shared-utils/test-utils';

test('renders navbar links', () => {
  render(<Navbar />);
  expect(screen.getByText(/home/i)).toBeInTheDocument();
  expect(screen.getByText(/about/i)).toBeInTheDocument();
  expect(screen.getByText(/services/i)).toBeInTheDocument();
});

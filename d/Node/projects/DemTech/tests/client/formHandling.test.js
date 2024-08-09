import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import LoginForm from '../client/src/components/LoginForm';
import { someTestUtil } from 'shared-utils/test-utils';

describe('Form Handling Tests', () => {
  it('handles form submission correctly', () => {
    render(<LoginForm />);
    const input = screen.getByLabelText(/username/i);
    const submitButton = screen.getByRole('button', { name: /submit/i });

    fireEvent.change(input, { target: { value: 'testuser' } });
    fireEvent.click(submitButton);

    expect(screen.getByText(/form submitted/i)).toBeInTheDocument();
  });
});

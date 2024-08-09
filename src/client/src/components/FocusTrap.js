import React, { useRef, useEffect } from 'react';

const FocusTrap = ({ children }) => {
  const trapRef = useRef(null);

  useEffect(() => {
    const trapElement = trapRef.current;
    const focusableElements = trapElement.querySelectorAll(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    );
    const firstElement = focusableElements[0];
    const lastElement = focusableElements[focusableElements.length - 1];

    const handleKeyDown = (e) => {
      if (e.key === 'Tab') {
        if (e.shiftKey && document.activeElement === firstElement) {
          e.preventDefault();
          lastElement.focus();
        } else if (!e.shiftKey && document.activeElement === lastElement) {
          e.preventDefault();
          firstElement.focus();
        }
      }
    };

    trapElement.addEventListener('keydown', handleKeyDown);
    return () => trapElement.removeEventListener('keydown', handleKeyDown);
  }, []);

  return <div ref={trapRef}>{children}</div>;
};

export default FocusTrap;

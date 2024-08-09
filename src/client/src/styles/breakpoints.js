const sizes = {
  mobile: '576px',
  tablet: '768px',
  desktop: '1024px',
  largeDesktop: '1440px',
};

export const devices = {
  mobile: `(min-width: ${sizes.mobile})`,
  tablet: `(min-width: ${sizes.tablet})`,
  desktop: `(min-width: ${sizes.desktop})`,
  largeDesktop: `(min-width: ${sizes.largeDesktop})`,
};

export const mediaQueries = {
  mobile: `@media ${devices.mobile}`,
  tablet: `@media ${devices.tablet}`,
  desktop: `@media ${devices.desktop}`,
  largeDesktop: `@media ${devices.largeDesktop}`,
};

const sendResponse = (res, statusCode, data, message = '') => {
  res.status(statusCode).json({
    success: statusCode < 400,
    data,
    message,
  });
};

const sendError = (res, statusCode, message) => {
  res.status(statusCode).json({
    success: false,
    error: message,
  });
};

module.exports = {
  sendResponse,
  sendError,
};

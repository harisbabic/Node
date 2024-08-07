// generate-mock-data.js
const fs = require('fs');
const path = require('path');

function generateMockData(projectName, dataType, count) {
  const projectDir = path.join('/d/Node/projects', projectName, 'src/mockData');

  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir, { recursive: true });
  }

  let data;

  switch (dataType) {
    case 'users':
      data = generateUsers(count);
      break;
    case 'products':
      data = generateProducts(count);
      break;
    case 'orders':
      data = generateOrders(count);
      break;
    default:
      console.error('Invalid data type');
      return;
  }

  fs.writeFileSync(path.join(projectDir, `${dataType}.json`), JSON.stringify(data, null, 2));
  console.log(`Mock ${dataType} data generated successfully.`);
}

function generateUsers(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `User ${i + 1}`,
    email: `user${i + 1}@example.com`,
    age: Math.floor(Math.random() * 50) + 18
  }));
}

function generateProducts(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    name: `Product ${i + 1}`,
    price: parseFloat((Math.random() * 100).toFixed(2)),
    category: ['Electronics', 'Clothing', 'Books', 'Food'][Math.floor(Math.random() * 4)]
  }));
}

function generateOrders(count) {
  return Array.from({ length: count }, (_, i) => ({
    id: i + 1,
    userId: Math.floor(Math.random() * 100) + 1,
    products: Array.from({ length: Math.floor(Math.random() * 5) + 1 }, () => ({
      productId: Math.floor(Math.random() * 100) + 1,
      quantity: Math.floor(Math.random() * 5) + 1
    })),
    totalAmount: parseFloat((Math.random() * 500).toFixed(2)),
    date: new Date(Date.now() - Math.floor(Math.random() * 10000000000)).toISOString()
  }));
}

// Usage
const [,, projectName, dataType, count] = process.argv;
generateMockData(projectName, dataType, parseInt(count) || 10);

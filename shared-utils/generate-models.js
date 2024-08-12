// generate-models.js
const generateModels = () => {
    const models = [
      {
        name: 'User',
        fields: ['name', 'email', 'password', 'role']
      },
      {
        name: 'Client',
        fields: ['name', 'email', 'company', 'projects']
      },
      {
        name: 'Project',
        fields: ['name', 'description', 'client', 'tasks', 'timeline', 'budget']
      },
      {
        name: 'Task',
        fields: ['name', 'description', 'project', 'assignee', 'status', 'dueDate']
      },
      {
        name: 'TimeEntry',
        fields: ['user', 'project', 'task', 'duration', 'date']
      },
      {
        name: 'Invoice',
        fields: ['client', 'project', 'items', 'total', 'status', 'dueDate']
      },
      {
        name: 'Proposal',
        fields: ['client', 'project', 'content', 'status', 'expiryDate']
      },
      {
        name: 'Contract',
        fields: ['client', 'project', 'content', 'status', 'signatureDate']
      },
      {
        name: 'Form',
        fields: ['name', 'fields', 'responses']
      },
      {
        name: 'Expense',
        fields: ['user', 'project', 'amount', 'category', 'date']
      }
    ];

    models.forEach(model => {
      generateModelFile(model.name, model.fields);
    });
  };

  const generateModelFile = (name, fields) => {
    // Generate Mongoose schema and model
    // Save to appropriate directory
  };

  generateModels();

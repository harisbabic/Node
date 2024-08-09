import React from 'react';
import { useForm } from 'react-hook-form';

const DynamicForm = ({ fields, onSubmit }) => {
  const { register, handleSubmit, formState: { errors } } = useForm();

  const renderField = (field) => {
    switch (field.type) {
      case 'text':
      case 'email':
      case 'number':
        return (
          <input
            type={field.type}
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      case 'select':
        return (
          <select {...register(field.name, field.validation)}>
            {field.options.map((option, index) => (
              <option key={index} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        );
      case 'textarea':
        return (
          <textarea
            {...register(field.name, field.validation)}
            placeholder={field.placeholder}
          />
        );
      default:
        return null;
    }
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {fields.map((field, index) => (
        <div key={index}>
          <label>{field.label}</label>
          {renderField(field)}
          {errors[field.name] && <span>{errors[field.name].message}</span>}
        </div>
      ))}
      <button type="submit">Submit</button>
    </form>
  );
};

export default DynamicForm;

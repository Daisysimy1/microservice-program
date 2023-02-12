import React, { useState } from 'react';
import axios from 'axios';

const Customer = () => {
  const [customer, setCustomer] = useState({});

  const handleSubmit = event => {
    event.preventDefault();
    axios
      .post('/customers', customer)
      .then(res => {
        console.log(res);
      })
      .catch(err => {
        console.error(err);
      });
  };

  const handleChange = event => {
    setCustomer({ ...customer, [event.target.name]: event.target.value });
  };

  return (
    <form onSubmit={handleSubmit}>
      <div>
        <label htmlFor="first_name">First Name:</label>
        <input
          type="text"
          id="first_name"
          name="first_name"
          value={customer.first_name}
          onChange={handleChange}
        />
      </div>
      <div>
        <label htmlFor="last_name">Last Name:</label>
        <input
          type="text"
          id="last_name"
          name="last_name"
          value={customer.last_name}
          onChange={handleChange}
        />
      </div>
      <div>
        <button type="submit">Create Customer</button>
      </div>
    </form>
  );
};

export default Customer;

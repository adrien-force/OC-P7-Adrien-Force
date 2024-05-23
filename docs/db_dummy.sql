INSERT INTO employee (last_name, first_name, email, role, contract, start_date, active, password) VALUES
                                                                                                      ('Doe', 'John', 'john.doe@example.com', 1, 'Full Time', '2022-01-01', 1, 'password'),
                                                                                                      ('Smith', 'Jane', 'jane.smith@example.com', 2, 'Part Time', '2022-02-01', 1, 'password');

INSERT INTO project (name, start_date, deadline, archive) VALUES
                                                              ('Project 1', '2022-01-01', '2022-12-31', 0),
                                                              ('Project 2', '2022-02-01', '2022-12-31', 0);

INSERT INTO status (name, project_id) VALUES
                                          ('Status 1', 1),
                                          ('Status 2', 2);

INSERT INTO label (name, project_id) VALUES
                                         ('Label 1', 1),
                                         ('Label 2', 2);

INSERT INTO task (title, description, deadline, employee_id, status_id, project_id) VALUES
                                                                                        ('Task 1', 'Description for task 1', '2022-03-01', 1, 1, 1),
                                                                                        ('Task 2', 'Description for task 2', '2022-04-01', 2, 2, 2);

INSERT INTO timeslot (task_id, employee_id, start, end) VALUES
                                                            (1, 1, '2022-03-01 09:00:00', '2022-03-01 17:00:00'),
                                                            (2, 2, '2022-04-01 09:00:00', '2022-04-01 17:00:00');

INSERT INTO task_label (task_id, label_id) VALUES
                                               (1, 1),
                                               (2, 2);

INSERT INTO project_employee (project_id, employee_id) VALUES
                                                           (1, 1),
                                                           (2, 2);
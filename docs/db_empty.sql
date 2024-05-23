CREATE TABLE employee (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          last_name VARCHAR(255),
                          first_name VARCHAR(255),
                          email VARCHAR(255),
                          role INT,
                          contract VARCHAR(255),
                          start_date DATE,
                          active TINYINT,
                          password VARCHAR(255)
);

CREATE TABLE project (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(255),
                         start_date DATE,
                         deadline DATE,
                         archive TINYINT
);

CREATE TABLE status (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(255),
                        project_id INT,
                        FOREIGN KEY (project_id) REFERENCES project(id)
);

CREATE TABLE label (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(255),
                       project_id INT,
                       FOREIGN KEY (project_id) REFERENCES project(id)
);

CREATE TABLE task (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      title VARCHAR(255),
                      description TEXT,
                      deadline DATE,
                      employee_id INT,
                      status_id INT,
                      project_id INT,
                      FOREIGN KEY (employee_id) REFERENCES employee(id),
                      FOREIGN KEY (status_id) REFERENCES status(id),
                      FOREIGN KEY (project_id) REFERENCES project(id)
);

CREATE TABLE timeslot (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          task_id INT,
                          employee_id INT,
                          start DATETIME,
                          end DATETIME,
                          FOREIGN KEY (task_id) REFERENCES task(id),
                          FOREIGN KEY (employee_id) REFERENCES employee(id)
);

CREATE TABLE task_label (
                            task_id INT,
                            label_id INT,
                            PRIMARY KEY (task_id, label_id),
                            FOREIGN KEY (task_id) REFERENCES task(id),
                            FOREIGN KEY (label_id) REFERENCES label(id)
);

CREATE TABLE project_employee (
                                  project_id INT,
                                  employee_id INT,
                                  PRIMARY KEY (project_id, employee_id),
                                  FOREIGN KEY (project_id) REFERENCES project(id),
                                  FOREIGN KEY (employee_id) REFERENCES employee(id)
);

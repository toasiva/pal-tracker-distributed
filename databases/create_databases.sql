DROP DATABASE IF EXISTS tracker_allocations_dev;
DROP DATABASE IF EXISTS tracker_backlog_dev;
DROP DATABASE IF EXISTS tracker_registration_dev;
DROP DATABASE IF EXISTS tracker_timesheets_dev;
DROP DATABASE IF EXISTS tracker_allocations_test;
DROP DATABASE IF EXISTS tracker_backlog_test;
DROP DATABASE IF EXISTS tracker_registration_test;
DROP DATABASE IF EXISTS tracker_timesheets_test;

CREATE USER IF NOT EXISTS 'tracker'@'localhost'
  identified by '';
GRANT ALL PRIVILEGES ON *.* TO 'tracker' @'localhost';

CREATE DATABASE tracker_allocations_dev;
CREATE DATABASE tracker_backlog_dev;
CREATE DATABASE tracker_registration_dev;
CREATE DATABASE tracker_timesheets_dev;
CREATE DATABASE tracker_allocations_test;
CREATE DATABASE tracker_backlog_test;
CREATE DATABASE tracker_registration_test;
CREATE DATABASE tracker_timesheets_test;

TRUNC tracker_allocations_dev.allocations;
TRUNC tracker_backlog_dev.stories;
TRUNC tracker_registration_dev.users;
TRUNC tracker_registration_dev.accounts;
TRUNC tracker_registration_dev.projects;
TRUNC tracker_timesheets_dev.time_entries;

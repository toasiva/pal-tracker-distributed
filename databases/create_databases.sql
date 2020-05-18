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

TRUNCATE table tracker_allocations_dev.allocations;
TRUNCATE table tracker_backlog_dev.stories;
TRUNCATE table tracker_registration_dev.users;
TRUNCATE table tracker_registration_dev.accounts;
TRUNCATE table tracker_registration_dev.projects;
TRUNCATE table tracker_timesheets_dev.time_entries;

-- SQL script to create an index idx_name_first on the first letter of name in the names table

CREATE INDEX idx_name_first
ON names(name(1));
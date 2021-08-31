USE hw-3;
ALTER TABLE developers ADD COLUMN salary DECIMAL;
UPDATE developers SET salary = 500 WHERE (id_developer = 1);
UPDATE developers SET salary = 550 WHERE (id_developer = 2);
UPDATE developers SET salary = 600 WHERE (id_developer = 3);
DROP TABLE band;

ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer CHANGE musicianName singerName VARCHAR(50);
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

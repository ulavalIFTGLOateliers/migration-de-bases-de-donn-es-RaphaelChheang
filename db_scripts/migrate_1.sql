CREATE TABLE band (
    bandName VARCHAR(50),
    creation YEAR,
    genre VARCHAR(50),
    PRIMARY KEY (bandName)
);

INSERT INTO band (bandName, creation, genre) VALUES
('Crazy Duo', 2015, 'rock'),
('Luna', 2009, 'classical'),
('Mysterio', 2019, 'pop');

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician CHANGE singerName musicianName VARCHAR(50);
ALTER TABLE musician ADD COLUMN role VARCHAR(50);
ALTER TABLE musician ADD COLUMN bandName VARCHAR(50);

UPDATE musician m SET m.role = 'vocals' WHERE m.musicianName = 'Alina';
UPDATE musician m SET m.bandName = 'Crazy Duo' WHERE m.musicianName = 'Alina';
UPDATE musician m SET m.role = 'guitar' WHERE m.musicianName = 'Mysterio';
UPDATE musician m SET m.bandName = 'Mysterio' WHERE m.musicianName = 'Mysterio';
UPDATE musician m SET m.role = 'percussion' WHERE m.musicianName = 'Rainbow';
UPDATE musician m SET m.bandName = 'Crazy Duo' WHERE m.musicianName = 'Rainbow';
UPDATE musician m SET m.role = 'piano' WHERE m.musicianName = 'Luna';
UPDATE musician m SET m.bandName = 'Luna' WHERE m.musicianName = 'Luna';
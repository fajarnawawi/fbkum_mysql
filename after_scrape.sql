#Pivot Tabel mengombinasikan tabel export dan title
CREATE TABLE fbkum.final
SELECT `web-scraper-start-url`, title
FROM fbkum.title
RIGHT OUTER JOIN fbkum.export
ON title.`web-scraper-start-url`= export.Permalink ;

#Menambahkan kolom url_tags & story id
ALTER TABLE fbkum.final ADD COLUMN url_tags text;
ALTER TABLE fbkum.final ADD COLUMN story_id text;

#Mengisi kolom url_tags yang telah dibuat tadi
UPDATE fbkum.final 
SET url_tags = "utm_campaign=boost"
WHERE url_tags is null;

#Mengisi kolom story_id yang telah dibuat tadi
UPDATE fbkum.final 
SET story_id = CONCAT("s:",right(`web-scraper-start-url`,16))
WHERE story_id is null;

SELECT * FROM fbkum.final;
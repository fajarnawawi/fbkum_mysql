#Overwrite kolom CTR (gunakan saat mengulang proses)
#ALTER TABLE fbkum.insight DROP COLUMN CTR;

#Menambahkan kolom CTR di tabel
ALTER TABLE fbkum.insight ADD COLUMN CTR float4;

#Mengubah null di kolom link click ke nilai 0
UPDATE fbkum.insight SET `Lifetime Post Consumptions by type - link clicks` = 0 where `Lifetime Post Consumptions by type - link clicks`="";

#Mengubah tipe numerik link clicks ke tipe int
Alter TABLE fbkum.insight MODIFY COLUMN `Lifetime Post Consumptions by type - link clicks` int;

#Mengisi kolom CTR = link cliks/impressions
UPDATE fbkum.insight 
SET CTR = `Lifetime Post Consumptions by type - link clicks`/`Lifetime Post Organic Impressions`
WHERE CTR is null;

#Membuat tabel baru untuk webscraping
DROP TABLE fbkum.export;
CREATE TABLE fbkum.export
SELECT Permalink
FROM fbkum.insight
WHERE Type="Link" AND CTR > 0.02 AND `Lifetime Post Paid Reach` = 0 AND `Lifetime Post Total Reach` > 8000
ORDER BY CTR DESC;

#Menampilkan semua data di tabel export
SELECT * FROM fbkum.export;

#Menampilkan semua data di tabel insight
SELECT * FROM fbkum.insight;

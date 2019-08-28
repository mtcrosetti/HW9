-- 3A --
ALTER TABLE actor
	ADD COLUMN description BLOB;

-- 3B --
ALTER TABLE actor
	DROP COLUMN description;
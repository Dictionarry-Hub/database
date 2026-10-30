-- @operation: export
-- @entity: batch
-- @name: Remove Negations from Theatrical CF
-- @exportedAt: 2026-10-30T03:16:16.679Z
-- @opIds: 15528, 15529, 15530, 15531, 15532, 15533, 15534, 15535, 15536, 15537, 15538, 15539, 15540

-- --- BEGIN op 15528 ( update custom_format "Theatrical" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Theatrical'
	  AND name = 'Not Extended Clip'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15528

-- --- BEGIN op 15529 ( update custom_format "Theatrical" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Theatrical'
	  AND name = 'Not IMAX'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15529

-- --- BEGIN op 15530 ( update custom_format "Theatrical" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Theatrical'
	  AND name = 'Not Open Matte'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15530

-- --- BEGIN op 15531 ( update custom_format "Theatrical" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Theatrical'
	  AND name = 'Not Sing Along'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15531

-- --- BEGIN op 15532 ( update custom_format "Theatrical" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Theatrical'
	  AND name = 'Not Special Edition'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15532

-- --- BEGIN op 15533 ( update custom_format "Theatrical" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Theatrical'
  AND name = 'Theatrical'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 15533

-- --- BEGIN op 15534 ( update regular_expression "Theatrical Edition" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(Theatrical)\b' where "name" = 'Theatrical Edition' and "pattern" = '(?<=\b[12]\d{3}\b).*\b(Theatrical)(\b|\d)';
-- --- END op 15534

-- --- BEGIN op 15535 ( update regular_expression "Extended Edition" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(Extended)\b' where "name" = 'Extended Edition' and "pattern" = '(?<=\b[12]\d{3}\b).*\b(Extended)(\b|\d)';
-- --- END op 15535

-- --- BEGIN op 15536 ( update regular_expression "CAM" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b((AC3)?(LD|MD)|CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|(LINE|MIC)[ ._-]?DUBBED|SCREENER|(TC|TS)(Rip)?|TELE(CINE|SYNC)|WORKPRINT)\b' where "name" = 'CAM' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b((AC3)?(LD|MD)|CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|(LINE|MIC)[ ._-]?DUBBED|SCREENER|(TC|TS)(Rip)?|TELE(CINE|SYNC)|WORKPRINT)\b)';
-- --- END op 15536

-- --- BEGIN op 15537 ( update regular_expression "Movie Extras" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b' where "name" = 'Movie Extras' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b)';
-- --- END op 15537

-- --- BEGIN op 15538 ( update regular_expression "Movie Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b' where "name" = 'Movie Upscale' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b)';
-- --- END op 15538

-- --- BEGIN op 15539 ( update regular_expression "QxR (Radarr)" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b' where "name" = 'QxR (Radarr)' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)';
-- --- END op 15539

-- --- BEGIN op 15540 ( update regular_expression "TAoE (Radarr)" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b' where "name" = 'TAoE (Radarr)' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)';
-- --- END op 15540

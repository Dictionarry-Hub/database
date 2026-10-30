-- @operation: export
-- @entity: batch
-- @name: Remove Capture Group in some regex
-- @exportedAt: 2026-10-30T03:22:13.988Z
-- @opIds: 15542, 15543, 15544, 15545

-- --- BEGIN op 15542 ( update regular_expression "QxR (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b' where "name" = 'QxR (Sonarr)' and "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(QxR|afm72|Bandi|Bluespots|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b)';
-- --- END op 15542

-- --- BEGIN op 15543 ( update regular_expression "TAoE (Sonarr)" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b' where "name" = 'TAoE (Sonarr)' and "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b)';
-- --- END op 15543

-- --- BEGIN op 15544 ( update regular_expression "TV Extras" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b' where "name" = 'TV Extras' and "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b)';
-- --- END op 15544

-- --- BEGIN op 15545 ( update regular_expression "TV Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b' where "name" = 'TV Upscale' and "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b)';
-- --- END op 15545

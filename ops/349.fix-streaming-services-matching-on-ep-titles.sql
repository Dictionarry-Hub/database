-- @operation: export
-- @entity: batch
-- @name: Fix Streaming Services matching on Ep Titles
-- @exportedAt: 2026-09-11T14:47:39.948Z
-- @opIds: 14413, 14414, 14415, 14416, 14417, 14418

-- --- BEGIN op 14413 ( update regular_expression "Now" )
update "regular_expressions" set "regex101_id" = 'sZxjuw/3' where "name" = 'Now' and "regex101_id" is null;
-- --- END op 14413

-- --- BEGIN op 14414 ( update regular_expression "Now" )
update "regular_expressions" set "pattern" = '\bNOW[ ._-]WEB[ ._-]?(DL|RIP)\b|\[[^\]]*\bNOW\b[^\]]*\]' where "name" = 'Now' and "pattern" = '\b(NOW)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 14414

-- --- BEGIN op 14415 ( update regular_expression "Google TV" )
update "regular_expressions" set "pattern" = '\bPLAY[ ._-]WEB[ ._-]?(DL|RIP)\b|\[[^\]]*\bPLAY\b[^\]]*\]' where "name" = 'Google TV' and "pattern" = '\b(PLAY)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 14415

-- --- BEGIN op 14416 ( update regular_expression "iTunes" )
update "regular_expressions" set "pattern" = '\b(iT(unes)?)[ ._-]WEB[ ._-]?(DL|RIP)\b|\[[^\]]*\biT\b[^\]]*\]' where "name" = 'iTunes' and "pattern" = '\b(iT(unes)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 14416

-- --- BEGIN op 14417 ( update regular_expression "Showtime" )
update "regular_expressions" set "pattern" = '\b(SHO(WTIME)?)[ ._-]WEB[ ._-]?(DL|RIP)\b|\[[^\]]*\bSHO\b[^\]]*\]' where "name" = 'Showtime' and "pattern" = '\b(SHO(WTIME)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 14417

-- --- BEGIN op 14418 ( update regular_expression "Max" )
update "regular_expressions" set "pattern" = '\b((?<!HBO[ ._-])MAX)[ ._-]WEB[ ._-]?(DL|RIP)\b|\[[^\]]*\bMAX\b[^\]]*\]' where "name" = 'Max' and "pattern" = '\b((?<!HBO[ ._-]+)MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 14418

-- @operation: export
-- @entity: batch
-- @name: Update Movie Upscale Regex
-- @exportedAt: 2026-08-27T20:47:33.349Z
-- @opIds: 13796, 13797, 13798, 13799, 13800, 13801, 13802, 13803, 13804, 13805

-- --- BEGIN op 13796 ( update regular_expression "Max" )
update "regular_expressions" set "pattern" = '\b(MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Max' and "pattern" = '\b((?<!HBO[ ._-])MAX)\b(?=[ ._-]WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13796

-- --- BEGIN op 13797 ( update regular_expression "Max" )
update "regular_expressions" set "pattern" = '\b((?<!HBO[ ._-])MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Max' and "pattern" = '\b(MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13797

-- --- BEGIN op 13798 ( update regular_expression "Max" )
update "regular_expressions" set "pattern" = '\b((?<!HBO[ ._-]+)MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'Max' and "pattern" = '\b((?<!HBO[ ._-])MAX)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)';
-- --- END op 13798

-- --- BEGIN op 13799 ( update regular_expression "AI Movie Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scaled?|Re[ ._-]?Graded?|Topaz[ ._-]?Enhanced)\b)' where "name" = 'AI Movie Upscale' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI)\b)';
-- --- END op 13799

-- --- BEGIN op 13800 ( update custom_format "Upscale" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Upscale'
  AND name = 'Upscale'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 13800

-- --- BEGIN op 13801 ( update regular_expression "Movie Upscale" )
update "regular_expressions" set "name" = 'Movie Upscale' where "name" = 'AI Movie Upscale';
-- --- END op 13801

-- --- BEGIN op 13802 ( update custom_format "Upscale" )
update "condition_patterns" set "regular_expression_name" = 'Movie Upscale' where "custom_format_name" = 'Upscale' and "condition_name" = 'AI Movies Upscale' and "regular_expression_name" in ('AI Movie Upscale', 'Movie Upscale');
-- --- END op 13802

-- --- BEGIN op 13803 ( update custom_format "Upscale" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Upscale'
  AND name = 'AI Movies Upscale'
  AND type = 'release_title'
  AND arr_type = 'radarr'
  AND negate = 0
  AND required = 0;
-- --- END op 13803

-- --- BEGIN op 13804 ( update custom_format "Upscale" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Upscale'
	  AND name = 'AI Movies Upscale'
	  AND type = 'release_title'
	  AND arr_type = 'radarr'
	  AND negate = 0
	  AND required = 1;
-- --- END op 13804

-- --- BEGIN op 13805 ( update custom_format "Upscale" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscale', 'Movie Upscale', 'release_title', 'radarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscale', 'Movie Upscale', 'Movie Upscale');
-- --- END op 13805

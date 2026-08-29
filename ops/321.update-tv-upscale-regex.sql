-- @operation: export
-- @entity: batch
-- @name: Update TV Upscale Regex
-- @exportedAt: 2026-08-29T16:37:13.294Z
-- @opIds: 14164, 14165, 14166, 14167, 14168, 14169

-- --- BEGIN op 14164 ( update regular_expression "AI TV Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scaled?|Re[ ._-]?Graded?|Topaz[ ._-]?Enhanced)\b)' where "name" = 'AI TV Upscale' and "pattern" = '(?<=\bS\d+\b).*(\b(AI)\b)';
-- --- END op 14164

-- --- BEGIN op 14165 ( update regular_expression "TV Upscale" )
update "regular_expressions" set "name" = 'TV Upscale' where "name" = 'AI TV Upscale';
-- --- END op 14165

-- --- BEGIN op 14166 ( update custom_format "Upscale" )
update "condition_patterns" set "regular_expression_name" = 'TV Upscale' where "custom_format_name" = 'Upscale' and "condition_name" = 'AI TV Upscale' and "regular_expression_name" in ('AI TV Upscale', 'TV Upscale');
-- --- END op 14166

-- --- BEGIN op 14167 ( update custom_format "Upscale" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Upscale'
	  AND name = 'AI TV Upscale'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14167

-- --- BEGIN op 14168 ( update custom_format "Upscale" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Upscale'
	  AND name = 'Upscale'
	  AND type = 'release_title'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 14168

-- --- BEGIN op 14169 ( update custom_format "Upscale" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Upscale', 'TV Upscale', 'release_title', 'sonarr', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscale', 'TV Upscale', 'TV Upscale');
-- --- END op 14169

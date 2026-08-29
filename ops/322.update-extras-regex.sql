-- @operation: export
-- @entity: batch
-- @name: Update Extras Regex
-- @exportedAt: 2026-08-29T16:44:53.237Z
-- @opIds: 14171, 14172, 14173, 14174, 14175

-- --- BEGIN op 14171 ( delete regular_expression "Upscale" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Upscale' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Upscale' AND tag_name = 'Enhancement';

delete from "regular_expressions" where "name" = 'Upscale';
-- --- END op 14171

-- --- BEGIN op 14172 ( update regular_expression "Movie Extras" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b)' where "name" = 'Movie Extras' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b';
-- --- END op 14172

-- --- BEGIN op 14173 ( update regular_expression "TV Extras" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b)' where "name" = 'TV Extras' and "pattern" = '(?<=\bS\d+\b).*\b(Extra(s)?|Bonus|Deleted[ ._-]Scene(s)?|Extended[ ._-]Clip)\b';
-- --- END op 14173

-- --- BEGIN op 14174 ( update regular_expression "Movie Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b)' where "name" = 'Movie Upscale' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scaled?|Re[ ._-]?Graded?|Topaz[ ._-]?Enhanced)\b)';
-- --- END op 14174

-- --- BEGIN op 14175 ( update regular_expression "TV Upscale" )
update "regular_expressions" set "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scale(d)?|Re[ ._-]?Grade(d)?|Topaz[ ._-]?Enhanced)\b)' where "name" = 'TV Upscale' and "pattern" = '(?<=\b(?:S\d{1,3}|\d{3,4}p)\b).*(\b(AI(US)?[ ._-]?(Enhanced)?|Up[ ._-]?scaled?|Re[ ._-]?Graded?|Topaz[ ._-]?Enhanced)\b)';
-- --- END op 14175

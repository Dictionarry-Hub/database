-- @operation: export
-- @entity: batch
-- @name: Tweak
-- @exportedAt: 2026-08-29T00:00:58.856Z
-- @opIds: 14161, 14162

-- --- BEGIN op 14161 ( update regular_expression "Movie Extras" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip(s)?|Special[ ._-]?Feature(s)?)\b' where "name" = 'Movie Extras' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip|Special[ ._-]?Feature(s)?)\b';
-- --- END op 14161

-- --- BEGIN op 14162 ( update regular_expression "Extended Clip" )
update "regular_expressions" set "pattern" = '\bExtended[ ._-]?Clip(s)?\b' where "name" = 'Extended Clip' and "pattern" = '\bExtended[ ._-]?Clip\b';
-- --- END op 14162

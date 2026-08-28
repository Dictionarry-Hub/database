-- @operation: export
-- @entity: batch
-- @name: Tweak Movie Extra
-- @exportedAt: 2026-08-28T23:58:25.902Z
-- @opIds: 14159

-- --- BEGIN op 14159 ( update regular_expression "Movie Extras" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]?Scene(s)?|Extended[ ._-]?Clip|Special[ ._-]?Feature(s)?)\b' where "name" = 'Movie Extras' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]Scene(s)?|Extended[ ._-]Clip|Special[ ._-]Feature(s)?)\b';
-- --- END op 14159

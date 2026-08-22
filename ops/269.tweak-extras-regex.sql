-- @operation: export
-- @entity: batch
-- @name: Tweak Extras Regex
-- @exportedAt: 2026-08-22T16:42:23.266Z
-- @opIds: 13410, 13411

-- --- BEGIN op 13410 ( update regular_expression "Movie Extras" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extra(s)?|Bonus|Deleted[ ._-]Scene(s)?|Extended[ ._-]Clip|Special[ ._-]Feature(s)?)\b' where "name" = 'Movie Extras' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b|\.)\b(Extras?|Bonus|Extended[ ._-]Clip|Special Feature[s]?)\b';
-- --- END op 13410

-- --- BEGIN op 13411 ( update regular_expression "TV Extras" )
update "regular_expressions" set "pattern" = '(?<=\bS\d+\b).*\b(Extra(s)?|Bonus|Deleted[ ._-]Scene(s)?|Extended[ ._-]Clip)\b' where "name" = 'TV Extras' and "pattern" = '(?<=\bS\d+\b).*\b(Extras|Bonus|Extended[ ._-]Clip)\b';
-- --- END op 13411

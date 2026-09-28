-- @operation: export
-- @entity: batch
-- @name: Update E Regex
-- @exportedAt: 2026-09-28T00:26:42.896Z
-- @opIds: 14623

-- --- BEGIN op 14623 ( update regular_expression "E" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])E(?![.\w])' where "name" = 'E' and "pattern" = '(?<=^|[\s.-])E\b';
-- --- END op 14623

-- @operation: export
-- @entity: batch
-- @name: Update iP Regex
-- @exportedAt: 2026-08-28T18:16:57.866Z
-- @opIds: 13822

-- --- BEGIN op 13822 ( update regular_expression "BBC iPlayer" )
update "regular_expressions" set "pattern" = '\b(iP(layer)?)(?=[\W_]+WEB[ ._-]?(DL|RIP)\b)' where "name" = 'BBC iPlayer' and "pattern" = '\b(iP)\b';
-- --- END op 13822

-- @operation: export
-- @entity: batch
-- @name: Tweak German DL Regex
-- @exportedAt: 2026-10-30T19:16:31.915Z
-- @opIds: 15573

-- --- BEGIN op 15573 ( update regular_expression "German DL" )
update "regular_expressions" set "pattern" = '(?=.*\bGERMAN\b)(?=.*\b(?<!WEB[ ._-])[DM]L\b).*' where "name" = 'German DL' and "pattern" = '(?=.*\bGERMAN\b)(?=.*\b(?<!WEB-)[DM]L\b).*';
-- --- END op 15573

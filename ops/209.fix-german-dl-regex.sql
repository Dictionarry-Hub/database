-- @operation: export
-- @entity: batch
-- @name: Fix German DL Regex
-- @exportedAt: 2026-08-01T06:31:01.597Z
-- @opIds: 12551

-- --- BEGIN op 12551 ( update regular_expression "German DL" )
update "regular_expressions" set "pattern" = '(?=.*\bGERMAN\b)(?=.*\b(?<!WEB-)[DM]L\b).*' where "name" = 'German DL' and "pattern" = '(?=.*\bGERMAN\b)(?=.*\b[DM]L\b).*';
-- --- END op 12551

-- @operation: export
-- @entity: batch
-- @name: Add Capture Group to Atmos Regex
-- @exportedAt: 2026-10-30T20:11:46.934Z
-- @opIds: 15575

-- --- BEGIN op 15575 ( update regular_expression "Atmos" )
update "regular_expressions" set "pattern" = '\b(ATMOS|DDPA)(\b|\d)' where "name" = 'Atmos' and "pattern" = '\bATMOS|DDPA(\b|\d)';
-- --- END op 15575

-- @operation: export
-- @entity: batch
-- @name: Include 540p in 576p Regex
-- @exportedAt: 2026-10-26T23:41:23.356Z
-- @opIds: 15500

-- --- BEGIN op 15500 ( update regular_expression "576p" )
update "regular_expressions" set "pattern" = '\b(540p|576p)\b' where "name" = '576p' and "pattern" = '\b(576p)\b';
-- --- END op 15500

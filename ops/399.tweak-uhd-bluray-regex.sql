-- @operation: export
-- @entity: batch
-- @name: Tweak UHD Bluray Regex
-- @exportedAt: 2026-10-31T23:48:15.316Z
-- @opIds: 15577, 15578

-- --- BEGIN op 15577 ( update regular_expression "UHD Bluray" )
update "regular_expressions" set "pattern" = '\bUHD[ ._-]?Blu[-]?Ray\b' where "name" = 'UHD Bluray' and "pattern" = '\bUHD[-_.\s]?Blu[-]?Ray\b';
-- --- END op 15577

-- --- BEGIN op 15578 ( update regular_expression "UHD Bluray (Efficient)" )
update "regular_expressions" set "pattern" = '\bUHD[ ._-]?(Blu[-]?Ray|BD?Rip)\b' where "name" = 'UHD Bluray (Efficient)' and "pattern" = '\b(UHD[-_.\s]?Blu[-]?Ray)|(UHD[-_.\s]?BD?Rip)\b';
-- --- END op 15578

-- @operation: export
-- @entity: batch
-- @name: Add DCP/RIP to CAM Regex
-- @exportedAt: 2026-08-20T19:32:12.244Z
-- @opIds: 13290

-- --- BEGIN op 13290 ( update regular_expression "CAM" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|SCREENER|TELE(CINE|SYNC)|WORKPRINT)\b)' where "name" = 'CAM' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(CAM[ ._-]?(Rip)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|SCREENER|TELE(CINE|SYNC)|WORKPRINT)\b)';
-- --- END op 13290

-- @operation: export
-- @entity: batch
-- @name: Add more variations to CAM Regex
-- @exportedAt: 2026-08-23T17:31:38.188Z
-- @opIds: 13480, 13481

-- --- BEGIN op 13480 ( update regular_expression "CAM" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b(CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|SCREENER|(TC|TS)(Rip)?|TELE(CINE|SYNC)|WORKPRINT)\b)' where "name" = 'CAM' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|SCREENER|TELE(CINE|SYNC)|WORKPRINT)\b)';
-- --- END op 13480

-- --- BEGIN op 13481 ( update regular_expression "CAM" )
update "regular_expressions" set "pattern" = '(?<=\b[12]\d{3}\b).*(\b((AC3)?(LD|MD)|CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|(LINE|MIC)[ ._-]?DUBBED|SCREENER|(TC|TS)(Rip)?|TELE(CINE|SYNC)|WORKPRINT)\b)' where "name" = 'CAM' and "pattern" = '(?<=\b[12]\d{3}\b).*(\b(CAM[ ._-]?(Rip)?|DCP(RIP)?|DVD[ ._-]?(SCR(EENER)?)|HD[ ._-]?(CAM|SCR|TC|TS)|SCREENER|(TC|TS)(Rip)?|TELE(CINE|SYNC)|WORKPRINT)\b)';
-- --- END op 13481

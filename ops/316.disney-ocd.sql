-- @operation: export
-- @entity: batch
-- @name: Disney OCD
-- @exportedAt: 2026-08-28T18:34:44.248Z
-- @opIds: 13824

-- --- BEGIN op 13824 ( update regular_expression "Disney+" )
update "regular_expressions" set "pattern" = '\b(DSNP|DSNY(P)?|Disney\+)\s*\b' where "name" = 'Disney+' and "pattern" = '\b(dsnp|dsny(p)?|disney\+)\s*\b';
-- --- END op 13824

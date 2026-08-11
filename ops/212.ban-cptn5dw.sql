-- @operation: export
-- @entity: batch
-- @name: Ban CPTN5DW
-- @exportedAt: 2026-08-11T21:56:14.364Z
-- @opIds: 12794, 12795, 12796

-- --- BEGIN op 12794 ( create regular_expression "CPTN5DW" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CPTN5DW', '(?<=^|[\s.-])4kHdHub\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CPTN5DW', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CPTN5DW', 'WEB-DL');
-- --- END op 12794

-- --- BEGIN op 12795 ( update regular_expression "CPTN5DW" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])CPTN5DW\b' where "name" = 'CPTN5DW' and "pattern" = '(?<=^|[\s.-])4kHdHub\b';
-- --- END op 12795

-- --- BEGIN op 12796 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', 'CPTN5DW', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', 'CPTN5DW', 'CPTN5DW');
-- --- END op 12796

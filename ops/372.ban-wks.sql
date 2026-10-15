-- @operation: export
-- @entity: batch
-- @name: BAN WKS
-- @exportedAt: 2026-10-15T16:21:57.794Z
-- @opIds: 14756, 14757, 14758, 14759, 14760, 14761, 14762, 14763

-- --- BEGIN op 14756 ( update regular_expression "jff" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])JFF\b' where "name" = 'jff' and "pattern" = '(?<=^|[\s.-])jff\b';
-- --- END op 14756

-- --- BEGIN op 14757 ( update regular_expression "bob" )
update "regular_expressions" set "name" = 'bob' where "name" = 'jff';
-- --- END op 14757

-- --- BEGIN op 14758 ( update custom_format "Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'bob' where "custom_format_name" = 'Banned Groups' and "condition_name" = 'jff' and "regular_expression_name" in ('jff', 'bob');
-- --- END op 14758

-- --- BEGIN op 14759 ( update regular_expression "JFF" )
update "regular_expressions" set "name" = 'JFF' where "name" = 'bob';
-- --- END op 14759

-- --- BEGIN op 14760 ( update custom_format "Banned Groups" )
update "condition_patterns" set "regular_expression_name" = 'JFF' where "custom_format_name" = 'Banned Groups' and "condition_name" = 'jff' and "regular_expression_name" in ('bob', 'JFF');
-- --- END op 14760

-- --- BEGIN op 14761 ( create regular_expression "WKS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WKS', '(?<=^|[\s.-])4kHdHub\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WKS', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WKS', 'WEB-DL');
-- --- END op 14761

-- --- BEGIN op 14762 ( update regular_expression "WKS" )
update "regular_expressions" set "description" = 'Generated DV' where "name" = 'WKS' and "description" is null;
-- --- END op 14762

-- --- BEGIN op 14763 ( update regular_expression "WKS" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])WKS\b' where "name" = 'WKS' and "pattern" = '(?<=^|[\s.-])4kHdHub\b';
-- --- END op 14763

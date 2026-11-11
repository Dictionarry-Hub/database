-- @operation: export
-- @entity: batch
-- @name: Add FIEND to WEB-DL Tier 3
-- @exportedAt: 2026-11-11T23:49:18.154Z
-- @opIds: 15611, 15612, 15613

-- --- BEGIN op 15611 ( create regular_expression "FIEND" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FIEND', '(?<=^|[\s.-])ABM\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FIEND', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FIEND', 'WEB-DL');
-- --- END op 15611

-- --- BEGIN op 15612 ( update regular_expression "FIEND" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])FIEND\b' where "name" = 'FIEND' and "pattern" = '(?<=^|[\s.-])ABM\b';
-- --- END op 15612

-- --- BEGIN op 15613 ( update custom_format "WEB-DL Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL Tier 3', 'FIEND', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL Tier 3', 'FIEND', 'FIEND');
-- --- END op 15613

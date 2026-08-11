-- @operation: export
-- @entity: batch
-- @name: Ban 4kHdHub
-- @exportedAt: 2026-08-11T21:54:24.091Z
-- @opIds: 12790, 12791, 12792

-- --- BEGIN op 12790 ( create regular_expression "4kHdHub" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('4kHdHub', '(?<=^|[\s.-])AJP69\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4kHdHub', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('4kHdHub', 'WEB-DL');
-- --- END op 12790

-- --- BEGIN op 12791 ( update regular_expression "4kHdHub" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])4kHdHub\b' where "name" = '4kHdHub' and "pattern" = '(?<=^|[\s.-])AJP69\b';
-- --- END op 12791

-- --- BEGIN op 12792 ( update custom_format "Banned Language Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Language Groups', '4kHdHub', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Language Groups', '4kHdHub', '4kHdHub');
-- --- END op 12792

-- @operation: export
-- @entity: batch
-- @name: Ban Nostromo for Upscales
-- @exportedAt: 2026-09-24T07:43:58.467Z
-- @opIds: 14466, 14467, 14468, 14469

-- --- BEGIN op 14466 ( create regular_expression "Nostromo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Nostromo', '(?<=^|[\s.-])4kHdHub\b', NULL, NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nostromo', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Nostromo', 'WEB-DL');
-- --- END op 14466

-- --- BEGIN op 14467 ( update regular_expression "Nostromo" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])Nostromo\b' where "name" = 'Nostromo' and "pattern" = '(?<=^|[\s.-])4kHdHub\b';
-- --- END op 14467

-- --- BEGIN op 14468 ( update regular_expression "Nostromo" )
update "regular_expressions" set "description" = 'Banned for Upscale' where "name" = 'Nostromo' and "description" is null;
-- --- END op 14468

-- --- BEGIN op 14469 ( update custom_format "Banned Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Groups', 'Nostromo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Groups', 'Nostromo', 'Nostromo');
-- --- END op 14469

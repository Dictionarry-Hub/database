-- @operation: export
-- @entity: batch
-- @name: Add SWEY to WEB-DL Tier 3
-- @exportedAt: 2026-11-23T20:48:29.689Z
-- @opIds: 15665, 15666, 15667

-- --- BEGIN op 15665 ( create regular_expression "SWEY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SWEY', '(?<=^|[\s.-])126811\b', 'Matches the release group `126811` only if it is:

- Preceded by the start of the string (`^`), a whitespace character (`\s`), a period (`.`), or a hyphen (`-`).
- Followed by a word boundary (`\b`), ensuring it ends cleanly without being part of a longer word.', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SWEY', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SWEY', 'WEB-DL');
-- --- END op 15665

-- --- BEGIN op 15666 ( update regular_expression "SWEY" )
update "regular_expressions" set "pattern" = '(?<=^|[\s.-])SWEY\b' where "name" = 'SWEY' and "pattern" = '(?<=^|[\s.-])126811\b';
-- --- END op 15666

-- --- BEGIN op 15667 ( update custom_format "WEB-DL Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB-DL Tier 3', 'SWEY', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB-DL Tier 3', 'SWEY', 'SWEY');
-- --- END op 15667

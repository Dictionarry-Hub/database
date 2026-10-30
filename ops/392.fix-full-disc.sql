-- @operation: export
-- @entity: batch
-- @name: Fix Full Disc
-- @exportedAt: 2026-10-30T00:08:54.465Z
-- @opIds: 15507, 15508, 15509, 15510, 15511, 15512

-- --- BEGIN op 15507 ( create regular_expression "AVC (Full Disc)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('AVC (Full Disc)', '[xh][ ._-]?264|\bAVC(\b|\d)', 'An open source encoder that produces AVC videos. ', NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AVC (Full Disc)', 'Codec');

insert into "tags" ("name") values ('Encoder') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('AVC (Full Disc)', 'Encoder');
-- --- END op 15507

-- --- BEGIN op 15508 ( update regular_expression "AVC (Full Disc)" )
update "regular_expressions" set "pattern" = '[xh][ ._-]?264' where "name" = 'AVC (Full Disc)' and "pattern" = '[xh][ ._-]?264|\bAVC(\b|\d)';
-- --- END op 15508

-- --- BEGIN op 15509 ( create regular_expression "HEVC (Full Disc)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HEVC (Full Disc)', '[xh][ ._-]?265|\bHEVC(\b|\d)', 'An open source encoder that produces HEVC videos. ', NULL);

insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HEVC (Full Disc)', 'Codec');

insert into "tags" ("name") values ('Encoder') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HEVC (Full Disc)', 'Encoder');
-- --- END op 15509

-- --- BEGIN op 15510 ( update regular_expression "HEVC (Full Disc)" )
update "regular_expressions" set "pattern" = '[xh][ ._-]?265' where "name" = 'HEVC (Full Disc)' and "pattern" = '[xh][ ._-]?265|\bHEVC(\b|\d)';
-- --- END op 15510

-- --- BEGIN op 15511 ( update custom_format "Full Disc" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Full Disc' AND condition_name = 'Not AVC' AND regular_expression_name = 'AVC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not AVC', 'AVC (Full Disc)');
-- --- END op 15511

-- --- BEGIN op 15512 ( update custom_format "Full Disc" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Full Disc' AND condition_name = 'Not HEVC' AND regular_expression_name = 'HEVC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not HEVC', 'HEVC (Full Disc)');
-- --- END op 15512

-- @operation: export
-- @entity: batch
-- @name: Add Rename for IQIYI
-- @exportedAt: 2026-08-25T00:50:44.668Z
-- @opIds: 13584, 13585, 13586, 13587, 13588

-- --- BEGIN op 13584 ( create regular_expression "iQIYI Rename" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iQIYI Rename', '\[(NOW)\b|\b(NOW)\]', 'Now (formerly Now TV and often stylised as NOW) is a subscription over-the-top streaming television service launched in the United Kingdom in 2012. It is operated by Sky Group in Europe, and Xfinity in the US; both owned by the American media conglomerate Comcast.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iQIYI Rename', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iQIYI Rename', 'WEB-DL');
-- --- END op 13584

-- --- BEGIN op 13585 ( update regular_expression "iQIYI Rename" )
update "regular_expressions" set "description" = 'iQIYI is a Chinese subscription video on-demand over-the-top streaming service owned by Baidu. Headquartered in Beijing, iQIYI primarily produces and distributes films and television series.' where "name" = 'iQIYI Rename' and "description" = 'Now (formerly Now TV and often stylised as NOW) is a subscription over-the-top streaming television service launched in the United Kingdom in 2012. It is operated by Sky Group in Europe, and Xfinity in the US; both owned by the American media conglomerate Comcast.';
-- --- END op 13585

-- --- BEGIN op 13586 ( update regular_expression "iQIYI Rename" )
update "regular_expressions" set "pattern" = '\[(iQIYI)\b|\b(iQIYI)\]' where "name" = 'iQIYI Rename' and "pattern" = '\[(NOW)\b|\b(NOW)\]';
-- --- END op 13586

-- --- BEGIN op 13587 ( update custom_format "IQIYI" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IQIYI', 'IQIYI Rename', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IQIYI', 'IQIYI Rename', 'iQIYI Rename');
-- --- END op 13587

-- --- BEGIN op 13588 ( update custom_format "IQIYI" )
UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'IQIYI'
  AND name = 'IQIYI Regex'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 1;
-- --- END op 13588

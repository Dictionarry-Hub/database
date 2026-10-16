-- @operation: export
-- @entity: batch
-- @name: Fix 720p Tag
-- @exportedAt: 2026-10-16T19:18:10.440Z
-- @opIds: 15077

-- --- BEGIN op 15077 ( update custom_format "720p ProRes Quality Tier 1" )
DELETE FROM custom_format_tags WHERE custom_format_name = '720p ProRes Quality Tier 1' AND tag_name = '1080p';

insert into "tags" ("name") values ('720p') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('720p ProRes Quality Tier 1', '720p');
-- --- END op 15077

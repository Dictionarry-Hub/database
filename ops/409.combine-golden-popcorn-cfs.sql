-- @operation: export
-- @entity: batch
-- @name: Combine Golden Popcorn CFs
-- @exportedAt: 2026-11-23T00:44:49.827Z
-- @opIds: 15652, 15653, 15654, 15655, 15656, 15657, 15658, 15659, 15660, 15661

-- --- BEGIN op 15652 ( update custom_format "1080p Golden Popcorn" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '1080p Golden Popcorn'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15652

-- --- BEGIN op 15653 ( update custom_format "720p Golden Popcorn" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = '720p Golden Popcorn'
	  AND name = 'Release Groups'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15653

-- --- BEGIN op 15654 ( update custom_format "SD Golden Popcorn" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'SD Golden Popcorn'
	  AND name = 'Not 2160p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15654

-- --- BEGIN op 15655 ( delete custom_format "720p Golden Popcorn" )
delete from "custom_formats" where "name" = '720p Golden Popcorn';
-- --- END op 15655

-- --- BEGIN op 15656 ( delete custom_format "SD Golden Popcorn" )
delete from "custom_formats" where "name" = 'SD Golden Popcorn';
-- --- END op 15656

-- --- BEGIN op 15657 ( update custom_format "1080p Golden Popcorn" )
DELETE FROM custom_format_tags WHERE custom_format_name = '1080p Golden Popcorn' AND tag_name = 'Flag';

insert into "tags" ("name") values ('Indexer Flag') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('1080p Golden Popcorn', 'Indexer Flag');
-- --- END op 15657

-- --- BEGIN op 15658 ( update custom_format "Golden Popcorn" )
update "custom_formats" set "description" = 'Matches Golden Popcorns. Only works when PassThePopcorn is connected directly to Radarr' where "name" = '1080p Golden Popcorn' and "description" = 'Matches 1080p Golden Popcorns. Only works on PassThePopcorn connected directly to Radarr';
-- --- END op 15658

-- --- BEGIN op 15659 ( update custom_format "Golden Popcorn" )
update "custom_formats" set "name" = 'Golden Popcorn' where "name" = '1080p Golden Popcorn';
-- --- END op 15659

-- --- BEGIN op 15660 ( update custom_format "Golden Popcorn" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Golden Popcorn'
	  AND name = '1080p'
	  AND type = 'resolution'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15660

-- --- BEGIN op 15661 ( delete regular_expression "Golden Popcorn Negation" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Golden Popcorn Negation' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Golden Popcorn Negation';
-- --- END op 15661

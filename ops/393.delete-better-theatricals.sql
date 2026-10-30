-- @operation: export
-- @entity: batch
-- @name: Delete Better Theatricals
-- @exportedAt: 2026-10-30T02:55:59.441Z
-- @opIds: 15514, 15515, 15516, 15517, 15518, 15519, 15520, 15521, 15522, 15523, 15524, 15525, 15526

-- --- BEGIN op 15514 ( update quality_profile "1080p Balanced" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Balanced' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15514

-- --- BEGIN op 15515 ( update quality_profile "1080p Compact" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Compact' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15515

-- --- BEGIN op 15516 ( update quality_profile "1080p Efficient" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Efficient' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15516

-- --- BEGIN op 15517 ( update quality_profile "1080p Quality" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15517

-- --- BEGIN op 15518 ( update quality_profile "1080p Quality HDR" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality HDR' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15518

-- --- BEGIN op 15519 ( update quality_profile "1080p Remux" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Remux' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15519

-- --- BEGIN op 15520 ( update quality_profile "2160p Balanced" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Balanced' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15520

-- --- BEGIN op 15521 ( update quality_profile "2160p Efficient" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Efficient' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15521

-- --- BEGIN op 15522 ( update quality_profile "2160p Quality" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Quality' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15522

-- --- BEGIN op 15523 ( update quality_profile "2160p Remux" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Remux' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15523

-- --- BEGIN op 15524 ( update quality_profile "720p Quality" )
delete from "quality_profile_custom_formats" where "quality_profile_name" = '720p Quality' and "custom_format_name" = 'Better Theatricals' and "arr_type" = 'radarr' and "score" = 1000;
-- --- END op 15524

-- --- BEGIN op 15525 ( delete custom_format "Better Theatricals" )
delete from "custom_formats" where "name" = 'Better Theatricals';
-- --- END op 15525

-- --- BEGIN op 15526 ( delete regular_expression "Better Theatricals" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Better Theatricals' AND tag_name = 'Edition';

delete from "regular_expressions" where "name" = 'Better Theatricals';
-- --- END op 15526

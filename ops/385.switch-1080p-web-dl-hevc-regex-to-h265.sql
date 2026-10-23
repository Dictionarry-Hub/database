-- @operation: export
-- @entity: batch
-- @name: Switch 1080p WEB-DL HEVC Regex to h265
-- @exportedAt: 2026-10-23T01:20:39.614Z
-- @opIds: 15302, 15303, 15304, 15305, 15306, 15307

-- --- BEGIN op 15302 ( update custom_format "1080p WEB-DL HEVC" )
update "custom_formats" set "description" = 'Matches release groups who fall under 1080p WEB-DL HEVC' where "name" = '1080p WEB-DL HEVC Tier 1' and "description" = 'Matches release groups who fall under 1080p WEB-DL HEVC Tier 1';
-- --- END op 15302

-- --- BEGIN op 15303 ( update custom_format "1080p WEB-DL HEVC" )
update "custom_formats" set "name" = '1080p WEB-DL HEVC' where "name" = '1080p WEB-DL HEVC Tier 1';
-- --- END op 15303

-- --- BEGIN op 15304 ( update quality_profile "1080p Compact" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC' where "quality_profile_name" = '1080p Compact' and "custom_format_name" = '1080p WEB-DL HEVC Tier 1' and "arr_type" = 'radarr' and "score" = 920000;
-- --- END op 15304

-- --- BEGIN op 15305 ( update quality_profile "1080p Efficient" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC' where "quality_profile_name" = '1080p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC Tier 1' and "arr_type" = 'radarr' and "score" = 940000;

update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC' where "quality_profile_name" = '1080p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC Tier 1' and "arr_type" = 'sonarr' and "score" = 920000;
-- --- END op 15305

-- --- BEGIN op 15306 ( update quality_profile "2160p Efficient" )
update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC' where "quality_profile_name" = '2160p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC Tier 1' and "arr_type" = 'radarr' and "score" = 940000;

update "quality_profile_custom_formats" set "custom_format_name" = '1080p WEB-DL HEVC' where "quality_profile_name" = '2160p Efficient' and "custom_format_name" = '1080p WEB-DL HEVC Tier 1' and "arr_type" = 'sonarr' and "score" = 920000;
-- --- END op 15306

-- --- BEGIN op 15307 ( update custom_format "1080p WEB-DL HEVC" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p WEB-DL HEVC' AND condition_name = 'h265' AND regular_expression_name = 'HEVC';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p WEB-DL HEVC', 'h265', 'h265');
-- --- END op 15307

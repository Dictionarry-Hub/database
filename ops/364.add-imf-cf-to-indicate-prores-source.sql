-- @operation: export
-- @entity: batch
-- @name: Add IMF CF to Indicate ProRes Source
-- @exportedAt: 2026-10-11T15:43:23.642Z
-- @opIds: 14676, 14677, 14678, 14679, 14680, 14681, 14682, 14683, 14684, 14685, 14686, 14687, 14688, 14689, 14690, 14691, 14692, 14693, 14694, 14695

-- --- BEGIN op 14676 ( create regular_expression "Interoperable Master Format" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Interoperable Master Format', '(?<=^|[\s.-])IMF\b', NULL, NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Interoperable Master Format', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Interoperable Master Format', 'Release Group');
-- --- END op 14676

-- --- BEGIN op 14677 ( update regular_expression "Interoperable Master Format" )
update "regular_expressions" set "pattern" = '\bIMF\b' where "name" = 'Interoperable Master Format' and "pattern" = '(?<=^|[\s.-])IMF\b';
-- --- END op 14677

-- --- BEGIN op 14678 ( update regular_expression "Interoperable Master Format" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Interoperable Master Format' AND tag_name = 'Bluray';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Interoperable Master Format' AND tag_name = 'Release Group';
-- --- END op 14678

-- --- BEGIN op 14679 ( update regular_expression "Interoperable Master Format" )
update "regular_expressions" set "description" = 'ProRes Source' where "name" = 'Interoperable Master Format' and "description" is null;
-- --- END op 14679

-- --- BEGIN op 14680 ( create custom_format "IMF" )
insert into "custom_formats" ("name", "description") values ('IMF', '');
-- --- END op 14680

-- --- BEGIN op 14681 ( update custom_format "IMF" )
update "custom_formats" set "description" = 'ProRes Source' where "name" = 'IMF' and "description" = '';
-- --- END op 14681

-- --- BEGIN op 14682 ( update custom_format "IMF" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'IMF' and "include_in_rename" = 0;
-- --- END op 14682

-- --- BEGIN op 14683 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'WEBRip', 'source', 'radarr', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('IMF', 'WEBRip', 'webrip');
-- --- END op 14683

-- --- BEGIN op 14684 ( update custom_format "IMF" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMF', 'Interoperable Master Format', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('IMF', 'Interoperable Master Format', 'Interoperable Master Format');
-- --- END op 14684

-- --- BEGIN op 14685 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14685

-- --- BEGIN op 14686 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14686

-- --- BEGIN op 14687 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14687

-- --- BEGIN op 14688 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14688

-- --- BEGIN op 14689 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14689

-- --- BEGIN op 14690 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14690

-- --- BEGIN op 14691 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14691

-- --- BEGIN op 14692 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14692

-- --- BEGIN op 14693 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14693

-- --- BEGIN op 14694 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14694

-- --- BEGIN op 14695 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'IMF', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'IMF'
    AND arr_type = 'radarr'
);
-- --- END op 14695

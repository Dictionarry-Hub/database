-- @operation: export
-- @entity: batch
-- @name: Seperate ATV/ATVp and Rescore Streaming Services for 2160p TV
-- @exportedAt: 2026-08-11T23:56:13.623Z
-- @opIds: 12803, 12804, 12805, 12806, 12807, 12808, 12809, 12810, 12811, 12812, 12813, 12814, 12815, 12816, 12817, 12818, 12819, 12820, 12821, 12822, 12823, 12824, 12825, 12826, 12827, 12828, 12829, 12830, 12831, 12832, 12833, 12834, 12835, 12836, 12837, 12838, 12839, 12840, 12841, 12842, 12843, 12844, 12845, 12846, 12847, 12848, 12849, 12850, 12851, 12852, 12853, 12854, 12855, 12856, 12857, 12858, 12859, 12860, 12861, 12862, 12863, 12864, 12865, 12866, 12867, 12868, 12869, 12870, 12871, 12872, 12873, 12874, 12875, 12876, 12877, 12878, 12879, 12880, 12881, 12882, 12883, 12884, 12885, 12886, 12887, 12888, 12889, 12890, 12891, 12892, 12893, 12894, 12895, 12896, 12897, 12898, 12899, 12900, 12901, 12902, 12903, 12904, 12905, 12906, 12907, 12908, 12909, 12910, 12911, 12912, 12913, 12914, 12915, 12916

-- --- BEGIN op 12803 ( create regular_expression "Apple TV" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Apple TV', '\b(ATVP|ATV|APTV|Apple TV\+)\s*\b', 'Apple TV+ is an American subscription OTT streaming service owned and operated by Apple Inc. Launched on November 1, 2019, it offers a selection of original production film and television series called Apple Originals.', NULL);

insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Apple TV', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Apple TV', 'WEB-DL');
-- --- END op 12803

-- --- BEGIN op 12804 ( update regular_expression "Apple TV" )
update "regular_expressions" set "pattern" = '\b(ATV)b' where "name" = 'Apple TV' and "pattern" = '\b(ATVP|ATV|APTV|Apple TV\+)\s*\b';
-- --- END op 12804

-- --- BEGIN op 12805 ( update regular_expression "Apple TV+" )
update "regular_expressions" set "pattern" = '\b(ATVP|APTV|Apple TV\+)\s*\b' where "name" = 'Apple TV+' and "pattern" = '\b(ATVP|ATV|APTV|Apple TV\+)\s*\b';
-- --- END op 12805

-- --- BEGIN op 12806 ( update regular_expression "Apple TV" )
update "regular_expressions" set "description" = 'Apple TV is an American subscription OTT streaming service owned and operated by Apple Inc. Launched on November 1, 2019, it offers a selection of purchased and channel television series.' where "name" = 'Apple TV' and "description" = 'Apple TV+ is an American subscription OTT streaming service owned and operated by Apple Inc. Launched on November 1, 2019, it offers a selection of original production film and television series called Apple Originals.';
-- --- END op 12806

-- --- BEGIN op 12807 ( create custom_format "ATV" )
insert into "custom_formats" ("name", "description") values ('ATV', '');
-- --- END op 12807

-- --- BEGIN op 12808 ( update custom_format "ATV" )
update "custom_formats" set "description" = 'Matches ''Apple TV+'' WEB-DLs' where "name" = 'ATV' and "description" = '';
-- --- END op 12808

-- --- BEGIN op 12809 ( update custom_format "ATV" )
update "custom_formats" set "include_in_rename" = 1 where "name" = 'ATV' and "include_in_rename" = 0;
-- --- END op 12809

-- --- BEGIN op 12810 ( update custom_format "ATV" )
insert into "tags" ("name") values ('Streaming Service') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ATV', 'Streaming Service');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ATV', 'WEB-DL');
-- --- END op 12810

-- --- BEGIN op 12811 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'ATVP Regex', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'ATVP Regex', 'Apple TV+');
-- --- END op 12811

-- --- BEGIN op 12812 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'WEB-DL', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ATV', 'WEB-DL', 'web_dl');
-- --- END op 12812

-- --- BEGIN op 12813 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'WEBRip', 'source', 'all', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('ATV', 'WEBRip', 'webrip');
-- --- END op 12813

-- --- BEGIN op 12814 ( update custom_format "ATV" )
update "custom_formats" set "description" = 'Matches ''Apple TV'' WEB-DLs' where "name" = 'ATV' and "description" = 'Matches ''Apple TV+'' WEB-DLs';
-- --- END op 12814

-- --- BEGIN op 12815 ( update custom_format "ATV" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ATV'
	  AND name = 'ATVP Regex'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 12815

-- --- BEGIN op 12816 ( update custom_format "ATV" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ATV', 'ATV Regex', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ATV', 'ATV Regex', 'Apple TV');
-- --- END op 12816

-- --- BEGIN op 12817 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12817

-- --- BEGIN op 12818 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12818

-- --- BEGIN op 12819 ( update quality_profile "1080p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12819

-- --- BEGIN op 12820 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12820

-- --- BEGIN op 12821 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12821

-- --- BEGIN op 12822 ( update quality_profile "1080p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12822

-- --- BEGIN op 12823 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12823

-- --- BEGIN op 12824 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12824

-- --- BEGIN op 12825 ( update quality_profile "1080p Compact" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12825

-- --- BEGIN op 12826 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12826

-- --- BEGIN op 12827 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12827

-- --- BEGIN op 12828 ( update quality_profile "1080p Compact" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12828

-- --- BEGIN op 12829 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12829

-- --- BEGIN op 12830 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12830

-- --- BEGIN op 12831 ( update quality_profile "1080p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12831

-- --- BEGIN op 12832 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12832

-- --- BEGIN op 12833 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12833

-- --- BEGIN op 12834 ( update quality_profile "1080p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12834

-- --- BEGIN op 12835 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12835

-- --- BEGIN op 12836 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12836

-- --- BEGIN op 12837 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12837

-- --- BEGIN op 12838 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12838

-- --- BEGIN op 12839 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12839

-- --- BEGIN op 12840 ( update quality_profile "1080p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12840

-- --- BEGIN op 12841 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12841

-- --- BEGIN op 12842 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12842

-- --- BEGIN op 12843 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12843

-- --- BEGIN op 12844 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12844

-- --- BEGIN op 12845 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12845

-- --- BEGIN op 12846 ( update quality_profile "1080p Quality HDR" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12846

-- --- BEGIN op 12847 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12847

-- --- BEGIN op 12848 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12848

-- --- BEGIN op 12849 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12849

-- --- BEGIN op 12850 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12850

-- --- BEGIN op 12851 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12851

-- --- BEGIN op 12852 ( update quality_profile "1080p Remux" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12852

-- --- BEGIN op 12853 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12853

-- --- BEGIN op 12854 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12854

-- --- BEGIN op 12855 ( update quality_profile "720p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12855

-- --- BEGIN op 12856 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12856

-- --- BEGIN op 12857 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12857

-- --- BEGIN op 12858 ( update quality_profile "720p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12858

-- --- BEGIN op 12859 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12859

-- --- BEGIN op 12860 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12860

-- --- BEGIN op 12861 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12861

-- --- BEGIN op 12862 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12862

-- --- BEGIN op 12863 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12863

-- --- BEGIN op 12864 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12864

-- --- BEGIN op 12865 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12865

-- --- BEGIN op 12866 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12866

-- --- BEGIN op 12867 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12867

-- --- BEGIN op 12868 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12868

-- --- BEGIN op 12869 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12869

-- --- BEGIN op 12870 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12870

-- --- BEGIN op 12871 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12871

-- --- BEGIN op 12872 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12872

-- --- BEGIN op 12873 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12873

-- --- BEGIN op 12874 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12874

-- --- BEGIN op 12875 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12875

-- --- BEGIN op 12876 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12876

-- --- BEGIN op 12877 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'ATVP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'radarr'
);
-- --- END op 12877

-- --- BEGIN op 12878 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'ATVP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'sonarr'
);
-- --- END op 12878

-- --- BEGIN op 12879 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 12879

-- --- BEGIN op 12880 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'ATV', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'ATV'
    AND arr_type = 'radarr'
);
-- --- END op 12880

-- --- BEGIN op 12881 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'ATV', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'ATV'
    AND arr_type = 'sonarr'
);
-- --- END op 12881

-- --- BEGIN op 12882 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'ATVP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 12882

-- --- BEGIN op 12883 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'NF', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 12883

-- --- BEGIN op 12884 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'NF', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 12884

-- --- BEGIN op 12885 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'NF'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 12885

-- --- BEGIN op 12886 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 12886

-- --- BEGIN op 12887 ( update quality_profile "2160p Balanced" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 12887

-- --- BEGIN op 12888 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'Disney+ Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 12888

-- --- BEGIN op 12889 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'NF', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 12889

-- --- BEGIN op 12890 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'NF', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 12890

-- --- BEGIN op 12891 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'NF'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 12891

-- --- BEGIN op 12892 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 12892

-- --- BEGIN op 12893 ( update quality_profile "2160p Efficient" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 12893

-- --- BEGIN op 12894 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'Disney+ Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 12894

-- --- BEGIN op 12895 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'NF', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 12895

-- --- BEGIN op 12896 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'NF', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 12896

-- --- BEGIN op 12897 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'NF'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 12897

-- --- BEGIN op 12898 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 12898

-- --- BEGIN op 12899 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 12899

-- --- BEGIN op 12900 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'NF', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 12900

-- --- BEGIN op 12901 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'NF', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 12901

-- --- BEGIN op 12902 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'NF'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 12902

-- --- BEGIN op 12903 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 12903

-- --- BEGIN op 12904 ( update quality_profile "2160p Remux" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'NF'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 12904

-- --- BEGIN op 12905 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'Disney+ Enhancement'
  AND arr_type = 'sonarr'
  AND score = -1000;
-- --- END op 12905

-- --- BEGIN op 12906 ( create custom_format "Netflix Enhancement" )
insert into "custom_formats" ("name", "description") values ('Netflix Enhancement', '');
-- --- END op 12906

-- --- BEGIN op 12907 ( update custom_format "Netflix Enhancement" )
update "custom_formats" set "description" = 'Augments the Streaming Service Score for 1080p Releases and below for 2160p Profiles' where "name" = 'Netflix Enhancement' and "description" = '';
-- --- END op 12907

-- --- BEGIN op 12908 ( update custom_format "Netflix Enhancement" )
insert into "tags" ("name") values ('Enhancement') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Netflix Enhancement', 'Enhancement');
-- --- END op 12908

-- --- BEGIN op 12909 ( update custom_format "Netflix Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Netflix Enhancement', 'MA', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Netflix Enhancement', 'MA', 'Movies Anywhere');
-- --- END op 12909

-- --- BEGIN op 12910 ( update custom_format "Netflix Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Netflix Enhancement', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('Netflix Enhancement', 'Not 2160p', '2160p');
-- --- END op 12910

-- --- BEGIN op 12911 ( update custom_format "Netflix Enhancement" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Netflix Enhancement'
	  AND name = 'MA'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 12911

-- --- BEGIN op 12912 ( update custom_format "Netflix Enhancement" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Netflix Enhancement', 'NF', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Netflix Enhancement', 'NF', 'Netflix');
-- --- END op 12912

-- --- BEGIN op 12913 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'Netflix Enhancement', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'Netflix Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 12913

-- --- BEGIN op 12914 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'Netflix Enhancement', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'Netflix Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 12914

-- --- BEGIN op 12915 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Netflix Enhancement', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Netflix Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 12915

-- --- BEGIN op 12916 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'Netflix Enhancement', 'sonarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'Netflix Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 12916

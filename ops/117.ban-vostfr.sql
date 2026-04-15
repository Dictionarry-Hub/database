-- @operation: export
-- @entity: batch
-- @name: Ban VOSTFR
-- @exportedAt: 2026-04-15T04:46:57.259Z
-- @opIds: 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428

-- --- BEGIN op 402 ( create regular_expression "VOSTFR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('VOSTFR', '\b(VOST.*?FR(E|A)?)\b', NULL, NULL);
-- --- END op 402

-- --- BEGIN op 403 ( create custom_format "VOSTFR" )
insert into "custom_formats" ("name", "description") values ('VOSTFR', '');
-- --- END op 403

-- --- BEGIN op 404 ( update custom_format "VOSTFR" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('VOSTFR', 'VOSTFR', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('VOSTFR', 'VOSTFR', 'VOSTFR');
-- --- END op 404

-- --- BEGIN op 405 ( update custom_format "VOSTFR" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('VOSTFR', 'Banned');
-- --- END op 405

-- --- BEGIN op 406 ( update regular_expression "VOSTFR" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT name, 'Banned' FROM regular_expressions WHERE name IN ('VOSTFR') LIMIT 1;
-- --- END op 406

-- --- BEGIN op 407 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 407

-- --- BEGIN op 408 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 408

-- --- BEGIN op 409 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 409

-- --- BEGIN op 410 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 410

-- --- BEGIN op 411 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 411

-- --- BEGIN op 412 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 412

-- --- BEGIN op 413 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 413

-- --- BEGIN op 414 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 414

-- --- BEGIN op 415 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 415

-- --- BEGIN op 416 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 416

-- --- BEGIN op 417 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 417

-- --- BEGIN op 418 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 418

-- --- BEGIN op 419 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 419

-- --- BEGIN op 420 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 420

-- --- BEGIN op 421 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 421

-- --- BEGIN op 422 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 422

-- --- BEGIN op 423 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 423

-- --- BEGIN op 424 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 424

-- --- BEGIN op 425 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 425

-- --- BEGIN op 426 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 426

-- --- BEGIN op 427 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'VOSTFR', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'radarr'
);
-- --- END op 427

-- --- BEGIN op 428 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'VOSTFR', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'sonarr'
);
-- --- END op 428

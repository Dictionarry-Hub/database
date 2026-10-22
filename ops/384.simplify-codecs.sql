-- @operation: export
-- @entity: batch
-- @name: Simplify Codecs
-- @exportedAt: 2026-10-22T22:01:19.631Z
-- @opIds: 15135, 15136, 15137, 15138, 15139, 15140, 15141, 15142, 15143, 15144, 15145, 15146, 15147, 15148, 15149, 15150, 15151, 15152, 15153, 15154, 15155, 15156, 15157, 15158, 15159, 15160, 15161, 15162, 15163, 15164, 15165, 15166, 15167, 15168, 15169, 15170, 15171, 15172, 15173, 15174, 15175, 15176, 15177, 15178, 15179, 15180, 15181, 15182, 15183, 15184, 15185, 15186, 15187, 15188, 15189, 15190, 15191, 15192, 15193, 15194, 15195, 15196, 15197, 15198, 15199, 15200, 15201, 15202, 15203, 15204, 15205, 15206, 15207, 15208, 15209, 15210, 15211, 15212, 15213, 15214, 15215, 15216, 15218, 15219, 15220, 15221, 15222, 15223, 15224, 15225, 15226, 15227, 15228, 15229, 15230, 15231, 15232, 15233, 15234, 15235, 15236, 15237, 15238, 15239, 15240, 15241, 15242, 15243, 15244, 15245, 15246, 15247, 15248, 15249, 15250, 15251, 15252, 15253, 15254, 15255, 15256, 15257, 15258, 15259, 15260, 15261, 15262, 15263, 15264, 15265, 15266, 15267, 15268, 15269, 15270, 15271, 15272, 15273, 15274, 15275, 15276, 15277, 15278, 15279, 15280, 15281, 15282, 15283, 15284, 15285, 15286, 15287, 15288, 15289, 15290, 15291, 15292, 15293, 15294, 15295, 15296, 15297, 15298, 15299, 15300

-- --- BEGIN op 15135 ( create custom_format "HEVC" )
insert into "custom_formats" ("name", "description") values ('HEVC', '');
-- --- END op 15135

-- --- BEGIN op 15136 ( update custom_format "HEVC" )
update "custom_formats" set "description" = 'Bans HEVC when not 2160p or Bluray' where "name" = 'HEVC' and "description" = '';
-- --- END op 15136

-- --- BEGIN op 15137 ( update custom_format "HEVC" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('HEVC', 'Codec');
-- --- END op 15137

-- --- BEGIN op 15138 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', 'HEVC', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HEVC', 'HEVC', 'HEVC');
-- --- END op 15138

-- --- BEGIN op 15139 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', '2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('HEVC', '2160p', '2160p');
-- --- END op 15139

-- --- BEGIN op 15140 ( update custom_format "HEVC" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HEVC', 'Bluray', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HEVC', 'Bluray', 'bluray');
-- --- END op 15140

-- --- BEGIN op 15141 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'HEVC', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 15141

-- --- BEGIN op 15142 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'HEVC', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 15142

-- --- BEGIN op 15143 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15143

-- --- BEGIN op 15144 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15144

-- --- BEGIN op 15145 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15145

-- --- BEGIN op 15146 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 15146

-- --- BEGIN op 15147 ( update quality_profile "1080p Quality HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 15147

-- --- BEGIN op 15148 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15148

-- --- BEGIN op 15149 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15149

-- --- BEGIN op 15150 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15150

-- --- BEGIN op 15151 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15151

-- --- BEGIN op 15152 ( update quality_profile "1080p Quality HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality HDR'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15152

-- --- BEGIN op 15153 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15153

-- --- BEGIN op 15154 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15154

-- --- BEGIN op 15155 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15155

-- --- BEGIN op 15156 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 15156

-- --- BEGIN op 15157 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 15157

-- --- BEGIN op 15158 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15158

-- --- BEGIN op 15159 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15159

-- --- BEGIN op 15160 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15160

-- --- BEGIN op 15161 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'HEVC', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 15161

-- --- BEGIN op 15162 ( update quality_profile "1080p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Remux', 'HEVC', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Remux'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 15162

-- --- BEGIN op 15163 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15163

-- --- BEGIN op 15164 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15164

-- --- BEGIN op 15165 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15165

-- --- BEGIN op 15166 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15166

-- --- BEGIN op 15167 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15167

-- --- BEGIN op 15168 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 15168

-- --- BEGIN op 15169 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 15169

-- --- BEGIN op 15170 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15170

-- --- BEGIN op 15171 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15171

-- --- BEGIN op 15172 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15172

-- --- BEGIN op 15173 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'HEVC', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 15173

-- --- BEGIN op 15174 ( update quality_profile "2160p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Balanced', 'HEVC', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Balanced'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 15174

-- --- BEGIN op 15175 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15175

-- --- BEGIN op 15176 ( update quality_profile "2160p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15176

-- --- BEGIN op 15177 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15177

-- --- BEGIN op 15178 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15178

-- --- BEGIN op 15179 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15179

-- --- BEGIN op 15180 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 15180

-- --- BEGIN op 15181 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 15181

-- --- BEGIN op 15182 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15182

-- --- BEGIN op 15183 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15183

-- --- BEGIN op 15184 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15184

-- --- BEGIN op 15185 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HEVC', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 15185

-- --- BEGIN op 15186 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HEVC', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 15186

-- --- BEGIN op 15187 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15187

-- --- BEGIN op 15188 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15188

-- --- BEGIN op 15189 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15189

-- --- BEGIN op 15190 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15190

-- --- BEGIN op 15191 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15191

-- --- BEGIN op 15192 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 15192

-- --- BEGIN op 15193 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 15193

-- --- BEGIN op 15194 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15194

-- --- BEGIN op 15195 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15195

-- --- BEGIN op 15196 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15196

-- --- BEGIN op 15197 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'HEVC', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'radarr'
);
-- --- END op 15197

-- --- BEGIN op 15198 ( update quality_profile "2160p Remux" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Remux', 'HEVC', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Remux'
    AND custom_format_name = 'HEVC'
    AND arr_type = 'sonarr'
);
-- --- END op 15198

-- --- BEGIN op 15199 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15199

-- --- BEGIN op 15200 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15200

-- --- BEGIN op 15201 ( update custom_format "x265" )
DELETE FROM condition_patterns WHERE custom_format_name = 'x265' AND condition_name = 'x265' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265', 'x265', 'HEVC');
-- --- END op 15201

-- --- BEGIN op 15202 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15202

-- --- BEGIN op 15203 ( update quality_profile "1080p Balanced" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Balanced', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Balanced'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15203

-- --- BEGIN op 15204 ( update quality_profile "1080p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15204

-- --- BEGIN op 15205 ( update quality_profile "1080p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15205

-- --- BEGIN op 15206 ( update quality_profile "1080p Balanced" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15206

-- --- BEGIN op 15207 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15207

-- --- BEGIN op 15208 ( update quality_profile "1080p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15208

-- --- BEGIN op 15209 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15209

-- --- BEGIN op 15210 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15210

-- --- BEGIN op 15211 ( update quality_profile "1080p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15211

-- --- BEGIN op 15212 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 15212

-- --- BEGIN op 15213 ( update quality_profile "720p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '720p Quality', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '720p Quality'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 15213

-- --- BEGIN op 15214 ( update quality_profile "720p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15214

-- --- BEGIN op 15215 ( update quality_profile "720p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15215

-- --- BEGIN op 15216 ( update quality_profile "720p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '720p Quality'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15216

-- --- BEGIN op 15218 ( delete custom_format "h265" )
delete from "custom_formats" where "name" = 'h265';
-- --- END op 15218

-- --- BEGIN op 15219 ( update custom_format "x265 (Efficient)" )
DELETE FROM condition_patterns WHERE custom_format_name = 'x265 (Efficient)' AND condition_name = 'x265' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (Efficient)', 'x265', 'HEVC');
-- --- END op 15219

-- --- BEGIN op 15220 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'h265 (Efficient)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'radarr'
);
-- --- END op 15220

-- --- BEGIN op 15221 ( update quality_profile "1080p Compact" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Compact', 'h265 (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Compact'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 15221

-- --- BEGIN op 15222 ( update quality_profile "1080p Compact" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15222

-- --- BEGIN op 15223 ( update quality_profile "1080p Compact" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15223

-- --- BEGIN op 15224 ( update quality_profile "1080p Compact" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15224

-- --- BEGIN op 15225 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'h265 (Efficient)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'radarr'
);
-- --- END op 15225

-- --- BEGIN op 15226 ( update quality_profile "1080p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Efficient', 'h265 (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Efficient'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 15226

-- --- BEGIN op 15227 ( update quality_profile "1080p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15227

-- --- BEGIN op 15228 ( update quality_profile "1080p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15228

-- --- BEGIN op 15229 ( update quality_profile "1080p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15229

-- --- BEGIN op 15230 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'h265 (Efficient)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'radarr'
);
-- --- END op 15230

-- --- BEGIN op 15231 ( update quality_profile "2160p Efficient" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Efficient', 'h265 (Efficient)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Efficient'
    AND custom_format_name = 'h265 (Efficient)'
    AND arr_type = 'sonarr'
);
-- --- END op 15231

-- --- BEGIN op 15232 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 15232

-- --- BEGIN op 15233 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 15233

-- --- BEGIN op 15234 ( update quality_profile "2160p Efficient" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient'
  AND custom_format_name = 'h265 (Efficient)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 15234

-- --- BEGIN op 15235 ( delete custom_format "h265 (Efficient)" )
delete from "custom_formats" where "name" = 'h265 (Efficient)';
-- --- END op 15235

-- --- BEGIN op 15236 ( update regular_expression "h265" )
update "regular_expressions" set "pattern" = '[h][ ._-]?265|\bHEVC(\b|\d)' where "name" = 'h265' and "pattern" = '[h][ ._-]?265';
-- --- END op 15236

-- --- BEGIN op 15237 ( update custom_format "x264 (2160p)" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'x264 (2160p)'
	  AND name = 'x264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 15237

-- --- BEGIN op 15238 ( update custom_format "x264 (2160p)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x264 (2160p)', 'AVC', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x264 (2160p)', 'AVC', 'AVC');
-- --- END op 15238

-- --- BEGIN op 15239 ( update custom_format "Full Disc" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Full Disc' AND condition_name = 'Not x264' AND regular_expression_name = 'x264';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not x264', 'AVC');
-- --- END op 15239

-- --- BEGIN op 15240 ( update custom_format "Full Disc" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Full Disc' AND condition_name = 'Not x265' AND regular_expression_name = 'x265';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not x265', 'HEVC');
-- --- END op 15240

-- --- BEGIN op 15241 ( update custom_format "Full Disc" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Full Disc'
	  AND name = 'Not x264'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15241

-- --- BEGIN op 15242 ( update custom_format "Full Disc" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Full Disc'
	  AND name = 'Not x265'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 15242

-- --- BEGIN op 15243 ( update custom_format "Full Disc" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Full Disc', 'Not AVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not AVC', 'AVC');
-- --- END op 15243

-- --- BEGIN op 15244 ( update custom_format "Full Disc" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Full Disc', 'Not HEVC', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Full Disc', 'Not HEVC', 'HEVC');
-- --- END op 15244

-- --- BEGIN op 15245 ( update regular_expression "x264" )
update "regular_expressions" set "pattern" = '[x][ ._-]?264' where "name" = 'x264' and "pattern" = '^(?!.*remux).*[xh][ ._-]?264';
-- --- END op 15245

-- --- BEGIN op 15246 ( delete custom_format "x265 (WEB)" )
delete from "custom_formats" where "name" = 'x265 (WEB)';
-- --- END op 15246

-- --- BEGIN op 15247 ( update regular_expression "x265" )
update "regular_expressions" set "pattern" = '[x][ ._-]?265|\bHEVC(\b|\d)' where "name" = 'x265' and "pattern" = '^(?!.*remux).*([x][ ._-]?265|\bHEVC(\b|\d))';
-- --- END op 15247

-- --- BEGIN op 15248 ( update custom_format "1080p Bluray HEVC Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Bluray HEVC Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray HEVC Tier 1', 'x265', 'x265');
-- --- END op 15248

-- --- BEGIN op 15249 ( update custom_format "1080p Compact Movie Bluray Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie Bluray Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie Bluray Tier 1', 'x265', 'x265');
-- --- END op 15249

-- --- BEGIN op 15250 ( update custom_format "1080p Compact Movie Bluray Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie Bluray Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie Bluray Tier 2', 'x265', 'x265');
-- --- END op 15250

-- --- BEGIN op 15251 ( update custom_format "1080p Compact Movie Bluray Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie Bluray Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie Bluray Tier 3', 'x265', 'x265');
-- --- END op 15251

-- --- BEGIN op 15252 ( update custom_format "1080p Compact Movie Bluray Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie Bluray Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie Bluray Tier 4', 'x265', 'x265');
-- --- END op 15252

-- --- BEGIN op 15253 ( update custom_format "1080p Compact TV Bluray Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 1', 'x265', 'x265');
-- --- END op 15253

-- --- BEGIN op 15254 ( update custom_format "1080p Compact TV Bluray Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 2', 'x265', 'x265');
-- --- END op 15254

-- --- BEGIN op 15255 ( update custom_format "1080p Compact TV Bluray Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 3', 'x265', 'x265');
-- --- END op 15255

-- --- BEGIN op 15256 ( update custom_format "1080p Compact TV Bluray Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 4', 'x265', 'x265');
-- --- END op 15256

-- --- BEGIN op 15257 ( update custom_format "1080p Compact TV Bluray Tier 5" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 5' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 5', 'x265', 'x265');
-- --- END op 15257

-- --- BEGIN op 15258 ( update custom_format "1080p Compact TV Bluray Tier 6" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Bluray Tier 6' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Bluray Tier 6', 'x265', 'x265');
-- --- END op 15258

-- --- BEGIN op 15259 ( update custom_format "1080p Efficient Movie Bluray Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie Bluray Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie Bluray Tier 1', 'x265', 'x265');
-- --- END op 15259

-- --- BEGIN op 15260 ( update custom_format "1080p Efficient Movie Bluray Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie Bluray Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie Bluray Tier 2', 'x265', 'x265');
-- --- END op 15260

-- --- BEGIN op 15261 ( update custom_format "1080p Efficient Movie Bluray Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie Bluray Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie Bluray Tier 3', 'x265', 'x265');
-- --- END op 15261

-- --- BEGIN op 15262 ( update custom_format "1080p Efficient Movie Bluray Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie Bluray Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie Bluray Tier 4', 'x265', 'x265');
-- --- END op 15262

-- --- BEGIN op 15263 ( update custom_format "1080p Efficient TV Bluray Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 1', 'x265', 'x265');
-- --- END op 15263

-- --- BEGIN op 15264 ( update custom_format "1080p Efficient TV Bluray Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 2', 'x265', 'x265');
-- --- END op 15264

-- --- BEGIN op 15265 ( update custom_format "1080p Efficient TV Bluray Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 3', 'x265', 'x265');
-- --- END op 15265

-- --- BEGIN op 15266 ( update custom_format "1080p Efficient TV Bluray Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 4', 'x265', 'x265');
-- --- END op 15266

-- --- BEGIN op 15267 ( update custom_format "1080p Efficient TV Bluray Tier 5" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 5' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 5', 'x265', 'x265');
-- --- END op 15267

-- --- BEGIN op 15268 ( update custom_format "1080p Efficient TV Bluray Tier 6" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV Bluray Tier 6' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV Bluray Tier 6', 'x265', 'x265');
-- --- END op 15268

-- --- BEGIN op 15269 ( update custom_format "HONE Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'HONE Bluray' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HONE Bluray', 'x265', 'x265');
-- --- END op 15269

-- --- BEGIN op 15270 ( update custom_format "HONE Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'HONE Blurays' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HONE Blurays', 'x265', 'x265');
-- --- END op 15270

-- --- BEGIN op 15271 ( update custom_format "QxR Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Bluray' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Bluray', 'x265', 'x265');
-- --- END op 15271

-- --- BEGIN op 15272 ( update custom_format "QxR Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR Blurays' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR Blurays', 'x265', 'x265');
-- --- END op 15272

-- --- BEGIN op 15273 ( update custom_format "TAoE Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Bluray' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Bluray', 'x265', 'x265');
-- --- END op 15273

-- --- BEGIN op 15274 ( update custom_format "TAoE Blurays" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE Blurays' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE Blurays', 'x265', 'x265');
-- --- END op 15274

-- --- BEGIN op 15275 ( update custom_format "Vialle Bluray" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Vialle Bluray' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Vialle Bluray', 'x265', 'x265');
-- --- END op 15275

-- --- BEGIN op 15276 ( update custom_format "1080p Compact Movie WEB Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie WEB Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie WEB Tier 1', 'x265', 'HEVC');
-- --- END op 15276

-- --- BEGIN op 15277 ( update custom_format "1080p Compact Movie WEB Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie WEB Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie WEB Tier 2', 'x265', 'HEVC');
-- --- END op 15277

-- --- BEGIN op 15278 ( update custom_format "1080p Compact Movie WEB Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie WEB Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie WEB Tier 3', 'x265', 'HEVC');
-- --- END op 15278

-- --- BEGIN op 15279 ( update custom_format "1080p Compact Movie WEB Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact Movie WEB Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact Movie WEB Tier 4', 'x265', 'HEVC');
-- --- END op 15279

-- --- BEGIN op 15280 ( update custom_format "1080p Compact TV WEB Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV WEB Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 1', 'x265', 'HEVC');
-- --- END op 15280

-- --- BEGIN op 15281 ( update custom_format "1080p Compact TV WEB Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV WEB Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 2', 'x265', 'HEVC');
-- --- END op 15281

-- --- BEGIN op 15282 ( update custom_format "1080p Compact TV WEB Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV WEB Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 3', 'x265', 'HEVC');
-- --- END op 15282

-- --- BEGIN op 15283 ( update custom_format "1080p Compact TV WEB Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV WEB Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 4', 'x265', 'HEVC');
-- --- END op 15283

-- --- BEGIN op 15284 ( update custom_format "1080p Compact TV WEB Tier 5" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV WEB Tier 5' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV WEB Tier 5', 'x265', 'HEVC');
-- --- END op 15284

-- --- BEGIN op 15285 ( update custom_format "1080p Efficient Movie WEB Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie WEB Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie WEB Tier 1', 'x265', 'HEVC');
-- --- END op 15285

-- --- BEGIN op 15286 ( update custom_format "1080p Efficient Movie WEB Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie WEB Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie WEB Tier 2', 'x265', 'HEVC');
-- --- END op 15286

-- --- BEGIN op 15287 ( update custom_format "1080p Efficient Movie WEB Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie WEB Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie WEB Tier 3', 'x265', 'HEVC');
-- --- END op 15287

-- --- BEGIN op 15288 ( update custom_format "1080p Efficient Movie WEB Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient Movie WEB Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient Movie WEB Tier 4', 'x265', 'HEVC');
-- --- END op 15288

-- --- BEGIN op 15289 ( update custom_format "1080p Efficient TV WEB Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV WEB Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV WEB Tier 1', 'x265', 'HEVC');
-- --- END op 15289

-- --- BEGIN op 15290 ( update custom_format "1080p Efficient TV WEB Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV WEB Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV WEB Tier 2', 'x265', 'HEVC');
-- --- END op 15290

-- --- BEGIN op 15291 ( update custom_format "1080p Efficient TV WEB Tier 3" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV WEB Tier 3' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV WEB Tier 3', 'x265', 'HEVC');
-- --- END op 15291

-- --- BEGIN op 15292 ( update custom_format "1080p Efficient TV WEB Tier 4" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV WEB Tier 4' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV WEB Tier 4', 'x265', 'HEVC');
-- --- END op 15292

-- --- BEGIN op 15293 ( update custom_format "1080p Efficient TV WEB Tier 5" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Efficient TV WEB Tier 5' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Efficient TV WEB Tier 5', 'x265', 'HEVC');
-- --- END op 15293

-- --- BEGIN op 15294 ( update custom_format "HONE WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'HONE WEB' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HONE WEB', 'x265', 'HEVC');
-- --- END op 15294

-- --- BEGIN op 15295 ( update custom_format "QxR WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'QxR WEB' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('QxR WEB', 'x265', 'HEVC');
-- --- END op 15295

-- --- BEGIN op 15296 ( update custom_format "TAoE WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'TAoE WEB' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('TAoE WEB', 'x265', 'HEVC');
-- --- END op 15296

-- --- BEGIN op 15297 ( update custom_format "Vialle WEB" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Vialle WEB' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Vialle WEB', 'x265', 'HEVC');
-- --- END op 15297

-- --- BEGIN op 15298 ( update custom_format "1080p Compact TV Trash Tier 1" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Trash Tier 1' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Trash Tier 1', 'x265', 'HEVC');
-- --- END op 15298

-- --- BEGIN op 15299 ( update custom_format "1080p Compact TV Trash Tier 2" )
DELETE FROM condition_patterns WHERE custom_format_name = '1080p Compact TV Trash Tier 2' AND condition_name = 'x265' AND regular_expression_name = 'x265 (Efficient)';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Compact TV Trash Tier 2', 'x265', 'HEVC');
-- --- END op 15299

-- --- BEGIN op 15300 ( delete regular_expression "x265 (Efficient)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x265 (Efficient)' AND tag_name = 'Codec';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'x265 (Efficient)' AND tag_name = 'Encoder';

delete from "regular_expressions" where "name" = 'x265 (Efficient)';
-- --- END op 15300

-- @operation: export
-- @entity: batch
-- @name: Delete Unused Regex
-- @exportedAt: 2026-08-27T23:58:05.466Z
-- @opIds: 13810, 13811, 13812, 13813, 13814, 13815, 13816, 13817, 13818, 13819, 13820

-- --- BEGIN op 13810 ( delete regular_expression "Google TV Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Google TV Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Google TV Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Google TV Rename';
-- --- END op 13810

-- --- BEGIN op 13811 ( delete regular_expression "HBO Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HBO Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'HBO Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'HBO Rename';
-- --- END op 13811

-- --- BEGIN op 13812 ( delete regular_expression "iQIYI Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iQIYI Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iQIYI Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'iQIYI Rename';
-- --- END op 13812

-- --- BEGIN op 13813 ( delete regular_expression "iTunes Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iTunes Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'iTunes Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'iTunes Rename';
-- --- END op 13813

-- --- BEGIN op 13814 ( delete regular_expression "Max Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Max Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Max Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Max Rename';
-- --- END op 13814

-- --- BEGIN op 13815 ( delete regular_expression "Now Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Now Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Now Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Now Rename';
-- --- END op 13815

-- --- BEGIN op 13816 ( delete regular_expression "Showtime Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Showtime Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Showtime Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Showtime Rename';
-- --- END op 13816

-- --- BEGIN op 13817 ( delete regular_expression "Stan Rename" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Stan Rename' AND tag_name = 'Streaming Service';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Stan Rename' AND tag_name = 'WEB-DL';

delete from "regular_expressions" where "name" = 'Stan Rename';
-- --- END op 13817

-- --- BEGIN op 13818 ( delete regular_expression "TrueHD (Missing Groups)" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'TrueHD (Missing Groups)' AND tag_name = 'Audio';

delete from "regular_expressions" where "name" = 'TrueHD (Missing Groups)';
-- --- END op 13818

-- --- BEGIN op 13819 ( delete regular_expression "Non Retail HDR Formats" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'Colour Grade';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'Enhancement';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Formats' AND tag_name = 'HDR';

delete from "regular_expressions" where "name" = 'Non Retail HDR Formats';
-- --- END op 13819

-- --- BEGIN op 13820 ( delete regular_expression "Non Retail HDR Groups" )
DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'Banned';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'HDR';

DELETE FROM regular_expression_tags WHERE regular_expression_name = 'Non Retail HDR Groups' AND tag_name = 'Release Group';

delete from "regular_expressions" where "name" = 'Non Retail HDR Groups';
-- --- END op 13820

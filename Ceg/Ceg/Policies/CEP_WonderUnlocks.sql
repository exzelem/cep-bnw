-- CEP_WonderUnlocks.sql created by Wonder_Unlocks tab of Wonders spreadsheet:
-- https://drive.google.com/folderview?id=0B58Ehya83q19eVlvWXdmLXZ6UUE

UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_TRADITION'         WHERE BuildingClass='BUILDINGCLASS_BANAUE_RICE_TERRACES';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_LIBERTY'           WHERE BuildingClass='BUILDINGCLASS_TERRACOTTA_ARMY';
--UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_HONOR'             WHERE BuildingClass='BUILDINGCLASS_TEMPLE_ARTEMIS';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_PIETY'             WHERE BuildingClass='BUILDINGCLASS_STONEHENGE';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_PATRONAGE'         WHERE BuildingClass='BUILDINGCLASS_ANGKOR_WAT';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_AESTHETICS'        WHERE BuildingClass='BUILDINGCLASS_UFFIZI';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_EXPLORATION'       WHERE BuildingClass='BUILDINGCLASS_RED_FORT';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_COMMERCE'          WHERE BuildingClass='BUILDINGCLASS_PANAMA_CANAL';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_RATIONALISM'       WHERE BuildingClass='BUILDINGCLASS_HUBBLE';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_FREEDOM'           WHERE BuildingClass='BUILDINGCLASS_STATUE_OF_LIBERTY';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_ORDER'             WHERE BuildingClass='BUILDINGCLASS_ITAIPU_DAM';
UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_AUTOCRACY'         WHERE BuildingClass='BUILDINGCLASS_KREMLIN';

--
-- This checks for the 'Ancient Wonders' DLC and if found changes the wonder unlock.
--

UPDATE Buildings SET PolicyBranchType='POLICY_BRANCH_HONOR'
WHERE BuildingClass='BUILDINGCLASS_TEMPLE_ARTEMIS'
AND EXISTS (SELECT * FROM DownloadableContent WHERE PackageID='BBB0D085A0B14475B0073E549CF3ADC3' AND IsActive=1);

UPDATE Buildings SET PolicyBranchType=NULL
WHERE BuildingClass='BUILDINGCLASS_STATUE_ZEUS'
AND EXISTS (SELECT * FROM DownloadableContent WHERE PackageID='BBB0D085A0B14475B0073E549CF3ADC3' AND IsActive=1);



UPDATE LoadedFile SET Value=1 WHERE Type='CEP_WonderUnlocks.sql';

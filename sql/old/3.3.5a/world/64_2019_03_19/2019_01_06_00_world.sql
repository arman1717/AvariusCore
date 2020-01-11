-- 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (40454);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,40454,0,0,31,0,3,22175,0,0,0,0,'',''),
(13,1,40454,0,0,31,0,3,22180,0,0,0,0,'','');

DELETE FROM `creature_text` WHERE `CreatureID`=22304;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(22304,0,0,"Get to work on those crystals!",12,0,100,0,0,0,21112,0,"Mo''arg Extractor"),
(22304,0,1,"Move it!  These crystals aren't going to collect themselves.",12,0,100,0,0,0,21114,0,"Mo''arg Extractor"),
(22304,0,2,"These crystals will work.  Get them!",12,0,100,0,0,0,21113,0,"Mo''arg Extractor"),
(22304,1,0,"At least you didn''t screw this batch up.",12,0,100,0,0,0,21116,0,"Mo''arg Extractor"),
(22304,1,1,"I can''t believe you''ve actually done something right for once.",12,0,100,0,0,0,21117,0,"Mo''arg Extractor"),
(22304,1,2,"You''ve ruined this batch!  Why must I work with you worthless Gan''arg.",12,0,100,0,0,0,21115,0,"Mo''arg Extractor");

SET @GUID := 97833;
DELETE FROM `creature` WHERE `id` IN(22304,23174);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(@GUID+0,22304,530,1,0,0,1333.794,7198.299,377.9623,0.3662618,1800,0,0,0,0,2),
(@GUID+1,23174,530,1,0,0,1333.145,7197.777,377.9623,3.874631,1800,0,0,0,0,0),
(@GUID+2,23174,530,1,0,0,1332.737,7198.952,377.9623,3.228859,1800,0,0,0,0,0),
(@GUID+3,22304,530,1,0,0,1333.794,7198.299,377.9623,0.3662618,1800,0,0,0,0,2),
(@GUID+4,23174,530,1,0,0,1333.145,7197.777,377.9623,3.874631,1800,0,0,0,0,0),
(@GUID+5,23174,530,1,0,0,1332.737,7198.952,377.9623,3.228859,1800,0,0,0,0,0),
(@GUID+6,22304,530,1,0,0,2988.309,6847.49,376.6118,1.582121,1800,0,0,0,0,2),
(@GUID+7,23174,530,1,0,0,2987.717,6848.119,376.6118,5.88176,1800,0,0,0,0,0),
(@GUID+8,23174,530,1,0,0,2988.185,6847.605,376.6118,1.27409,1800,0,0,0,0,0),
(@GUID+9,22304,530,1,0,0,2988.309,6847.49,376.6118,1.582121,1800,0,0,0,0,2),
(@GUID+10,23174,530,1,0,0,2987.717,6848.119,376.6118,5.88176,1800,0,0,0,0,0),
(@GUID+11,23174,530,1,0,0,2988.185,6847.605,376.6118,1.27409,1800,0,0,0,0,0);

DELETE FROM `pool_template` WHERE entry BETWEEN 496 AND 500;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(496, 3, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174) 1'),
(497, 3, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174) 2'),
(498, 3, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174) 3'),
(499, 3, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174) 4'),
(500, 1, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174) Mother Pool');

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 496 AND 499;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@GUID+0, 496, 0, 'Mo''arg Extractor (22304)'),
(@GUID+1, 496, 0, 'Crystalfused Miner (23174)'),
(@GUID+2, 496, 0, 'Crystalfused Miner (23174)'),
(@GUID+3, 497, 0, 'Mo''arg Extractor (22304)'),
(@GUID+4, 497, 0, 'Crystalfused Miner (23174)'),
(@GUID+5, 497, 0, 'Crystalfused Miner (23174)'),
(@GUID+6, 498, 0, 'Mo''arg Extractor (22304)'),
(@GUID+7, 498, 0, 'Crystalfused Miner (23174)'),
(@GUID+8, 498, 0, 'Crystalfused Miner (23174)'),
(@GUID+9, 499, 0, 'Mo''arg Extractor (22304)'),
(@GUID+10, 499, 0, 'Crystalfused Miner (23174)'),
(@GUID+11, 499, 0, 'Crystalfused Miner (23174)');

DELETE FROM `pool_pool` WHERE `mother_pool`=500;
INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES 
(496, 500, 0, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174)'),
(497, 500, 0, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174)'),
(498, 500, 0, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174)'),
(499, 500, 0, 'Ogri\'la - Mo''arg Extractor (22304) and Crystalfused Miner (23174)');

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@GUID+0,@GUID+3,@GUID+6,@GUID+9);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(@GUID+0, @GUID+0,0,0,515,0,0),
(@GUID+0, @GUID+1,4,60,515,0,0),
(@GUID+0, @GUID+2,4,330,515,0,0),
(@GUID+3, @GUID+3,0,0,515,0,0),
(@GUID+3, @GUID+4,4,60,515,0,0),
(@GUID+3, @GUID+5,4,330,515,0,0),
(@GUID+6, @GUID+6,0,0,515,0,0),
(@GUID+6, @GUID+7,4,60,515,0,0),
(@GUID+6, @GUID+8,4,330,515,0,0),
(@GUID+9, @GUID+9,0,0,515,0,0),
(@GUID+9, @GUID+10,4,60,515,0,0),
(@GUID+9, @GUID+11,4,330,515,0,0);

DELETE FROM `creature_addon` WHERE `guid` IN (@GUID+0,@GUID+3,@GUID+6,@GUID+9);
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES
(@GUID+0,(@GUID+0)*10,0),
(@GUID+3,(@GUID+3)*10,0),
(@GUID+6,(@GUID+6)*10,0),
(@GUID+9,(@GUID+9)*10,0);

UPDATE `creature_template` SET `speed_walk`=1.2, `AIName`="SmartAI" WHERE `Entry` IN (22304,23174);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-(@GUID+0), -(@GUID+3), -(@GUID+6),-(@GUID+9), 23174)  AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2230400  AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)  VALUES
(23174,0, 0,0,0,0,100,0,2000,4000,6000,8000, 11,32614,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crystalfused Miner - IC - Cast Arcane Explosion'),
(-(@GUID+0),0, 0,0,34,0,100,0,2,16,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+0),0, 1,0,34,0,100,0,2,16,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+0),0, 2,0,34,0,100,0,2,17,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+0),0, 3,0,34,0,100,0,2,24,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+0),0, 4,0,34,0,100,0,2,24,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+0),0, 5,0,34,0,100,0,2,25,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(2230400,9, 0,0,0,0,100,0,1000,1000,0,0, 66,0,0,0,0,0,0,19,21203,20,0,0,0,0,0, 'Mo''arg Extractor - action list - Set orientation'),
(2230400,9, 1,0,0,0,100,0,0,0,0,0, 11,43831,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - action list - cast Emote State Work'),
(2230400,9, 2,0,0,0,100,0,0,0,0,0, 85,43831,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - action list - cast Emote State Work'),
(2230400,9, 3,0,0,0,100,0,7000,7000,0,0, 1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - action list - say text'),
(2230400,9, 4,0,0,0,100,0,0,0,0,0, 28,43831,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - action list - remove Emote State Work'),
(2230400,9, 5,0,0,0,100,0,0,0,0,0, 28,43831,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - action list - remove Emote State Work'),
(-(@GUID+0),0, 6,7,34,0,100,0,2,51,0,0, 66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.3678647, 'Mo''arg Extractor - action list - Set orientation'),
(-(@GUID+0),0, 7,8,61,0,100,0,0,0,0,0, 11,40163,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+0),0, 8,9,61,0,100,0,0,0,0,0, 85,40163,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+0),0, 9,10,61,0,100,0,0,0,0,0, 41,0,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+0),0, 10,0,61,0,100,0,0,0,0,0, 41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+0),0, 11,0,0,0,100,0,2000,4000,6000,8000, 11,40818,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast Toxic Slime'),
(-(@GUID+0),0, 12,0,0,0,100,0,1000,7000,5000,9000, 11,40839,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast drill'),
(-(@GUID+3),0, 0,0,34,0,100,0,2,28,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+3),0, 1,0,34,0,100,0,2,28,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+3),0, 2,0,34,0,100,0,2,29,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+3),0, 3,0,34,0,100,0,2,34,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+3),0, 4,0,34,0,100,0,2,34,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+3),0, 5,0,34,0,100,0,2,35,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+3),0, 6,7,34,0,100,0,2,67,0,0, 66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.753767, 'Mo''arg Extractor - action list - Set orientation'),
(-(@GUID+3),0, 7,8,61,0,100,0,0,0,0,0, 11,40163,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+3),0, 8,9,61,0,100,0,0,0,0,0, 85,40163,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+3),0, 9,10,61,0,100,0,0,0,0,0, 41,0,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+3),0, 10,0,61,0,100,0,0,0,0,0, 41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+3),0, 11,0,0,0,100,0,2000,4000,6000,8000, 11,40818,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast Toxic Slime'),
(-(@GUID+3),0, 12,0,0,0,100,0,1000,7000,5000,9000, 11,40839,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast drill'),
(-(@GUID+6),0, 0,0,34,0,100,0,2,19,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+6),0, 1,0,34,0,100,0,2,19,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+6),0, 2,0,34,0,100,0,2,20,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+6),0, 3,0,34,0,100,0,2,23,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+6),0, 4,0,34,0,100,0,2,23,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+6),0, 5,0,34,0,100,0,2,24,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+6),0, 6,7,34,0,100,0,2,47,0,0, 66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.870469, 'Mo''arg Extractor - action list - Set orientation'),
(-(@GUID+6),0, 7,8,61,0,100,0,0,0,0,0, 11,40163,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+6),0, 8,9,61,0,100,0,0,0,0,0, 85,40163,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+6),0, 9,10,61,0,100,0,0,0,0,0, 41,0,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+6),0, 10,0,61,0,100,0,0,0,0,0, 41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+6),0, 11,0,0,0,100,0,2000,4000,6000,8000, 11,40818,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast Toxic Slime'),
(-(@GUID+6),0, 12,0,0,0,100,0,1000,7000,5000,9000, 11,40839,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast drill'),
(-(@GUID+9),0, 0,0,34,0,100,0,2,15,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+9),0, 1,0,34,0,100,0,2,15,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+9),0, 2,0,34,0,100,0,2,16,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+9),0, 3,0,34,0,100,0,2,28,0,0, 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Random Say'),
(-(@GUID+9),0, 4,0,34,0,100,0,2,28,0,0, 11,40454,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast Frighten'),
(-(@GUID+9),0, 5,0,34,0,100,0,2,29,0,0, 80,2230400,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - action list'),
(-(@GUID+9),0, 6,7,34,0,100,0,2,50,0,0, 66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.900096, 'Mo''arg Extractor - action list - Set orientation'),
(-(@GUID+9),0, 7,8,61,0,100,0,0,0,0,0, 11,40163,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+9),0, 8,9,61,0,100,0,0,0,0,0, 85,40163,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Cast teleport'),
(-(@GUID+9),0, 9,10,61,0,100,0,0,0,0,0, 41,0,0,0,0,0,0,11,23174,20,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+9),0, 10,0,61,0,100,0,0,0,0,0, 41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mo''arg Extractor - movement informer - Despawn'),
(-(@GUID+9),0, 11,0,0,0,100,0,2000,4000,6000,8000, 11,40818,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast Toxic Slime'),
(-(@GUID+9),0, 12,0,0,0,100,0,1000,7000,5000,9000, 11,40839,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mo''arg Extractor - IC - Cast drill');

DELETE FROM `waypoint_data` WHERE `id`=(@GUID+0)*10;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`, `action_chance`) VALUES
((@GUID+0)*10,1,1333.794,7198.299,377.9623,0,0,100),
((@GUID+0)*10,2,1352.207,7177.568,374.4292,0,0,100),
((@GUID+0)*10,3,1369.199,7162.584,368.1855,0,0,100),
((@GUID+0)*10,4,1397.805,7165.11,364.0969,0,0,100),
((@GUID+0)*10,5,1432.902,7164.527,364.2644,0,0,100),
((@GUID+0)*10,6,1466.651,7176.955,364.3687,0,0,100),
((@GUID+0)*10,7,1501.128,7181.692,364.1604,0,0,100),
((@GUID+0)*10,8,1541.447,7199.521,364.441,0,0,100),
((@GUID+0)*10,9,1564.304,7233.853,364.3589,0,0,100),
((@GUID+0)*10,10,1594.451,7266.771,363.971,0,0,100),
((@GUID+0)*10,11,1633.8,7293.655,364.2258,0,0,100),
((@GUID+0)*10,12,1668.306,7295.19,364.3731,0,0,100),
((@GUID+0)*10,13,1701.24,7298.311,364.2257,0,0,100),
((@GUID+0)*10,14,1733.943,7304.182,364.4064,0,0,100),
((@GUID+0)*10,15,1766.995,7308.861,364.3481,0,0,100),
((@GUID+0)*10,16,1800.474,7313.118,364.5564,0,0,100),
((@GUID+0)*10,17,1829.237,7315.301,364.6031,0,0,100),
((@GUID+0)*10,18,1834.228,7306.844,365.5598,9000,0,100),
((@GUID+0)*10,19,1834.89,7285.279,364.4822,0,0,100),
((@GUID+0)*10,20,1866.9,7268.073,364.5251,0,0,100),
((@GUID+0)*10,21,1900.444,7261.554,363.7378,0,0,100),
((@GUID+0)*10,22,1934.605,7257.432,363.877,0,0,100),
((@GUID+0)*10,23,1966.901,7251.573,364.3642,0,0,100),
((@GUID+0)*10,24,1981.68,7234.784,365.2723,0,0,100),
((@GUID+0)*10,25,2014.927,7199.792,364.2273,0,0,100),
((@GUID+0)*10,26,2015.96,7184.507,367.2914,9000,0,100),
((@GUID+0)*10,27,1984.979,7193.082,364.2758,0,0,100),
((@GUID+0)*10,28,1946.86,7171.133,364.9248,0,0,100),
((@GUID+0)*10,29,1901.056,7175.637,363.8658,0,0,100),
((@GUID+0)*10,30,1863.894,7162.611,364.1334,0,0,100),
((@GUID+0)*10,31,1827.315,7158.519,364.0176,0,0,100),
((@GUID+0)*10,32,1788.246,7160.703,364.6905,0,0,100),
((@GUID+0)*10,33,1740.581,7173.68,364.4621,0,0,100),
((@GUID+0)*10,34,1703.915,7185.555,363.8774,0,0,100),
((@GUID+0)*10,35,1683.517,7217.534,364.041,0,0,100),
((@GUID+0)*10,36,1658.156,7254.389,364.1964,0,0,100),
((@GUID+0)*10,37,1623.9,7280.928,364.4727,0,0,100),
((@GUID+0)*10,38,1584.667,7294.161,364.221,0,0,100),
((@GUID+0)*10,39,1553.749,7313.188,363.6398,0,0,100),
((@GUID+0)*10,40,1520.444,7324.26,364.5057,0,0,100),
((@GUID+0)*10,41,1488.373,7322.266,364.3845,0,0,100),
((@GUID+0)*10,42,1456.885,7321.089,364.7519,0,0,100),
((@GUID+0)*10,43,1418.969,7314.063,364.131,0,0,100),
((@GUID+0)*10,44,1384.969,7285.088,364.2979,0,0,100),
((@GUID+0)*10,45,1355.857,7274.738,364.3527,0,0,100),
((@GUID+0)*10,46,1312.41,7259.698,364.7269,0,0,100),
((@GUID+0)*10,47,1292.5,7239.034,371.0819,0,0,100),
((@GUID+0)*10,48,1292.879,7215.903,371.1742,0,0,100),
((@GUID+0)*10,49,1293.59,7187.902,371.3775,0,0,100),
((@GUID+0)*10,50,1316.707,7190.799,377.1363,0,0,100),
((@GUID+0)*10,51,1330.88,7197.301,377.8786,0,0,100),
((@GUID+0)*10,52,1330.88,7197.301,377.8786,10000,0,100); -- 0.3678647

DELETE FROM `waypoint_data` WHERE `id`=(@GUID+3)*10;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`,`orientation`) VALUES
((@GUID+3)*10,1,1352.27,7205.376,375.5285,0,0,100),
((@GUID+3)*10,2,1317.375,7223.247,373.1652,0,0,100),
((@GUID+3)*10,3,1305.864,7232.024,372.008,0,0,100),
((@GUID+3)*10,4,1297.632,7249.916,366.928,0,0,100),
((@GUID+3)*10,5,1332.461,7268.104,364.071,0,0,100),
((@GUID+3)*10,6,1369.47,7265.005,364.2116,0,0,100),
((@GUID+3)*10,7,1404.754,7258.489,365.122,0,0,100),
((@GUID+3)*10,8,1443.597,7252.691,367.0457,0,0,100),
((@GUID+3)*10,9,1471.717,7224.143,369.8176,0,0,100),
((@GUID+3)*10,10,1498.68,7228.192,370.0919,0,0,100),
((@GUID+3)*10,11,1533.695,7237.303,365.6569,0,0,100),
((@GUID+3)*10,12,1572.449,7261.974,364.2824,0,0,100),
((@GUID+3)*10,13,1610.717,7280.378,364.1713,0,0,100),
((@GUID+3)*10,14,1656.066,7283.626,364.5228,0,0,100),
((@GUID+3)*10,15,1695.341,7288.199,364.0323,0,0,100),
((@GUID+3)*10,16,1719.671,7290.995,364.6718,0,0,100),
((@GUID+3)*10,17,1762.815,7309.629,364.46,0,0,100),
((@GUID+3)*10,18,1792.446,7307.219,364.2318,0,0,100),
((@GUID+3)*10,19,1825.498,7286.349,364.0811,0,0,100),
((@GUID+3)*10,20,1863.018,7276.792,364.1865,0,0,100),
((@GUID+3)*10,21,1898.954,7276.558,364.0069,0,0,100),
((@GUID+3)*10,22,1924.492,7278.195,364.2383,0,0,100),
((@GUID+3)*10,23,1963.658,7274.074,364.454,0,0,100),
((@GUID+3)*10,24,1985.649,7290.89,364.6496,0,0,100),
((@GUID+3)*10,25,2014.467,7311.188,364.2452,0,0,100),
((@GUID+3)*10,26,2053.065,7317.732,364.5898,0,0,100),
((@GUID+3)*10,27,2083.554,7308.962,363.9205,0,0,100),
((@GUID+3)*10,28,2108.769,7279.646,363.9041,0,0,100),
((@GUID+3)*10,29,2129.874,7273.706,364.2212,0,0,100),
((@GUID+3)*10,30,2139.84,7265.365,364.3918,9000,0,100),
((@GUID+3)*10,31,2137.232,7218.135,364.8422,0,0,100),
((@GUID+3)*10,32,2155.057,7188.235,364.6596,0,0,100),
((@GUID+3)*10,33,2182.819,7172.838,364.3092,0,0,100),
((@GUID+3)*10,34,2217.613,7177.053,364.237,0,0,100),
((@GUID+3)*10,35,2261.527,7174.432,365.6865,0,0,100),
((@GUID+3)*10,36,2281.069,7185.895,370.8352,9000,0,100),
((@GUID+3)*10,37,2211.63,7174.366,364.1538,0,0,100),
((@GUID+3)*10,38,2172.21,7174.03,365.1311,0,0,100),
((@GUID+3)*10,39,2139.132,7189.358,364.329,0,0,100),
((@GUID+3)*10,40,2110.835,7199.826,364.2914,0,0,100),
((@GUID+3)*10,41,2082.458,7199.113,364.0281,0,0,100),
((@GUID+3)*10,42,2048.034,7203.927,364.0234,0,0,100),
((@GUID+3)*10,43,2019.655,7224.118,363.7486,0,0,100),
((@GUID+3)*10,44,1992.415,7236.767,363.8997,0,0,100),
((@GUID+3)*10,45,1955.7,7256.403,363.752,0,0,100),
((@GUID+3)*10,46,1914.455,7274.453,363.9151,0,0,100),
((@GUID+3)*10,47,1892.771,7305.978,365.0747,0,0,100),
((@GUID+3)*10,48,1876.736,7343.512,363.7322,0,0,100),
((@GUID+3)*10,49,1840.431,7351.17,363.7942,0,0,100),
((@GUID+3)*10,50,1809.11,7353.613,364.9366,0,0,100),
((@GUID+3)*10,51,1771.884,7344.952,363.7461,0,0,100),
((@GUID+3)*10,52,1744.44,7330.072,363.8812,0,0,100),
((@GUID+3)*10,53,1714.679,7318.155,364.2879,0,0,100),
((@GUID+3)*10,54,1677.074,7313.408,364.0386,0,0,100),
((@GUID+3)*10,55,1651.91,7287.932,364.1179,0,0,100),
((@GUID+3)*10,56,1617.844,7267.452,364.2543,0,0,100),
((@GUID+3)*10,57,1585.969,7247.088,365.2455,0,0,100),
((@GUID+3)*10,58,1572.555,7222.417,364.5026,0,0,100),
((@GUID+3)*10,59,1538.291,7194.614,363.8998,0,0,100),
((@GUID+3)*10,60,1512.845,7185.069,364.0571,0,0,100),
((@GUID+3)*10,61,1479.416,7179.616,364.534,0,0,100),
((@GUID+3)*10,62,1448.908,7175.925,364.8201,0,0,100),
((@GUID+3)*10,63,1404.351,7180.591,363.9406,0,0,100),
((@GUID+3)*10,64,1366.46,7187.11,364.2783,0,0,100),
((@GUID+3)*10,65,1355.251,7188.826,374.7939,0,0,100),
((@GUID+3)*10,66,1357.565,7188.473,372.6792,0,0,100),
((@GUID+3)*10,67,1334.139,7198.889,377.8786,0,0,100),
((@GUID+3)*10,68,1334.139,7198.889,377.8786,10000,0,100); -- 3.753767

DELETE FROM `waypoint_data` WHERE `id`=(@GUID+6)*10;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`,`orientation`) VALUES
((@GUID+6)*10,1,2988.13,6863.28,375.9545,0,0,100),
((@GUID+6)*10,2,2982.187,6879.217,370.3757,0,0,100),
((@GUID+6)*10,3,2965.37,6904.061,368.6737,0,0,100),
((@GUID+6)*10,4,2945.367,6919.39,364.1671,0,0,100),
((@GUID+6)*10,5,2917.686,6950.35,364.3199,0,0,100),
((@GUID+6)*10,6,2890.161,6973.25,365.6523,0,0,100),
((@GUID+6)*10,7,2861.867,7012.708,364.2707,0,0,100),
((@GUID+6)*10,8,2852.184,7048.313,365.7022,0,0,100),
((@GUID+6)*10,9,2825.852,7075.247,364.7102,0,0,100),
((@GUID+6)*10,10,2813.019,7117.895,364.4277,0,0,100),
((@GUID+6)*10,11,2811.052,7153.111,365.3325,0,0,100),
((@GUID+6)*10,12,2784.119,7177.707,365.3062,0,0,100),
((@GUID+6)*10,13,2749.209,7189.238,364.8308,0,0,100),
((@GUID+6)*10,14,2706.064,7209.212,367.2397,0,0,100),
((@GUID+6)*10,15,2666.481,7204.142,365.0525,0,0,100),
((@GUID+6)*10,16,2644.415,7188.809,365.5439,0,0,100),
((@GUID+6)*10,17,2617.335,7168.768,365.0201,0,0,100),
((@GUID+6)*10,18,2573.378,7166.748,365.9398,0,0,100),
((@GUID+6)*10,19,2546.457,7164.718,364.8625,0,0,100),
((@GUID+6)*10,20,2502.064,7167.237,365.6653,0,0,100),
((@GUID+6)*10,21,2486.097,7156.59,375.4796,9000,0,100),
((@GUID+6)*10,22,2510.147,7183.034,364.4835,0,0,100),
((@GUID+6)*10,23,2491.97,7214.959,364.1606,0,0,100),
((@GUID+6)*10,24,2479.56,7246.1,365.5766,0,0,100),
((@GUID+6)*10,25,2487.778,7257.81,365.6388,9000,0,100),
((@GUID+6)*10,26,2550.777,7222.863,364.7687,0,0,100),
((@GUID+6)*10,27,2576.457,7241.635,365.0492,0,0,100),
((@GUID+6)*10,28,2621.099,7253.687,365.0514,0,0,100),
((@GUID+6)*10,29,2656.336,7230.631,365.1657,0,0,100),
((@GUID+6)*10,30,2690.099,7217.15,365.5091,0,0,100),
((@GUID+6)*10,31,2720.737,7208.398,367.2506,0,0,100),
((@GUID+6)*10,32,2761.569,7195.032,365.401,0,0,100),
((@GUID+6)*10,33,2792.928,7184.984,365.4549,0,0,100),
((@GUID+6)*10,34,2827.187,7165.651,366.5958,0,0,100),
((@GUID+6)*10,35,2837.081,7131.506,365.7268,0,0,100),
((@GUID+6)*10,36,2841.363,7097.931,367.0297,0,0,100),
((@GUID+6)*10,37,2849.089,7065.09,365.8369,0,0,100),
((@GUID+6)*10,38,2852.413,7033.049,364.5335,0,0,100),
((@GUID+6)*10,39,2849.583,6993.604,363.8603,0,0,100),
((@GUID+6)*10,40,2854.475,6962.759,364.3975,0,0,100),
((@GUID+6)*10,41,2876.336,6920.534,364.9657,0,0,100),
((@GUID+6)*10,42,2887.976,6890.917,364.1094,0,0,100),
((@GUID+6)*10,43,2913.909,6856.312,364.4159,0,0,100),
((@GUID+6)*10,44,2938.403,6825.553,367.3507,0,0,100),
((@GUID+6)*10,45,2967.726,6816.784,369.4832,0,0,100),
((@GUID+6)*10,46,2993.627,6825.559,369.7497,0,0,100),
((@GUID+6)*10,47,2988.459,6846.539,376.5275,0,0,100),
((@GUID+6)*10,48,2988.459,6846.539,376.5275,10000,0,100); -- 1.870469

DELETE FROM `waypoint_data` WHERE `id`=(@GUID+9)*10;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`action`,`orientation`) VALUES
((@GUID+9)*10,1,2988.13,6863.28,375.9545,0,0,100),
((@GUID+9)*10,2,2992.726,6895.1,365.5517,0,0,100),
((@GUID+9)*10,3,2992.265,6891.968,366.3757,0,0,100),
((@GUID+9)*10,4,2989.961,6961.477,364.8179,0,0,100),
((@GUID+9)*10,5,2985.509,6997.022,364.5116,0,0,100),
((@GUID+9)*10,6,2984.054,7031.387,365.3501,0,0,100),
((@GUID+9)*10,7,2993.656,7059.643,368.9382,0,0,100),
((@GUID+9)*10,8,2984.732,7083.445,363.981,0,0,100),
((@GUID+9)*10,9,2970.897,7108.631,365.2723,0,0,100),
((@GUID+9)*10,10,2970.897,7108.631,365.2723,0,0,100),
((@GUID+9)*10,11,2907.483,7141.881,365.0929,0,0,100),
((@GUID+9)*10,12,2868.677,7163.06,365.4425,0,0,100),
((@GUID+9)*10,13,2835.554,7179.168,365.9366,0,0,100),
((@GUID+9)*10,14,2801.482,7182.202,365.9344,0,0,100),
((@GUID+9)*10,15,2801.688,7182.189,365.8926,0,0,100),
((@GUID+9)*10,16,2765.938,7187.932,364.5597,0,0,100),
((@GUID+9)*10,17,2743.313,7219.739,366.8819,9000,0,100),
((@GUID+9)*10,21,2682.883,7205.929,364.783,0,0,100),
((@GUID+9)*10,22,2651.08,7185,364.8195,0,0,100),
((@GUID+9)*10,23,2618.724,7156.641,365.5,0,0,100),
((@GUID+9)*10,24,2583.327,7149.052,364.3838,0,0,100),
((@GUID+9)*10,25,2549.887,7141.536,366.6125,0,0,100),
((@GUID+9)*10,26,2521.043,7122.26,365.9124,0,0,100),
((@GUID+9)*10,27,2486.825,7108.168,365.609,0,0,100),
((@GUID+9)*10,28,2453.876,7090.37,365.6112,0,0,100),
((@GUID+9)*10,29,2408.96,7080.868,366.5668,0,0,100),
((@GUID+9)*10,30,2390.1,7084.899,369.3671,9000,0,100),
((@GUID+9)*10,31,2442.537,7082.254,365.7336,0,0,100),
((@GUID+9)*10,32,2483.175,7101.028,366.109,0,0,100),
((@GUID+9)*10,33,2515.234,7110.096,364.6655,0,0,100),
((@GUID+9)*10,34,2548.75,7088.299,365.6632,0,0,100),
((@GUID+9)*10,35,2578.361,7056.144,364.687,0,0,100),
((@GUID+9)*10,36,2592.16,7029.513,362.5629,0,0,100),
((@GUID+9)*10,37,2628.004,7028.662,370.3814,0,0,100),
((@GUID+9)*10,38,2661.612,7033.239,365.6435,0,0,100),
((@GUID+9)*10,39,2701.727,7057.749,364.2419,0,0,100),
((@GUID+9)*10,40,2733.51,7033.505,364.8325,0,0,100),
((@GUID+9)*10,41,2765.445,7000.165,365.118,0,0,100),
((@GUID+9)*10,42,2800.981,6979.603,365.2207,0,0,100),
((@GUID+9)*10,43,2834.311,6969.397,364.2201,0,0,100),
((@GUID+9)*10,44,2864.97,6951.328,365.2757,0,0,100),
((@GUID+9)*10,45,2911.983,6945.313,364.4002,0,0,100),
((@GUID+9)*10,46,2945.765,6943.887,364.2199,0,0,100),
((@GUID+9)*10,47,2963.815,6905.819,366.568,0,0,100),
((@GUID+9)*10,48,2980.54,6883.809,370.239,0,0,100),
((@GUID+9)*10,49,2986.779,6863.069,375.7235,0,0,100),
((@GUID+9)*10,50,2988.446,6848.862,376.5275,0,0,100),
((@GUID+9)*10,51,2988.446,6848.862,376.5275,10000,0,100); -- 4.900096

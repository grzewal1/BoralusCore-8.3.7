-- fishing trainers
DELETE FROM `trainer` WHERE `Id`=876;
INSERT INTO `trainer` (`Id`, `Type`, `Greeting`, `VerifiedBuild`) VALUES
(876, 2, 'I can teach you how to fish.', 27602);

DELETE FROM `trainer_spell` WHERE (`TrainerId`=876 AND `SpellId`=131476) OR (`TrainerId`=876 AND `SpellId`=63275) OR (`TrainerId`=876 AND `SpellId`=271663) OR (`TrainerId`=876 AND `SpellId`=271720) OR (`TrainerId`=876 AND `SpellId`=271657) OR (`TrainerId`=876 AND `SpellId`=271617) OR (`TrainerId`=876 AND `SpellId`=271661) OR (`TrainerId`=876 AND `SpellId`=271673) OR (`TrainerId`=876 AND `SpellId`=271665) OR (`TrainerId`=876 AND `SpellId`=271659);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(876, 63275, 1, 0, 0, 0, 0, 0, 1, 27602),
(876, 131476, 1, 0, 0, 0, 0, 0, 1, 27602),
(876, 271617, 100, 0, 0, 0, 0, 0, 5, 27602),
(876, 271663, 250000, 356, 1, 0, 0, 0, 78, 27602),
(876, 271720, 500000, 356, 1, 0, 0, 0, 110, 27602),
(876, 271657, 100000, 356, 1, 0, 0, 0, 58, 27602),
(876, 271661, 200000, 356, 1, 0, 0, 0, 78, 27602),
(876, 271673, 400000, 356, 1, 0, 0, 0, 98, 27602),
(876, 271665, 300000, 356, 1, 0, 0, 0, 88, 27602),
(876, 271659, 150000, 356, 1, 0, 0, 0, 58, 27602);

DELETE FROM `creature_default_trainer` WHERE `CreatureId`=138026;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(138026, 876);

update `creature_template` set `faction`=35,`gossip_menu_id`=17157,`npcflag`=npcflag|80 where `entry`=138026;
update `creature_template` set `gossip_menu_id`=17157,`npcflag`=npcflag|80 where `entry` IN (1700,5938,17101,1651,5941,77733,
45286,16780,16774,12961,4573,5493,4156,5161,3332,44975,56068,23896,12032,7946,14740,2834,3028,26957,26909,32474,26993,3607,5690,33623,
18911,18018,25580,28742,63721,70398,66358,79892,85825,85926,86628,94311,96097,95844,108825,122705,138460,136102,151462,138026);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (7946,26909,26993,32474,33623,45286,86628,138460);
DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN
(1651,
1700,
2834,
3028,
3332,
3607,
4156,
4573,
5161,
5493,
5690,
5938,
5941,
12032,
12961,
14740,
16774,
16780,
17101,
18018,
18911,
23896,
25580,
26957,
28742,
44975,
56068,
63721,
66358,
70398,
77733,
79892,
85825,
85926,
94311,
95844,
96097,
108825,
122705,
136102,
151462) AND `TrainerId`=876;
INSERT INTO `creature_default_trainer` (`CreatureId`,`TrainerId`) VALUES
(1651,876),
(1700,876),
(2834,876),
(3028,876),
(3332,876),
(3607,876),
(4156,876),
(4573,876),
(5161,876),
(5493,876),
(5690,876),
(5938,876),
(5941,876),
(7946,876),
(12032,876),
(12961,876),
(14740,876),
(16774,876),
(16780,876),
(17101,876),
(18018,876),
(18911,876),
(23896,876),
(25580,876),
(26909,876),
(26957,876),
(26993,876),
(28742,876),
(32474,876),
(33623,876),
(44975,876),
(45286,876),
(56068,876),
(63721,876),
(66358,876),
(70398,876),
(77733,876),
(79892,876),
(85825,876),
(85926,876),
(86628,876),
(94311,876),
(95844,876),
(96097,876),
(108825,876),
(122705,876),
(136102,876),
(138460,876),
(151462,876);

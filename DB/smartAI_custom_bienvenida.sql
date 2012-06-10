/*limpieza */

DELETE FROM creature_template WHERE entry='5000012';
DELETE FROM creature WHERE id='5000012';
DELETE FROM creature_text WHERE entry = '5000012';
DELETE FROM smart_scripts WHERE entryorguid='5000012';

/* Creacion de un personaje de bienvenida */
 INSERT INTO creature_template (`entry`,`modelid1`,`name`,`subname`,`minlevel`,`maxlevel`,`faction_A`,`faction_H`,`rank`,`type_flags`,`AIName`)VALUES ('5000012','19706','Anfitrion','WowSSS','80','80','35','35','2','2','SmartAI');
 INSERT INTO creature (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('5000012','530','15','1','0','0','10349.453125','-6379.676270','38.220627','1.995387','0','0','0','0','0','0','0','0','0');

/* Mensaje de bienvenida */ 

INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`)VALUES ('5000012','1','0','Hey, por aqui, $N.','14','100','22');
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`)VALUES ('5000012','2','0','Bienvenido a WowSSS $N , yo soy el anfitrion','12','100','0');
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`)VALUES ('5000012','3','0','Agradezco mucho tu visita $B y espero que la pases muy bien aquí en WowSSS','12','100','0');
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`)VALUES ('5000012','4','0','Mis mecánicos trabajan día y noche para que tu estadía aquí sea placentera','12','100','0');
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`)VALUES ('5000012','5','0','Pero bueno no te entretengo más buena suerte $N $B te veré cuando seas famoso. ','12','100','66');
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`)VALUES ('5000012','0','0','0','1','0','100','0','4000','4000','60000','60000','84','1','1','Comentario Cuztom');
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`)VALUES ('5000012','0','1','0','1','0','100','0','8000','8000','60000','60000','84','2','1','Comentario Cuztom 2');
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`)VALUES ('5000012','0','2','0','1','0','100','0','12000','12000','60000','60000','84','3','1','Comentario Cuztom 3');
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`)VALUES ('5000012','0','3','0','1','0','100','0','16000','16000','60000','60000','84','4','1','Comentario Cuztom 4');
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`)VALUES ('5000012','0','4','0','1','0','100','0','20000','20000','60000','60000','84','5','1','Comentario Cuztom 5');


/* Tracucciones -- no funcionales

INSERT INTO script_texts (`npc_entry`,`entry`,`content_default`,`content_loc6`,`type`,`comment`) VALUES ('500006','-1700010','Hey $N here.','Hey $N por aqui.','1','Cuztom_01');
INSERT INTO creature_ai_texts (`entry`,`content_default`,`content_loc6`,`type`,`comment`) VALUES ('-1700010','Hey $N here.','Hey $N por aqui.','1','Cuztom_01');

*/
dia_chance = random(15);

if (keyboard_check_pressed(ord("C")) && distance_to_object(obj_mainchara) < 10 && !instance_exists(obj_textbox)) {	
	
	if (dia_chance < 14)
		create_tbox("ExamineFlower");
	else
		create_tbox("ExamineFlowerAlt");
}
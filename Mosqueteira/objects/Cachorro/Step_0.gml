var _chao = instance_place(x, y + 1, obj_ground);

if (_chao)
{
	//tempo de decidir andar
	tempo_de_anda -= 1;
	//se o tempo acabou, eu decido se vou andar 
	if(tempo_de_anda < 0)
	{
		andando = choose(true, false);
	
		if(andando)
		{
			velh = choose(vel, -vel);
		}
		else
		{
			velh = 0;
		}
		tempo_de_anda = room_speed * 3;
	}
	if(velh != 0)
	{
		sprite_index = spr_cachorro_run;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_cachorro;
	}
	
	if (place_meeting(x + velh, y, obj_ground))
	{
		velh *= -1;	
	}
	if (pode_cair == false)
	{
		if (place_meeting(x + (velh * 10), y + 1, obj_ground) == false)
		{
			//se eu nao posso cair mudo de direç~ão
			velh *= -1;
		}
	}
}
else
{
	velv += grav;
	
	velh = 0;
	if (velh != 0)
	{
		image_xscale = sign(velh);	
	}
}
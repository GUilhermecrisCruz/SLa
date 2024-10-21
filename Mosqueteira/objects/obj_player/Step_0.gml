/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Mov do player
var _ground = place_meeting(x, y + 1, obj_ground);

var _left, _right, _jump;
_left = keyboard_check(inputs.left)
_right = keyboard_check(inputs.right)
_jump = keyboard_check_pressed(inputs.jump)

velh = ( _right - _left) * vel;


//pulando
if (_ground)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
	
	//se estiver andando
	if (velh != 0)
	{
		sprite_index = spr_andando;
		//inverter
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_idle;
	}
}
else
{
	//pulo anim	
	sprite_index = spr_jump;
	velv += grav;
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
	
}


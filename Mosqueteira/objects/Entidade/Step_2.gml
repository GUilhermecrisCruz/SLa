//fazendo colisao
//checando colisao parede
var _coli = instance_place(x + velh, y, obj_ground);
//se eu colidi eu grupo em quem colidiu
if(_coli){
	//chencando direita
	if (velh > 0)
	{
		x = _coli.bbox_left + (x - bbox_right);
	}
	
	if (velh < 0)
	{
		x = _coli.bbox_right + (x - bbox_left)	
	}
	
	velh = 0
}
//

//
x += velh;
//


//teste de colisao
var _coli = instance_place(x, y + velv, obj_ground);
//se eu colidi eu grupo em quem colidiu
if(_coli){
	
	velv = 0
}
//

//
y += velv;
//
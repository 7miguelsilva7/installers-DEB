/** jquery.color.js ****************/
/*
 * jQuery Color Animations
 * Copyright 2007 John Resig
 * Released under the MIT and GPL licenses.
 */
function mudar_img(i) 
	{
	document.getElementById("PRE-IMG").style.display = "block";
	document.getElementById("imagem_jogo").src = i ;
	document.getElementById("frame").style.display = "none";
	}
function limpa_imagem()
	{
	document.getElementById("PRE-IMG").style.display = "none";
	document.getElementById("frame").style.display = "block";
	}
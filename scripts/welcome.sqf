// Flos Wetterscript 05.04.2014

sleep 500;
while {true} do {
_date = date;
_array = ["24", "18", "36", "22", "21", "25", "27", "28"];
_temp = _array select floor random count _array;

 //= temperaturF; 
_wind = wind;
_winddir = windDir;
_gusts = gusts;
_perdict2 = fog;
_perdict3 = rain;
_perdict4 = waves;


_onScreenTime = 8; 
_role1 = 	"Bem vindo ao Altis Life IdG-Br clan server";
_role1names = ["Respeite a todos"]; 
_role2 = 	"Utilize nosso TS:";
_role2names =["irmaosdeguerra.ts3pro.com"];
_role3 = 	"Duvidas e Sugestões:";
_role3names =["irmaosdeguerra.ts3pro.com"];
_role4 = 	"Funções de Pegar Dinheiro,Reparar Veiculo,Comprar Casa,etc";
_role4names =["Tecla do Windows"];
_role5 = 	"Informações";
_role5names =["irmaosdeguerra.ts3pro.com"];
_role6 = 	"Leia as Regras";
_role6names =["Evite Banimentos"];
_role7 = 	"Policias";
_role7names =["Obrigatorio uso do Team Speak"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.5,0.35], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//A lista abaixo shouldhave exatamente a mesma quantidade de papéis: como a lista acima
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]

];
sleep 1200;
};
[]execVM "weatherservice.sqf";
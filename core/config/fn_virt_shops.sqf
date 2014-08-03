/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Mercado",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "donator": {["Mercado de Doador",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]}; //DILU
	case "rebel": {["Mercado Rebelde",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Mercado da Gang", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Loja do Doc",["turtlesoup","turtle"]]};
	case "coffee": {["LeCafe",["coffee","donuts"]]};
	case "heroin": {["Traficante de Drogas",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Comprador de Óleo",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Peixaria",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Comprador de Vidro",["glass"]]};
	case "iron": {["Comprador de Ferro/Cobre",["iron_r","copper_r"]]};
	case "diamond": {["Comprador de Diamante",["diamond","diamondc"]]};
	case "salt": {["Comprador de Sal",["salt_r"]]};
	case "cop": {["Mercado Policial",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Comprador de Cimento",["cement"]]};
	case "gold": {["Comprador de Dinheiro",["goldbar"]]};
};
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;
import mods.jei.JEI.removeAndHide as removal;
print("Vanilla changes here");

val ironPlate = <thermalfoundation:material:32>;
val ironGear = <ore:ingotTin>;
val cobbleTwoTimes = <ore:compressed1xCobblestone>;

#Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShaped("CtFlintandSteel", <minecraft:flint_and_steel>,
	[[<flintmod:tool_part_flint>, <ore:ingotRefinedIron>]]);


# Rustic Advanced Condenser # blazing trail gate to thaum
recipes.remove(<rustic:condenser_advanced>);
recipes.addShaped("CtAdvancedCondenser", <rustic:condenser_advanced>,
	[[null, <minecraft:netherbrick>, null],
	[<minecraft:netherbrick>, <minecraft:bucket>, <minecraft:netherbrick>],
	[<minecraft:netherbrick>, <thaumcraft:metal_thaumium>, <minecraft:netherbrick>]]);

# Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped("CtLeatherStrap", <simplyjetpacks:metaitem:4>,
	[[null, null, null],
	[<minecraft:leather>, <botania:manaresource>, <minecraft:leather>],
	[<minecraft:leather>, <botania:manaresource>, <minecraft:leather>]]);

#Drawer controller and slave
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("CTdrawercontroller", <storagedrawers:controller>, 
 [[<ic2:itemmisc:256>, <actuallyadditions:block_testifi_bucks_green_wall>, <ic2:itemmisc:256>],
 [<randomthings:stableenderpearl>, <thermalexpansion:frame:64>, <randomthings:stableenderpearl>], 
 [<actuallyadditions:item_crystal>, <actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:item_crystal>]]);
 removal(<storagedrawers:controllerslave>);

#duplicate nether star block
removal(<overloaded:nether_star_block>);

#Quartz ingot
recipes.addShaped("CCTquartzingot", <contenttweaker:quartzingot>, 
 [[null, <ore:dustNetherQuartz>, null],
 [<ore:dustCertusQuartz>, <minecraft:iron_ingot>, <ore:dustQuartzBlack>], 
 [null, <ore:dustNetherQuartz>, null]]);


#Minecraft bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped("CTbucket", <minecraft:bucket>,
 [[null, <ic2:itemcable>, null],
 [ironPlate, null, ironPlate],
 [null, ironPlate, null]]);
 
#furnace change
recipes.removeShaped(<minecraft:furnace>);
recipes.addShaped("CtFurnace",<minecraft:furnace>,
 [[cobbleTwoTimes,cobbleTwoTimes,cobbleTwoTimes],
 [cobbleTwoTimes,<minecraft:chest>,cobbleTwoTimes],
 [cobbleTwoTimes,ironGear,cobbleTwoTimes]]);

#Charcoal
furnace.remove(<ore:charcoal>,<ore:logWood>);

#change quark sandstone
recipes.removeShaped(<quark:sandstone_new>);
recipes.addShaped("ctQuarkpolished",<quark:sandstone_new> *9,
 [[<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
 [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>],
 [<minecraft:sandstone>,<minecraft:sandstone>,<minecraft:sandstone>]]);

#draconium chest alternate recipe
recipes.addShaped("CTdracchest", <draconicevolution:draconium_chest>,
 [[<contenttweaker:manadiamondplate>, <minecraft:crafting_table>, <contenttweaker:manadiamondplate>],
 [<ironchest:iron_chest:6>, <thermalexpansion:frame>, <ironchest:iron_chest:6>], 
 [<ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>, <ic2:blockmachinelv:1>]]);

#flroalchemy jei integration

//addDescription(IItemStack[] item, string... desc);
mods.jei.JEI.addDescription([<botania:specialflower>.withTag({type: "petro_petunia"}), <botania:floatingspecialflower>.withTag({type: "petro_petunia"})],
["acceptable fuels must be placed 1y below either in a tank or in world", 
 "Refined canola", 
 "crystalised oil",
 "empowered oil",
 "Biodiesel", 
 "Diesel", 
 "Syngas"]);

#furnace.remove array
	val ingotArray = [
	<ore:ingotIron>,
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:ingotCopper>,
	<ore:gemLapis>,
	<ore:gemDiamond>,
	<ore:dustRedstone>,
	<ore:gemQuartz>,
	<ore:gemEmerald>,
	<ore:gemQuartzBlack>,
	<ore:ingotDraconium>,
	<ore:ingotDraconium>,
	<ore:ingotDraconium>,
	<ore:ingotLead>,
	<ore:gemAquamarine>,
	<ore:ingotAstralStarmetal>,
	<ore:ingotAluminum>,
	<ore:gemAmethyst>,
	<ore:gemRuby>,
	<ore:gemPeridot>,
	<ore:gemTopaz>,
	<ore:gemTanzanite>,
	<ore:gemMalachite>,
	<ore:gemSapphire>,
	<ore:gemAmber>,
	<ore:slimeball>,
	<ore:itemClay>,
	<ore:dustRedstone>,
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:gemLapis>,
	<ore:gemEmerald>,
	<ore:gemDiamond>,
	<ore:dustRedstone>,
	<ore:gemLapis>,
	<ore:gemDiamond>,
	<ore:ingotGold>,
	<ore:coal>,
	<ore:ingotIron>,
	<ore:gemEmerald>,
	<ore:ingotThorium>,
	<ore:ingotLithium>,
	<ore:ingotMagnesium>,
	<ore:ingotOsmium>,
	<ore:ingotBoron>,
	<ore:ingotPlatinum>,
	<ore:ingotIridium>,
	<ore:ingotMithril>,
	<ore:dustDilithium>,
	<ore:ingotArdite>,
	<ore:ingotCobalt>,
	<ore:quicksilver>]as IIngredient[];

	val oreArray = [
	<ore:crushedPurifiedIron>,
	<ore:oreIron>,
	<ore:oreGold>,
	<ore:oreCoal>,
	<ore:oreCopper>,
	<ore:oreLapis>,
	<ore:oreDiamond>,
	<ore:oreRedstone>,
	<ore:oreQuartz>,
	<ore:oreEmerald>,
	<ore:oreQuartzBlack>,
	<draconicevolution:draconium_ore>,
	<draconicevolution:draconium_ore:1>,
	<draconicevolution:draconium_ore:2>,
	<ore:oreLead>,
	<ore:oreAquamarine>,
	<ore:oreAstralStarmetal>,
	<ore:oreAluminum>,
	<ore:oreAmethyst>,
	<ore:oreRuby>,
	<ore:orePeridot>,
	<ore:oreTopaz>,
	<ore:oreTanzanite>,
	<ore:oreMalachite>,
	<ore:oreSapphire>,
	<ore:oreAmber>,
	<aroma1997sdimension:miningore>,
	<aroma1997sdimension:miningore:1>,
	<ore:oreNetherRedstone>,
	<ore:oreNetherIron>,
	<ore:oreNetherGold>,
	<ore:oreNetherCoal>,
	<ore:oreNetherLapis>,
	<ore:oreNetherEmerald>,
	<ore:oreNetherDiamond>,
	<ore:oreEndRedstone>,
	<ore:oreEndLapis>,
	<ore:oreEndDiamond>,
	<ore:oreEndGold>,
	<ore:oreEndCoal>,
	<ore:oreEndIron>,
	<ore:oreEndEmerald>,
	<ore:oreThorium>,
	<ore:oreLithium>,
	<ore:oreMagnesium>,
	<ore:oreOsmium>,
	<ore:oreBoron>,
	<ore:orePlatinum>,
	<ore:oreIridium>,
	<ore:oreMithril>,
	<ore:oreDilithium>,
	<ore:oreArdite>,
	<ore:oreCobalt>,
	<ore:oreCinnabar>]as IIngredient[];


	val AL = oreArray.length;

	for i in 0 to AL{
	    furnace.remove(ingotArray[i],oreArray[i]);
	}

	#durabilty removal
	val picks = [<minecraft:iron_pickaxe>,<minecraft:golden_pickaxe>,<minecraft:diamond_pickaxe>] as IItemStack[];

for i in picks{

	i.maxDamage = 1;
	   
	}
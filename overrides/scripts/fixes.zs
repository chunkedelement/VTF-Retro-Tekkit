print("Initializing 'fixes.zs'...");

#Remove ChunkLoaders (FTBU is used)
recipes.remove(<opencomputers:upgrade:4>);
<opencomputers:upgrade:4>.addTooltip(format.darkRed("Disabled due to Mod Overlap!"));

#barley seeds recipe dup
recipes.remove(<harvestcraft:barleyitem>);
recipes.addShapeless(<harvestcraft:barleyseeditem> * 2,
	[<harvestcraft:barleyitem>, <harvestcraft:barleyitem>]);
#rustic iron chain conflict
	recipes.remove(<rustic:chain>);
	recipes.addShaped("Rustic Iron Chain", 
	<rustic:chain> * 12, 
	[[<ore:ingotIron>, null, null],
	[null, <ore:ingotIron>, null], 
	[<ore:ingotIron>, null, null]]);

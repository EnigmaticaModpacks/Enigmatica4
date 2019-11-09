#priority 950
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function formatRecipeName(item as IItemStack) as string {
	return "placeholder";
	/* return item.registryName.replaceAll(':','_'); */
}

/* public function metals() as IIngredient[string][string] {
	var materials as IIngredient[string][string] = {
	"copper": {
		"nugget": <item:minecraft:iron_nugget>
	}
};
	return materials;
} */
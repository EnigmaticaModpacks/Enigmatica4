#priority 1100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

public expand MCTag {
    public first() as IItemStack? {
        if (!this.isItemTag) {
            return <item:minecraft:air>;
        }
        return this.items.length == 0 ? <item:minecraft:air> : items[0];
    }
}

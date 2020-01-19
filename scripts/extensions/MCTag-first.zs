#priority 990

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

public expand MCTag {
    public first() as IItemStack? {
        var items = this.items;
        return items.length == 0 ? <item:minecraft:air> : items[0];
    }
}

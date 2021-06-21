# CHANGELOG v2.7.0
## General
- Updated for 1.17
- template packs are updated for this version (v2.7.0)
- There are some slight changes with the API, mainly with the entity selectors and namespaces. Check the template for more.
- Note that this update has not been multiplayer tested, Play at your own risk.
- You can now place other blocks on-top of the custom blocks, Note that their model does become darker.
- When you renamed multiple crafting tables to `Custom Crafting Table` It will now give you back that many. It will throw an error if you renamed more than 16.
- Custom crafting table has new default textures, Looks like a stone crafting table.
- When you rename a crafting table (to get the custom crafting table) you can use any of the following formats.
    - `Custom Crafting Table` (Minecraft caps)
    - `custom crafting table` (all lowercase)
    - `CUSTOM CRAFTING TABLE` (all uppercase)
- When you break the block it will now drop its item instead of giving the item to the player, same for crafting the Recipe Book Table.
## Bug Fixes
- [#2](https://github.com/legopitstop/LPS-Recipe-API-Datapack/issues/2) Placing the custom block on any non-full block will get replaced
- [#4](https://github.com/legopitstop/LPS-Recipe-API-Datapack/issues/4) Bug crafting table replace items.
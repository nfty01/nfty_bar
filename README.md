## How to use:
`exports['nfty_bar']:run(TIME,TEXT,OPTIONAL_COLOR)`

`TIME`: [Number] Idő másodpercben \ Time in seconds  
`TEXT`: [String] Szöveg amit kiírjon a progress bar \ Text shown in the progress bar  
`OPTIONAL_COLOR`: [String] Szín hexa kódként \ Color in HEX

**`exports['nfty_bar']:stop()`**
> Így meg fog állni a progress bar \ This will stop the progress bar

## Példa Kód \ Example Code:
```lua
exports['nfty_bar']:run(10,'Lockpicking','#E14127')
Citizen.Wait(10000) --Citizen.Wait-nél az érték másodpercben értendő nem kötelezeő exportkor beírni\ Citizen.Wait time in Seconds but not requirements 

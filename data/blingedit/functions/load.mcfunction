scoreboard objectives add deleted dummy
execute if score Global deleted matches 1 as @a[scores={language=0}] run function blingedit:interface/en/uninstall
execute if score Global deleted matches 1 as @a[scores={language=1}] run function blingedit:interface/language.pack/uninstall
execute if score Global deleted matches 1 as @a[scores={language=2}] run function blingedit:interface/rus/uninstall
execute unless score Global deleted matches 1 run function blingedit:reset
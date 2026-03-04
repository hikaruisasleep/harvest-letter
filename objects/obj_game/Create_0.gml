randomize()

global.words = [
  "harvest",
  "crop",
  "plow",
  "seed",
  "soil",
  "tractor",
  "barn",
  "field",
  "watering",
  "fertilizer",
  "scarecrow",
  "greenhouse",
  "sprinkler",
  "irrigation",
  "grain",
  "hay",
  "orchard",
  "vineyard",
  "compost",
  "weed",
  "hoe",
  "shovel",
  "rake",
  "wheelbarrow",
  "sickle",
  "farmhouse",
  "windmill",
  "pasture",
  "sprout",
  "seedling",
  "plantation",
  "produce",
  "cropdust",
  "germinate",
  "harvester",
  "storage",
  "yield"
]

global.tasks = [
 "Plant blueberries",
    "Water the tomatoes",
    "Harvest the carrots",
    "Feed the cows",
    "Shear the sheep",
    "Collect chicken eggs",
    "Plow the soil",
    "Remove weeds",
    "Refill the watering can",
    "Milk the goats",
    "Fertilize the corn",
    "Harvest the wheat",
    "Fix the broken fence",
    "Clean the barn",
    "Gather hay for livestock",
    "Plant strawberry seeds",
    "Check soil moisture",
    "Harvest the pumpkins",
    "Feed the pigs",
    "Collect honey from beehives",
    "Repair the tractor",
    "Move hay bales",
    "Refill animal water troughs",
    "Spray crops for pests",
    "Plant apple saplings",
    "Trim overgrown bushes",
    "Pick ripe oranges",
    "Harvest potatoes",
    "Release ducks into the pond",
    "Clean the chicken coop",
    "Sort harvested vegetables",
    "Load produce into crates",
    "Deliver milk to the market",
    "Gather fallen branches",
    "Compost leftover plants",
    "Install new irrigation pipes",
    "Check livestock health",
    "Harvest rice paddies",
    "Feed fish in the pond"
]

assigned_tasks = []
completed_tasks = []

selected_task = undefined

y_offset = 30
task_index = 0
show_tutorial = false
show_tutorial_type = false

show_todolist = false;

global.coins = 1000;
global.carrot = 0;
global.carrotseed = 0;
global.popup_open = false;
global.trigger_time = irandom_range(14 * 60, 16 * 60); 

//Drag Slot in Shop
global.inv_player = array_create(5, -1);

randomize();

// --- DATA KATA & TUGAS ---
global.words = [
  "harvest", "crop", "plow", "seed", "soil", "tractor", "barn", "field", 
  "watering", "fertilizer", "scarecrow", "greenhouse", "sprinkler", "irrigation", 
  "grain", "hay", "orchard", "vineyard", "compost", "weed", "hoe", "shovel", 
  "rake", "wheelbarrow", "sickle", "farmhouse", "windmill", "pasture", "sprout", 
  "seedling", "plantation", "produce", "cropdust", "germinate", "harvester", "storage", "yield"
];

global.tutor_words = ["Plant", "Water"];

global.tasks = [
    "Plant blueberries", "Water the tomatoes", "Harvest the carrots", "Feed the cows", 
    "Shear the sheep", "Collect chicken eggs", "Plow the soil", "Remove weeds", 
    "Refill the watering can", "Milk the goats", "Fertilize the corn", "Harvest the wheat", 
    "Fix the broken fence", "Clean the barn", "Gather hay for livestock", "Plant strawberry seeds", 
    "Check soil moisture", "Harvest the pumpkins", "Feed the pigs", "Collect honey from beehives", 
    "Repair the tractor", "Move hay bales", "Refill animal water troughs", "Spray crops for pests", 
    "Plant apple saplings", "Trim overgrown bushes", "Pick ripe oranges", "Harvest potatoes", 
    "Release ducks into the pond", "Clean the chicken coop", "Sort harvested vegetables", 
    "Load produce into crates", "Deliver milk to the market", "Gather fallen branches", 
    "Compost leftover plants", "Install new irrigation pipes", "Check livestock health", 
    "Harvest rice paddies", "Feed fish in the pond"
];

// Menggunakan data dari Versi 2 karena langkah tutorialnya lebih lengkap
global.tutor_tasks = [
    "Open the mail", "Collect the seeds", "Plant the seeds", 
    "Collect the water", "Water the crops", "Sleep"
];

global.soil_index = 0

global.soil_location = [
	{x: 224, y: 1248},
	{x: 480, y: 1280},
	{x: 224, y: 1536},
	{x: 480, y: 1536},
];

// --- STATE GAME & TUTORIAL ---
global.tutorial_index = 0; 
assigned_tasks = [];
completed_tasks = [];
selected_task = undefined;

y_offset = 30;
task_index = 0;
show_tutorial = false;
show_tutorial_type = false;
show_todolist = false;
show_shop_ui = false;
show_upgradeUI = false;

// --- EKONOMI & INVENTORY (PUSAT DATA) ---
global.coins = 1000;
global.carrot = 0;
global.carrotseed = 0;
global.potato = 0;
global.potatoseed = 0;
global.waterbucket = 0; 

global.popup_open = false;
global.trigger_time = irandom_range(14 * 60, 16 * 60);

// --- SISTEM UPGRADE ---
global.upgrade_qte_level = 0;
global.upgrade_water_level = 0;
global.max_upgrade = 3;
global.price_qte = 600;
global.price_water = 600;

global.qte_base_words = 6;
global.qte_base_reward = 200;
global.water_max_capacity = 1;
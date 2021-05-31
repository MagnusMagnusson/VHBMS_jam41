global.stakes = new Array();
var addStake = function(e){
	global.stakes.append(e);
}

addStake({	
	name: "Wooden Stake",
	key:"stake_wood",
	desc:"A very standard stake.",
	weight : 1,
	durability : 3,
	moneyBonus : 1,
	bounce : 0.75,
	slowdown : 0.95,
	one_time_use: false,
	sprite : sp_stake_wood,
	def : true,
});
	
addStake({	
	name: "Metal Stake",
	key:"stake_metal",
	desc:"A stake that is heavier than wood and can't bounce as much, but it will not break nor slow down on killing vampires.",
	weight : 1.15,
	durability : 99999,
	moneyBonus : 1,
	bounce : 0.7,
	slowdown : 1,
	one_time_use: false,
	sprite : sp_stake_stone,
	def : false,
});
addStake({	
	name: "Lamb Steak",
	key:"stake_lamb",
	desc:"It may slow down more when killing vampires, but just like in life a good lamb-steak will bounce better than any other.",
	weight : 0.9,
	durability : 3,
	moneyBonus : 1,
	bounce : 0.87,
	slowdown : 0.8,
	one_time_use: false,
	sprite : s_stake_lamb,
	def : false,
}); 
addStake({	
	name: "Financial Stake",
	key:"stake_gold",
	desc:"A very heavy stake that won't go far, but it makes five times more money than wood stakes.",
	weight : 1.25,
	durability : 3,
	moneyBonus : 5,
	bounce : 0.7,
	slowdown : 0.95,
	one_time_use: true,
	sprite : sp_stake_money,
	def : false,
});
addStake({	
	name: "Glass Stake",
	key:"stake_glass",
	desc:"An exceptionally light and fragile stake. Goes far, but does not bounce and earns nearly no money",
	weight : 0.3,
	durability  : 1,
	moneyBonus : 0.075,
	bounce : 0,
	slowdown : 0,
	one_time_use: false,
	sprite : s_stake_glass,
	def : false,
});
addStake({	
	name: "Carbon-Fiber Stake",
	key:"stake_carbon",
	desc:"The latest in high-tech vampire killing manufacturing. Very light, very durable, not very bouncy",
	weight : 0.5,
	durability : 4,
	moneyBonus : 1,
	bounce : 0.5,
	slowdown : 0.9,
	one_time_use: false,
	sprite : sp_stake_carbon,
	def : false,
});

function stake_get(stake_id){
	___helper = stake_id;
	return global.stakes.filter(function(e) { return e.key == ___helper;}).get(0);
}

function setStake(inst, stake){
	inst.stake = stake;
	inst.life = stake.durability;
	inst.sprite_index = stake.sprite;
}
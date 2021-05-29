global.stakes = new Array();
var addStake = function(e){
	global.stakes.append(e);
}

addStake({	
	name: "Wooden Stake",
	key:"stake_wood",
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
	weight : 1.2,
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
	weight : 0.3,
	durability  : 1,
	moneyBonus : 0,
	bounce : 0,
	slowdown : 0,
	one_time_use: false,
	sprite : s_stake_glass,
	def : false,
});
addStake({	
	name: "Carbon-Fiber Stake",
	key:"stake_carbon",
	weight : 0.45,
	durability : 4,
	moneyBonus : 1,
	bounce : 0.6,
	slowdown : 1,
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
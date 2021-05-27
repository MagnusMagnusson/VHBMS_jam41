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
	slowdown : 1,
	one_time_use: false,
	sprite : sp_stake_wood,
});
	
addStake({	
	name: "Metal Stake",
	key:"stake_metal",
	weight : 1.5,
	durability : 99999,
	moneyBonus : 1,
	bounce : 0.66,
	slowdown : 0,
	one_time_use: false,
	sprite : sp_stake_stone,
});
addStake({	
	name: "Lamb Steak",
	key:"stake_lamb",
	weight : 1.05,
	durability : 3,
	moneyBonus : 1,
	bounce : 0.86,
	slowdown : 1,
	one_time_use: false,
	sprite : s_stake_lamb,
}); 
addStake({	
	name: "Financial Stake",
	key:"stake_gold",
	weight : 1.5,
	durability : 3,
	moneyBonus : 5,
	bounce : 0.7,
	slowdown : 0.75,
	one_time_use: true,
	sprite : sp_stake_money,
});
addStake({	
	name: "Glass Stake",
	key:"stake_glass",
	weight : 0.45,
	durability  : 1,
	moneyBonus : 1,
	bounce : 0,
	slowdown : 100,
	one_time_use: false,
	sprite : s_stake_glass,
});
addStake({	
	name: "Carbon-Fiber Stake",
	key:"stake_carbon",
	weight : 0.5,
	durability : 5,
	moneyBonus : 1,
	bounce : 0.6,
	slowdown : 1.5,
	one_time_use: false,
	sprite : sp_stake_carbon,
});

function stake_get(stake_id){
	___helper = stake_id;
	return global.stakes.filter(function(e) { return e.key == ___helper;}).get(0);
}

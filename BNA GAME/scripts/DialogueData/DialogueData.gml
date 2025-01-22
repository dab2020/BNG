var _speakers = {
	player: {
		name: "SK",
		image: sPlayer
	},
	sage: {
		name: "Sage",
		image: sSage
	},
	wizard: {
		name: "Wizard",
		image: sDetective_1
	},
	horse: {
		name: "Nightmare",
		image: oHorse
	},
	detective: {
		name: "Doctor",
		image: sSherlock
	},
	death: {
		name: "Death",
		image: sDeath
	},
	chemist: {
		name: "Chemist",
		image: sWalter
	}
}


global.dialogue = {}

global.dialogue.first_meet = [
	{
		speaker: _speakers.sage,
		message: "Ah, another traveler stirs. Lost, are you? Searching for answers that drift just beyond your grasp?"
	},
	{
		speaker: _speakers.player,
		message: "Where am I? Who am I? Who are you? Do you know me?"
	},
	{
		speaker: _speakers.sage,
		message: "No, I do not know you. But I have seen your kind before, those who wander this path, their memories stolen, their purpose fractured."
	},
	{
		speaker: _speakers.player,
		message: "You have seen others like me? What happened to them?"
	},
	{
		speaker: _speakers.sage,
		message: "Some found what they sought. Most vanished into the shadows. This road is not kind to the unprepared. But you are here now, and you must walk it."
	},
	{
		speaker: _speakers.player,
		message: "How? I do not even know who I am!"
	},
	{
		speaker: _speakers.sage,
		message: "Your past lies locked away, as if in a chest. To open it, you will need six keys scattered across this world. Each key will test you, shape you, and bring you closer to the truth."
	},
	{
		speaker: _speakers.player,
		message: "Six keys? Where do I start? What if I fail?"
	},
	{
		speaker: _speakers.sage,
		message: "You must start by walking forward. Failure is a choice, not a fate."
	},
	{
		speaker: _speakers.sage,
		message: "The answers you seek are tied to the keys... and to the dangers that guard them."
	},
	{
		speaker: _speakers.sage,
		message: "Beware, traveler. Not all who remember find peace."
	},
	{
		speaker: _speakers.player,
		message: "Wait! Cant you help me? Where can I find the keys?"
	},
	{
		speaker: _speakers.sage,
		message: "The journey is yours alone, traveler."
	},
]


global.dialogue.prompt1 = [
	{
		speaker: _speakers.wizard,
		message: "One Path leads to Clarity, another to despair, Choose Wisely SK"
	}
	]
	
	global.dialogue.prompt2 = [
	{
		speaker: _speakers.horse,
		message: "The Artefact might hold the power to unlock your darkest secrets"
	},
	{
		speaker: _speakers.horse,
		message: "It may seem like a easy choice, but these waters have taken many a man"
	}
	]
	
	
	global.dialogue.prompt3 = [
	{
		speaker: _speakers.detective,
		message: "Traveller, to pass, you must unlock the wisdom of this stone"
	},
	{
		speaker: _speakers.detective,
		message: "Only Those who can decipher life's paradoxes may proceed"
	},
	{
		speaker: _speakers.detective,
		message: "28-2-18-38-10-40-30-24-18-12-10"
	}
	]
	
	global.dialogue.prompt3extra = [
	{
		speaker: _speakers.death,
		message: "Alphabets are twice the numbers"
	},
	{
		speaker: _speakers.player,
		message: "What do you mean"
	},
	{
		speaker: _speakers.death,
		message: "You will find out soon enough"
	}
	]
	
	
	
	global.dialogue.prompt4 = [
	{
		speaker: _speakers.chemist,
		message: "Hello wanderer. It has been ages since I have seen another person in these woods. A pleasant surprise to say the least."
	},
	{
		speaker: _speakers.chemist,
		message: "Ah alas, I must ask for your assistance. You see, I have trouble seeing and need the right amount of salt for my concoction."
	},
	{
		speaker: _speakers.chemist,
		message: "My Product demands the pure essence of salt."
	},
	{
		speaker: _speakers.chemist,
		message: "Extract exactly what is needed to form 0.5 mole of this crystalline compound."
	},
	{
		speaker: _speakers.chemist,
		message: "But beware, the wrong quantity may lead to exposure to harmful chemicals"
	}
	
	]
	
	
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
show_options = false;
options_boxes = [];
switch name {
	case "Intro":
		dialogue_tree = [
			{
				character_name: "Narrator",
				text: [
					"Ah, there's a player here.", 
					"You must be here for Natalie, I think she's asleep still.", 
					"We might have to wait- oh no, I think she's stirring."
				],
				length: 1,
				options: 1
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"*waking up noises*",
					"...",
					"Is someone there?"
				],
				length: 1,
				options: 2
			},
			{
				character_name: "Narrator",
				text: [
					"It's me again, I've got another player for you.",
					"I hope they won't be as much trouble as the last one."
				],
				length: 1,
				options: 3
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"That last person sucked!",
					"Are you not going to say something?"
				],
				length: 1,
				options: [
					["*stay quiet*", 4],
					["Hey, how you doin'?", 5],
					["GOOD MORNING!!", 6]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Sure, I didn't need you to say anything anyway.",
					"It's not like you chose to be here or anything."
				],
				length: 1,
				options: 7
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Hey.",
					"It's probably a bit weird that you were watching me sleep",
					"but you being here is great because it means someone died."
				],
				length: 1,
				options: [
					["How is that Great?", 11]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"OH MY GOD WHY ARE YOU SO LOUD!!",
					"I literally just woke up. Have you any human decency?"
				],
				length: 1,
				options: [
					["I'm Sorry", 9],
					["I don't care, it was funny", 10]
				]
			},
			{
				character_name: "Narrator",
				text: [
					"It's fine, maybe they are just a bit shy.",
					"Besides, I imagine you're quite excited right now."
				],
				length: 1,
				options: 8
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"That's true, I hadn't thought of that, the only reason",
					"a player would be here is if someone has died,",
					"which is great."
				],
				length: 1,
				options: [
					["How is that Great?", 11]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"You'd damn better be sorry!",
					"Anyway, I'm determined to keep my good mood as you'd",
					"only be here if someone has died, which is great."
				],
				length: 1,
				options: [
					["How is that Great?", 11]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"IT WAS NOT FUNNY!",
					"You don't get to appear in someone's bedroom and",
					"start shouting at them, it's not right."
				],
				length: 1,
				options: [
					["I'm Sorry", 9]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					""
				],
				length: 1,
				options: 0
			}
		];
	break;
}
current_dialogue = dialogue_tree[0];
alarm[0] = current_dialogue.length * 60;
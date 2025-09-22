show_options = false;
options_boxes = [];
switch name {
	case "Intro":
		dialogue_tree = [
			{
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
					"Oh, I mean obviously it is awful that someone died",
					"it just means I've got something to do.",
					"After all, I am a Hit Detective so let's find out",
					"who's been hit."
				],
				length: 1,
				options: 12
			},
			{
				text: [
					"You appear to be waiting by the bottom of the stairs",
					"for Natalie to appear, which should give her time",
					"to get dressed."
				],
				length: 1,
				options: 13
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Alright, I'm all dressed up.",
					"Don't drool on the carpet, I'm out of cleaner."
				],
				length: 1,
				options: [
					["Mummy", 14],
					["I'm looking respectfully", 15],
					["I'm not interested", 16]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Honey, you've got some problems I'm simply",
					"not equipped to deal with."
				],
				length: 1,
				options: 17
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Why thank you. You certainly know how to flatter a lady.",
					"At least we've got something in common."
				],
				length: 1,
				options: 17
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Oh. That's fine too. I only dress nice for myself anyway.",
					"It gives me something interesting to look at in the mirror."
				],
				length: 1,
				options: 17
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Anyway, I've just spotted a letter by the door.",
					"It's got a very distinctive crest, let me go get it."
				],
				length: 1,
				options: 18
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"The Letterby Estate? I haven't been there since I was 16.",
					"Surely if something's wrong, they wouldn't call on me still.",
					"I'd prefer if you let me read this in peace."
				],
				length: 1,
				options: 19
			},
			{
				character_name: "Lord Herman Letterby",
				text: [
					"Dearest Natalie,",
					"I understand it has been quite some time since we last",
					"had contact, and I fully understand your grievances."
				],
				length: 1,
				options: 20
			},
			{
				character_name: "Lord Herman Letterby",
				text: [
					"However, I find myself in urgent need of your help.",
					"My dear boy Harry has been killed. I have locked down the",
					"house and we are awaiting your arrival."
				],
				length: 1,
				options: 21
			},
			{
				character_name: "Lord Herman Letterby",
				text: [
					"I am only legally allowed to hold everyone here until 5",
					"o'clock tomorrow. I'll explain more when you get here.",
					"Please hurry."
				],
				length: 1,
				options: 22
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Well that's gone horribly wrong. It wasn't supposed to",
					"be someone I knew. This might be difficult."
				],
				length: 1,
				options: [
					["Sucks to be you", 23],
					["Oh, I'm sorry", 24]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"You really can't afford to antagonise yourself here.",
					"Besides, I'm not going to be hearing from you until",
					"I arrive at the Manor House. Goodbye."
				],
				length: 1,
				options: 26,
				leave_function: function() {
					layer_background_blend(layer_background_get_id("Background"), c_black);
				}
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Yeah. It's not too bad, I haven't even seen him in years.",
					"We used to be great friends but... that was the old me."
				],
				length: 1,
				options: 25
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Besides, I've got to get to the Manor House. If I leave now,",
					"I can get there for 5pm. I'll meet back with you there",
					"I guess."
				],
				length: 1,
				options: 26,
				leave_function: function() {
					layer_background_blend(layer_background_get_id("Background"), c_black);
				}
			},
			{
				text: [
					"I took the liberty of skipping you ahead to when",
					"Natalie arrived at the Letterby Manor House at 5pm."
				],
				length: 1,
				options: 27
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Well, it seems to me there was a surprise party",
					"about to happen. There could be some wrong-uns that",
					"turned up to this."
				],
				length: 1,
				options: [
					["Wrong-uns?", 28],
					["...", 30]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"The Letterby Estate has some pretty strong ties to my",
					"family, which always means the worst. I'm not about to",
					"take you through my life story."
				],
				length: 1,
				options: [
					["Family?", 29],
					["...", 30]
				]
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Can we please save the incessant questioning for the suspects?",
					"That being said, I should ask to borrow Lady Fashion's lipstick",
					"as I'm afraid I spent too much of mine kissing the mirror."
				],
				length: 1,
				options: 30
			},
			{
				character_name: "Natalie Clementine",
				text: [
					"Oh! I nearly forgot. After last time, I've learned that other",
					"people can't hear players so if there's anything pertinent",
					"you want me to say, just whisper it in my ear and I may just",
					"feel compelled to do so. Well, here goes nothing."
				],
				length: 1,
				options: 0,
				leave_function: function() {
					oGame.next_room = TheManor;
					with oGame {
						event_user(0);
					}
				}
			}
		];
	break;
}
current_dialogue = dialogue_tree[0];
alarm[0] = current_dialogue.length * 60;
if struct_exists(current_dialogue, "voice_line") audio_play_sound(current_dialogue.voice_line, 1, false);
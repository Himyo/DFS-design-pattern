
INSERT INTO `Users` (`id`, `lastname`, `firstname`, `email`, `password`, `status`, `role`, `token`, `photo_id`) VALUES
(12, 'admin', 'admin', 'admin@gmail.com', 'testtest', 'ACCEPTED', 'ADMIN', NULL, 0),
(13, 'u', 'p', 'u@u.com', '$2y$10$it248g04drfmifcyRT8f5eTd5DAyWZBEiVm9hd4KDXRJFvsYWyDfS', 'ACCEPTED', 'USER', NULL, 0),
(14, 'Mod', 'Moderator', 'gay@mod.com', '$2y$10$j7hG//HUlnMyID9.z4BAsuKSlz1xoIX/18PlOvAaPvQPaSS81baui', 'ACCEPTED', 'MODERATOR', NULL, 0),
(15, 'ddd', 'bad', 'dabdab@gmail.com', '$2y$10$B3nZj84w8N03vnY33XYyXe4jSxbk3nZ9KBEoiIrNi7xAeY6X2W8IG', 'ACCEPTED', 'USER', NULL, 0),
(16, 'o', 'ba', 'gay@mod.com', '$2y$10$L4L2AaRqq9XEfMrC5egj7uTVw40qC8pumuDrxD4tgF9OYa0Y2eGAe', 'ACCEPTED', 'USER', NULL, 0),
(20, 'Mod', 'Moderator', 'Mododo@g.com', '$2y$10$AYHf7ufgTlvqbeJiG3gUle2jLr6qd3oPkMZCaqLummmeDJ0pgbSR2', 'ACCEPTED', 'ADMIN', NULL, 0),
(21, 'marinier', 'anthony', 'eldera@gmail.com', '$2y$10$kohsjOeDd5KSa1uc.518quhM1WpKYYgWf3EHR9jadK1iD25qbgeBK', 'ACCEPTED', 'ADMIN', NULL, 0);

INSERT INTO `Cards` (`id`, `image_url`, `name`, `toughness`, `power`, `text`, `lore`, `ruling`, `multiverse_id`, `releases_id`, `mana_id`, `type_id`, `legalities_id`) VALUES
(1, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=130483&type=card', 'Abundance', 0, 0, 'If you would draw a card, you may instead choose land or nonland and reveal cards from the top of your library until you reveal a card of the chosen kind. Put that card into your hand and put all other cards revealed this way on the bottom of your library in any order.', '', 'This replacement effect replaces the draw, so nothing that triggers on a draw will trigger.', 130483, 1, 1, 1, 1),
(2, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=132072&type=card', 'Academy Researchers', 2, 2, 'When Academy Researchers enters the battlefield, you may put an Aura card from your hand onto the battlefield attached to Academy Researchers.', 'They brandish their latest theories as warriors would wield weapons.', 'You canâ€™t put an Aura card from your hand onto the battlefield this way if that Aura canâ€™t legally enchant Academy Researchers. For example, you canâ€™t put an Aura with â€œenchant landâ€ or â€œenchant green creatureâ€ onto the battlefield attached to Academy Researchers (unless Academy Researchers somehow turned into a land or a green creature before the ability resolved).', 132072, 1, 2, 2, 1),
(3, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=129458&type=card', 'Adarkar Wastes', 0, 0, '{T}: Add {C}.\n{T}: Add {W} or {U}. Adarkar Wastes deals 1 damage to you.', '', 'none', 129458, 1, 3, 3, 1),
(4, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=135206&type=card', 'Afflict', 0, 0, 'Target creature gets -1/-1 until end of turn.\nDraw a card.', 'One rarely notices a heartbeat, save when it is stolen.', 'none', 135206, 1, 4, 4, 2),
(5, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=130525&type=card', 'Aggressive Urge', 0, 0, 'Target creature gets +1/+1 until end of turn.\nDraw a card.', 'The power of the wild, concentrated in a single charge.', 'If the target creature is an illegal target by the time Aggressive Urge tries to resolve, the spell doesnâ€™t resolve. You wonâ€™t draw a card.', 130525, 1, 5, 4, 3),
(6, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=135228&type=card', 'Agonizing Memories', 0, 0, 'Look at target player\'s hand and choose two cards from it. Put them on top of that player\'s library in any order.', 'In the aftermath of war, when the slaying is long done, the greatest miseries come home to roost.', 'none', 135228, 1, 6, 5, 1),
(8, 'http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=129913&type=card', 'Ambassador Laquatus', 3, 1, '{3}: Target player puts the top three cards of their library into their graveyard.', '\"Life is a game. The only thing that matters is whether you\'re a pawn or a player.\"', 'none', 129913, 1, 2, 7, 1);

INSERT INTO `Decks` (`id`, `name`, `users_id`, `upvotes`, `downvotes`) VALUES
(1, 'Deck feu', 1, 0, 0),
(3, 'Deck eau', 1, 0, 0),
(4, 'SUPER DECK FEU', 21, 0, 0),
(5, 'Deck eau', 21, 0, 0),
(6, 'Nouveau deck', 21, 0, 0);


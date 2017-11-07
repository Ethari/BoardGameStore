-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Lis 2017, 19:21
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `boardgamestore`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Info` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`ID`, `Name`, `Info`) VALUES
(1, 'Action', 'Action games often compete players\' physical reflexes and co-ordination as a determinant of overall success.'),
(2, 'Adventure', 'Adventure games often have themes of heroism, exploration, and puzzle-solving. The storyline behind such games often have fantastical elements, and involve the characters in some sort of quest.'),
(3, 'Dice', 'Dice games often use dice as its sole or principal component. Dice games traditionally focus almost exclusively on dice rolling as a mechanic.'),
(4, 'Economic', 'Economic games encourage players to develop and manage a system of production, distribution, trade, and/or consumption of goods. The games usually simulate a market in some way. The term is often used interchangeably with resource management games.'),
(5, 'Educational', 'Educational games have been specifically designed to teach people about a certain subject, expand concepts, reinforce development, understand an historical event or culture, or assist them in learning a skill as they play.'),
(6, 'Electronic', 'Electronic games often have an electronic apparatus as the central component of the game. They differ from electrified games (e.g., Operation) as Electronic game components will contain circuitry, and sometimes a simple computer.'),
(7, 'Expansion', 'Expansion for Base-game games are sets of additional components and rules for expanding on an original base game. An expansion cannot be played alone; they must be used in conjunction with the base game.'),
(8, 'Card', 'Card Games often use cards as its sole or central component. There are stand-alone card games, in which all the cards necessary for gameplay are purchased at once. There are also Collectible Card Games (CCGs), where players purchase starter and \"booster\" packs in an effort to compile a more and more powerful deck of cards to compete with.'),
(9, 'Party Games', 'Party games are games that encourage social interaction. They generally have easy setups and simple rules, and they can accommodate large groups of people and play in a short amount of time.'),
(10, 'Puzzle', 'Puzzle games are those in which the players are trying to solve a puzzle. Many Puzzle games require players to use problem solving, pattern recognition, organization and/or sequencing to reach their objectives.'),
(11, 'Trivia', 'Trivia games often test players on their knowledge of general interests and popular culture.'),
(12, 'Strategy', 'Strategy games are often (but not always):\r\n\r\n    theme-less (without storyline)\r\n    built on simple and/or straightforward design and mechanics\r\n    perfect information games\r\n    games that promote one player overtaking their opponent(s)\r\n    little to no elements of luck, chance, or random occurrence\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` text COLLATE utf8_bin NOT NULL,
  `Description` text COLLATE utf8_bin NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Players` text COLLATE utf8_bin NOT NULL,
  `Time` int(11) NOT NULL,
  `Complexity` int(11) NOT NULL COMMENT 'minimal age of players',
  `Author` text COLLATE utf8_bin NOT NULL,
  `Publisher` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Board games';

--
-- Zrzut danych tabeli `product`
--

INSERT INTO `product` (`ID`, `Name`, `Description`, `Category_ID`, `Price`, `Players`, `Time`, `Complexity`, `Author`, `Publisher`) VALUES
(1, '3 Secrets', '\r\n\r\nIn the cooperative game 3 Secrets, players want to unravel the three secrets of an unresolved case before time runs out. One of the players plays the role of informant and knows the truth about the case: They know which secrets need to be discovered and try their best to help you guess them correctly. The clock is ticking and the clues are scarce, so question the informant to gather useful information and find the solution. If you grope in the dark, the informant can reveal an important clue, but this will cost you precious time! Use your best observing eye, lateral thinking, and deduction skills to unravel all the mysteries of the ambiguous characters that populate this game.\r\n\r\n3 Secrets comes with a free app available for download at the Apple AppStore and Google Play.\r\n', 2, '10', '2-8', 15, 14, 'Shiacchiera, Martino + Zizzi, \r\nPierre Luca', 'ABACUSSPIELE'),
(2, 'Sector 6', 'Sector 6 is an abstract strategy game for 1 to 4 players, with a playing time of 30 minutes. Each player controls two prisoners as they make their way through the winding labyrinth of a space prison, trying to collect enough oxygen to survive while denying their opponents the same. The goal is to collect as many points as possible (represented by oxygen tiles of different colors and values), located inside a maze formed by hexagonal tiles. Players must move across the maze and collect the points before their opponents.', 1, '28', '1-4', 60, 8, 'González Garcia, Jaime', 'ABBA GAMES'),
(3, 'Calimala', 'Players of Calimala are cloth merchants in medieval Florence, with a number of trusted employees that they assign to various streets within the city to carry out actions. (Each street connects two places where particular actions can be taken.) While taking these actions, players produce and deliver cloth and contribute to the construction and decoration of various buildings across the city. Employees stay on their assigned places for a while, carrying out their actions whenever the street is activated, and eventually are promoted into the city council, triggering a scoring phase.', 4, '40', '3-5', 75, 10, 'Lopiano, Fabio', 'ADC Blackfire'),
(4, 'Cat Lady', 'In Cat Lady, players are cat ladies, part of an elite group of people including Marie Antoinette and Ernest Hemingway. During the game, you and your fellow cat ladies will draft cards three at a time, collecting toys, food, catnip, costumes, and of course lovable cats. But watch out! Make sure you have enough food for all of your feline friends or your hungry cats will subtract points from your score. The player with the highest total victory points wins the game!', 8, '20', '2-4', 30, 14, 'Wood, Josh', 'Alderac'),
(5, 'In the Year of the Dragon', 'In In the Year of the Dragon, players take on the role of Chinese rulers around the year 1000. The game plays out in twelve rounds, with each round representing one month in a year that seems to go from bad to worse. Disease, drought, and attacks from the Mongols may claim lives, but make sure you have enough money to offer a tribute to the Emperor.', 4, '40', '2-5', 100, 12, 'Feld, Stefan', 'Ravensburger'),
(6, 'Critters Below', 'A great war has broken out and is threatening to eradicate all of Critterkind. A few of you have made it to a shelter deep underground. However the lights have gone out, leaving you in the dark with limited resources. You do not know how long you have to stay down here before it is safe to go outside. How many of you will survive and will you be among them? Will you work together?', 9, '25', '1-6', 60, 14, 'Kruppa, Gergely', 'Antler Games Kft'),
(7, 'Sword & Sorcery - Onamor Hero Pack', 'The world of Sword & Sorcery always needs new heroes! With this Hero Pack, you now have the possibility to introduce a new, powerful character into your campaign.\r\n\r\nSometimes, heroes are shadowy figures dabbling in the dark arts or renegades from their kin... Born into a family of powerful wizards, descendants of Avalon, Onamor can be played as either a Chaotic Necromancer or a Lawful Summoner.', 7, '15', '1-5', 180, 13, 'Nunzio, Romano + Nunzio, \r\nSimone + Nunzio, Surace', 'Ares Games Srl'),
(8, 'Kitchen Rush', 'ou\'ve just inherited an old restaurant and you must turn it into a successful business! Hire personnel, order the right ingredients and be ready to serve the customers that enter your restaurant. The success will depend entirely on your efficiency in the kitchen!\r\n\r\nKitchen Rush is an innovative real-time cooperative game that simulates the excitement of a high-pressure kitchen environment. It does so through worker placement, using hourglasses as your workers. These hourglasses are used to take orders from customers, prepare their dishes, serve them on time, buy groceries, clean plates and make sure enough money is made each round to cover wages, expenses, upgrades and hopefully, leave a profit. Any worker placed on an action space may not be used elsewhere before the sand within the hourglass runs out, making each decision important as time is limited.', 9, '48', '1-4', 45, 12, 'Turczi, David', 'Artipia Games'),
(9, 'Caverna - Cave vs cave', 'In the two-player game Caverna: Cave vs. Cave, each player starts the game with only two dwarves and a small excavation in the side of a mountain. Over the course of eight rounds, they\'ll double their workforce, open up new living space in the mountain, construct new buildings and rooms in which to live, and dig for precious metals.', 4, '20', '1-2', 40, 10, 'Rosenberg, Uwe', 'ASS'),
(10, 'Dance of the Fireflies', 'Dance of the Fireflies\' is a 2-6 player card game in which players striving to be the next royal gardener bid on flowers around a sundial in an attempt to create the most beautiful gardens and win the coveted title.', 8, '23', '2-6', 45, 8, 'Brooks, Oliver', 'Backspindle Games'),
(11, 'The Palace of Mad King Ludwig', 'King Ludwig II of Bavaria has called all great architects to design his greatest achievement: a world-renowned palace. Only the best will do! Gorgeous appointments, white stone, surrounded by water, with swans everywhere. Oh, and the Ludwig touch? All the architects must design the palace together. The designer who shows the strongest influence will receive the order to build it.\r\n\r\nIn The Palace of Mad King Ludwig, each player builds rooms one at a time in a single gigantic palace. As rooms are completed, a moat slowly forms around the outside. Once the ends of the moat connect, the palace is finished, and the player who has contributed the most to the palace wins!', 4, '50', '2-4', 75, 13, 'Alspach, Ted', 'Bezier Games, Inc.'),
(12, 'Booo!', '\r\n\r\nYou are attending the great ghost apprentice competition in \"Blackrock Castle\" in northern Scotland. In this tournament, you have to scare as many visitors as possible in order to win the disputed \"Ghost Master\" title. Who is going to be the fastest ghost?\r\n\r\nIn Booo!, you want to take the corridors and the secret passages, pass through the walls, and change colors to find the right path and scare Blackrock Castle\'s visitors before anyone else.\r\n', 10, '22', '2-6', 30, 7, 'Gonthier, Christophe', 'Blackrock Games'),
(13, 'Photosynthesis', 'The sun shines brightly on the canopy of the forest, and the trees use this wonderful energy to grow and develop their beautiful foliage. Sow your crops wisely and the shadows of your growing trees could slow your opponents down, but don\'t forget that the sun revolves around the forest. Welcome to the world of Photosynthesis, the green strategy board game!', 5, '40', '2-4', 60, 10, 'Hach, Hjalmar', 'Blue Orange'),
(14, 'Superhot the Card Game', 'A bullet misses you by millimeters. A dozen more come from every direction. Armed red guys are everywhere. You take a breath, check your options...and play a card.\r\n\r\nPart strategy, part shooter, and undeniably stylish, SUPERHOT is the bestselling independent FPS in which time moves only when you move. After its Steam and Xbox One releases, SUPERHOT is taking its unique game mechanisms to the world of tabletop games.', 8, '20', '1-3', 40, 12, 'Correia, Manuel', 'Board and Dice'),
(15, 'SPOILERS: The Beginning', 'Spoilers: The Beginning is a party-trivia game with movie questions and bluffing mechanisms. The player taking the spoiler role (a different one each turn) makes a question about what happens in a particular movie and gives three possible answers (A, B, C). The Spoiler knows the right answer and earns points when the other players answer incorrectly. Thus, the Spoiler tries to mislead them (and everyone knows that). Everyone takes the role of Spoiler three times, then the player with the most points wins.\r\n\r\nSpoilers: The Beginning is a standalone game with new playing rules that can also be combined with Spoilers: The Game, whether played with the original or new rules.', 11, '10', '3-6', 40, 12, 'Palau, Manu', 'Brain Picnic SL\r\nund Zacatrus'),
(16, 'Stack-A-Biddi', 'Time to stack your pieces high in Stack-A-Biddi, but you need to keep your pieces connected along the way.\r\n\r\nIn the game, each player has a set of eight long rectangular blocks, and on each of the four long faces of these blocks are thick black lines that travel from one edge to the other. Each player also has a set of four short blocks called \"biddis\", with each biddi being one of four colors.', 1, '15', '2-4', 30, 8, 'Rejchtman, Grzegorz', 'Carletto'),
(17, 'Khan of Khans', 'Fast-paced family game by Reiner Knizia, set in Greg Stafford\'s world of Glorantha. Players are khans of different fantastical tribes on the Plains of Prax, each riding a unique animal that confers special abilities. Everyone attempts to amass the biggest herd, meanwhile fighting off enemy magic, stampedes and attempts by other players to steal their cows.\r\n\r\nEach player chooses a Khan to play, and receives a set number of corral tiles (depending on the number of players in the game). Each Khan has a different special ability. For example, the Morokanth player gets one extra Corral tile, and the High Llama player can sneak one cow card into each of their corrals after the gate has been closed.', 8, '20', '2-5', 25, 9, 'Knizia, Dr. Reiner', 'Chaosium, Inc.'),
(18, 'Catham City', 'Catham Сity is steeped in intrigue and deceit — corrupted officials, bribed cops, lying journalists… One must have the thick fur and sharp claws to survive here, in this dump, and even prosper. In every turn you will have a choice: you can take more cards to gain the support of one of the groups or you can turn collected resources against your rival.', 8, '20', '2-6', 60, 12, 'Zhuravljov, Yuri', 'Cosmodrome'),
(19, 'Smiley Games', 'Smiley Games uses six different smiley cards (happy, angry, wink, sad, surprised, in love) in six different colors (orange, blue, yellow, green, violet, red) — along with special dice — for five different games that stimulate memory, reflexes and visual perception, while also requiring strategy, observation and concentration.', 9, '13', '2-10', 30, 5, 'Pessi, Emanuele', 'CreativaMente'),
(20, 'Adrenaline Team', 'Adrenaline: Team Game Expansion includes new elements for the Adrenaline base game, including a new player character, team play modes, new weapons, and a new poison damage mechanism, but it\'s still being developed at this time, so the final version might differ from this.\r\n\r\nThe expansion to the 2016 hit game adds a 6th player and introduces a new team mode with simultaneous play, character-specific weapons and gadgets, and new damage mechanics.\r\n', 7, '20', '2-6', 90, 14, 'Neduk, Filip', 'Czech Games \r\nEdition'),
(21, 'Villages of Valeria', 'A village-building card game set in the world of Valeria. Establish resources, construct buildings, and attract adventurers to your Village to be crowned the next capitol city.', 12, '20', '1-5', 60, 14, 'Holzgrafe, Rick + Vallejo, Isaias', 'Daily Magic Games'),
(22, 'Michael Strogoff', 'In Michael Strogoff, based on the Jules Verne novel of the same name, players race to deliver a message to the brother of the Czar, while simultaneously racing both an assassin sent to the kill that man and Tartar forces moving on Moscow. Players must help one another hold off the latter threats, while still trying to be the first to deliver that message.', 5, '30', '1-5', 60, 12, 'Corral, Alberto', 'Devir Iberia SL'),
(23, 'Mystic ScROLLS', 'Mystic ScROLLS is a real-time dice game in which each player is a wizard trying to cast as many spells as possible to capture the mystic knowledge of the hidden scrolls. It plays for 2-4 players, 12 years old and up, and each game lasts around 20 minutes giving you a fun game filled with adrenaline.', 3, '25', '2-4', 25, 8, 'Kourtis, Stelios + Foskolos, \r\nEvangelos', 'Draw Lab \r\nEntertainment'),
(24, 'Indian Summer', 'Before winter makes its appearance, a particularly warm fall bathes the forest in a golden shimmer. During the Indian Summer, New England blossoms one last time. Treetops are ablaze with countless colors — a living rainbow, from green to orange to red. Slowly the first leaves are starting to fall. Meanwhile, our steps and the diligent squirrels rustle the colorful foliage.', 10, '35', '1-4', 60, 10, 'Rosenberg, Uwe', 'Edition Spielwiese'),
(25, 'Metal Dawn', 'In Metal Dawn, a networked rogue satellite military defense system named Dominus has revolted against its makers, turning its machines of war towards eradicating mankind in a cybernetic revolution. The players are a united faction of agents whose mission is to destroy the forces of the machine while hacking the network to take down the satellite before it’s too late.', 6, '50', '1-4', 90, 14, 'Batarlis, Chris + Avery, Steve', 'Everything Epic \r\nGames'),
(26, '7 Wonders', '\r\n\r\nYou are the leader of one of the 7 great cities of the Ancient World. Gather resources, develop commercial routes, and affirm your military supremacy. Build your city and erect an architectural wonder which will transcend future times.\r\n\r\n7 Wonders lasts three ages. In each age, players receive seven cards from a particular deck, choose one of those cards, then pass the remainder to an adjacent player. Players reveal their cards simultaneously, paying resources if needed or collecting resources or interacting with other players in various ways. (Players have individual boards with special powers on which to organize their cards, and the boards are double-sided). Each player then chooses another card from the deck they were passed, and the process repeats until players have six cards in play from that age. After three ages, the game ends.\r\n\r\nIn essence, 7 Wonders is a card development game. Some cards have immediate effects, while others provide bonuses or upgrades later in the game. Some cards provide discounts on future purchases. Some provide military strength to overpower your neighbors and others give nothing but victory points. Each card is played immediately after being drafted, so you\'ll know which cards your neighbor is receiving and how his choices might affect what you\'ve already built up. Cards are passed left-right-left over the three ages, so you need to keep an eye on the neighbors in both directions.\r\n\r\nThough the box of earlier editions is listed as being for 3–7 players, there is an official 2-player variant included in the instructions.\r\n', 8, '32', '2-7', 30, 10, 'Bauza, Antoine', 'Repos Production'),
(27, 'Carcassonne', 'Carcassonne is a tile-placement game in which the players draw and place a tile with a piece of southern French landscape on it. The tile might feature a city, a road, a cloister, grassland or some combination thereof, and it must be placed adjacent to tiles that have already been played, in such a way that cities are connected to cities, roads to roads, etcetera. Having placed a tile, the player can then decide to place one of his meeples on one of the areas on it: on the city as a knight, on the road as a robber, on a cloister as a monk, or on the grass as a farmer. When that area is complete, that meeple scores points for its owner.\r\n\r\nDuring a game of Carcassonne, players are faced with decisions like: \"Is it really worth putting my last meeple there?\" or \"Should I use this tile to expand my city, or should I place it near my opponent instead, giving him a hard time to complete his project and score points?\" Since players place only one tile and have the option to place one meeple on it, turns proceed quickly even if it is a game full of options and possibilities.', 4, '15', '2-5', 45, 8, 'Wrede, Klaus-Jurgen', 'Hans im Gluck'),
(28, 'Catan', '\r\n\r\nIn Catan (formerly The Settlers of Catan), players try to be the dominant force on the island of Catan by building settlements, cities, and roads. On each turn dice are rolled to determine what resources the island produces. Players collect these resources (cards)—wood, grain, brick, sheep, or stone—to build up their civilizations to get to 10 victory points and win the game.\r\n\r\nSetup includes randomly placing large hexagonal tiles (each showing a resource or the desert) in a honeycomb shape and surrounding them with water tiles, some of which contain ports of exchange. Number disks, which will correspond to die rolls (two 6-sided dice are used), are placed on each resource tile. Each player is given two settlements (think: houses) and roads (sticks) which are, in turn, placed on intersections and borders of the resource tiles. Players collect a hand of resource cards based on which hex tiles their last-placed house is adjacent to. A robber pawn is placed on the desert tile.\r\n\r\nA turn consists of possibly playing a development card, rolling the dice, everyone (perhaps) collecting resource cards based on the roll and position of houses (or upgraded cities—think: hotels) unless a 7 is rolled, turning in resource cards (if possible and desired) for improvements, trading cards at a port, and trading resource cards with other players. If a 7 is rolled, the active player moves the robber to a new hex tile and steals resource cards from other players who have built structures adjacent to that tile.\r\n\r\nPoints are accumulated by building settlements and cities, having the longest road and the largest army (from some of the development cards), and gathering certain development cards that simply award victory points. When a player has gathered 10 points (some of which may be held in secret), he announces his total and claims the win.\r\n\r\nCatan has won multiple awards and is one of the most popular games in recent history due to its amazing ability to appeal to experienced gamers as well as those new to the hobby.\r\n\r\nDie Siedler von Catan was originally published by KOSMOS and has gone through multiple editions. It was licensed by Mayfair and has undergone four editions as The Settlers of Catan. In 2015, it was formally renamed Catan to better represent itself as the core and base game of the Catan series. It has been re-published in two travel editions, portable edition and compact edition, as a special gallery edition (replaced in 2009 with a family edition), as an anniversary wooden edition, as a deluxe 3D collector\'s edition, in the basic Simply Catan, as a beginner version, and with an entirely new theme in Japan and Asia as Settlers of Catan: Rockman Edition. Numerous spin-offs and expansions have also been made for the game.\r\n', 4, '23', '3-4', 60, 10, 'Teuber, Klaus', 'KOSMOS'),
(29, 'Dixit', '\r\n\r\n2010 Spiel des Jahres Winner\r\n\r\nOne player is the storyteller for the turn and looks at the images on the 6 cards in her hand. From one of these, she makes up a sentence and says it out loud (without showing the card to the other players).\r\n\r\nEach other player selects the card in their hands which best matches the sentence and gives the selected card to the storyteller, without showing it to the others.\r\n\r\nThe storyteller shuffles her card with all the received cards. All pictures are shown face up and every player has to bet upon which picture was the storyteller\'s.\r\n\r\nIf nobody or everybody finds the correct card, the storyteller scores 0, and each of the other players scores 2. Otherwise the storyteller and whoever found the correct answer score 3. Players score 1 point for every vote for their own card.\r\n\r\nThe game ends when the deck is empty or if a player scores 30 points. In either case, the player with the most points wins the game.\r\n\r\nThe base game and all expansions have 84 cards each.\r\n', 9, '26', '3-6', 30, 6, 'Roubira, Jean-Louis', 'ADC Blackfire Entertainment'),
(30, 'Small World', 'In Small World, players vie for conquest and control of a world that is simply too small to accommodate them all.\r\n\r\nDesigned by Philippe Keyaerts as a fantasy follow-up to his award-winning Vinci, Small World is inhabited by a zany cast of characters such as dwarves, wizards, amazons, giants, orcs, and even humans, who use their troops to occupy territory and conquer adjacent lands in order to push the other races off the face of the earth.\r\n\r\nPicking the right combination from the 14 different fantasy races and 20 unique special powers, players rush to expand their empires - often at the expense of weaker neighbors. Yet they must also know when to push their own over-extended civilization into decline and ride a new one to victory!\r\n\r\nOn each turn, you either use the multiple tiles of your chosen race (type of creatures) to occupy adjacent (normally) territories - possibly defeating weaker enemy races along the way, or you give up on your race letting it go \"into decline\". A race in decline is designated by flipping the tiles over to their black-and-white side.\r\n\r\nAt the end of your turn, you score one point (coin) for each territory your races occupy. You may have one active race and one race in decline on the board at the same time. Your occupation total can vary depend on the special abilities of your race and the territories they occupy. After the final round, the player with the most coins wins.', 2, '24', '2-5', 90, 8, 'Keyaerts, Philippe', 'Days of Wonder');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_comments`
--

CREATE TABLE `product_comments` (
  `product_ID` int(11) NOT NULL,
  `comment_ID` int(11) NOT NULL,
  `comment_text` text COLLATE utf8_bin NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`comment_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

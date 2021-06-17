-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 jun 2021 om 11:27
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skylanderwebshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `sky_PostId` int(5) NOT NULL,
  `sky_PostFirstName` varchar(255) NOT NULL,
  `sky_PostLastName` varchar(255) NOT NULL,
  `sky_PostEmail` varchar(255) NOT NULL,
  `sky_PostMessage` varchar(255) NOT NULL,
  `sky_postBirthDay` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `elementen`
--

CREATE TABLE `elementen` (
  `elementId` int(5) NOT NULL,
  `elementName` varchar(255) NOT NULL,
  `elementImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `elementen`
--

INSERT INTO `elementen` (`elementId`, `elementName`, `elementImage`) VALUES
(1, 'Fire', 'FireSymbol.jpg'),
(2, 'Water', 'WaterSymbol.jpg'),
(3, 'Air', 'AirSymbol.jpg'),
(4, 'Earth', 'EarthSymbol.jpg'),
(5, 'Dark', 'DarkSymbol.png'),
(6, 'Life', 'LifeSymbol.jpg'),
(7, 'Light', 'LightSymbol.jpg'),
(8, 'Magic', 'MagicSymbol.jpg'),
(9, 'Tech', 'TechSymbol.jpg'),
(10, 'Undead', 'UndeadSymbol.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nfc`
--

CREATE TABLE `nfc` (
  `nfcId` int(5) NOT NULL,
  `nfcTag` varchar(255) NOT NULL,
  `SkylanderId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `serie`
--

CREATE TABLE `serie` (
  `serieId` int(5) NOT NULL,
  `serieName` varchar(255) NOT NULL,
  `serieImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `serie`
--

INSERT INTO `serie` (`serieId`, `serieName`, `serieImage`) VALUES
(1, 'Skylanders: Spyro\'s adventure', ''),
(2, 'Skylanders: Giants', ''),
(3, 'Skylanders: Swap Force', ''),
(4, 'Skylanders: Trap Team\r\n', ''),
(5, 'Skylanders: SuperChargers', ''),
(6, 'Skylanders: Imaginators', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `skylanders`
--

CREATE TABLE `skylanders` (
  `skylanderId` int(5) NOT NULL,
  `elementId` int(5) NOT NULL,
  `serieId` int(5) NOT NULL,
  `skylanderImage` varchar(255) NOT NULL,
  `skylanderName` varchar(255) NOT NULL,
  `skylanderDescription` text NOT NULL,
  `skylandersCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `skylanders`
--

INSERT INTO `skylanders` (`skylanderId`, `elementId`, `serieId`, `skylanderImage`, `skylanderName`, `skylanderDescription`, `skylandersCode`) VALUES
(1, 10, 1, 'ghost_roaster.jpg', 'Ghost Roaster', 'Ghost Roaster is known for his relentless, undying appetite for ghosts (particularly evil ghosts). However, being a chef, he is good in the kitchen for making delicious recipes. Despite his scary behavior, he seems unfazed by pranks such as Camo\'s. In Secret Agent Secrets, Ghost Roaster\'s flaw is revealed to be a desire to have his work recognized, even if by the side of the villains. Years being put aside in favor of newcomer Skylanders made him bitter towards them, until Stormblade expressed respect for what he did regardless of his threats.', ''),
(2, 8, 1, 'spyro.jpg', 'Spyro', 'Although eager and young at heart, Spyro is a strong-willed dragon who is fearless and brave; a born hero dedicated to defending his world from all things evil. He holds a photographic memory, and as a result, has encyclopedic knowledge of all the islands and creatures in Skylands he has encountered, more so than any other Skylander. He is always up for adventure (his favorite kind being treasure hunts), and is the first Skylander to leap into action.', ''),
(3, 4, 1, 'bash.jpg', 'Bash', 'Never tell Bash he can\'t do something. This resourceful, stubborn Skylander will keep on rolling until he\'s proved you wrong. He never gives up without a fight. Despite his gruff disposition, Bash is very sensitive about his inability to fly.', ''),
(4, 9, 1, 'boomer.jpg', 'Boomer', 'Blowing things up is apparently Boomer\'s answer to everything. He is also known for his love of blowing stuff up; a trait that is shared by all the other Trolls in Skylands. However unlike his brethren, Boomer isn\'t interested in war and conquest, so he turned his back on the troll lifestyle. He is considered a little odd; if at a great but dangerous height, Boomer enjoys every minute of falling or barreling down towards the ground at a frightening pace, since the resulting crash will make a huge \'boom\'. Yet for being a troll he is disgusted by the sight of trolls.', ''),
(5, 6, 1, 'camo.jpg', 'Camo', 'Like most dragons, Camo loves a laugh. He is a real prankster, with one of his favorite tricks creating fruit and vegetables that explode in your shocked face! Despite his love of pranks, Camo is serious when it comes to protecting Skylands and its inhabitants.', ''),
(6, 10, 1, 'Chop_Chop.jpg', 'Chop Chop', 'With his skeletal frame, cold voice, and tremendous abilities, Chop Chop is often assumed to be a bit of a frightening fellow. In truth, he is a very frightening fellow. Despite that however, he appears to possess a sense of honor, as shown by his dedication to finding those who created him.', ''),
(7, 10, 1, 'cynder.jpg', 'Cynder', 'Kidnapped as an egg by the evil Malefor, Cynder was brainwashed and trained in the ways of evil and darkness. She was a sinister dragon, a harbringer of despair and misery taught to strike fear into the hearts of Malefor\'s subjects and spread terror far and wide. However a speck of goodness burned somewhere in her black heart, which made her internally aware of the evil she was committing. After being freed from Malefor\'s spell, Cynder desires to make amends by battling evildoers with her dark powers, but she still struggles with her past.', ''),
(8, 4, 1, 'Dino-Rang.jpg', 'Dino-Rang', 'Unlike most unruly dinosaurs, Dino-Rang has a calm and collected demeanor. However, if anyone calls him a dragon by mistake, Dino-Rang will lose his cool, resulting in a furious display of whirling boomerangs. Even though he loves being a Skylander, he still dreams of the hunting plains of his homeland.', ''),
(9, 8, 1, 'double-trouble.jpg', 'Double-Trouble', 'A loner at heart, Double Trouble discovered the joys of companionship through his clones. Always upbeat, the spirited shaman is a bundle of unearthly Eldritch energy.', ''),
(10, 9, 1, 'Drill-Sergeant.jpg', 'Drill Sergeant', 'Drill Sergeant was built and programmed to obey orders, which results in him calling everyone \'sir\', which irritates some of his comrades. He follows rules to the letter, never wavering until the job is done. As a valued member of the Skylanders, he is a free machine, answering to no one, but old habits of his Arkeyan programming hasn\'t yet diminished. Like all Tech Skylanders, Drill Sergeant is fascinated by machinery.', ''),
(11, 9, 1, 'drobot.jpg', 'Drobot', 'Exceptionally intelligent, Drobot is driven by logic and the pursuit of knowledge. He can turn his hand to any technology and is ferocious in battle. A super-genius, Drobot analyses everything he comes across. While he seemed cold and calculating at first, the Skylanders soon discovered that he is as brave as he is intelligent. Drobot may be smart, but he never shies away from a fight. Instead of waiting to be invited to be a Skylander, Drobot sought out Master Eon and offered his services. Like many dragons, he also has a sense of humor and uses his knowledge to come up with new pranks.', ''),
(12, 1, 1, 'Eruptor.jpg', 'Eruptor', 'Eruptor is a hot head with a strong dislike for anything evil, so whenever something bad threatens his world, he quickly erupts... quite literally. When he isn\'t getting angry at the forces of Kaos, he\'s blowing a fuse and exploding with rage about smaller things, such as creaky floorboards and people not covering their mouths when they cough. With his hot temper, Eruptor never shies away from speaking his mind. He also has a case of indigestion, prone to burping up a pool of molten lava whenever he feels nauseous, nervous or startled. A flaming force of nature, Eruptor still blows his top from time to time. He doesn\'t suffer fools gladly, but tries to keep his fiery temper in check.[', ''),
(13, 1, 1, 'flameslinger.jpg', 'Flameslinger', 'Flameslinger is an elf who has the impression of being a show-off, having put on a blindfold to prove that he is an excellent archer with incredible aim. Despite this cocky image, he possesses a courageous heart, having saved a fire spirit from a watery fate when he was young.', ''),
(14, 2, 1, 'Gill_Grunt.jpg', 'Gill Grunt', 'Gill Grunt is one fish who never lets evil off the hook, willing to protect people other than himself and his friends. Brave and courageous, he is a loyal companion to have at your side. Protective and determined, Gill is a bighearted Gillman who never, ever gives up. He believes himself to be one of the greatest singers in history, while others find his singing to be dreadful; a trait shared by all Gillmen. In spite of this, Gill Grunt\'s friends (with the exception of Eruptor) are too fond of him to tell the truth.', ''),
(15, 10, 1, 'hex.jpg', 'Hex', 'Since her Undead transformation, Hex has become spooky, mysterious, and even sinister, striking fear into the hearts of her enemies. She has also developed a fondness for skulls. It has been said that Hex has laughed only once since her transformation -- apparently at an incident involving Trigger Happy, Slam Bam, and a gold coin in the rear end. She also has a tendency to act on her own, even if it means not sharing her plans with her allies. Strangely in Skylanders: Battlecast, Hex appears more prideful in battle, as well as sounding more cynical, and like other Skylanders in it, will scold and sneer at the Battlecaster should they harass her by poking.', ''),
(16, 1, 1, 'ignitor.jpg', 'Ignitor', 'Gallant and trustworthy, Ignatius changed his name to Ignitor and remains true to his pledge to use his powers to protect the innocent. Since his encounter with the witch that gave him the cursed armor, he holds a dislike for witches.', ''),
(17, 3, 1, 'LightningRod.jpg', 'Lightning Rod', 'Lightning Rod prides himself on being the most macho of all the other storm giants in Skylands[1], though he isn\'t used to sharing the spotlight. He is brave, but can also be charming and charismatic. Lightning Rod even considers everyone else in Skylands to be \'girlie\', especially girls, and few are brave enough to argue with him![2] He is fully aware of his own monumental talents and is happy to blow his own trumpet, but happier to blast evildoers with thunder and lightning.', ''),
(18, 4, 1, 'Prism_Break.jpg', 'Prism Break', 'Prism Break used to be a frightening rock golem who didn\'t like to be bothered. After being buried underground for 100 years in a cave-in, he gains a change of heart when a Mabu mining expedition freed him, and Prism Break dedicated himself in protecting the Mabu tribe and Skylands. While not as cranky as before, he still prefers his own company and keeps to himself until needed, although he\'s quick to use his precious gem-powered abilities to protect Skylands from attack.', '242222211130\r\n'),
(19, 2, 1, 'SlamBam.jpg', 'Slam Bam', 'Slam Bam can be a little frosty with folks he doesn\'t know, but soon thaws over time. Get on his bad side, however, and the polar pugilist will knock you out cold.', ''),
(20, 3, 1, 'Sonic_Boom.jpg', 'Sonic Boom', 'Sonic Boom is described as the maternal individual of the Skylanders since she and her young are the only Skylanders who fight evil as a family. As protective as only a mother can be, maternal Sonic Boom shelters all who need help beneath her wings. She also dislikes bullying. Sonic Boom can also be sensitive, as demonstrated in Terrafin Battles the Boom Brothers when she looked hurt after Terrafin yelled at the griffin in order to get through Sonic Boom\'s screeching.', ''),
(21, 6, 1, 'Stealth_Elf.jpg', 'Stealth Elf', 'Stealth Elf, like all elves, adores nature. She is considered to be a guardian protector of the forests and of Skylands. She may be a highly trained ninja, but sometimes Stealth Elf is known to have a sense of a rampaging Cyclops Mammoth. She speaks her mind, whether others want to hear it or not. She can sneak her way into any enemy\'s territory, but can also be tactless. Like all Life Skylanders, Stealth Elf prefers to keep her feet on the ground. Stealth Elf is also known to use trickery to get out of situations she doesn\'t feel like doing herself, using her decoys.', ''),
(22, 6, 1, 'Stump_Smash.jpg', 'Stump Smash', 'Prior to being cut down and logged, Stump Smash was a peaceful tree creature who spent most of his lifetime sleeping in the forest areas of his world, that is, until his incident with the Trolls. To this day, Stump Smash is still grouchy about what happened to him and takes his anger out on evil doers. He knows how to bare a grudge. Even after all these years he still seeks out trolls to teach them a lesson. He\'s no sap.[', ''),
(23, 1, 1, 'Sunburn.jpg', 'Sunburn', 'Like all dragons, Sunburn is quite the prankster, but hates evil with a passion. He uses his powers of teleportation to play practical jokes on his Skylander buddies, appearing when they least expect it. He doesn\'t like to stay in one place for more than a minute at a time.', ''),
(24, 4, 1, 'Terrafin.jpg', 'Terrafin', 'Terrafin is a fighter and has a personality to match. He\'s rough and physically minded, and blunt in his dealings with others. His comments in the various Skylander videos suggest that he\'s got a personality based on B.A. Barracus from the A-Team TV series. He often states he\'s both a fighter and a lover. Nothing gets Terrafin on the ropes. If he\'s knocked down he gets straight back up again, coming back fighting from any scrap. He thinks with his fists, and sometimes his teeth. Terrafin may be a little rough and ready, but he\'s always ready to use his mighty shark-fists to protect the innocent.', ''),
(25, 9, 1, 'trigger.jpg', 'Trigger Happy', 'Trigger Happy\'s solution to every problem is being, well, trigger-happy. He is known by the other Skylanders as a crazy gunslinger who will take down any evil-doer. The gremlin always loved hearing about his friends\' exploits in their fight against evil to the point of hopping from one foot to the other in excitement. Trigger Happy is also shown to have a sense of humor, as he always liked nothing better than to hide a sheep or two in Hugo\'s wardrobe most weekends to mess with the Mabu. In the Goldslinger Micro Comic, Trigger Happy shows a liking for roleplaying, passing as a dramatic Western fiction hero for the fun of it, and trying to convince Spyro to do similar in the future.', ''),
(26, 8, 1, 'Voodood.jpg', 'Voodood', 'Voodood was known as a highly decorated soldier of his people, commanding a well-known team of dangerous warriors. When not fighting evil, he is constantly searching for new and exotic bones to expand his collection. Voodood also insists that he has a heart of gold, despite knowing about the Orcs\' bad reputation.[', '6697158132\r\n'),
(27, 3, 1, 'Warnado.jpg', 'Warnado', 'One of the most powerful Air sorcerers of all time, Warnado is quick-witted and has lightning fast reflexes. Because of his past, he is fond of roller coasters.', ''),
(28, 2, 1, 'Wham-Shell.jpg', 'Wham-Shell', 'Regal and heroic, Wham-Shell never forgets the common clams and protects the seas for all his worth. As the son of an underwater king, he isn\'t used to being refused anything. It is also said that he is usually a pretty together kind of guy.', ''),
(29, 3, 1, 'Whirlwind.jpg\r\n', 'Whirlwind', 'Whirlwind is as brave as she is graceful. Her mood swings can be as changeable as the weather, but since becoming a Skylander, she has tried to keep her temper in check. However, she doesn\'t keep a calm head when provoked. Whirlwind is strong-winged, wild and ferocious. But deep down, she is pure of heart, having held no grudge against the dragons and unicorns for shunning her. ', ''),
(30, 8, 1, 'Wrecking_Ball.jpg', 'Wrecking Ball', 'Possibly the most reckless of all the Skylanders, Wrecking Ball rolls into danger without thought for his own personal safety. This lively larva smashes anything in his path (often) by accident, and is always hungry, even when he\'s just eaten! In some media, he possesses dog-like qualities.', ''),
(31, 2, 1, 'Zap.jpg', 'Zap', 'Zap is a friendly and mischevious water dragon, being revered by most of the sea creatures of Skylands who see him as a true dedicated guardian of both the seas and Skylands. He enjoys racing, being able to outstrip almost any opponent, and excels at everything he turns his claws to. Naturally curious and super-competitive, Zap is also a bit of a prankster, loving to shock his fellow Skylanders whenever he gets a chance. However he can be too curious for his own good and has a nose (or snout) for trouble, which can lead him and his fellow Skylanders into dangerous situations.', ''),
(32, 6, 1, 'Zook.jpg', 'Zook', 'Zook is the cheeriest walking bamboo plant you will ever meet. He lives life to the fullest and wants to explore every last one of Skylands\' many islands.', ''),
(33, 9, 2, 'Bouncer.jpg', 'Bouncer', 'While still an All-Star Roboto-Ball player, Bouncer had a big, lively personality that helped popularized the sport. Even after he no longer plays the sport of Roboto-Ball, he still holds a sense of loyalty to his Mabu fanbase, who remembered the security-bot fondly from his playing days, and Bouncer became determined to defeat the Arkeyan King, not wanting to let his fans down when they were enslaved by the Arkeyans. Despite his dynamic personality, Bouncer holds little patience to those who are extremely arrogant and little regard to what\'s at hand, but keeps himself from getting too upset since he considers himself a jolly robot.', ''),
(34, 4, 1, 'Crusher.jpg', 'Crusher', 'Single-minded and completely unstoppable, Crusher crashes through any situation with the subtlety of a three-ton hammer. He\'s also incredibly thick-skinned - probably because his skin\'s made of stone.', ''),
(35, 10, 2, 'Eye-Brawl.jpg', 'Eye Brawl', 'Eye-Brawl is hyper-observant. Nothing gets past him (without being thumped, that is).', ''),
(36, 1, 2, 'Hot_Head.jpg', 'Hot Head', 'Impetuous is a good word to describe Hot Head. He just can\'t help himself. This Fire Giant is always burning with enthusiasm. He smothers his enemies in blazing blobs of burning oil first, and asks questions second.', ''),
(37, 8, 2, 'Ninjini.jpg', 'Ninjini', 'An eternal optimist, Ninjini spins into battle, convinced she will always succeed come what may.', ''),
(38, 3, 2, 'Swarm.jpg', 'Swarm', 'Swarm is as adventurous as he is unique. He always adds a barbeed insult to a stinging attack. He never gets caught short of ideas, always having a \'plan bee\' up his sleeve.', ''),
(39, 2, 2, 'Thumpback.jpg', 'Thumpback', 'Thumpback is steadfast, dependable, trustworthy, and gifted with the patience of an angler.', ''),
(40, 6, 2, 'Tree_Rex.jpg', 'Tree Rex', 'Tree Rex is a natural protector who is as wise as he is majestic, unwavering in his mission to protect Skylands from evil magic.[2] He has also dedicated his life to maintain the natural balance of all things.', ''),
(41, 1, 3, 'Blast_Zone.jpg', 'Blast Zone', 'Fiery but disarming, Blast Zone always puts the safety of his friends first. He is always most likely to blow a fuse.', ''),
(42, 3, 3, 'Boom_Jet.jpg', 'Boom Jet', 'Boom Jet is a complete daredevil, convinced that he always has to be the best as what he does and can seem full of himself at times. Luckily, he\'s as brave as he is boastful.', ''),
(44, 4, 3, 'Doom_Stone.jpg', 'Doom Stone', 'Doom Stone is a fearsome opponent but is always happy to help his frends with any task.', ''),
(45, 3, 3, 'Free_Ranger.jpg', 'Free Ranger', 'A real whirlwind, Free Ranger is sometimes too impetuous for his own good. He has a love for bad weather, such as tornadoes, hurricanes and thunderstorms, and would often throw himself into them. He is most likely to talk about the weather; and least likely to stay indoors because it\'s raining. He is uncomfortable in confined spaces.', ''),
(46, 2, 3, 'Freeze_Blade.jpg', 'Freeze Blade', 'Freeze Blade slides into action without a thought of his own personal safety. He\'s always on the move, not one to stay in one place for long. He is known for making friends easily. Bullies, however, leave him cold.', ''),
(47, 1, 3, 'Fire_Kraken.jpg', 'Fire Kraken', 'A desire to help others burns in the heart of this young, hot-footed warrior. He likes playing with fire, and is less likely to burn out.', ''),
(48, 6, 3, 'Grilla_Drilla.jpg', 'Grilla Drilla', 'Never one to think of himself, Grilla Drilla gave up his jungle throne to become a Skylander, knowing it would mean he could protect even more people! Grilla Drilla also follows rules to the letter - suspecting Boom Bloom\'s eagerness to become a Skylander but still going through the process to ask for Master Eon\'s advice on the matter.', ''),
(50, 8, 3, 'Hoot_Loop.jpg', 'Hoot Loop', 'Hoot Loop is a natural showman, and is less likely to be modest. He is the first to boast about his extraordinary abilities. He can also be mischievous, as demonstrated in the animated Card Game Short Cut.', ''),
(51, 9, 3, 'Magna_Charge.jpg', 'Magna Charge', 'Magna Charge came from the great race of Ultron robots, but was mysteriously created with a giant magnet head. This proved problematic, as his peers were all made of metal and were constantly being pulled towards him. As a result, Magna Charge was exiled to a faraway island, where he eventually learned to control his magnetic powers. After years of training, he returned to his home to demonstrate his abilities, but found everything completely destroyed. In searching for answers, Magna Charge caught the attention of Master Eon, who realized the unique Ultron soldier was a perfect candidate for the Skylanders.', ''),
(52, 10, 3, 'Night_Shift.jpg', 'Night Shift', 'Night Shift can come off a bit grumpy, due to being an Undead character. He values boxing, and is commonly considered by others as old-school. Whenever he hears the sound of a boxing bell however, he goes into a wild frenzy, punching anyone and anything around him. Night Shift always plays by the rules, so when the Skylands Boxing Federation banned Teleportation, he had to give up the sport he loved.', ''),
(53, 10, 3, 'Rattle_Shake.jpg', 'Rattle Shake', 'During development, Rattle Shake was originally designed as a zombie cowboy, with detachable legs, armed with normal pistols or phantom pistols and his Swap ability from the bottom was originally Dig. Another concept had his legs replaced with a serpent\'s tail made from remains and his ghost pistols would become a mini-gun made from bones;. In the end, Rattle Shake became anthropomorphic snake, with the difference that his snake gun was originally going to be two.', ''),
(54, 4, 3, 'Rubble_Rouser.png', 'Rubble Rouser', 'Rubble Rouser is always looking to improve the way things work - and for new rocks to pulverize with his hammer slam!', ''),
(55, 9, 3, 'Spyrise.jpg', 'Spy Rise', 'Spy Rise never gives up. The persistent P.I. sticks with a job until everything\'s wrapped up.', ''),
(56, 6, 3, 'Stink_Bomb.jpg', 'Stink Bomb', 'Resilient Stink Bomb didn\'t let his master\'s disappearance put him down. He developed the martial art Kung Fume and wandered Skylands teaching its whiffy ways. Like all Life Skylanders, Stink Bomb prefers to keep his feet on the ground.', ''),
(57, 8, 3, 'Trap_Shadow.jpg', 'Trap Shadow', 'The finest feline tracker of his tribe, Trap Shadow was the go-to cat if you wanted something caught. He mostly keeps to himself. However, since becoming a Skylander, he\'s been trying to become a team player. You have to get up early to catch Trap Shadow out - as the wicked wizards discovered. He sniffed out their plans and trapped them before they could trap him (or Eon, for that matter).', ''),
(58, 2, 3, 'Wash_Buckler.jpg', 'Wash Buckler', 'Unlike most pirates, Wash Buckler is kind-hearted and true. He was never comfortable with pirating.', ''),
(59, 8, 4, 'Blastermind.jpg', 'Blastermind', 'Blastermind is very attuned to the feelings of others and tries hard to help his friends with their problems whenever he can.', ''),
(60, 6, 4, 'Bushwhack.jpg', 'Bushwhack', 'Bushwhack has a warrior\'s heart in a tiny elf body. Size doesn\'t matter when it comes to his passion for heroism.', ''),
(61, 8, 4, 'Enigma.png', 'Enigma', 'Sometimes Enigma can be difficult to figure out. He\'s kind of like a puzzle. Despite his reclusive nature, he possesses a courageous side as he willingly sacrificed his only gateway home to prevent the Darkness from entering his realm. In Ring of Heroes, he\'s inquisitive and spares no compliments for those who deserve it, but keeps it to himself when it comes to teamwork and focuses on the larger picture when it comes to villains.', ''),
(62, 9, 4, 'Gearshift.jpg', 'Gearshift', 'Gearshift\'s passion and spirit are an inspiration to her teammates. She\'s also quick on her feet.', ''),
(63, 3, 4, 'Gusto.jpg', 'Gusto', 'Gusto is a big guy with heart of gold. Not actual gold, of course, but Gusto\'s heart is just as precious.[', ''),
(64, 4, 4, 'Head_Rush.jpg', 'Head Rush', 'Head Rush\'s positive attitude is an inspiration to her friends. She may not think of herself as a great leader, but Master Eon and the Skylanders knows that she is on a path to greatness. In Ring of Heroes, she\'s supportive of her allies, always trying to find a quality that they might be overlooking in their skills.', ''),
(65, 9, 4, 'Jawbreaker.jpg', 'Jawbreaker', 'Jawbreaker likes being an individual, even though his robot pals think he should be more like them. Sometimes you\'ve just got to dare to be different.', ''),
(66, 1, 4, 'Kaboom.jpg', 'Ka-boom', 'Ka-Boom is a thinker and tinker. He\'ll mess around with his inventions until he gets them absolutely perfect.', ''),
(67, 7, 4, 'Knight_Light.jpg', 'Knight Light', 'Knight Light is described as pure, gallant, righteous and illuminating.', ''),
(68, 5, 4, 'Knight_Mare.jpg', 'Knight Mare', 'Knight Mare is described as a solitary, stubborn, shadowy and skilled huntress.', ''),
(69, 10, 4, 'Krypt_King.jpg', 'Krypt King', 'Krypt King may look imposing, but he\'s really just a curious spirit who\'s looking to settle down with the right suit of armor.', ''),
(70, 2, 4, 'Lob-Star.png', 'Lob-Star', 'Lob-Star is a disciplined crustacean and a hard worker. He has been able to accomplish great things by being patient and understanding in his studies.', ''),
(71, 10, 4, 'Short_Cut.jpg', 'Short Cut', 'Short Cut can be a perfectionist, but only because he loves what he does. He puts a lot of time and energy into creating each masterpiece.', ''),
(72, 2, 4, 'Snap_Shot.jpg', 'Snap Shot', 'Snap Shot is a fearless crocagator who uses his wild tracking skills to hunt down evil monsters and eventually villains. ', ''),
(73, 3, 4, 'Thunderbolt.jpg', 'Thunderbolt', 'Thunderbolt is a fierce competitor who faces each opponent with honor and bravery.', ''),
(74, 6, 4, 'Tuff_Luck.jpg', 'Tuff Luck', 'Tuff Luck has a lot of good stuff going for her. She is all about taking chances. Like the rest of her tribe, she is also very protective of the Fortunata Springs.', ''),
(75, 4, 4, 'Wallop.jpg', 'Wallop', 'Wallop is the hardest-working hero this side of Mount Scorch. His inventive mind is always looking for new ways to create.', ''),
(76, 1, 4, 'Wildfire.jpg', 'Wildfire', 'Wildfire is a loyal lion with a heart of gold, but he can be fierce in battle. He\'s very protective of the Fire Claw Clan and is always ready to lend them a magical hand when they need it.', ''),
(77, 7, 5, 'Astroblast.jpg', 'Astroblast', 'Astroblast is a curious type who won\'t back down from a fight. He\'s always prepared to protect people and relics from danger.', ''),
(78, 8, 5, 'Big_Bubble_Pop_Fizz.jpg', 'Big Bubble Pop Fizz', 'Big Bubble Pop Fizz is the SuperChargers counterpart of Pop Fizz in Skylanders: SuperChargers. His signature vehicle is the Soda Skimmer. He has a birthday counterpart called Birthday Bash Big Bubble Pop Fizz.', ''),
(79, 2, 5, 'Deep_Dive_Gill_Grunt.jpg', 'Deep Dive Gill Grunt', 'Deep Dive Gill Grunt is the SuperChargers counterpart of Gill Grunt in Skylanders: SuperChargers. His signature vehicle is the Reef Ripper.', ''),
(80, 10, 5, 'Bone_Bash_Roller_Brawl.jpg', 'Bone Bash Roller Brawl', 'Bone Bash Roller Brawl is the SuperChargers counterpart of Roller Brawl in Skylanders: SuperChargers. Her signature vehicle is the Tomb Buggy.', ''),
(81, 2, 5, 'Dive-Clops.jpg', 'Dive-Clops', 'Dive-Clops is very observant, similar to his twin brother, Eye-Brawl. He also has great knowledge of aquatic mechanics and the oceans of Skylands.', ''),
(82, 9, 5, 'Double_Dare_Trigger_Happy.jpg', 'Double Dare Trigger Happy', 'Double Dare Trigger Happy is the SuperCharger counterpart of Trigger Happy in Skylanders: SuperChargers. His signature vehicle is the Gold Rusher.', ''),
(83, 10, 5, 'Fiesta.jpg', 'Fiesta', 'Fiesta is a skeletal mariachi band leader who is one of the Undead SuperChargers in Skylanders: SuperChargers. His signature vehicle is the Crypt Crusher.', ''),
(84, 1, 5, 'Bowser.jpg', 'Hammer Slam Bowser', 'Being one of Nintendo\'s most iconic antagonists, Bowser is very tyrannical, cruel, ruthless, and oppressive, willing to do whatever it takes to defeat his former nemesis Mario, and capture his love interest Princess Peach. Now as a SuperCharger, Bowser is a trustworthy warrior; courageous, selfless, and loyal to those who can\'t help themselves. He is still sinister, but in a good way (very similar to the SWAP Force Skylander, Rattle Shake). He is also a very frightening fellow, as he managed to scare Buzz during his quest at Skylanders Academy.', ''),
(85, 9, 5, 'High_Volt.jpg', 'High Volt', 'High Volt is a very dedicated commander, even willing to take orders from Buzz. He is also extremely observant and intelligent, not letting any evil being out of his sight and will get any possible information out of them. Like all Tech Skylanders, High Volt is fascinated by machinery.', ''),
(86, 3, 5, 'Hurricane_Jet-Vac.jpg', 'Hurricane Jet-Vac', 'Hurricane Jet-Vac is the SuperCharger counterpart of Jet-Vac in Skylanders: SuperChargers. His signature vehicle is the Jet Stream.\r\n\r\n', ''),
(87, 1, 5, 'Lava_Lance_Eruptor.jpg', 'Lava Lance Eruptor', 'Lava Lance Eruptor is the SuperCharger counterpart of Eruptor in Skylanders: SuperChargers. His signature vehicle is the Burn-Cycle.', ''),
(88, 5, 5, 'Nightfall.jpg', 'Nightfall', 'As a Dark Skylander herself, Nightfall is considered pessimistic and brooding. When she became irritated by Stormblade\'s optimism, the lark called the Dreadwalker a \"walking bummer cloud\". She always has a threatening tone even towards her allies, and is implied by Buzz to skip training because of her overconfidence and pride. Nightfall hates being bored; she is inquisitive and energetic, and loves exploring. She cares deeply for her people, but has never cared about being popular or fitting in with the crowd. Nightfall is also easy to anger, though she\'s quick to dial it back to just complaining.', ''),
(89, 4, 5, 'Shark_Shooter_Terrafin.jpg', 'Shark Shooter Terrafin', 'Shark Shooter Terrafin is the SuperChargers counterpart of Terrafin in Skylanders: SuperChargers. His signature vehicle is the Shark Tank.', ''),
(90, 4, 5, 'Smash_Hit.jpg', 'Smash Hit', 'As his name suggests, Smash Hit loves demolishing objects (particularly remnants of the Arkeyans that were to dangerous to leave rusting). However when not battling evil, he tends to destroy old objects at the Skylanders Academy that no longer prove useful to its inhabitants (Buzz in particular). He is also a real chatterbox when having a conversation, as revealed in his Quests in SuperChargers.', ''),
(91, 1, 5, 'Spitfire.jpg', 'Spitfire', 'Spitfire is a spirited speed demon with lightning quick reflexes and nerves of steel. He is quite arrogant and overconfident, though the comics show Spitfire will keep it aside to act like a proper leader. He might be unbeatable, but Spitfire is no hothead. His bravery, determination and tenacity make him a fiery force to be reckoned with.', ''),
(92, 8, 5, 'Splat.jpg', 'Splat', 'Although Splat was in boredom of doing repetitive work at school, she is still a colorful character and admires her various artwork. She also encourages others to break free of their comfort zones and express themselves with paintings. She also knows how to make an excellent impression on her peers. She is the definition of spunky; she\'s got a lot of fight in her and rarely backs down from a ruckus. Splat is also known to be quite brave when duty calls.', ''),
(93, 3, 5, 'Stormblade.jpg', 'Stormblade', 'Stormblade is a fearless daredevil with an unquenchable thirst for adventure. She is naturally excited about things, including participating in missions and dedicating herself to training. Stormblade is also very confident in the good in people she looks up to, as seen in her attempts to redeem Ghost Roaster in Secret Agent Secrets. However, her tendency to not stick to one thought also makes her somewhat slow on the uptake, as seen on Story of Nightfall where she mistakes Nightfall\'s story about traumatized citizens to be about mind attacks from Leviathans.', ''),
(94, 6, 5, 'SuperShot_Stealth_Elf.jpg', 'Super Shot Stealth Elf', 'Super Shot Stealth Elf is the SuperChargers counterpart of Stealth Elf in Skylanders: SuperChargers. Her signature vehicle is the Stealth Stinger.', ''),
(95, 6, 5, 'Thrillipede.jpg', 'Thrillipede', 'Thrillipede is incredibly skilled in combat, but is very reserved when not battling evil. Despite not being a bird, he is very observant when riding his Buzz Wing, and has great knowledge on flight mechanics. In his SuperCharger Quest, he is also shown to be very modest, and holds a longstanding friendship with Buzz. Thrillipede flies fearless through the skies, zipping through the air without a care. He\'s committed to his duty, but freely admits he loves to wow the crowds. ', ''),
(96, 6, 5, 'DonkeyKong.jpg', 'Turbo Charge Donkey Kong', 'Being one of Nintendo\'s most iconic protagonists, Donkey Kong is a carefree, lazy, intelligence-lacking, yet trustworthy hero on Donkey Kong Island. However on various occasions, he was forced to take action with his nephew, Diddy Kong and other members of the Kong Family to reclaim their main priority, the Banana Hoard, from their common enemies, the Kremling Krew.', ''),
(97, 3, 6, 'Air_Strike.jpg', 'Air Strike', 'Air Strike and Birdie are an Air elemental falconer Sensei and his Blue Zephyr Falcon friend in Skylanders: Imaginators that teach Imaginators of the Brawler Class. They are available in the Gryphon Park Observatory Adventure Pack.', ''),
(98, 6, 6, 'Ambush.jpg', 'Ambush', 'Ambush is direct with his words, and is protective of nature and is a Life Knight Sensei in Skylanders: Imaginators.', ''),
(99, 7, 6, 'Aurora.jpg', 'Aurora', 'Aurora is a Light elemental Sensei in Skylanders: Imaginators. She is the niece of the great Portal Master Eon and trains Imaginators of the Swashbuckler Battle Class.', ''),
(100, 4, 6, 'Barbella.jpg', 'Barbella', 'Barbella was the best fitness trainer in all of Skylands. Not only did she possess otherworldly strength, she was also a firm believer that a healthy diet and exercise led to true happiness. With such a positive message to spread, Barbella decided to open her own fitness center called “Flex-a-lot”, where she hoped to instill good eating and workout habits with all of her patrons. But one day, the gelatinous villain known as The Gulper destroyed her gym, and it took all of Barbella’s strength to keep it from collapsing while everyone fled to safety. It was then that Barbella realized that bad guys were more hazardous to your health than anything else, so she began to train in the ways of the Sentinel, where she quickly became one of the greatest masters in the world!', ''),
(101, 6, 6, 'Boom_Bloom.jpg', 'Boom Bloom', 'Boom Bloom is soft spoken and polite, rarely using contractions. Despite this, she\'s headstrong and insensitive, making rash decisions without much thought and is easily confused and embarassed. She still retains her memories of when she was a living tree, as well as the feelings of the ones that used to be with her.', ''),
(102, 8, 6, 'Buckshot.jpg', 'Buckshot', 'Buckshot is cheerful and energetic, but apparently not exactly smart, as he failed classes and is unable to count his own Skylander stats.', ''),
(104, 9, 6, 'Chain_Reaction.jpg', 'Chain Reaction', 'Chain Reaction appears to very vain and conceited, constantly complimenting himself with adjectives such as \"handsome\" and \"charming\". However, he doesn\'t seem to brag too much on himself unlike certain Skylanders such as Lightning Rod and Ro-Bow, always remaining noble and humble when around others.', ''),
(105, 10, 6, 'Chopscotch.jpg', 'Chopscotch', 'Chopscotch loves speaking in rhyme and wasn\'t bothered when the other ghouls of the Underworld made fun of her short stature.', ''),
(106, 1, 6, 'Ember.jpg', 'Ember', 'Ember is a Fire Sensei in Skylanders: Imaginators. She trains Imaginators set in the Sentinel Class.', ''),
(107, 1, 6, 'Flare_Wolf.jpg', 'Flare Wolf', 'Flare Wolf is a Fire wolf and one of the Senseis in Skylanders: Imaginators. He trains Imaginators of the Bazooker Battle Class.', ''),
(108, 2, 6, 'King_Pen.jpg', 'King Pen', 'King Pen is a Brawler Sensei in Skylanders: Imaginators, who also serves as the leader of the Skylander Senseis.', ''),
(111, 8, 6, 'Mysticat.jpg', 'Mysticat', 'Mysticat is a sphinx Magic Sensei in Skylanders: Imaginators who trains Imaginators of the Sorcerer Battle Class.', ''),
(112, 10, 6, 'Pit_Boss.jpg', 'Pit Boss', 'Pit Boss\' wisdom is said to have no bounds. He has a love for certain \"S\" words that are related to snakes, such as the words \'snake\', \'slither\', \'serpent\', and \'statistics\'.', ''),
(113, 9, 6, 'Ro-Bow.jpg', 'Ro-Bow', 'Though it\'s unclear if it was caused by the speech patterns or the other way around, Ro-Bow is prideful and arrogant, constantly taunting his enemies even after a victory and complimenting his own characteristics.', ''),
(114, 5, 6, 'Starcast.jpg', 'Starcast', 'Starcast is a four-armed extraterrestrial who is one of the Dark Senseis in Skylanders: Imaginators. He trains Imaginators who belong to the Ninja Battle Class.', ''),
(115, 2, 6, 'Tidepool.jpg', 'Tidepool', 'Tidepool is a marine Water Sensei of the Quickshot Battle Class in Skylanders: Imaginators.', ''),
(116, 4, 6, 'Tri-Tip.jpg', 'Tri-Tip', 'Tri-Tip is an Earth-elemental Triceratops who is one of the Smasher Senseis in Skylanders: Imaginators.', ''),
(117, 3, 6, 'Wild_Storm.jpg', 'Wild Storm', 'Wild Storm is an Air elemental Sensei of the Knight Battle Class. He is included in the Cursed Tiki Temple Level Pack.', ''),
(118, 9, 5, 'Barrel_Blaster.jpg', 'Barrel Blaster', 'The Barrel Blaster is Turbo Charge Donkey Kong\'s signature vehicle in Skylanders: SuperChargers. Paired with Turbo Charge Donkey Kong, it is available in either Wii U starter packs of SuperChargers, or in SuperCharged combo packs. It is only playable in SuperChargers Racing and the Wii U versions of SuperChargers and Imaginators.\r\n\r\nThe Barrel Blaster is all geared up and primed for action! Constructed from Donkey Kong\'s renowned mine cart and iconic barrels, this is one explosive land vehicle that will have Kaos going bananas!', ''),
(119, 1, 5, 'Burn-Cycle.jpg', 'Burn-Cycle', 'The Burn-Cycle is Lava Lance Eruptor\'s signature vehicle in Skylanders: SuperChargers. The Burn-Cycle was created when Eruptor attempted to roll hot lava into a “flaming snowman” during the Skylander holiday party. The result was a perpetual fireball with incredibly high acceleration and blurring speeds!', ''),
(120, 6, 5, 'Buzz_Wing.jpg', 'Buzz Wing', 'The Buzz Wing is Thrillipede\'s signature vehicle in Skylanders: SuperChargers. Buzz Wing is Thrillipede’s famous fighter plane. After heroically blasting over 300 enemy jets in the Great Greeble War, it was put on display in the Millipede Museum. But with Kaos on the loose again, it’s back in action and ready for more!', ''),
(121, 3, 5, 'Clown_Cruiser.jpg', 'Clown Cruiser', 'The Clown Cruiser is Hammer Slam Bowser\'s signature vehicle in Skylanders: SuperChargers. Paired with Hammer Slam Bowser, it is available in either SuperChargers Racing starter packs, or in SuperCharged combo packs. It is only playable in SuperChargers Racing and the Wii U versions of SuperChargers and Imaginators.\r\n\r\nThe Clown Cruiser is ready for launch! Sporting the face of his famous Koopa Copter, Bowser\'s custom aircraft has been reinforced with armor plated Koopa shells and comes fully loaded with classic fireballs and a Bullet Bill!', ''),
(122, 10, 5, 'Crypt_Crusher.jpg', 'Crypt Crusher', 'The Crypt Crusher is Fiesta\'s signature vehicle in Skylanders: SuperChargers. The Crypt Crusher is the undefeated champion of underworld drag racing. Originally crafted from Fiesta’s childhood racecar bed, it now uses an intimidating \"Wheel of Doom\" to roll over the competition!', ''),
(123, 2, 5, 'Dive_Bomber.jpg', 'Dive Bomber', 'The Dive Bomber is Dive-Clops\' signature vehicle in Skylanders: SuperChargers. It is a heavy duty aquatic battle tank! With enchanted metal plating capable of withstanding the immense pressure of the deep ocean, evil has nowhere to hide when Dive-Clops is in pursuit!', ''),
(124, 9, 5, 'Gold_Rusher.jpg', 'Gold Rusher', 'The Gold Rusher is Double Dare Trigger Happy\'s signature vehicle in Skylanders: SuperChargers. The Gold Rusher is an all-purpose, high performance stunt vehicle. Packed with hyper exhaust pipes and leprechaun gold plating, Trigger Happy’s custom ride is the flashiest vehicle in the Supercharger fleet!', ''),
(125, 1, 5, 'Spitfire_Hot.jpg', 'Hot Streak', 'The Hot Streak is Spitfire\'s signature vehicle in Skylanders: SuperChargers, included in the game\'s Starter Pack. It was made from elemental magma rock and forged in the depths of the Volcanic Vault. With maximum firepower, it is capable of achieving extreme speeds and ready to scorch anything in its path!', ''),
(126, 3, 5, 'Jet_Stream.jpg', 'Jet Stream', 'Jet Stream is the signature vehicle for the Air SuperCharger, Hurricane Jet-Vac. The Jet Stream is a finely tuned storm-chasing machine. Its twin turbines give it supreme maneuverability, while its Sky Baron battle armor and enhanced weaponry guarantee it will always be the last bird standing!', ''),
(127, 2, 5, 'Reef_Ripper.jpg', 'Reef Ripper', 'The Reef Ripper is Deep Dive Gill Grunt\'s signature vehicle in Skylanders: SuperChargers. The Reef Ripper is the legendary submarine that Gill Grunt uses to scour the vast ocean for his lost love. Armed with a siren blast and a harpoon shot, the evil pirates that took her won’t be getting off the hook very easy!', ''),
(128, 5, 5, 'Sea_Shadow.jpg', 'Sea Shadow', 'The Sea Shadow is Nightfall\'s signature vehicle in Skylanders: SuperChargers. The Sea Shadow was originally built by Nightfall to explore shadowy depths of the Poison Sea near her home. It is elusive and agile with powerful weaponry that will sting any monster that lurks in the abyss!', ''),
(129, 4, 5, 'Shark_Tank.jpg', 'Shark Tank', 'The Shark Tank is the signature vehicle of Shark Shooter Terrafin. The Shark Tank is an unstoppable driving force when Terrafin is at the helm. Containing subterranean navigation, all-terrain teeth tread, and enchanted battle armor, it is primed and ready to take the bite to Kaos!', ''),
(130, 9, 5, 'Shield_Striker.jpg', 'Shield Striker', 'The Shield Striker is High Volt\'s signature vehicle in Skylanders: SuperChargers. The Shield Striker is the ultimate weapon against evil. Heavily armored and surging with electricity, High-Volt\'s high-powered machine is geared up to enforce justice on anything that stands in its way!', ''),
(131, 3, 5, 'Sky_Slicer.jpg', 'Sky Slicer', 'The Sky Slicer is Stormblade\'s signature vehicle in Skylanders: SuperChargers. It is aerodynamic and lightning fast! Originally designed by Stormblade to explore the furthest reaches of Skylands, the Sky Slicer has since been retrofitted with high-powered weaponry and armor, making it one of the best in the nest!', ''),
(132, 8, 5, 'Soda_Skimmer.jpg', 'Soda Skimmer', 'The Soda Skimmer is Big Bubble Pop Fizz\'s signature vehicle in Skylanders: SuperChargers. It is a rip-roaring, rapid riding machine! Running entirely on jet-potion and built with an indestructible inflatable material called \"Bafloon\" (created by Pop Fizz himself), this vehicle has all the right ingredients!', ''),
(133, 8, 5, 'Splatter_Splasher.jpg', 'Splatter Splasher', 'The Splatter Splasher is Splat\'s signature vehicle in Skylanders: SuperChargers. It is a high speed hydro-craft that leaves evil floating in its wake! With its ultra-slick armor and underwater enchantment, Splat’s custom ride is a force to be reckoned with above and below the surface!', ''),
(134, 6, 5, 'Stealth_Stinger.jpg', 'Stealth Stinger', 'The Stealth Stinger is Super Shot Stealth Elf\'s signature vehicle in Skylanders: SuperChargers. The Stealth Stinger is the ultimate forest ninja weapon! During covert Skylander operations, Stealth Elf uses its camouflage abilities and high velocity thorn rockets to get the drop on evil before they see it coming!', ''),
(135, 7, 5, 'Sun_Runner.jpg', 'Sun Runner', 'The Sun Runner is Astroblast\'s signature vehicle in Skylanders: SuperChargers. It is a prototype spaceship built to recover items that are lost when traveling through the portals. Its anti-gravity capabilities and speedy acceleration allow Astroblast to get the jump on bad guys before they know what hit them!', ''),
(136, 4, 5, 'Thump_Truck.jpg', 'Thump Truck', 'The Thump Truck is Smash Hit\'s signature vehicle in Skylanders: SuperChargers. Thump Truck is Smash Hit’s personal wrecking machine that was built for one purpose – total destruction! It has been heavily modified with earth crunching iron jaws, a gravel exhaust port, and armored steel plating for ultimate toughness!', ''),
(137, 10, 5, 'Tomb_Buggy.jpg', 'Tomb Buggy', 'The Tomb Buggy is Bone Bash Roller Brawl\'s signature vehicle in Skylanders: SuperChargers. The Tomb Buggy was hand crafted by Roller Brawl from the skeletal remains of an ancient undead Grave Panther. With its agile maneuverability and impressive weaponry, it\'s perfect for any driver that has a bone to pick with evil!', ''),
(138, 2, 2, 'Chill.jpg', 'Chill', 'As captain of the Queen\'s guard, Chill was once the most feared and respected of all the people in the Ice Kingdom. She is a proud, noble warrior - but not afraid to play dirty.', ''),
(139, 4, 2, 'Flashwing.jpg', 'Flashwing', 'Flashwing knows just how beautiful she appears and also how deadly she can be. She often tries to steal the spotlight from her fellow Skylanders, but her kind heart always shines through in the end.', ''),
(140, 10, 2, 'Fright_Rider.jpg', 'Fright Rider', 'Gallant and brave, Fright Rider is always ready to rush headlong into action. Together with Ozzy, they are a courageous pair, honour-bound to right wrongs wherever they roam.[', ''),
(141, 1, 2, 'Hot_Dog.jpg', 'Hot Dog', 'Hot Dog possesses a fierce loyalty to his friends, and true to his nature, he likes to bury things, especially imps. He is always bounding around like an excitable puppy - which is exactly what he is. Not the kind of Skylander to go hungry, he is always on the lookout for a sizzling snack.[', ''),
(142, 3, 2, 'Jet_Vac.jpg', 'Jet-Vac', 'Noble and courageous, Jet-Vac always think of others before himself. Now a Skylander, he soars where even eagles never dare. In the Full Blast microcomic, he\'s shown to be a bit of a defeatist, thinking his worth as a fighter is lost without a weapon.\r\n\r\nIn Skylanders: Imaginators, Jet-Vac displays dedication in searching for what has been stolen from him, in his case, his lunch that was stored away within the Sky Fortress.', '102114143167\r\n'),
(143, 8, 2, 'Pop_Fizz.jpg', 'Pop Fizz', 'Pop Fizz is widely known as being a little crazy. The Skylander who puts the mad into a mad scientist, he is bubbling over with crazy amounts of enthusiasm. And that\'s before he\'s glugged from his bonkers beast beaker! According to Pop Fizz, the reason he keeps drinking his potion, or soda, is that the effects keep him on edge, gives him powers and that it is \"soda-licious.\" He is also one of the few characters who fully understand Double Trouble\'s language.', ''),
(144, 6, 2, 'Shroomboom.jpg', 'Shroomboom', 'Courageous and determined, Shroomboom lets nothing stand in his way. He\'s always ready to parachute into danger, no matter the risk', ''),
(145, 9, 2, 'Sprocket.jpg', 'Sprocket', 'Resourceful, Sprocket isn\'t one to sit back and let others do the work. She jumps in with both armored feet, creating solutions for every problem imaginable.', ''),
(146, 4, 2, 'Series_2_Bash.jpg', 'Bash', 'Never tell Bash he can\'t do something. This resourceful, stubborn Skylander will keep on rolling until he\'s proved you wrong. He never gives up without a fight. Despite his gruff disposition, Bash is very sensitive about his inability to fly.', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `skylandersinfo`
--

CREATE TABLE `skylandersinfo` (
  `skylanderInfoId` int(5) NOT NULL,
  `skylanderId` int(5) NOT NULL,
  `elementId` int(5) NOT NULL,
  `serieId` int(5) NOT NULL,
  `skylanderImage` varchar(255) NOT NULL,
  `skylanderName` varchar(255) NOT NULL,
  `skylanderDescription` text NOT NULL,
  `skylandersCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `skylandersinfo`
--

INSERT INTO `skylandersinfo` (`skylanderInfoId`, `skylanderId`, `elementId`, `serieId`, `skylanderImage`, `skylanderName`, `skylanderDescription`, `skylandersCode`) VALUES
(1, 1, 10, 1, 'ghost_roaster.jpg', 'Ghost Roaster', 'Ghost Roaster is known for his relentless, undying appetite for ghosts (particularly evil ghosts). However, being a chef, he is good in the kitchen for making delicious recipes. Despite his scary behavior, he seems unfazed by pranks such as Camo\'s. In Secret Agent Secrets, Ghost Roaster\'s flaw is revealed to be a desire to have his work recognized, even if by the side of the villains. Years being put aside in favor of newcomer Skylanders made him bitter towards them, until Stormblade expressed respect for what he did regardless of his threats.', ''),
(2, 2, 8, 1, 'spyro.jpg', 'Spyro', 'Although eager and young at heart, Spyro is a strong-willed dragon who is fearless and brave; a born hero dedicated to defending his world from all things evil. He holds a photographic memory, and as a result, has encyclopedic knowledge of all the islands and creatures in Skylands he has encountered, more so than any other Skylander. He is always up for adventure (his favorite kind being treasure hunts), and is the first Skylander to leap into action.', ''),
(3, 3, 4, 1, 'bash.jpg', 'Bash', 'Never tell Bash he can\'t do something. This resourceful, stubborn Skylander will keep on rolling until he\'s proved you wrong. He never gives up without a fight. Despite his gruff disposition, Bash is very sensitive about his inability to fly.', ''),
(4, 4, 9, 1, 'boomer.jpg', 'Boomer', 'Blowing things up is apparently Boomer\'s answer to everything. He is also known for his love of blowing stuff up; a trait that is shared by all the other Trolls in Skylands. However unlike his brethren, Boomer isn\'t interested in war and conquest, so he turned his back on the troll lifestyle. He is considered a little odd; if at a great but dangerous height, Boomer enjoys every minute of falling or barreling down towards the ground at a frightening pace, since the resulting crash will make a huge \'boom\'. Yet for being a troll he is disgusted by the sight of trolls.', ''),
(5, 5, 6, 1, 'camo.jpg', 'Camo', 'Like most dragons, Camo loves a laugh. He is a real prankster, with one of his favorite tricks creating fruit and vegetables that explode in your shocked face! Despite his love of pranks, Camo is serious when it comes to protecting Skylands and its inhabitants.', ''),
(6, 6, 10, 1, 'Chop_Chop.jpg', 'Chop Chop', 'With his skeletal frame, cold voice, and tremendous abilities, Chop Chop is often assumed to be a bit of a frightening fellow. In truth, he is a very frightening fellow. Despite that however, he appears to possess a sense of honor, as shown by his dedication to finding those who created him.', ''),
(7, 7, 10, 1, 'cynder.jpg', 'Cynder', 'Kidnapped as an egg by the evil Malefor, Cynder was brainwashed and trained in the ways of evil and darkness. She was a sinister dragon, a harbringer of despair and misery taught to strike fear into the hearts of Malefor\'s subjects and spread terror far and wide. However a speck of goodness burned somewhere in her black heart, which made her internally aware of the evil she was committing. After being freed from Malefor\'s spell, Cynder desires to make amends by battling evildoers with her dark powers, but she still struggles with her past.', ''),
(8, 8, 4, 1, 'Dino-Rang.jpg', 'Dino-Rang', 'Unlike most unruly dinosaurs, Dino-Rang has a calm and collected demeanor. However, if anyone calls him a dragon by mistake, Dino-Rang will lose his cool, resulting in a furious display of whirling boomerangs. Even though he loves being a Skylander, he still dreams of the hunting plains of his homeland.', ''),
(9, 9, 8, 1, 'double-trouble.jpg', 'Double-Trouble', 'A loner at heart, Double Trouble discovered the joys of companionship through his clones. Always upbeat, the spirited shaman is a bundle of unearthly Eldritch energy.', ''),
(10, 10, 9, 1, 'Drill-Sergeant.jpg', 'Drill Sergeant', 'Drill Sergeant was built and programmed to obey orders, which results in him calling everyone \'sir\', which irritates some of his comrades. He follows rules to the letter, never wavering until the job is done. As a valued member of the Skylanders, he is a free machine, answering to no one, but old habits of his Arkeyan programming hasn\'t yet diminished. Like all Tech Skylanders, Drill Sergeant is fascinated by machinery.', ''),
(11, 11, 9, 1, 'drobot.jpg', 'Drobot', 'Exceptionally intelligent, Drobot is driven by logic and the pursuit of knowledge. He can turn his hand to any technology and is ferocious in battle. A super-genius, Drobot analyses everything he comes across. While he seemed cold and calculating at first, the Skylanders soon discovered that he is as brave as he is intelligent. Drobot may be smart, but he never shies away from a fight. Instead of waiting to be invited to be a Skylander, Drobot sought out Master Eon and offered his services. Like many dragons, he also has a sense of humor and uses his knowledge to come up with new pranks.', ''),
(12, 12, 1, 1, 'Eruptor.jpg', 'Eruptor', 'Eruptor is a hot head with a strong dislike for anything evil, so whenever something bad threatens his world, he quickly erupts... quite literally. When he isn\'t getting angry at the forces of Kaos, he\'s blowing a fuse and exploding with rage about smaller things, such as creaky floorboards and people not covering their mouths when they cough. With his hot temper, Eruptor never shies away from speaking his mind. He also has a case of indigestion, prone to burping up a pool of molten lava whenever he feels nauseous, nervous or startled. A flaming force of nature, Eruptor still blows his top from time to time. He doesn\'t suffer fools gladly, but tries to keep his fiery temper in check.[', ''),
(13, 13, 1, 1, 'flameslinger.jpg', 'Flameslinger', 'Flameslinger is an elf who has the impression of being a show-off, having put on a blindfold to prove that he is an excellent archer with incredible aim. Despite this cocky image, he possesses a courageous heart, having saved a fire spirit from a watery fate when he was young.', ''),
(14, 14, 2, 1, 'Gill_Grunt.jpg', 'Gill Grunt', 'Gill Grunt is one fish who never lets evil off the hook, willing to protect people other than himself and his friends. Brave and courageous, he is a loyal companion to have at your side. Protective and determined, Gill is a bighearted Gillman who never, ever gives up. He believes himself to be one of the greatest singers in history, while others find his singing to be dreadful; a trait shared by all Gillmen. In spite of this, Gill Grunt\'s friends (with the exception of Eruptor) are too fond of him to tell the truth.', ''),
(15, 15, 10, 1, 'hex.jpg', 'Hex', 'Since her Undead transformation, Hex has become spooky, mysterious, and even sinister, striking fear into the hearts of her enemies. She has also developed a fondness for skulls. It has been said that Hex has laughed only once since her transformation -- apparently at an incident involving Trigger Happy, Slam Bam, and a gold coin in the rear end. She also has a tendency to act on her own, even if it means not sharing her plans with her allies. Strangely in Skylanders: Battlecast, Hex appears more prideful in battle, as well as sounding more cynical, and like other Skylanders in it, will scold and sneer at the Battlecaster should they harass her by poking.', ''),
(16, 16, 1, 1, 'ignitor.jpg', 'Ignitor', 'Gallant and trustworthy, Ignatius changed his name to Ignitor and remains true to his pledge to use his powers to protect the innocent. Since his encounter with the witch that gave him the cursed armor, he holds a dislike for witches.', ''),
(17, 17, 3, 1, 'LightningRod.jpg', 'Lightning Rod', 'Lightning Rod prides himself on being the most macho of all the other storm giants in Skylands[1], though he isn\'t used to sharing the spotlight. He is brave, but can also be charming and charismatic. Lightning Rod even considers everyone else in Skylands to be \'girlie\', especially girls, and few are brave enough to argue with him![2] He is fully aware of his own monumental talents and is happy to blow his own trumpet, but happier to blast evildoers with thunder and lightning.', ''),
(18, 18, 4, 1, 'Prism_Break.jpg', 'Prism Break', 'Prism Break used to be a frightening rock golem who didn\'t like to be bothered. After being buried underground for 100 years in a cave-in, he gains a change of heart when a Mabu mining expedition freed him, and Prism Break dedicated himself in protecting the Mabu tribe and Skylands. While not as cranky as before, he still prefers his own company and keeps to himself until needed, although he\'s quick to use his precious gem-powered abilities to protect Skylands from attack.', '242222211130\r\n'),
(19, 19, 2, 1, 'SlamBam.jpg', 'Slam Bam', 'Slam Bam can be a little frosty with folks he doesn\'t know, but soon thaws over time. Get on his bad side, however, and the polar pugilist will knock you out cold.', ''),
(20, 20, 3, 1, 'Sonic_Boom.jpg', 'Sonic Boom', 'Sonic Boom is described as the maternal individual of the Skylanders since she and her young are the only Skylanders who fight evil as a family. As protective as only a mother can be, maternal Sonic Boom shelters all who need help beneath her wings. She also dislikes bullying. Sonic Boom can also be sensitive, as demonstrated in Terrafin Battles the Boom Brothers when she looked hurt after Terrafin yelled at the griffin in order to get through Sonic Boom\'s screeching.', ''),
(21, 21, 6, 1, 'Stealth_Elf.jpg', 'Stealth Elf', 'Stealth Elf, like all elves, adores nature. She is considered to be a guardian protector of the forests and of Skylands. She may be a highly trained ninja, but sometimes Stealth Elf is known to have a sense of a rampaging Cyclops Mammoth. She speaks her mind, whether others want to hear it or not. She can sneak her way into any enemy\'s territory, but can also be tactless. Like all Life Skylanders, Stealth Elf prefers to keep her feet on the ground. Stealth Elf is also known to use trickery to get out of situations she doesn\'t feel like doing herself, using her decoys.', ''),
(22, 22, 6, 1, 'Stump_Smash.jpg', 'Stump Smash', 'Prior to being cut down and logged, Stump Smash was a peaceful tree creature who spent most of his lifetime sleeping in the forest areas of his world, that is, until his incident with the Trolls. To this day, Stump Smash is still grouchy about what happened to him and takes his anger out on evil doers. He knows how to bare a grudge. Even after all these years he still seeks out trolls to teach them a lesson. He\'s no sap.[', ''),
(23, 23, 1, 1, 'Sunburn.jpg', 'Sunburn', 'Like all dragons, Sunburn is quite the prankster, but hates evil with a passion. He uses his powers of teleportation to play practical jokes on his Skylander buddies, appearing when they least expect it. He doesn\'t like to stay in one place for more than a minute at a time.', ''),
(24, 24, 4, 1, 'Terrafin.jpg', 'Terrafin', 'Terrafin is a fighter and has a personality to match. He\'s rough and physically minded, and blunt in his dealings with others. His comments in the various Skylander videos suggest that he\'s got a personality based on B.A. Barracus from the A-Team TV series. He often states he\'s both a fighter and a lover. Nothing gets Terrafin on the ropes. If he\'s knocked down he gets straight back up again, coming back fighting from any scrap. He thinks with his fists, and sometimes his teeth. Terrafin may be a little rough and ready, but he\'s always ready to use his mighty shark-fists to protect the innocent.', ''),
(25, 25, 9, 1, 'trigger.jpg', 'Trigger Happy', 'Trigger Happy\'s solution to every problem is being, well, trigger-happy. He is known by the other Skylanders as a crazy gunslinger who will take down any evil-doer. The gremlin always loved hearing about his friends\' exploits in their fight against evil to the point of hopping from one foot to the other in excitement. Trigger Happy is also shown to have a sense of humor, as he always liked nothing better than to hide a sheep or two in Hugo\'s wardrobe most weekends to mess with the Mabu. In the Goldslinger Micro Comic, Trigger Happy shows a liking for roleplaying, passing as a dramatic Western fiction hero for the fun of it, and trying to convince Spyro to do similar in the future.', ''),
(26, 26, 8, 1, 'Voodood.jpg', 'Voodood', 'Voodood was known as a highly decorated soldier of his people, commanding a well-known team of dangerous warriors. When not fighting evil, he is constantly searching for new and exotic bones to expand his collection. Voodood also insists that he has a heart of gold, despite knowing about the Orcs\' bad reputation.[', '6697158132\r\n'),
(27, 27, 3, 1, 'Warnado.jpg', 'Warnado', 'One of the most powerful Air sorcerers of all time, Warnado is quick-witted and has lightning fast reflexes. Because of his past, he is fond of roller coasters.', ''),
(28, 28, 2, 1, 'Wham-Shell.jpg', 'Wham-Shell', 'Regal and heroic, Wham-Shell never forgets the common clams and protects the seas for all his worth. As the son of an underwater king, he isn\'t used to being refused anything. It is also said that he is usually a pretty together kind of guy.', ''),
(29, 29, 3, 1, 'Whirlwind.jpg\r\n', 'Whirlwind', 'Whirlwind is as brave as she is graceful. Her mood swings can be as changeable as the weather, but since becoming a Skylander, she has tried to keep her temper in check. However, she doesn\'t keep a calm head when provoked. Whirlwind is strong-winged, wild and ferocious. But deep down, she is pure of heart, having held no grudge against the dragons and unicorns for shunning her. ', ''),
(30, 30, 8, 1, 'Wrecking_Ball.jpg', 'Wrecking Ball', 'Possibly the most reckless of all the Skylanders, Wrecking Ball rolls into danger without thought for his own personal safety. This lively larva smashes anything in his path (often) by accident, and is always hungry, even when he\'s just eaten! In some media, he possesses dog-like qualities.', ''),
(31, 31, 2, 1, 'Zap.jpg', 'Zap', 'Zap is a friendly and mischevious water dragon, being revered by most of the sea creatures of Skylands who see him as a true dedicated guardian of both the seas and Skylands. He enjoys racing, being able to outstrip almost any opponent, and excels at everything he turns his claws to. Naturally curious and super-competitive, Zap is also a bit of a prankster, loving to shock his fellow Skylanders whenever he gets a chance. However he can be too curious for his own good and has a nose (or snout) for trouble, which can lead him and his fellow Skylanders into dangerous situations.', ''),
(32, 32, 6, 1, 'Zook.jpg', 'Zook', 'Zook is the cheeriest walking bamboo plant you will ever meet. He lives life to the fullest and wants to explore every last one of Skylands\' many islands.', ''),
(33, 33, 9, 2, 'Bouncer.jpg', 'Bouncer', 'While still an All-Star Roboto-Ball player, Bouncer had a big, lively personality that helped popularized the sport. Even after he no longer plays the sport of Roboto-Ball, he still holds a sense of loyalty to his Mabu fanbase, who remembered the security-bot fondly from his playing days, and Bouncer became determined to defeat the Arkeyan King, not wanting to let his fans down when they were enslaved by the Arkeyans. Despite his dynamic personality, Bouncer holds little patience to those who are extremely arrogant and little regard to what\'s at hand, but keeps himself from getting too upset since he considers himself a jolly robot.', ''),
(34, 34, 4, 1, 'Crusher.jpg', 'Crusher', 'Single-minded and completely unstoppable, Crusher crashes through any situation with the subtlety of a three-ton hammer. He\'s also incredibly thick-skinned - probably because his skin\'s made of stone.', ''),
(35, 35, 10, 2, 'Eye-Brawl.jpg', 'Eye Brawl', 'Eye-Brawl is hyper-observant. Nothing gets past him (without being thumped, that is).', ''),
(36, 36, 1, 2, 'Hot_Head.jpg', 'Hot Head', 'Impetuous is a good word to describe Hot Head. He just can\'t help himself. This Fire Giant is always burning with enthusiasm. He smothers his enemies in blazing blobs of burning oil first, and asks questions second.', ''),
(37, 37, 8, 2, 'Ninjini.jpg', 'Ninjini', 'An eternal optimist, Ninjini spins into battle, convinced she will always succeed come what may.', ''),
(38, 38, 3, 2, 'Swarm.jpg', 'Swarm', 'Swarm is as adventurous as he is unique. He always adds a barbeed insult to a stinging attack. He never gets caught short of ideas, always having a \'plan bee\' up his sleeve.', ''),
(39, 39, 2, 2, 'Thumpback.jpg', 'Thumpback', 'Thumpback is steadfast, dependable, trustworthy, and gifted with the patience of an angler.', ''),
(40, 40, 6, 2, 'Tree_Rex.jpg', 'Tree Rex', 'Tree Rex is a natural protector who is as wise as he is majestic, unwavering in his mission to protect Skylands from evil magic.[2] He has also dedicated his life to maintain the natural balance of all things.', ''),
(41, 41, 1, 3, 'Blast_Zone.jpg', 'Blast Zone', 'Fiery but disarming, Blast Zone always puts the safety of his friends first. He is always most likely to blow a fuse.', ''),
(42, 42, 3, 3, 'Boom_Jet.jpg', 'Boom Jet', 'Boom Jet is a complete daredevil, convinced that he always has to be the best as what he does and can seem full of himself at times. Luckily, he\'s as brave as he is boastful.', ''),
(43, 44, 4, 3, 'Doom_Stone.jpg', 'Doom Stone', 'Doom Stone is a fearsome opponent but is always happy to help his frends with any task.', ''),
(44, 45, 3, 3, 'Free_Ranger.jpg', 'Free Ranger', 'A real whirlwind, Free Ranger is sometimes too impetuous for his own good. He has a love for bad weather, such as tornadoes, hurricanes and thunderstorms, and would often throw himself into them. He is most likely to talk about the weather; and least likely to stay indoors because it\'s raining. He is uncomfortable in confined spaces.', ''),
(45, 46, 2, 3, 'Freeze_Blade.jpg', 'Freeze Blade', 'Freeze Blade slides into action without a thought of his own personal safety. He\'s always on the move, not one to stay in one place for long. He is known for making friends easily. Bullies, however, leave him cold.', ''),
(46, 47, 1, 3, 'Fire_Kraken.jpg', 'Fire Kraken', 'A desire to help others burns in the heart of this young, hot-footed warrior. He likes playing with fire, and is less likely to burn out.', ''),
(47, 48, 6, 3, 'Grilla_Drilla.jpg', 'Grilla Drilla', 'Never one to think of himself, Grilla Drilla gave up his jungle throne to become a Skylander, knowing it would mean he could protect even more people! Grilla Drilla also follows rules to the letter - suspecting Boom Bloom\'s eagerness to become a Skylander but still going through the process to ask for Master Eon\'s advice on the matter.', ''),
(48, 50, 8, 3, 'Hoot_Loop.jpg', 'Hoot Loop', 'Hoot Loop is a natural showman, and is less likely to be modest. He is the first to boast about his extraordinary abilities. He can also be mischievous, as demonstrated in the animated Card Game Short Cut.', ''),
(49, 51, 9, 3, 'Magna_Charge.jpg', 'Magna Charge', 'Magna Charge came from the great race of Ultron robots, but was mysteriously created with a giant magnet head. This proved problematic, as his peers were all made of metal and were constantly being pulled towards him. As a result, Magna Charge was exiled to a faraway island, where he eventually learned to control his magnetic powers. After years of training, he returned to his home to demonstrate his abilities, but found everything completely destroyed. In searching for answers, Magna Charge caught the attention of Master Eon, who realized the unique Ultron soldier was a perfect candidate for the Skylanders.', ''),
(50, 52, 10, 3, 'Night_Shift.jpg', 'Night Shift', 'Night Shift can come off a bit grumpy, due to being an Undead character. He values boxing, and is commonly considered by others as old-school. Whenever he hears the sound of a boxing bell however, he goes into a wild frenzy, punching anyone and anything around him. Night Shift always plays by the rules, so when the Skylands Boxing Federation banned Teleportation, he had to give up the sport he loved.', ''),
(51, 53, 10, 3, 'Rattle_Shake.jpg', 'Rattle Shake', 'During development, Rattle Shake was originally designed as a zombie cowboy, with detachable legs, armed with normal pistols or phantom pistols and his Swap ability from the bottom was originally Dig. Another concept had his legs replaced with a serpent\'s tail made from remains and his ghost pistols would become a mini-gun made from bones;. In the end, Rattle Shake became anthropomorphic snake, with the difference that his snake gun was originally going to be two.', ''),
(52, 54, 4, 3, 'Rubble_Rouser.png', 'Rubble Rouser', 'Rubble Rouser is always looking to improve the way things work - and for new rocks to pulverize with his hammer slam!', ''),
(53, 55, 9, 3, 'Spyrise.jpg', 'Spy Rise', 'Spy Rise never gives up. The persistent P.I. sticks with a job until everything\'s wrapped up.', ''),
(54, 56, 6, 3, 'Stink_Bomb.jpg', 'Stink Bomb', 'Resilient Stink Bomb didn\'t let his master\'s disappearance put him down. He developed the martial art Kung Fume and wandered Skylands teaching its whiffy ways. Like all Life Skylanders, Stink Bomb prefers to keep his feet on the ground.', ''),
(55, 57, 8, 3, 'Trap_Shadow.jpg', 'Trap Shadow', 'The finest feline tracker of his tribe, Trap Shadow was the go-to cat if you wanted something caught. He mostly keeps to himself. However, since becoming a Skylander, he\'s been trying to become a team player. You have to get up early to catch Trap Shadow out - as the wicked wizards discovered. He sniffed out their plans and trapped them before they could trap him (or Eon, for that matter).', ''),
(56, 58, 2, 3, 'Wash_Buckler.jpg', 'Wash Buckler', 'Unlike most pirates, Wash Buckler is kind-hearted and true. He was never comfortable with pirating.', ''),
(57, 59, 8, 4, 'Blastermind.jpg', 'Blastermind', 'Blastermind is very attuned to the feelings of others and tries hard to help his friends with their problems whenever he can.', ''),
(58, 60, 6, 4, 'Bushwhack.jpg', 'Bushwhack', 'Bushwhack has a warrior\'s heart in a tiny elf body. Size doesn\'t matter when it comes to his passion for heroism.', ''),
(59, 61, 8, 4, 'Enigma.png', 'Enigma', 'Sometimes Enigma can be difficult to figure out. He\'s kind of like a puzzle. Despite his reclusive nature, he possesses a courageous side as he willingly sacrificed his only gateway home to prevent the Darkness from entering his realm. In Ring of Heroes, he\'s inquisitive and spares no compliments for those who deserve it, but keeps it to himself when it comes to teamwork and focuses on the larger picture when it comes to villains.', ''),
(60, 62, 9, 4, 'Gearshift.jpg', 'Gearshift', 'Gearshift\'s passion and spirit are an inspiration to her teammates. She\'s also quick on her feet.', ''),
(61, 63, 3, 4, 'Gusto.jpg', 'Gusto', 'Gusto is a big guy with heart of gold. Not actual gold, of course, but Gusto\'s heart is just as precious.[', ''),
(62, 64, 4, 4, 'Head_Rush.jpg', 'Head Rush', 'Head Rush\'s positive attitude is an inspiration to her friends. She may not think of herself as a great leader, but Master Eon and the Skylanders knows that she is on a path to greatness. In Ring of Heroes, she\'s supportive of her allies, always trying to find a quality that they might be overlooking in their skills.', ''),
(63, 65, 9, 4, 'Jawbreaker.jpg', 'Jawbreaker', 'Jawbreaker likes being an individual, even though his robot pals think he should be more like them. Sometimes you\'ve just got to dare to be different.', ''),
(64, 66, 1, 4, 'Kaboom.jpg', 'Ka-boom', 'Ka-Boom is a thinker and tinker. He\'ll mess around with his inventions until he gets them absolutely perfect.', ''),
(65, 67, 7, 4, 'Knight_Light.jpg', 'Knight Light', 'Knight Light is described as pure, gallant, righteous and illuminating.', ''),
(66, 68, 5, 4, 'Knight_Mare.jpg', 'Knight Mare', 'Knight Mare is described as a solitary, stubborn, shadowy and skilled huntress.', ''),
(67, 69, 10, 4, 'Krypt_King.jpg', 'Krypt King', 'Krypt King may look imposing, but he\'s really just a curious spirit who\'s looking to settle down with the right suit of armor.', ''),
(68, 70, 2, 4, 'Lob-Star.png', 'Lob-Star', 'Lob-Star is a disciplined crustacean and a hard worker. He has been able to accomplish great things by being patient and understanding in his studies.', ''),
(69, 71, 10, 4, 'Short_Cut.jpg', 'Short Cut', 'Short Cut can be a perfectionist, but only because he loves what he does. He puts a lot of time and energy into creating each masterpiece.', ''),
(70, 72, 2, 4, 'Snap_Shot.jpg', 'Snap Shot', 'Snap Shot is a fearless crocagator who uses his wild tracking skills to hunt down evil monsters and eventually villains. ', ''),
(71, 73, 3, 4, 'Thunderbolt.jpg', 'Thunderbolt', 'Thunderbolt is a fierce competitor who faces each opponent with honor and bravery.', ''),
(72, 74, 6, 4, 'Tuff_Luck.jpg', 'Tuff Luck', 'Tuff Luck has a lot of good stuff going for her. She is all about taking chances. Like the rest of her tribe, she is also very protective of the Fortunata Springs.', ''),
(73, 75, 4, 4, 'Wallop.jpg', 'Wallop', 'Wallop is the hardest-working hero this side of Mount Scorch. His inventive mind is always looking for new ways to create.', ''),
(74, 76, 1, 4, 'Wildfire.jpg', 'Wildfire', 'Wildfire is a loyal lion with a heart of gold, but he can be fierce in battle. He\'s very protective of the Fire Claw Clan and is always ready to lend them a magical hand when they need it.', ''),
(75, 77, 7, 5, 'Astroblast.jpg', 'Astroblast', 'Astroblast is a curious type who won\'t back down from a fight. He\'s always prepared to protect people and relics from danger.', ''),
(76, 78, 8, 5, 'Big_Bubble_Pop_Fizz.jpg', 'Big Bubble Pop Fizz', 'Big Bubble Pop Fizz is the SuperChargers counterpart of Pop Fizz in Skylanders: SuperChargers. His signature vehicle is the Soda Skimmer. He has a birthday counterpart called Birthday Bash Big Bubble Pop Fizz.', ''),
(77, 79, 2, 5, 'Deep_Dive_Gill_Grunt.jpg', 'Deep Dive Gill Grunt', 'Deep Dive Gill Grunt is the SuperChargers counterpart of Gill Grunt in Skylanders: SuperChargers. His signature vehicle is the Reef Ripper.', ''),
(78, 80, 10, 5, 'Bone_Bash_Roller_Brawl.jpg', 'Bone Bash Roller Brawl', 'Bone Bash Roller Brawl is the SuperChargers counterpart of Roller Brawl in Skylanders: SuperChargers. Her signature vehicle is the Tomb Buggy.', ''),
(79, 81, 2, 5, 'Dive-Clops.jpg', 'Dive-Clops', 'Dive-Clops is very observant, similar to his twin brother, Eye-Brawl. He also has great knowledge of aquatic mechanics and the oceans of Skylands.', ''),
(80, 82, 9, 5, 'Double_Dare_Trigger_Happy.jpg', 'Double Dare Trigger Happy', 'Double Dare Trigger Happy is the SuperCharger counterpart of Trigger Happy in Skylanders: SuperChargers. His signature vehicle is the Gold Rusher.', ''),
(81, 83, 10, 5, 'Fiesta.jpg', 'Fiesta', 'Fiesta is a skeletal mariachi band leader who is one of the Undead SuperChargers in Skylanders: SuperChargers. His signature vehicle is the Crypt Crusher.', ''),
(82, 84, 1, 5, 'Bowser.jpg', 'Hammer Slam Bowser', 'Being one of Nintendo\'s most iconic antagonists, Bowser is very tyrannical, cruel, ruthless, and oppressive, willing to do whatever it takes to defeat his former nemesis Mario, and capture his love interest Princess Peach. Now as a SuperCharger, Bowser is a trustworthy warrior; courageous, selfless, and loyal to those who can\'t help themselves. He is still sinister, but in a good way (very similar to the SWAP Force Skylander, Rattle Shake). He is also a very frightening fellow, as he managed to scare Buzz during his quest at Skylanders Academy.', ''),
(83, 85, 9, 5, 'High_Volt.jpg', 'High Volt', 'High Volt is a very dedicated commander, even willing to take orders from Buzz. He is also extremely observant and intelligent, not letting any evil being out of his sight and will get any possible information out of them. Like all Tech Skylanders, High Volt is fascinated by machinery.', ''),
(84, 86, 3, 5, 'Hurricane_Jet-Vac.jpg', 'Hurricane Jet-Vac', 'Hurricane Jet-Vac is the SuperCharger counterpart of Jet-Vac in Skylanders: SuperChargers. His signature vehicle is the Jet Stream.\r\n\r\n', ''),
(85, 87, 1, 5, 'Lava_Lance_Eruptor.jpg', 'Lava Lance Eruptor', 'Lava Lance Eruptor is the SuperCharger counterpart of Eruptor in Skylanders: SuperChargers. His signature vehicle is the Burn-Cycle.', ''),
(86, 88, 5, 5, 'Nightfall.jpg', 'Nightfall', 'As a Dark Skylander herself, Nightfall is considered pessimistic and brooding. When she became irritated by Stormblade\'s optimism, the lark called the Dreadwalker a \"walking bummer cloud\". She always has a threatening tone even towards her allies, and is implied by Buzz to skip training because of her overconfidence and pride. Nightfall hates being bored; she is inquisitive and energetic, and loves exploring. She cares deeply for her people, but has never cared about being popular or fitting in with the crowd. Nightfall is also easy to anger, though she\'s quick to dial it back to just complaining.', ''),
(87, 89, 4, 5, 'Shark_Shooter_Terrafin.jpg', 'Shark Shooter Terrafin', 'Shark Shooter Terrafin is the SuperChargers counterpart of Terrafin in Skylanders: SuperChargers. His signature vehicle is the Shark Tank.', ''),
(88, 90, 4, 5, 'Smash_Hit.jpg', 'Smash Hit', 'As his name suggests, Smash Hit loves demolishing objects (particularly remnants of the Arkeyans that were to dangerous to leave rusting). However when not battling evil, he tends to destroy old objects at the Skylanders Academy that no longer prove useful to its inhabitants (Buzz in particular). He is also a real chatterbox when having a conversation, as revealed in his Quests in SuperChargers.', ''),
(89, 91, 1, 5, 'Spitfire.jpg', 'Spitfire', 'Spitfire is a spirited speed demon with lightning quick reflexes and nerves of steel. He is quite arrogant and overconfident, though the comics show Spitfire will keep it aside to act like a proper leader. He might be unbeatable, but Spitfire is no hothead. His bravery, determination and tenacity make him a fiery force to be reckoned with.', ''),
(90, 92, 8, 5, 'Splat.jpg', 'Splat', 'Although Splat was in boredom of doing repetitive work at school, she is still a colorful character and admires her various artwork. She also encourages others to break free of their comfort zones and express themselves with paintings. She also knows how to make an excellent impression on her peers. She is the definition of spunky; she\'s got a lot of fight in her and rarely backs down from a ruckus. Splat is also known to be quite brave when duty calls.', ''),
(91, 93, 3, 5, 'Stormblade.jpg', 'Stormblade', 'Stormblade is a fearless daredevil with an unquenchable thirst for adventure. She is naturally excited about things, including participating in missions and dedicating herself to training. Stormblade is also very confident in the good in people she looks up to, as seen in her attempts to redeem Ghost Roaster in Secret Agent Secrets. However, her tendency to not stick to one thought also makes her somewhat slow on the uptake, as seen on Story of Nightfall where she mistakes Nightfall\'s story about traumatized citizens to be about mind attacks from Leviathans.', ''),
(92, 94, 6, 5, 'SuperShot_Stealth_Elf.jpg', 'Super Shot Stealth Elf', 'Super Shot Stealth Elf is the SuperChargers counterpart of Stealth Elf in Skylanders: SuperChargers. Her signature vehicle is the Stealth Stinger.', ''),
(93, 95, 6, 5, 'Thrillipede.jpg', 'Thrillipede', 'Thrillipede is incredibly skilled in combat, but is very reserved when not battling evil. Despite not being a bird, he is very observant when riding his Buzz Wing, and has great knowledge on flight mechanics. In his SuperCharger Quest, he is also shown to be very modest, and holds a longstanding friendship with Buzz. Thrillipede flies fearless through the skies, zipping through the air without a care. He\'s committed to his duty, but freely admits he loves to wow the crowds. ', ''),
(94, 96, 6, 5, 'DonkeyKong.jpg', 'Turbo Charge Donkey Kong', 'Being one of Nintendo\'s most iconic protagonists, Donkey Kong is a carefree, lazy, intelligence-lacking, yet trustworthy hero on Donkey Kong Island. However on various occasions, he was forced to take action with his nephew, Diddy Kong and other members of the Kong Family to reclaim their main priority, the Banana Hoard, from their common enemies, the Kremling Krew.', ''),
(95, 97, 3, 6, 'Air_Strike.jpg', 'Air Strike', 'Air Strike and Birdie are an Air elemental falconer Sensei and his Blue Zephyr Falcon friend in Skylanders: Imaginators that teach Imaginators of the Brawler Class. They are available in the Gryphon Park Observatory Adventure Pack.', ''),
(96, 98, 6, 6, 'Ambush.jpg', 'Ambush', 'Ambush is direct with his words, and is protective of nature and is a Life Knight Sensei in Skylanders: Imaginators.', ''),
(97, 99, 7, 6, 'Aurora.jpg', 'Aurora', 'Aurora is a Light elemental Sensei in Skylanders: Imaginators. She is the niece of the great Portal Master Eon and trains Imaginators of the Swashbuckler Battle Class.', ''),
(98, 100, 4, 6, 'Barbella.jpg', 'Barbella', 'Barbella was the best fitness trainer in all of Skylands. Not only did she possess otherworldly strength, she was also a firm believer that a healthy diet and exercise led to true happiness. With such a positive message to spread, Barbella decided to open her own fitness center called “Flex-a-lot”, where she hoped to instill good eating and workout habits with all of her patrons. But one day, the gelatinous villain known as The Gulper destroyed her gym, and it took all of Barbella’s strength to keep it from collapsing while everyone fled to safety. It was then that Barbella realized that bad guys were more hazardous to your health than anything else, so she began to train in the ways of the Sentinel, where she quickly became one of the greatest masters in the world!', ''),
(99, 101, 6, 6, 'Boom_Bloom.jpg', 'Boom Bloom', 'Boom Bloom is soft spoken and polite, rarely using contractions. Despite this, she\'s headstrong and insensitive, making rash decisions without much thought and is easily confused and embarassed. She still retains her memories of when she was a living tree, as well as the feelings of the ones that used to be with her.', ''),
(100, 102, 8, 6, 'Buckshot.jpg', 'Buckshot', 'Buckshot is cheerful and energetic, but apparently not exactly smart, as he failed classes and is unable to count his own Skylander stats.', ''),
(101, 104, 9, 6, 'Chain_Reaction.jpg', 'Chain Reaction', 'Chain Reaction appears to very vain and conceited, constantly complimenting himself with adjectives such as \"handsome\" and \"charming\". However, he doesn\'t seem to brag too much on himself unlike certain Skylanders such as Lightning Rod and Ro-Bow, always remaining noble and humble when around others.', ''),
(102, 105, 10, 6, 'Chopscotch.jpg', 'Chopscotch', 'Chopscotch loves speaking in rhyme and wasn\'t bothered when the other ghouls of the Underworld made fun of her short stature.', ''),
(103, 106, 1, 6, 'Ember.jpg', 'Ember', 'Ember is a Fire Sensei in Skylanders: Imaginators. She trains Imaginators set in the Sentinel Class.', ''),
(104, 107, 1, 6, 'Flare_Wolf.jpg', 'Flare Wolf', 'Flare Wolf is a Fire wolf and one of the Senseis in Skylanders: Imaginators. He trains Imaginators of the Bazooker Battle Class.', ''),
(105, 108, 2, 6, 'King_Pen.jpg', 'King Pen', 'King Pen is a Brawler Sensei in Skylanders: Imaginators, who also serves as the leader of the Skylander Senseis.', ''),
(106, 111, 8, 6, 'Mysticat.jpg', 'Mysticat', 'Mysticat is a sphinx Magic Sensei in Skylanders: Imaginators who trains Imaginators of the Sorcerer Battle Class.', ''),
(107, 112, 10, 6, 'Pit_Boss.jpg', 'Pit Boss', 'Pit Boss\' wisdom is said to have no bounds. He has a love for certain \"S\" words that are related to snakes, such as the words \'snake\', \'slither\', \'serpent\', and \'statistics\'.', ''),
(108, 113, 9, 6, 'Ro-Bow.jpg', 'Ro-Bow', 'Though it\'s unclear if it was caused by the speech patterns or the other way around, Ro-Bow is prideful and arrogant, constantly taunting his enemies even after a victory and complimenting his own characteristics.', ''),
(109, 114, 5, 6, 'Starcast.jpg', 'Starcast', 'Starcast is a four-armed extraterrestrial who is one of the Dark Senseis in Skylanders: Imaginators. He trains Imaginators who belong to the Ninja Battle Class.', ''),
(110, 115, 2, 6, 'Tidepool.jpg', 'Tidepool', 'Tidepool is a marine Water Sensei of the Quickshot Battle Class in Skylanders: Imaginators.', ''),
(111, 116, 4, 6, 'Tri-Tip.jpg', 'Tri-Tip', 'Tri-Tip is an Earth-elemental Triceratops who is one of the Smasher Senseis in Skylanders: Imaginators.', ''),
(112, 117, 3, 6, 'Wild_Storm.jpg', 'Wild Storm', 'Wild Storm is an Air elemental Sensei of the Knight Battle Class. He is included in the Cursed Tiki Temple Level Pack.', ''),
(113, 118, 9, 5, 'Barrel_Blaster.jpg', 'Barrel Blaster', 'The Barrel Blaster is Turbo Charge Donkey Kong\'s signature vehicle in Skylanders: SuperChargers. Paired with Turbo Charge Donkey Kong, it is available in either Wii U starter packs of SuperChargers, or in SuperCharged combo packs. It is only playable in SuperChargers Racing and the Wii U versions of SuperChargers and Imaginators.\r\n\r\nThe Barrel Blaster is all geared up and primed for action! Constructed from Donkey Kong\'s renowned mine cart and iconic barrels, this is one explosive land vehicle that will have Kaos going bananas!', ''),
(114, 119, 1, 5, 'Burn-Cycle.jpg', 'Burn-Cycle', 'The Burn-Cycle is Lava Lance Eruptor\'s signature vehicle in Skylanders: SuperChargers. The Burn-Cycle was created when Eruptor attempted to roll hot lava into a “flaming snowman” during the Skylander holiday party. The result was a perpetual fireball with incredibly high acceleration and blurring speeds!', ''),
(115, 120, 6, 5, 'Buzz_Wing.jpg', 'Buzz Wing', 'The Buzz Wing is Thrillipede\'s signature vehicle in Skylanders: SuperChargers. Buzz Wing is Thrillipede’s famous fighter plane. After heroically blasting over 300 enemy jets in the Great Greeble War, it was put on display in the Millipede Museum. But with Kaos on the loose again, it’s back in action and ready for more!', ''),
(116, 121, 3, 5, 'Clown_Cruiser.jpg', 'Clown Cruiser', 'The Clown Cruiser is Hammer Slam Bowser\'s signature vehicle in Skylanders: SuperChargers. Paired with Hammer Slam Bowser, it is available in either SuperChargers Racing starter packs, or in SuperCharged combo packs. It is only playable in SuperChargers Racing and the Wii U versions of SuperChargers and Imaginators.\r\n\r\nThe Clown Cruiser is ready for launch! Sporting the face of his famous Koopa Copter, Bowser\'s custom aircraft has been reinforced with armor plated Koopa shells and comes fully loaded with classic fireballs and a Bullet Bill!', ''),
(117, 122, 10, 5, 'Crypt_Crusher.jpg', 'Crypt Crusher', 'The Crypt Crusher is Fiesta\'s signature vehicle in Skylanders: SuperChargers. The Crypt Crusher is the undefeated champion of underworld drag racing. Originally crafted from Fiesta’s childhood racecar bed, it now uses an intimidating \"Wheel of Doom\" to roll over the competition!', ''),
(118, 123, 2, 5, 'Dive_Bomber.jpg', 'Dive Bomber', 'The Dive Bomber is Dive-Clops\' signature vehicle in Skylanders: SuperChargers. It is a heavy duty aquatic battle tank! With enchanted metal plating capable of withstanding the immense pressure of the deep ocean, evil has nowhere to hide when Dive-Clops is in pursuit!', ''),
(119, 124, 9, 5, 'Gold_Rusher.jpg', 'Gold Rusher', 'The Gold Rusher is Double Dare Trigger Happy\'s signature vehicle in Skylanders: SuperChargers. The Gold Rusher is an all-purpose, high performance stunt vehicle. Packed with hyper exhaust pipes and leprechaun gold plating, Trigger Happy’s custom ride is the flashiest vehicle in the Supercharger fleet!', ''),
(120, 125, 1, 5, 'Spitfire_Hot.jpg', 'Hot Streak', 'The Hot Streak is Spitfire\'s signature vehicle in Skylanders: SuperChargers, included in the game\'s Starter Pack. It was made from elemental magma rock and forged in the depths of the Volcanic Vault. With maximum firepower, it is capable of achieving extreme speeds and ready to scorch anything in its path!', ''),
(121, 126, 3, 5, 'Jet_Stream.jpg', 'Jet Stream', 'Jet Stream is the signature vehicle for the Air SuperCharger, Hurricane Jet-Vac. The Jet Stream is a finely tuned storm-chasing machine. Its twin turbines give it supreme maneuverability, while its Sky Baron battle armor and enhanced weaponry guarantee it will always be the last bird standing!', ''),
(122, 127, 2, 5, 'Reef_Ripper.jpg', 'Reef Ripper', 'The Reef Ripper is Deep Dive Gill Grunt\'s signature vehicle in Skylanders: SuperChargers. The Reef Ripper is the legendary submarine that Gill Grunt uses to scour the vast ocean for his lost love. Armed with a siren blast and a harpoon shot, the evil pirates that took her won’t be getting off the hook very easy!', ''),
(123, 128, 5, 5, 'Sea_Shadow.jpg', 'Sea Shadow', 'The Sea Shadow is Nightfall\'s signature vehicle in Skylanders: SuperChargers. The Sea Shadow was originally built by Nightfall to explore shadowy depths of the Poison Sea near her home. It is elusive and agile with powerful weaponry that will sting any monster that lurks in the abyss!', ''),
(124, 129, 4, 5, 'Shark_Tank.jpg', 'Shark Tank', 'The Shark Tank is the signature vehicle of Shark Shooter Terrafin. The Shark Tank is an unstoppable driving force when Terrafin is at the helm. Containing subterranean navigation, all-terrain teeth tread, and enchanted battle armor, it is primed and ready to take the bite to Kaos!', ''),
(125, 130, 9, 5, 'Shield_Striker.jpg', 'Shield Striker', 'The Shield Striker is High Volt\'s signature vehicle in Skylanders: SuperChargers. The Shield Striker is the ultimate weapon against evil. Heavily armored and surging with electricity, High-Volt\'s high-powered machine is geared up to enforce justice on anything that stands in its way!', ''),
(126, 131, 3, 5, 'Sky_Slicer.jpg', 'Sky Slicer', 'The Sky Slicer is Stormblade\'s signature vehicle in Skylanders: SuperChargers. It is aerodynamic and lightning fast! Originally designed by Stormblade to explore the furthest reaches of Skylands, the Sky Slicer has since been retrofitted with high-powered weaponry and armor, making it one of the best in the nest!', ''),
(127, 132, 8, 5, 'Soda_Skimmer.jpg', 'Soda Skimmer', 'The Soda Skimmer is Big Bubble Pop Fizz\'s signature vehicle in Skylanders: SuperChargers. It is a rip-roaring, rapid riding machine! Running entirely on jet-potion and built with an indestructible inflatable material called \"Bafloon\" (created by Pop Fizz himself), this vehicle has all the right ingredients!', ''),
(128, 133, 8, 5, 'Splatter_Splasher.jpg', 'Splatter Splasher', 'The Splatter Splasher is Splat\'s signature vehicle in Skylanders: SuperChargers. It is a high speed hydro-craft that leaves evil floating in its wake! With its ultra-slick armor and underwater enchantment, Splat’s custom ride is a force to be reckoned with above and below the surface!', ''),
(129, 134, 6, 5, 'Stealth_Stinger.jpg', 'Stealth Stinger', 'The Stealth Stinger is Super Shot Stealth Elf\'s signature vehicle in Skylanders: SuperChargers. The Stealth Stinger is the ultimate forest ninja weapon! During covert Skylander operations, Stealth Elf uses its camouflage abilities and high velocity thorn rockets to get the drop on evil before they see it coming!', ''),
(130, 135, 7, 5, 'Sun_Runner.jpg', 'Sun Runner', 'The Sun Runner is Astroblast\'s signature vehicle in Skylanders: SuperChargers. It is a prototype spaceship built to recover items that are lost when traveling through the portals. Its anti-gravity capabilities and speedy acceleration allow Astroblast to get the jump on bad guys before they know what hit them!', ''),
(131, 136, 4, 5, 'Thump_Truck.jpg', 'Thump Truck', 'The Thump Truck is Smash Hit\'s signature vehicle in Skylanders: SuperChargers. Thump Truck is Smash Hit’s personal wrecking machine that was built for one purpose – total destruction! It has been heavily modified with earth crunching iron jaws, a gravel exhaust port, and armored steel plating for ultimate toughness!', ''),
(132, 137, 10, 5, 'Tomb_Buggy.jpg', 'Tomb Buggy', 'The Tomb Buggy is Bone Bash Roller Brawl\'s signature vehicle in Skylanders: SuperChargers. The Tomb Buggy was hand crafted by Roller Brawl from the skeletal remains of an ancient undead Grave Panther. With its agile maneuverability and impressive weaponry, it\'s perfect for any driver that has a bone to pick with evil!', ''),
(133, 138, 2, 2, 'Chill.jpg', 'Chill', 'As captain of the Queen\'s guard, Chill was once the most feared and respected of all the people in the Ice Kingdom. She is a proud, noble warrior - but not afraid to play dirty.', ''),
(134, 139, 4, 2, 'Flashwing.jpg', 'Flashwing', 'Flashwing knows just how beautiful she appears and also how deadly she can be. She often tries to steal the spotlight from her fellow Skylanders, but her kind heart always shines through in the end.', ''),
(135, 140, 10, 2, 'Fright_Rider.jpg', 'Fright Rider', 'Gallant and brave, Fright Rider is always ready to rush headlong into action. Together with Ozzy, they are a courageous pair, honour-bound to right wrongs wherever they roam.[', ''),
(136, 141, 1, 2, 'Hot_Dog.jpg', 'Hot Dog', 'Hot Dog possesses a fierce loyalty to his friends, and true to his nature, he likes to bury things, especially imps. He is always bounding around like an excitable puppy - which is exactly what he is. Not the kind of Skylander to go hungry, he is always on the lookout for a sizzling snack.[', ''),
(137, 142, 3, 2, 'Jet_Vac.jpg', 'Jet-Vac', 'Noble and courageous, Jet-Vac always think of others before himself. Now a Skylander, he soars where even eagles never dare. In the Full Blast microcomic, he\'s shown to be a bit of a defeatist, thinking his worth as a fighter is lost without a weapon.\r\n\r\nIn Skylanders: Imaginators, Jet-Vac displays dedication in searching for what has been stolen from him, in his case, his lunch that was stored away within the Sky Fortress.', '102114143167\r\n'),
(138, 143, 8, 2, 'Pop_Fizz.jpg', 'Pop Fizz', 'Pop Fizz is widely known as being a little crazy. The Skylander who puts the mad into a mad scientist, he is bubbling over with crazy amounts of enthusiasm. And that\'s before he\'s glugged from his bonkers beast beaker! According to Pop Fizz, the reason he keeps drinking his potion, or soda, is that the effects keep him on edge, gives him powers and that it is \"soda-licious.\" He is also one of the few characters who fully understand Double Trouble\'s language.', ''),
(139, 144, 6, 2, 'Shroomboom.jpg', 'Shroomboom', 'Courageous and determined, Shroomboom lets nothing stand in his way. He\'s always ready to parachute into danger, no matter the risk', ''),
(140, 145, 9, 2, 'Sprocket.jpg', 'Sprocket', 'Resourceful, Sprocket isn\'t one to sit back and let others do the work. She jumps in with both armored feet, creating solutions for every problem imaginable.', ''),
(141, 146, 4, 2, 'Series_2_Bash.jpg', 'Bash', 'Never tell Bash he can\'t do something. This resourceful, stubborn Skylander will keep on rolling until he\'s proved you wrong. He never gives up without a fight. Despite his gruff disposition, Bash is very sensitive about his inability to fly.', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sky_PostId`);

--
-- Indexen voor tabel `elementen`
--
ALTER TABLE `elementen`
  ADD PRIMARY KEY (`elementId`);

--
-- Indexen voor tabel `nfc`
--
ALTER TABLE `nfc`
  ADD PRIMARY KEY (`nfcId`),
  ADD KEY `nfc_ibfk_1` (`SkylanderId`);

--
-- Indexen voor tabel `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`serieId`);

--
-- Indexen voor tabel `skylanders`
--
ALTER TABLE `skylanders`
  ADD PRIMARY KEY (`skylanderId`),
  ADD KEY `skylanders_ibfk_1` (`elementId`),
  ADD KEY `skylanderSerie_ibfk_1` (`serieId`);

--
-- Indexen voor tabel `skylandersinfo`
--
ALTER TABLE `skylandersinfo`
  ADD PRIMARY KEY (`skylanderInfoId`),
  ADD KEY `skylandersInfo_ibfk_1` (`skylanderId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `sky_PostId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `elementen`
--
ALTER TABLE `elementen`
  MODIFY `elementId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `nfc`
--
ALTER TABLE `nfc`
  MODIFY `nfcId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `serie`
--
ALTER TABLE `serie`
  MODIFY `serieId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `skylanders`
--
ALTER TABLE `skylanders`
  MODIFY `skylanderId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT voor een tabel `skylandersinfo`
--
ALTER TABLE `skylandersinfo`
  MODIFY `skylanderInfoId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `nfc`
--
ALTER TABLE `nfc`
  ADD CONSTRAINT `nfc_ibfk_1` FOREIGN KEY (`SkylanderId`) REFERENCES `skylanders` (`skylanderId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `skylanders`
--
ALTER TABLE `skylanders`
  ADD CONSTRAINT `skylanderSerie_ibfk_1` FOREIGN KEY (`serieId`) REFERENCES `serie` (`serieId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skylanders_ibfk_1` FOREIGN KEY (`elementId`) REFERENCES `elementen` (`elementId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `skylandersinfo`
--
ALTER TABLE `skylandersinfo`
  ADD CONSTRAINT `skylandersInfo_ibfk_1` FOREIGN KEY (`skylanderId`) REFERENCES `skylanders` (`skylanderId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

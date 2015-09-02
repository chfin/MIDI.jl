# Midi message types

# Channel voice message identifiers Only the first four bits matter, the remaining bits indicate the channel
# These should be used as masks with the actual midi event header
const NOTEOFF = 0b10000000
const NOTEON = 0b10010000
const POLYPHONICKEYPRESSURE = 0b10100000
const CONTROLCHANGE = 0b10110000
const PROGRAMCHANGE = 0b11000000
const CHANNELPRESSURE = 0b11010000
const PITCHWHEELCHANGE = 0b11100000

# Event type codes
const META = 0xFF
const SYSEX = 0xF0

# Meta event types
const METATRACKEND = 0x2F

# Chunk identifiers The different parts of the file will start with one of these
const MTHD = "MThd"
const MTRK = "MTrk"

# Number of data bytes following a given midi event type
const EVENTTYPETOLENGTH = [
    NOTEOFF => 2,
    NOTEON => 2,
    POLYPHONICKEYPRESSURE => 2,
    CONTROLCHANGE => 2,
    PROGRAMCHANGE => 1,
    CHANNELPRESSURE => 1,
    PITCHWHEELCHANGE => 2,
]

const GM = [
    "AcousticGrandPiano" => uint8(1),
    "BrightAcousticPiano" => uint8(2),
    "ElectricGrandPiano" => uint8(3),
    "HonkytonkPiano" => uint8(4),
    "ElectricPiano1" => uint8(5),
    "ElectricPiano2" => uint8(6),
    "Harpsichord" => uint8(7),
    "Clavi" => uint8(8),
    "Celesta" => uint8(9),
    "Glockenspiel" => uint8(10),
    "MusicBox" => uint8(11),
    "Vibraphone" => uint8(12),
    "Marimba" => uint8(13),
    "Xylophone" => uint8(14),
    "TubularBells" => uint8(15),
    "Dulcimer" => uint8(16),
    "DrawbarOrgan" => uint8(17),
    "PercussiveOrgan" => uint8(18),
    "RockOrgan" => uint8(19),
    "ChurchOrgan" => uint8(20),
    "ReedOrgan" => uint8(21),
    "Accordion" => uint8(22),
    "Harmonica" => uint8(23),
    "TangoAccordion" => uint8(24),
    "AcousticGuitarNylon" => uint8(25),
    "AcousticGuitarSteel" => uint8(26),
    "ElectricGuitarJazz" => uint8(27),
    "ElectricGuitarClean" => uint8(28),
    "ElectricGuitarMuted" => uint8(29),
    "OverdrivenGuitar" => uint8(30),
    "DistortionGuitar" => uint8(31),
    "GuitarHarmonics" => uint8(32),
    "AcousticBass" => uint8(33),
    "ElectricBassFinger" => uint8(34),
    "ElectricBassPick" => uint8(35),
    "FretlessBass" => uint8(36),
    "SlapBass1" => uint8(37),
    "SlapBass2" => uint8(38),
    "SynthBass1" => uint8(39),
    "SynthBass2" => uint8(40),
    "Violin" => uint8(41),
    "Viola" => uint8(42),
    "Cello" => uint8(43),
    "Contrabass" => uint8(44),
    "TremoloStrings" => uint8(45),
    "PizzicatoStrings" => uint8(46),
    "OrchestralHarp" => uint8(47),
    "Timpani" => uint8(48),
    "StringEnsemble1" => uint8(49),
    "StringEnsemble2" => uint8(50),
    "SynthStrings1" => uint8(51),
    "SynthStrings2" => uint8(52),
    "ChoirAahs" => uint8(53),
    "VoiceOohs" => uint8(54),
    "SynthVoice" => uint8(55),
    "OrchestraHit" => uint8(56),
    "Trumpet" => uint8(57),
    "Trombone" => uint8(58),
    "Tuba" => uint8(59),
    "MutedTrumpet" => uint8(60),
    "FrenchHorn" => uint8(61),
    "BrassSection" => uint8(62),
    "SynthBrass1" => uint8(63),
    "SynthBrass2" => uint8(64),
    "SopranoSax" => uint8(65),
    "AltoSax" => uint8(66),
    "TenorSax" => uint8(67),
    "BaritoneSax" => uint8(68),
    "Oboe" => uint8(69),
    "EnglishHorn" => uint8(70),
    "Bassoon" => uint8(71),
    "Clarinet" => uint8(72),
    "Piccolo" => uint8(73),
    "Flute" => uint8(74),
    "Recorder" => uint8(75),
    "PanFlute" => uint8(76),
    "BlownBottle" => uint8(77),
    "Shakuhachi" => uint8(78),
    "Whistle" => uint8(79),
    "Ocarina" => uint8(80),
    "Lead1" => uint8(81),
    "Lead2" => uint8(82),
    "Lead3" => uint8(83),
    "Lead4" => uint8(84),
    "Lead5" => uint8(85),
    "Lead6" => uint8(86),
    "Lead7" => uint8(87),
    "Lead8" => uint8(88),
    "Pad1" => uint8(89),
    "Pad2" => uint8(90),
    "Pad3" => uint8(91),
    "Pad4" => uint8(92),
    "Pad5" => uint8(93),
    "Pad6" => uint8(94),
    "Pad7" => uint8(95),
    "Pad8" => uint8(96),
    "FX1" => uint8(97),
    "FX2" => uint8(98),
    "FX3" => uint8(99),
    "FX4" => uint8(100),
    "FX5" => uint8(101),
    "FX6" => uint8(102),
    "FX7" => uint8(103),
    "FX8" => uint8(104),
    "Sitar" => uint8(105),
    "Banjo" => uint8(106),
    "Shamisen" => uint8(107),
    "Koto" => uint8(108),
    "Kalimba" => uint8(109),
    "Bagpipe" => uint8(110),
    "Fiddle" => uint8(111),
    "Shanai" => uint8(112),
    "TinkleBell" => uint8(113),
    "Agogo" => uint8(114),
    "SteelDrums" => uint8(115),
    "Woodblock" => uint8(116),
    "TaikoDrum" => uint8(117),
    "MelodicTom" => uint8(118),
    "SynthDrum" => uint8(119),
    "ReverseCymbal" => uint8(120),
    "GuitarFretNoise" => uint8(121),
    "BreathNoise" => uint8(122),
    "Seashore" => uint8(123),
    "BirdTweet" => uint8(124),
    "TelephoneRing" => uint8(125),
    "Helicopter" => uint8(126),
    "Applause" => uint8(127),
    "Gunshot" => uint8(128)
]

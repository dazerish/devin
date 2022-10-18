-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 09:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devin`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `unique_num` varchar(255) NOT NULL,
  `dev_name` varchar(50) NOT NULL,
  `dev_model` varchar(50) NOT NULL,
  `allowed_roles` varchar(30) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `specs` varchar(255) NOT NULL,
  `dev_image` varchar(50) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `cur_status` varchar(50) NOT NULL,
  `prev_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `unique_num`, `dev_name`, `dev_model`, `allowed_roles`, `manufacturer`, `specs`, `dev_image`, `rfid`, `cur_status`, `prev_status`) VALUES
(1, '4CE0460D1X', 'Macbook Pro', 'Laptop', 'Administrator', 'Apple', 'Processor: Apple M2 Chip<br />\r\nRAM: 16GB Memory<br />\r\nGraphics: Intel Integrated Iris Plus Graphics <br />\r\n645<br />\r\nStorage: 512GB SSD<br />\r\nDisplay: 13.3\" inch; 2560x1600 Resolution<br />\r\nOS: macOS', 'Macbook-Pro-1.jpg', 'None', 'Available', 'None'),
(2, '4CE0460D69', 'Edge Gateway', 'Router', 'Employee', 'Dell', 'Processor: ARM Cortex-A53<br />\r\nRAM: 2GB<br />\r\nStorage: 512GB SSD<br />\r\nOS: Linux Ubuntu<br />\r\nWeight: 820g', 'Edge-Gateway1.png', 'None', 'Reserved', 'Available'),
(3, '4CE0460D5G', 'Occulus Rift S', 'VR Headset', 'Executive', 'Oculus', 'Platform: SteamVR, Oculus Home<br />\r\nDisplay Type: Single LCD (Binocular)<br />\r\nResolution: 1280x1440 (per-eye)<br />\r\nRefresh Rate: 80hz<br />\r\nWeight: 500g', 'Occulus-Rift-S1.jpg', 'None', 'Available', 'None'),
(4, '4CE0460D1S', 'PowerEdge-T330', 'Server', 'Administrator', 'Dell', 'Processer: Intel Xeon<br />\r\nRAM: 64GB<br />\r\nDrive Bays: Supports 2.5\" HDD in 3.5\" hybrid drive<br />\r\ncarrier<br />\r\nOS: Windows Server', 'PowerEdge-T330-1.jpg', 'None', 'Available', 'None'),
(5, '4CE0460D0G', 'Lenovo ThinkPad X1', 'Laptop', 'Administrator', 'Lenovo', 'Processor: Intel Core I7<br />\r\nRAM: 16GB Memory<br />\r\nGraphics: Intel HD Graphics 520<br />\r\nStorage: 1 TB PCIe NVMe SSD<br />\r\nDisplay: 14\" FHD (1920 x 1080) IPS<br />\r\nOS: Windows 11', 'Lenovo-ThinkPad-X1-1.png', 'None', 'Available', 'None'),
(6, '1NH5944T5U', 'S70', 'Laptop', 'Executive', 'Volvo', 'Cebus albifrons', 'http://dummyimage.com/178x100.png/ff4444/ffffff', '8dcca44dfdbf843f3261117f27d91f70e7d45e58', 'Broken', 'Maintenance'),
(7, '0QT2236C0W', '3500', 'Server', 'Administrator', 'Chevrolet', 'Fregata magnificans', 'http://dummyimage.com/241x100.png/ff4444/ffffff', '4d5585b5d50e0c5dfe32f8d10d12074cefdc6a60', 'Available', 'Broken'),
(8, '3FY7703Q0Q', 'Sportvan G20', 'Car', 'Administrator', 'Chevrolet', 'Loxodonta africana', 'http://dummyimage.com/125x100.png/dddddd/000000', 'ea266ec3f04db33658e6ba549c9cfec1c9faa671', 'Available', 'Broken'),
(9, '8TD3695I1K', 'Escalade', 'Microcontroller', 'Administrator', 'Cadillac', 'Crocuta crocuta', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 'cf5fb4aecfa54d641e68a40d43489b192aef83e5', 'Reserved', 'Borrowed'),
(10, '3KG7694W6G', 'Routan', 'Sensor', 'Executive', 'Volkswagen', 'Camelus dromedarius', 'http://dummyimage.com/223x100.png/ff4444/ffffff', '23036c12de7f9717b2f277abb27dc64ba9df5fc7', 'Available', 'Reserved'),
(11, '9LY1140G7Z', 'Seville', 'Car', 'Employee', 'Cadillac', 'Suricata suricatta', 'http://dummyimage.com/159x100.png/dddddd/000000', '4fce11fdef41f86df019ebe3aa8e1141bb5fab61', 'Broken', 'Reserved'),
(12, '1LJ5760Q8X', 'Ranger', 'Laptop', 'Employee', 'Ford', 'Crotalus adamanteus', 'http://dummyimage.com/229x100.png/ff4444/ffffff', 'e23aeeb7113a80c2a5a98fcb6d6a21026cfef5b2', 'Available', 'Broken'),
(13, '7MM6470C2Z', 'Integra', 'Microcontroller', 'Employee', 'Acura', 'Myrmecophaga tridactyla', 'http://dummyimage.com/227x100.png/5fa2dd/ffffff', 'e66b94bfe01e8f64e7c94154fc6ab3cf33cb8686', 'Borrowed', 'Available'),
(14, '8WQ1244R3R', 'F250', 'Sensor', 'Employee', 'Ford', 'Butorides striatus', 'http://dummyimage.com/241x100.png/cc0000/ffffff', '08e667110bd5e11c6857b762ccb93a04bf061c85', 'Maintenance', 'Available'),
(15, '9YJ6935F0O', 'Skylark', 'Laptop', 'Administrator', 'Buick', 'Microcebus murinus', 'http://dummyimage.com/140x100.png/cc0000/ffffff', '7b7aa8ab33441f4bebf645a44ff73acb7409cec3', 'Reserved', 'Available'),
(16, '8RD7031Q4J', 'Regal', 'Car', 'Employee', 'Buick', 'Mirounga leonina', 'http://dummyimage.com/181x100.png/dddddd/000000', '24b9079f28016b5d0d4a2a37fafefc2a954509fc', 'Maintenance', 'Available'),
(17, '2WB1471X5D', 'Forester', 'Sensor', 'Executive', 'Subaru', 'Sarcorhamphus papa', 'http://dummyimage.com/129x100.png/cc0000/ffffff', '865b806eeeb373625c9a3b2eb77d4b48638fe4e7', 'Broken', 'Maintenance'),
(18, '7MU7088F3I', 'RX', 'Car', 'Executive', 'Lexus', 'Neotis denhami', 'http://dummyimage.com/202x100.png/ff4444/ffffff', '5b0ba219d7c4c8416db6f385a1cc89588f98c3b8', 'Borrowed', 'Reserved'),
(19, '4KB2528F6X', 'Biturbo', 'Car', 'Administrator', 'Maserati', 'Lama pacos', 'http://dummyimage.com/198x100.png/dddddd/000000', '440d942fc730437861f5d5c36c655f161403248a', 'Reserved', 'Available'),
(20, '9HD1164A4N', 'Truck', 'Car', 'Executive', 'Mitsubishi', 'Theropithecus gelada', 'http://dummyimage.com/220x100.png/5fa2dd/ffffff', 'e8b709833258e6250ff14afe76386ace64a9864d', 'Available', 'Available'),
(21, '4XM3902O5R', 'Tiburon', 'Sensor', 'Employee', 'Hyundai', 'Ploceus rubiginosus', 'http://dummyimage.com/101x100.png/cc0000/ffffff', 'a86e10f8279a00de9c8f16aa9bba89e5840ab445', 'Borrowed', 'Reserved'),
(22, '1SU7099A1J', 'Coupe Quattro', 'Microcontroller', 'Administrator', 'Audi', 'Genetta genetta', 'http://dummyimage.com/106x100.png/dddddd/000000', '2a03fe8de25e2bb54c1f4fc64639920f1fe6042a', 'Broken', 'Maintenance'),
(23, '8EY5350W9O', 'Rodeo', 'Car', 'Administrator', 'Isuzu', 'Phalacrocorax carbo', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', '044de83212b1feba4d48e537a15ce1dbfd443017', 'Broken', 'Borrowed'),
(24, '5FV5855R1J', 'Truck', 'Sensor', 'Administrator', 'Mitsubishi', 'Nectarinia chalybea', 'http://dummyimage.com/248x100.png/5fa2dd/ffffff', '081f83730c1979cd013fa6ae39983549577048be', 'Reserved', 'Borrowed'),
(25, '8OE3234W8A', '350Z', 'Laptop', 'Administrator', 'Nissan', 'Uraeginthus granatina', 'http://dummyimage.com/212x100.png/cc0000/ffffff', 'aa413718d5c87c062bb28f976432684fd35d8c43', 'Reserved', 'Reserved'),
(26, '5CP4986Q2Z', 'F350', 'Microcontroller', 'Administrator', 'Ford', 'Papio ursinus', 'http://dummyimage.com/224x100.png/ff4444/ffffff', '92398bbce47f261cb788df94693d30bad6279298', 'Available', 'Broken'),
(27, '3TB8498Z5H', 'Prius', 'Car', 'Executive', 'Toyota', 'Corvus brachyrhynchos', 'http://dummyimage.com/185x100.png/dddddd/000000', '1f599f2b1e66ca2d30cfa20339a4afe9cd656673', 'Broken', 'Borrowed'),
(28, '4YV3374K8S', 'F450', 'Microcontroller', 'Administrator', 'Ford', 'Bassariscus astutus', 'http://dummyimage.com/100x100.png/ff4444/ffffff', '34ef590b827740bcd8c1e7b431d150d2c2e8a2af', 'Reserved', 'Broken'),
(29, '8UR1059A2I', 'Neon', 'Car', 'Executive', 'Plymouth', 'Mustela nigripes', 'http://dummyimage.com/222x100.png/dddddd/000000', '3b25e238abac9f5f3ab97199d57a0798f36440c4', 'Broken', 'Available'),
(30, '4GO4074M9T', 'Silhouette', 'Laptop', 'Executive', 'Oldsmobile', 'Bucorvus leadbeateri', 'http://dummyimage.com/127x100.png/dddddd/000000', '55b21ec7154ecb5d8d2cf3ba1dc26762dcdd2c59', 'Reserved', 'Maintenance'),
(31, '0KV0473C3R', 'Skyhawk', 'Server', 'Employee', 'Buick', 'Francolinus leucoscepus', 'http://dummyimage.com/204x100.png/5fa2dd/ffffff', '6b3111b1c63ffb16e7f89334b1e39a3863e76772', 'Available', 'Borrowed'),
(32, '5IS0161D8V', 'Accent', 'Microcontroller', 'Employee', 'Hyundai', 'Ovis ammon', 'http://dummyimage.com/241x100.png/cc0000/ffffff', '9fcb6651cbf048018d2fe7aa13a47e4caf127f22', 'Borrowed', 'Maintenance'),
(33, '1OE1661G3V', 'Cirrus', 'Laptop', 'Administrator', 'Chrysler', 'Martes americana', 'http://dummyimage.com/243x100.png/cc0000/ffffff', '5ede828ee4f54deb1987f7c06b00443af86e4d38', 'Reserved', 'Available'),
(34, '4TO6801F5P', 'Liberty', 'Sensor', 'Executive', 'Jeep', 'Eudyptula minor', 'http://dummyimage.com/218x100.png/dddddd/000000', '17d38b31a35b8b446bf13121b238fd9ddc4fccee', 'Borrowed', 'Borrowed'),
(35, '7QY7417X6K', 'Grand Prix Turbo', 'Laptop', 'Executive', 'Pontiac', 'Myiarchus tuberculifer', 'http://dummyimage.com/124x100.png/ff4444/ffffff', '787b3f3f7ccd77ffc8c5fd98c58e0668ca973c53', 'Reserved', 'Broken'),
(36, '7RC2212V2I', 'LX', 'Server', 'Executive', 'Lexus', 'Cyrtodactylus louisiadensis', 'http://dummyimage.com/212x100.png/cc0000/ffffff', '313f63de7a4e995736dea68660696ddad7cc85fa', 'Borrowed', 'Broken'),
(37, '7RN1762B1N', 'F430', 'Microcontroller', 'Executive', 'Ferrari', 'Trichoglossus chlorolepidotus', 'http://dummyimage.com/188x100.png/5fa2dd/ffffff', '52a9148df098126fb0bd9b33973b18e575408bde', 'Borrowed', 'Maintenance'),
(38, '6ZS0743K0N', 'Caravan', 'Laptop', 'Administrator', 'Dodge', 'Lama pacos', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', '3430981446348f882d78111ec5f631ddb74fdfa0', 'Reserved', 'Reserved'),
(39, '4ZF3801U0O', 'Canyon', 'Car', 'Administrator', 'GMC', 'Junonia genoveua', 'http://dummyimage.com/213x100.png/cc0000/ffffff', '4d3bb67d296c32449070195dd144b7a29780479d', 'Borrowed', 'Maintenance'),
(40, '1ET4069X9A', 'Grand Am', 'Server', 'Employee', 'Pontiac', 'Coendou prehensilis', 'http://dummyimage.com/182x100.png/ff4444/ffffff', 'c8780305bf14f32aaf49f79a2cdfd51337c81830', 'Reserved', 'Available'),
(41, '1XQ4159C8X', 'Laser', 'Car', 'Administrator', 'Ford', 'Trichechus inunguis', 'http://dummyimage.com/110x100.png/cc0000/ffffff', 'acc61a73ae4b8b1cbf0e836b956d776574979390', 'Maintenance', 'Borrowed'),
(42, '7PZ0444L3A', 'LHS', 'Microcontroller', 'Executive', 'Chrysler', 'Eudyptula minor', 'http://dummyimage.com/226x100.png/ff4444/ffffff', '82be5117bfbea0160fd1771faae0f7b2a4937950', 'Available', 'Available'),
(43, '4DF4363F0T', 'E-Class', 'Car', 'Employee', 'Mercedes-Benz', 'Damaliscus lunatus', 'http://dummyimage.com/129x100.png/dddddd/000000', '91d0347f9ced624191b74f4b1e74843cc40b7562', 'Reserved', 'Available'),
(44, '8SW9844T2V', '458 Italia', 'Sensor', 'Administrator', 'Ferrari', 'Zosterops pallidus', 'http://dummyimage.com/173x100.png/ff4444/ffffff', 'b2d1fea2e341bc96197f73ab5d919af351d59004', 'Borrowed', 'Borrowed'),
(45, '8SG7487M8D', 'Outlander', 'Server', 'Administrator', 'Mitsubishi', 'Aonyx capensis', 'http://dummyimage.com/177x100.png/ff4444/ffffff', '856296b4689351b2dd98631942ef548a1b9fda29', 'Reserved', 'Borrowed'),
(46, '0MP4501G6Y', 'Sonata', 'Car', 'Employee', 'Hyundai', 'Eolophus roseicapillus', 'http://dummyimage.com/230x100.png/5fa2dd/ffffff', '3b55577f0c816d8b6f49aa2d6a451fec3c8339a5', 'Broken', 'Reserved'),
(47, '0DO9937F2K', 'Pajero', 'Laptop', 'Employee', 'Mitsubishi', 'Diceros bicornis', 'http://dummyimage.com/229x100.png/ff4444/ffffff', 'adf37ef9432838bacdccf3be2a89d4dcd5c54f46', 'Broken', 'Maintenance'),
(48, '7VQ7515N0A', 'Ridgeline', 'Car', 'Employee', 'Honda', 'Eurocephalus anguitimens', 'http://dummyimage.com/162x100.png/dddddd/000000', 'bc36a935be7541403b97866776c68ff7a1ea49f0', 'Borrowed', 'Reserved'),
(49, '4QG5315Y4X', 'VUE', 'Laptop', 'Employee', 'Saturn', 'Anathana ellioti', 'http://dummyimage.com/186x100.png/cc0000/ffffff', 'e21cf10ba1a1a53d26d63ea0c2f10cb2fc80ba87', 'Borrowed', 'Broken'),
(50, '3YU3055A1M', 'Grand Prix', 'Car', 'Administrator', 'Pontiac', 'Anastomus oscitans', 'http://dummyimage.com/104x100.png/cc0000/ffffff', '314c53218c0dd738a6497d0a73fe85034b413d66', 'Maintenance', 'Borrowed'),
(51, '1EI9716O5Z', '98', 'Laptop', 'Executive', 'Oldsmobile', 'Bassariscus astutus', 'http://dummyimage.com/123x100.png/dddddd/000000', '4081e8f2804ea95b19835088dd21aad2385e5736', 'Reserved', 'Available'),
(52, '6PN0108A3J', 'Odyssey', 'Server', 'Executive', 'Honda', 'Erinaceus frontalis', 'http://dummyimage.com/123x100.png/dddddd/000000', 'f147953b1144639d035bacbec67772fc841af54a', 'Broken', 'Borrowed'),
(53, '9QL1181C2H', 'Miata MX-5', 'Sensor', 'Executive', 'Mazda', 'Ratufa indica', 'http://dummyimage.com/167x100.png/dddddd/000000', 'dab9efa6872511fcc566fb8af4f7f1ed69482315', 'Borrowed', 'Borrowed'),
(54, '3DX9357I0Z', '3500', 'Server', 'Administrator', 'Chevrolet', 'Bubalornis niger', 'http://dummyimage.com/191x100.png/cc0000/ffffff', 'dd9541303cb954023384f9f2c400f24769a44bec', 'Available', 'Available'),
(55, '6HT3863W8G', 'Vibe', 'Car', 'Administrator', 'Pontiac', 'Gymnorhina tibicen', 'http://dummyimage.com/123x100.png/ff4444/ffffff', '3c491e971d40008a27b654f6c3710c73bbe36399', 'Maintenance', 'Available'),
(56, '2FS1417D8T', 'Grand Marquis', 'Car', 'Executive', 'Mercury', 'Eumetopias jubatus', 'http://dummyimage.com/239x100.png/dddddd/000000', '7851dd54c39b4e0d4435a9abf2e4e4c7bca77617', 'Available', 'Borrowed'),
(57, '8KL3457S0A', 'Classic', 'Sensor', 'Administrator', 'Chevrolet', 'Ceratotherium simum', 'http://dummyimage.com/223x100.png/cc0000/ffffff', '828996b3fcc27d37deeb74112ea40986a6bb78e6', 'Maintenance', 'Borrowed'),
(58, '4TB1651W1H', 'Colt', 'Microcontroller', 'Administrator', 'Dodge', 'Zalophus californicus', 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', 'a75b0d8312f41a190dd18d57d20d7560bbef2bcf', 'Maintenance', 'Available'),
(59, '9AR4171Z8B', 'Swift', 'Car', 'Employee', 'Suzuki', 'Spermophilus parryii', 'http://dummyimage.com/161x100.png/ff4444/ffffff', '427d1ee0abaa00c20c19ca4c2161759ce6a833c7', 'Maintenance', 'Maintenance'),
(60, '6AN4089L2W', 'Cayenne', 'Laptop', 'Administrator', 'Porsche', 'Dendrocitta vagabunda', 'http://dummyimage.com/159x100.png/dddddd/000000', 'ee1e46c34187f2d281f9ba27adba24e043390aca', 'Broken', 'Broken'),
(61, '8KJ5014S2H', '7 Series', 'Microcontroller', 'Administrator', 'BMW', 'Aegypius occipitalis', 'http://dummyimage.com/199x100.png/ff4444/ffffff', '8477dc84111dfe259e20f6ab3c687e1505b35e2b', 'Borrowed', 'Available'),
(62, '2NX9206T0V', 'SL-Class', 'Microcontroller', 'Executive', 'Mercedes-Benz', 'Dasypus septemcincus', 'http://dummyimage.com/195x100.png/5fa2dd/ffffff', '7e054ce93c034301ac58cff0a65c74922c7fb808', 'Available', 'Available'),
(63, '7QG5608R4M', 'RAV4', 'Microcontroller', 'Employee', 'Toyota', 'Rangifer tarandus', 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', '226fa03f708a2b061c9d5b91dadcd7a1f8f9c462', 'Borrowed', 'Broken'),
(64, '3GW4417F5F', '626', 'Server', 'Executive', 'Mazda', 'Grus canadensis', 'http://dummyimage.com/246x100.png/5fa2dd/ffffff', 'e284edc880a3de7a7e045f1b4e7abba1d075a969', 'Reserved', 'Maintenance'),
(65, '1IF0698R3Q', 'XJ', 'Car', 'Employee', 'Jaguar', 'Equus hemionus', 'http://dummyimage.com/129x100.png/ff4444/ffffff', 'f4d25f608e042a42456e5d1ec69160ccc7a5aa46', 'Borrowed', 'Broken'),
(66, '2AK9886R9V', 'Ram 1500', 'Car', 'Administrator', 'Dodge', 'Tadorna tadorna', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 'cd210854ca0918b98fddff9e5284b9e71bc414e3', 'Available', 'Maintenance'),
(67, '1AH8552S5B', 'F-Series', 'Laptop', 'Employee', 'Ford', 'Tockus erythrorhyncus', 'http://dummyimage.com/119x100.png/dddddd/000000', '61ec013d7f883d4a2bb8cf875bfaf30dac42102a', 'Borrowed', 'Borrowed'),
(68, '5VT1563R1E', 'LR3', 'Car', 'Employee', 'Land Rover', 'Mabuya spilogaster', 'http://dummyimage.com/226x100.png/dddddd/000000', '4bc6ac15b3c381e5def7e28255fbe0810389bf85', 'Broken', 'Maintenance'),
(69, '0CQ1235N7X', 'Quattro', 'Server', 'Administrator', 'Audi', 'Delphinus delphis', 'http://dummyimage.com/123x100.png/cc0000/ffffff', '260a470c85c453427e862bee987edb1c702743f4', 'Maintenance', 'Available'),
(70, '1AI9126S8H', 'Quattro', 'Sensor', 'Executive', 'Audi', 'Psophia viridis', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff', '091ca0a2ecfa3cf3bee856932ae7eb39fb0dbb73', 'Reserved', 'Reserved'),
(71, '8AB5792B7W', 'Ram 2500', 'Sensor', 'Executive', 'Dodge', 'Dusicyon thous', 'http://dummyimage.com/183x100.png/ff4444/ffffff', '9656f84d921d6af54cc056e655367871dbe71605', 'Broken', 'Borrowed'),
(72, '9MS8853A8U', 'Lightning', 'Microcontroller', 'Employee', 'Ford', 'Spermophilus richardsonii', 'http://dummyimage.com/181x100.png/dddddd/000000', 'c479ea438d31cc2c1c26ad8907a9d4860e953f79', 'Broken', 'Reserved'),
(73, '4AL6497Z6N', 'V8 Vantage', 'Sensor', 'Administrator', 'Aston Martin', 'Felis concolor', 'http://dummyimage.com/146x100.png/cc0000/ffffff', '978b84596a8f44bcad81d1bf0a27bc71856a7b98', 'Available', 'Available'),
(74, '3JY8056Q6E', 'SL-Class', 'Microcontroller', 'Executive', 'Mercedes-Benz', 'Eubalaena australis', 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', '923b28256955cb447f4c278849b93c95d1b91f58', 'Maintenance', 'Borrowed'),
(75, '2XX4717H8C', 'Fox', 'Microcontroller', 'Administrator', 'Volkswagen', 'Equus hemionus', 'http://dummyimage.com/153x100.png/dddddd/000000', '179ee636df01d19c38611a0ff240a9415fb0e3f6', 'Available', 'Available'),
(76, '4ZJ5847W0P', 'Mazda5', 'Car', 'Employee', 'Mazda', 'Grus antigone', 'http://dummyimage.com/242x100.png/cc0000/ffffff', '1dcbcc5c06dbbe6896dc70ba048c22aefcc9a882', 'Maintenance', 'Maintenance'),
(77, '4YD0761U8P', '924 S', 'Sensor', 'Employee', 'Porsche', 'Canis lupus baileyi', 'http://dummyimage.com/141x100.png/5fa2dd/ffffff', 'd86fe25797e0de8624793e71ccea8a806ebaecf0', 'Maintenance', 'Maintenance'),
(78, '3VU7679I9Q', '3 Series', 'Microcontroller', 'Employee', 'BMW', 'Ephippiorhynchus mycteria', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', 'c0cf3622db566fc9fdf5a6834ef45cbf081bdb4f', 'Borrowed', 'Available'),
(79, '5MA5648Y5T', 'Accord', 'Microcontroller', 'Administrator', 'Honda', 'Crotalus triseriatus', 'http://dummyimage.com/178x100.png/cc0000/ffffff', '5dab3509af1854f9cda17e03b542c5af5e8e9eaa', 'Borrowed', 'Broken'),
(80, '8HK1550B3L', 'SLK-Class', 'Car', 'Employee', 'Mercedes-Benz', 'Speothos vanaticus', 'http://dummyimage.com/154x100.png/cc0000/ffffff', '40d7dbc594f88efccbe75642f953646375b9234e', 'Borrowed', 'Borrowed'),
(81, '2IF5830F6Q', 'Prelude', 'Laptop', 'Administrator', 'Honda', 'unavailable', 'http://dummyimage.com/213x100.png/5fa2dd/ffffff', '47930345adcdfef7cc0c42ad2918496a89ad5d16', 'Broken', 'Reserved'),
(82, '6MV3558B6J', 'Legend', 'Server', 'Administrator', 'Acura', 'unavailable', 'http://dummyimage.com/164x100.png/dddddd/000000', 'a05b242a312c73342d7da95618a278b0096b57f7', 'Available', 'Borrowed'),
(83, '5AY1524E2T', 'MR2', 'Laptop', 'Employee', 'Toyota', 'Haliaetus vocifer', 'http://dummyimage.com/149x100.png/cc0000/ffffff', '775fc981e39bb14f8ba54fc1ef1c3d4dd3bae469', 'Broken', 'Borrowed'),
(84, '4HI9408B8N', 'SL-Class', 'Car', 'Executive', 'Mercedes-Benz', 'Cervus canadensis', 'http://dummyimage.com/108x100.png/cc0000/ffffff', '9c2c71835f34566f8b46b4aad1aedb2525f9d37a', 'Broken', 'Available'),
(85, '2HM3924S8F', 'H1', 'Laptop', 'Executive', 'Hummer', 'Tetracerus quadricornis', 'http://dummyimage.com/222x100.png/cc0000/ffffff', 'a5fd7baa47adb8297c108e042fce226f32000140', 'Broken', 'Available'),
(86, '3WS6244E3Y', 'New Beetle', 'Microcontroller', 'Employee', 'Volkswagen', 'Loris tardigratus', 'http://dummyimage.com/247x100.png/cc0000/ffffff', 'ece083beacd52ef1435274574597f7e4f7449a58', 'Available', 'Maintenance'),
(87, '1BS9936S5O', 'CTS', 'Microcontroller', 'Executive', 'Cadillac', 'Mustela nigripes', 'http://dummyimage.com/147x100.png/5fa2dd/ffffff', '3534f69b6d721ef43634bc650e9927fb710369fd', 'Reserved', 'Maintenance'),
(88, '4JP8574U1R', 'Esprit', 'Microcontroller', 'Administrator', 'Lotus', 'Ara ararauna', 'http://dummyimage.com/214x100.png/5fa2dd/ffffff', '8730505a39639f932b026932803648314381919a', 'Available', 'Reserved'),
(89, '1WE7803U8D', 'Caprice', 'Laptop', 'Administrator', 'Chevrolet', 'Damaliscus dorcas', 'http://dummyimage.com/189x100.png/dddddd/000000', 'a53079674fd08e6bf51d32799a075c31dfc9ec73', 'Available', 'Borrowed'),
(90, '1TX2087R1L', '9000', 'Sensor', 'Employee', 'Saab', 'Laniarius ferrugineus', 'http://dummyimage.com/247x100.png/cc0000/ffffff', '8c82895f3a785311e3f419bf0e240310bb81f842', 'Maintenance', 'Borrowed'),
(91, '3NY3017J6T', 'RX', 'Microcontroller', 'Employee', 'Lexus', 'Sarcorhamphus papa', 'http://dummyimage.com/141x100.png/5fa2dd/ffffff', 'c42e3e146548fae3ce8a12cc63b95ab5cd48b9b5', 'Reserved', 'Broken'),
(92, '2PG1676E5N', 'Laser', 'Car', 'Executive', 'Plymouth', 'Boa constrictor mexicana', 'http://dummyimage.com/100x100.png/dddddd/000000', '6e6a8de1cbde1a4096abf3efd351a2258a64eb45', 'Borrowed', 'Broken'),
(93, '7TE6702T5W', 'Altima', 'Sensor', 'Employee', 'Nissan', 'Raphicerus campestris', 'http://dummyimage.com/169x100.png/dddddd/000000', '0886f23fb263aff07de421c792ac1386b979844c', 'Broken', 'Reserved'),
(94, '3EN4206N2Y', 'Tahoe', 'Sensor', 'Employee', 'Chevrolet', 'Varanus sp.', 'http://dummyimage.com/165x100.png/ff4444/ffffff', 'a3b1d0898fd83110abcd8696500fa0f44d60fd99', 'Borrowed', 'Broken'),
(95, '3KE3810C7N', 'F250', 'Microcontroller', 'Executive', 'Ford', 'Ephippiorhynchus mycteria', 'http://dummyimage.com/150x100.png/ff4444/ffffff', '6258459306ea0bc977351fe7ee24ab2b56e847bd', 'Maintenance', 'Available'),
(96, '5XU6988F2T', 'G37', 'Server', 'Executive', 'Infiniti', 'Myotis lucifugus', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', 'ec1c109bf0585c9b69505cb7ec0bf6d4f3b616b4', 'Available', 'Broken'),
(97, '7GM1009U4U', 'Blazer', 'Sensor', 'Employee', 'Chevrolet', 'Coluber constrictor foxii', 'http://dummyimage.com/135x100.png/5fa2dd/ffffff', '5b5239ddb36e152f7b0adb660b2f5a0ebf32dfee', 'Reserved', 'Available'),
(98, '0PJ4859U8B', 'Suburban 1500', 'Server', 'Employee', 'Chevrolet', 'Didelphis virginiana', 'http://dummyimage.com/142x100.png/5fa2dd/ffffff', 'dd29640b7b048b021b6c2b0824ebab97aebf0483', 'Maintenance', 'Borrowed'),
(99, '6XP6375M2B', 'F150', 'Car', 'Administrator', 'Ford', 'Felis silvestris lybica', 'http://dummyimage.com/102x100.png/ff4444/ffffff', 'bf40a1866dbf6a570e9ff97fe16a93e66ed50f64', 'Reserved', 'Available'),
(100, '5XY3442B1D', 'Daewoo Magnus', 'Microcontroller', 'Employee', 'Suzuki', 'Odocoileus hemionus', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'f984c5d069439216a28c4a85a3169ec3b6a8b827', 'Reserved', 'Broken'),
(101, '1YJ7507I4S', 'Bonneville', 'Server', 'Employee', 'Pontiac', 'Haliaetus vocifer', 'http://dummyimage.com/179x100.png/dddddd/000000', '11373d0eaf4412ac370ed0270029cc5f87d5ccb4', 'Reserved', 'Broken'),
(102, '0CY0705A6D', '300SL', 'Microcontroller', 'Executive', 'Mercedes-Benz', 'Amazona sp.', 'http://dummyimage.com/248x100.png/dddddd/000000', '3116769b6e2cfcea73849a4023e9a1579cea7068', 'Borrowed', 'Borrowed'),
(103, '7LI4945R8P', '1500 Club Coupe', 'Microcontroller', 'Executive', 'GMC', 'Chlidonias leucopterus', 'http://dummyimage.com/173x100.png/dddddd/000000', '9bedb1888a5a2a7c138f9e99c63fa051b8ea993d', 'Broken', 'Available'),
(104, '3MT2981I3T', 'G-Series G10', 'Laptop', 'Executive', 'Chevrolet', 'Mirounga angustirostris', 'http://dummyimage.com/197x100.png/ff4444/ffffff', 'a03dc525ece8b4788b0f7f7e041093241108c732', 'Reserved', 'Available'),
(105, '9OQ0892N4C', '5 Series', 'Microcontroller', 'Employee', 'BMW', 'Dendrocitta vagabunda', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', '83da0371d91af4746b8fe1d9afc0a9c33b888f6b', 'Broken', 'Broken'),
(106, '6ZE1552R4H', 'Jimmy', 'Microcontroller', 'Administrator', 'GMC', 'Tenrec ecaudatus', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', '74e2c2a89d64c751c3ff62f68090a794b86b6aba', 'Broken', 'Available'),
(107, '5EF1892F3T', 'Regal', 'Sensor', 'Executive', 'Buick', 'Nesomimus trifasciatus', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', '9e789ff0d3d434e146db3e6ccba427d104928dc9', 'Borrowed', 'Broken'),
(108, '5HW3007J5U', 'Suburban 1500', 'Car', 'Employee', 'Chevrolet', 'Psophia viridis', 'http://dummyimage.com/133x100.png/ff4444/ffffff', '8967236d1ebd5f59d1f1ecaa281852129364f90a', 'Reserved', 'Reserved'),
(109, '2GE5412Z1P', 'Versa', 'Microcontroller', 'Administrator', 'Nissan', 'Spilogale gracilis', 'http://dummyimage.com/175x100.png/cc0000/ffffff', '2e5f73973fd8f357b5083f0102cbc8ce1975ee34', 'Available', 'Reserved'),
(110, '8LX2880D9W', 'Rocky', 'Server', 'Administrator', 'Daihatsu', 'Papilio canadensis', 'http://dummyimage.com/189x100.png/5fa2dd/ffffff', '34fe3a52c6d8cf6cb5381fb1a81463b2c41a7468', 'Available', 'Reserved'),
(111, '4KY4182Y6Q', 'S8', 'Car', 'Employee', 'Audi', 'Sciurus vulgaris', 'http://dummyimage.com/144x100.png/cc0000/ffffff', 'b25c0407c0115b216a3467f87df1678eb95e10d7', 'Maintenance', 'Borrowed'),
(112, '2II9108T5C', 'E150', 'Sensor', 'Employee', 'Ford', 'Rangifer tarandus', 'http://dummyimage.com/107x100.png/5fa2dd/ffffff', '77a41d98a1d4548f5614270d9eb4fcc66ed56fef', 'Reserved', 'Reserved'),
(113, '0EM1267F8U', 'Grand Prix', 'Sensor', 'Executive', 'Pontiac', 'Cervus unicolor', 'http://dummyimage.com/119x100.png/5fa2dd/ffffff', 'f7be3b60a73e580b59487421497173d14b6be1e0', 'Maintenance', 'Reserved'),
(114, '2XP3664F6Y', 'Accord', 'Server', 'Executive', 'Honda', 'Vanessa indica', 'http://dummyimage.com/204x100.png/ff4444/ffffff', '074dec0f0c22b2682e8b01394acdc2c585fa608f', 'Maintenance', 'Available'),
(115, '5UE0586E9G', '323', 'Microcontroller', 'Executive', 'Mazda', 'Martes americana', 'http://dummyimage.com/212x100.png/ff4444/ffffff', '06b84e929c8b30d4059f8046d83eafa11acfb650', 'Broken', 'Maintenance'),
(116, '3TQ8119I1V', 'V50', 'Server', 'Administrator', 'Volvo', 'Iguana iguana', 'http://dummyimage.com/133x100.png/cc0000/ffffff', 'dbcad06f053fafa03a162a1532cc5df80fb1d2eb', 'Maintenance', 'Borrowed'),
(117, '1JS0443F6G', 'CR-V', 'Laptop', 'Administrator', 'Honda', 'Paradoxurus hermaphroditus', 'http://dummyimage.com/163x100.png/dddddd/000000', '71da7e4887705368ab39d875642c3a7b16cbd46b', 'Maintenance', 'Reserved'),
(118, '6VE0294M6E', 'Ram Wagon B250', 'Sensor', 'Employee', 'Dodge', 'Naja haje', 'http://dummyimage.com/177x100.png/cc0000/ffffff', '8d100c01fb5b0d7e7f4359cc7b6ab6301d693ab0', 'Maintenance', 'Available'),
(119, '2EE5099K3C', 'Pajero', 'Car', 'Employee', 'Mitsubishi', 'Tadorna tadorna', 'http://dummyimage.com/220x100.png/5fa2dd/ffffff', '9a8299fc91a552097bb10eb13b607e71acbc8926', 'Borrowed', 'Available'),
(120, '5XT2684L8V', 'Matrix', 'Laptop', 'Administrator', 'Toyota', 'Castor fiber', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'd0ab2c30ed10d33d5d665cfcfd2b3a5bc35f109d', 'Broken', 'Reserved'),
(121, '4FK5134U5S', 'Fillmore', 'Microcontroller', 'Administrator', 'Fillmore', 'Ara ararauna', 'http://dummyimage.com/178x100.png/dddddd/000000', '7c4e09084dcc96d99d1ba2cdec4fb015d52b732b', 'Borrowed', 'Reserved'),
(122, '5ZO9528B9T', 'SLR McLaren', 'Sensor', 'Employee', 'Mercedes-Benz', 'Cercatetus concinnus', 'http://dummyimage.com/155x100.png/ff4444/ffffff', 'bb2ab72fc67c11f5387177a9c917204c33156008', 'Available', 'Broken'),
(123, '2GL6337F1M', 'Caprice Classic', 'Car', 'Employee', 'Chevrolet', 'Sciurus niger', 'http://dummyimage.com/244x100.png/5fa2dd/ffffff', 'bbb93badc2ac8027f3f2e53b599518b96d5ec365', 'Maintenance', 'Maintenance'),
(124, '1KQ4832S8A', 'E-Class', 'Sensor', 'Employee', 'Mercedes-Benz', 'Phalaropus lobatus', 'http://dummyimage.com/227x100.png/dddddd/000000', '289743473b1b2191cff81838bbb71fda41384b2a', 'Broken', 'Borrowed'),
(125, '8VE0471V3L', 'Savana 2500', 'Laptop', 'Executive', 'GMC', 'Varanus salvator', 'http://dummyimage.com/170x100.png/ff4444/ffffff', '8082d11727cef46ecc8b73996f90307ffcbbafd6', 'Reserved', 'Borrowed'),
(126, '1JD1859H3W', 'NSX', 'Car', 'Executive', 'Acura', 'Redunca redunca', 'http://dummyimage.com/109x100.png/dddddd/000000', '0b11588b64e8c58bd99b9103bcb1ee5bd91ed536', 'Available', 'Broken'),
(127, '4UY2469D9G', 'Odyssey', 'Server', 'Administrator', 'Honda', 'Spheniscus magellanicus', 'http://dummyimage.com/199x100.png/dddddd/000000', 'c4cad361c57dd4460a94cfd0395c86736491eff4', 'Broken', 'Reserved'),
(128, '0ON3580D4R', '330', 'Server', 'Employee', 'BMW', 'Ara chloroptera', 'http://dummyimage.com/173x100.png/5fa2dd/ffffff', '9d2d10e87c3f9259dce3fb7e03481195afefd4d8', 'Maintenance', 'Available'),
(129, '5QO0770K2A', 'Villager', 'Sensor', 'Administrator', 'Mercury', 'Oryx gazella callotis', 'http://dummyimage.com/190x100.png/dddddd/000000', '4875f19d91bace732ff889b6227f2660832ccf9a', 'Borrowed', 'Maintenance'),
(130, '8JT2062X0F', 'Express 3500', 'Microcontroller', 'Executive', 'Chevrolet', 'Phalaropus lobatus', 'http://dummyimage.com/188x100.png/dddddd/000000', 'f235bf74a958bad8c1737acf8932df509c5756ff', 'Borrowed', 'Borrowed'),
(131, '9MD3181K0F', 'Silverado 3500', 'Microcontroller', 'Administrator', 'Chevrolet', 'Pseudocheirus peregrinus', 'http://dummyimage.com/145x100.png/ff4444/ffffff', 'ea4044ec029fe4a5d31ede1ffc4510aa668333aa', 'Available', 'Reserved'),
(132, '0EI8250J5H', 'Sonoma', 'Laptop', 'Administrator', 'GMC', 'Cygnus atratus', 'http://dummyimage.com/172x100.png/cc0000/ffffff', '9bc2fa75844e47da700fcf26f86bd6da8372bd87', 'Maintenance', 'Broken'),
(133, '2QG1955Y3Y', 'Silhouette', 'Server', 'Administrator', 'Oldsmobile', 'Upupa epops', 'http://dummyimage.com/120x100.png/ff4444/ffffff', '3a98a79222b76f3787efc9dc5c849d1d6d56a6c2', 'Borrowed', 'Maintenance'),
(134, '9AR3482O6N', 'SC', 'Laptop', 'Administrator', 'Lexus', 'Seiurus aurocapillus', 'http://dummyimage.com/135x100.png/cc0000/ffffff', 'fb19a3ca95d9f65ceae260a08ca62bb2c3a767a4', 'Available', 'Reserved'),
(135, '4GE3615R0L', 'LeMans', 'Laptop', 'Employee', 'Pontiac', 'Mirounga leonina', 'http://dummyimage.com/134x100.png/dddddd/000000', 'b2ab926a853b07964fe0e0f159735ec02114b996', 'Available', 'Broken'),
(136, '9PX0573X2D', 'New Beetle', 'Car', 'Executive', 'Volkswagen', 'Ovis dalli stonei', 'http://dummyimage.com/233x100.png/5fa2dd/ffffff', 'f8eba325b27fa5b080d79ec83072c693c94a0e99', 'Borrowed', 'Reserved'),
(137, '0HQ1907R4A', 'Spirit', 'Car', 'Administrator', 'Dodge', 'Pytilia melba', 'http://dummyimage.com/190x100.png/dddddd/000000', 'debbdf75e55373e04b983002de86fb4cc7eaf6c3', 'Maintenance', 'Reserved'),
(138, '9GR0455N1O', 'S-Class', 'Microcontroller', 'Employee', 'Mercedes-Benz', 'Anitibyx armatus', 'http://dummyimage.com/182x100.png/ff4444/ffffff', '372ae7ccf2c0c01f704fef740d09f34f6fc85f14', 'Borrowed', 'Broken'),
(139, '7ET6227B6P', 'Town Car', 'Sensor', 'Employee', 'Lincoln', 'Paradoxurus hermaphroditus', 'http://dummyimage.com/248x100.png/ff4444/ffffff', '3c156acefd83897fca5468fa3fa096a209007987', 'Reserved', 'Reserved'),
(140, '1AQ0523M0F', 'SC', 'Sensor', 'Administrator', 'Lexus', 'Eudyptula minor', 'http://dummyimage.com/233x100.png/ff4444/ffffff', 'fd2fe270bbe1759e343ff0fedb1cb86b6fc24bf1', 'Broken', 'Borrowed'),
(141, '4WA3812F4G', 'Tundra', 'Car', 'Administrator', 'Toyota', 'Aegypius tracheliotus', 'http://dummyimage.com/131x100.png/dddddd/000000', '2d7c98a1e0a512f019615e6a72def1ef02645101', 'Broken', 'Reserved'),
(142, '6OO4193G4T', 'Town & Country', 'Sensor', 'Employee', 'Chrysler', 'Naja haje', 'http://dummyimage.com/120x100.png/5fa2dd/ffffff', '9e9313a400e7d42ae78a439a3af84e19531b3a50', 'Maintenance', 'Borrowed'),
(143, '6HF9710G6J', 'Sienna', 'Sensor', 'Executive', 'Toyota', 'Chauna torquata', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', '49f61febeaf99355d2c3dac480aaf4558055f826', 'Broken', 'Maintenance'),
(144, '4AY1974J1R', 'Yaris', 'Sensor', 'Employee', 'Toyota', 'Bettongia penicillata', 'http://dummyimage.com/165x100.png/cc0000/ffffff', 'b37a2aa7d364d743d43723df1bef79aea97777c1', 'Broken', 'Available'),
(145, '3PP6412E2Y', '300CE', 'Laptop', 'Administrator', 'Mercedes-Benz', 'Connochaetus taurinus', 'http://dummyimage.com/124x100.png/5fa2dd/ffffff', '41d5b0dccdb4d793cf5c054070cbd0ceadc09167', 'Broken', 'Broken'),
(146, '0UW8282T3B', 'S4', 'Car', 'Employee', 'Audi', 'Gekko gecko', 'http://dummyimage.com/231x100.png/cc0000/ffffff', '9789127032b731d6b476b21661317f718947bfa9', 'Broken', 'Reserved'),
(147, '6LV7423Y8C', 'Sunbird', 'Microcontroller', 'Administrator', 'Pontiac', 'Cynictis penicillata', 'http://dummyimage.com/179x100.png/5fa2dd/ffffff', '0a86ceb770523a9f72dadf57577e890a1597c328', 'Broken', 'Reserved'),
(148, '2ZI1778W4D', 'Envoy XUV', 'Microcontroller', 'Administrator', 'GMC', 'Tapirus terrestris', 'http://dummyimage.com/246x100.png/5fa2dd/ffffff', 'ce75e3e9a66cd848f254e35035facd9117c3e1a7', 'Borrowed', 'Available'),
(149, '5ZM2280L6X', 'Bravada', 'Server', 'Administrator', 'Oldsmobile', 'Lepus arcticus', 'http://dummyimage.com/200x100.png/dddddd/000000', '0d9fe1870c4a489e7d886d2c8eeb2cfb9bc4ad72', 'Reserved', 'Maintenance'),
(150, '2XT6482F9M', 'F-Series', 'Laptop', 'Executive', 'Ford', 'Gyps bengalensis', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'ec6dc16b06a29153799b791f5910f97dbbc50c52', 'Borrowed', 'Maintenance'),
(151, '2WK4470V2H', 'Express 1500', 'Server', 'Executive', 'Chevrolet', 'Dusicyon thous', 'http://dummyimage.com/107x100.png/dddddd/000000', '0a72cc2716ea3fa000cfc0f35002e571dffb20a0', 'Maintenance', 'Maintenance'),
(152, '2ZG0317R0Y', 'Cutlass Supreme', 'Microcontroller', 'Administrator', 'Oldsmobile', 'Nycticorax nycticorax', 'http://dummyimage.com/168x100.png/5fa2dd/ffffff', '00d8201c8b67bbe57e99a2cabcfb157fcd4cf63c', 'Reserved', 'Reserved'),
(153, '0XF9623A4F', 'Golf', 'Microcontroller', 'Administrator', 'Volkswagen', 'Colobus guerza', 'http://dummyimage.com/196x100.png/dddddd/000000', 'f5147d7918a38a7d01eb9b8747610b3d58f39f3d', 'Maintenance', 'Maintenance'),
(154, '1SU7385V3G', 'Range Rover', 'Sensor', 'Employee', 'Land Rover', 'Nannopterum harrisi', 'http://dummyimage.com/105x100.png/cc0000/ffffff', '796b4cd24eab6f41bc693e1e129c71dc2d445b79', 'Reserved', 'Borrowed'),
(155, '0VB1097Y9K', 'Venture', 'Sensor', 'Employee', 'Chevrolet', 'Loris tardigratus', 'http://dummyimage.com/193x100.png/cc0000/ffffff', '1f90ef67ab5757c46b269f7bba7ecbfbdab59467', 'Reserved', 'Reserved'),
(156, '5GV5482Y1S', 'CX', 'Sensor', 'Executive', 'Citroën', 'Cyrtodactylus louisiadensis', 'http://dummyimage.com/164x100.png/cc0000/ffffff', '9556bd11e893d5474a0d18b8d944c3f3387da700', 'Borrowed', 'Maintenance'),
(157, '8NQ8179Z2G', 'TL', 'Server', 'Administrator', 'Acura', 'Dasypus novemcinctus', 'http://dummyimage.com/140x100.png/ff4444/ffffff', 'f9e13694cd2fa3e7dec82ce115a6cbc7dc62a311', 'Broken', 'Reserved'),
(158, '7QU2630H9Z', 'Grand Marquis', 'Server', 'Employee', 'Mercury', 'Pitangus sulphuratus', 'http://dummyimage.com/147x100.png/dddddd/000000', 'd08acebe3d8ff737bec6be31b6ea23dd6802b20f', 'Borrowed', 'Available'),
(159, '8LA9241B1Y', 'Diamante', 'Laptop', 'Administrator', 'Mitsubishi', 'Merops sp.', 'http://dummyimage.com/132x100.png/ff4444/ffffff', 'c9ab122de76b5694e386a25b519bcce4259372da', 'Broken', 'Reserved'),
(160, '6AU0985I3A', '1500', 'Laptop', 'Administrator', 'GMC', 'Bassariscus astutus', 'http://dummyimage.com/212x100.png/dddddd/000000', '142210c911b996e4a6f87f6accabcaabf62565ed', 'Broken', 'Reserved'),
(161, '1FY2963E1E', 'Quest', 'Microcontroller', 'Executive', 'Nissan', 'Anas bahamensis', 'http://dummyimage.com/142x100.png/dddddd/000000', '10a5b8ae0bb56042c2108eadd435ce252ecd80f6', 'Maintenance', 'Reserved'),
(162, '4FW2478N9N', 'G-Series G20', 'Car', 'Executive', 'Chevrolet', 'Crotalus cerastes', 'http://dummyimage.com/187x100.png/dddddd/000000', '082c27b3b8a7310598cc6cca683818e9af3eeead', 'Reserved', 'Available'),
(163, '9XM3558J1R', '911', 'Sensor', 'Executive', 'Porsche', 'Neotis denhami', 'http://dummyimage.com/183x100.png/5fa2dd/ffffff', 'e16adbf0cba7df554175827566963c68cc989f70', 'Reserved', 'Available'),
(164, '4YF6987X8Q', 'A6', 'Microcontroller', 'Employee', 'Audi', 'Panthera leo persica', 'http://dummyimage.com/132x100.png/dddddd/000000', 'f4e810b70de4da0919bac30140f0310c2dc1bc43', 'Borrowed', 'Available'),
(165, '5GQ4571H3P', 'Sprinter 2500', 'Server', 'Administrator', 'Mercedes-Benz', 'Neophron percnopterus', 'http://dummyimage.com/183x100.png/dddddd/000000', 'df56d6e89ba805af88a81c987f7d1a283276d70d', 'Borrowed', 'Broken'),
(166, '5JP2861Z7V', 'Vision', 'Microcontroller', 'Executive', 'Eagle', 'Ornithorhynchus anatinus', 'http://dummyimage.com/203x100.png/5fa2dd/ffffff', '5cd2e2a2fdafa7a88e64671be91176be771f1364', 'Borrowed', 'Maintenance'),
(167, '7EM2146H0P', 'Elantra', 'Microcontroller', 'Executive', 'Hyundai', 'Eubalaena australis', 'http://dummyimage.com/157x100.png/cc0000/ffffff', 'c774bf360b1a9f9c52df3bb2e55a5f89269cde09', 'Reserved', 'Available'),
(168, '6AO3282E0L', '5 Series', 'Server', 'Employee', 'BMW', 'Redunca redunca', 'http://dummyimage.com/232x100.png/cc0000/ffffff', 'b206a253faece99d2de77148a9f08c2d7b5f9012', 'Broken', 'Available'),
(169, '8RI1411Y5P', 'RX-8', 'Sensor', 'Administrator', 'Mazda', 'Tringa glareola', 'http://dummyimage.com/160x100.png/cc0000/ffffff', 'aa4cbc733f601a58e77b2abebdb5cbef74c6e3b6', 'Broken', 'Maintenance'),
(170, '9AL2535D5N', 'XC60', 'Server', 'Administrator', 'Volvo', 'Bos mutus', 'http://dummyimage.com/187x100.png/dddddd/000000', '62883c9c9438233b7314b4bafabc185c43f3d2e2', 'Borrowed', 'Maintenance'),
(171, '3TT2027A4D', 'Mazda3', 'Car', 'Employee', 'Mazda', 'Capra ibex', 'http://dummyimage.com/221x100.png/cc0000/ffffff', '671f322ff84334a117a0a40a2fa087c51c7e29b4', 'Broken', 'Broken'),
(172, '8DQ6160S1W', 'XLR-V', 'Sensor', 'Employee', 'Cadillac', 'Paroaria gularis', 'http://dummyimage.com/192x100.png/ff4444/ffffff', '51d2842d0b1e916cebde2e5a4f712bdbfa374ade', 'Broken', 'Reserved'),
(173, '5BL0696J4L', 'Safari', 'Car', 'Executive', 'GMC', 'Streptopelia senegalensis', 'http://dummyimage.com/166x100.png/cc0000/ffffff', '7dc848253f45cf6b1101a5c4c54ddfcfcddbbe2c', 'Maintenance', 'Reserved'),
(174, '7NW9593J4E', 'Q', 'Microcontroller', 'Employee', 'Infiniti', 'Callorhinus ursinus', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', 'f9886d8c6f2ae097ff93250c1487da23c654011f', 'Maintenance', 'Maintenance'),
(175, '0TN3573J1D', 'C-Class', 'Car', 'Executive', 'Mercedes-Benz', 'Pycnonotus nigricans', 'http://dummyimage.com/101x100.png/ff4444/ffffff', 'bbf3f7920ed457a304ca48a67496c1c50e5ee4ca', 'Reserved', 'Maintenance'),
(176, '7KD4167X5B', 'Cooper', 'Server', 'Employee', 'MINI', 'Macropus giganteus', 'http://dummyimage.com/215x100.png/5fa2dd/ffffff', 'bfec7896303403a0af6087c6bb6dd0d8a4929eda', 'Broken', 'Maintenance'),
(177, '1BD5820V6U', 'Town & Country', 'Laptop', 'Administrator', 'Chrysler', 'Acrobates pygmaeus', 'http://dummyimage.com/199x100.png/ff4444/ffffff', '1425031f3df99a22f790c7d5fb9d81b0e2353b73', 'Maintenance', 'Borrowed'),
(178, '2KV0132E4I', 'Escalade EXT', 'Sensor', 'Employee', 'Cadillac', 'Trachyphonus vaillantii', 'http://dummyimage.com/206x100.png/cc0000/ffffff', '3923f5918db59f38241eea525f5a7138d903ed70', 'Borrowed', 'Available'),
(179, '1NQ5277N5O', '4Runner', 'Laptop', 'Employee', 'Toyota', 'Panthera tigris', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', 'e17ca142101f8ef2dfaab4b534ec0b31ee57d39b', 'Reserved', 'Available'),
(180, '8HV2796E3W', 'Corvette', 'Microcontroller', 'Administrator', 'Chevrolet', 'Speothos vanaticus', 'http://dummyimage.com/182x100.png/5fa2dd/ffffff', '2eec3c1aa946b33add35dedd4bfb10ac0b6cd58e', 'Borrowed', 'Reserved'),
(181, '3QH0275L3V', 'Envoy', 'Microcontroller', 'Administrator', 'GMC', 'Dicrostonyx groenlandicus', 'http://dummyimage.com/219x100.png/5fa2dd/ffffff', '523308afb89b8f3625b80c0cb771f699ede422a8', 'Reserved', 'Borrowed'),
(182, '1PS2635W5T', '3 Series', 'Server', 'Employee', 'BMW', 'Myrmecophaga tridactyla', 'http://dummyimage.com/147x100.png/cc0000/ffffff', '18b10700585fc82cb40937d42a99bb56b3214130', 'Maintenance', 'Reserved'),
(183, '4EA8730O1X', '240SX', 'Sensor', 'Employee', 'Nissan', 'Rhea americana', 'http://dummyimage.com/224x100.png/5fa2dd/ffffff', '03f4985ba29ecfbd73c20d5d99a3db596a376f87', 'Maintenance', 'Available'),
(184, '8LL7249T1Z', 'Uplander', 'Car', 'Employee', 'Chevrolet', 'Bos mutus', 'http://dummyimage.com/115x100.png/cc0000/ffffff', '192ab4d7500b4510cf64985cada00845f3522283', 'Broken', 'Reserved'),
(185, '1YF0745R3K', 'Acclaim', 'Sensor', 'Employee', 'Plymouth', 'Oreamnos americanus', 'http://dummyimage.com/229x100.png/cc0000/ffffff', '9718a594aa54dcfd8524e0456d0eed1b6919e1bd', 'Maintenance', 'Borrowed'),
(186, '7XX6632W1K', '911', 'Microcontroller', 'Administrator', 'Porsche', 'Sula nebouxii', 'http://dummyimage.com/215x100.png/dddddd/000000', '4ed45d461bf70cf6d1c9dad4a4868a91476ae980', 'Borrowed', 'Available'),
(187, '4EW5106Y9H', 'Sportage', 'Sensor', 'Employee', 'Kia', 'Macropus agilis', 'http://dummyimage.com/102x100.png/5fa2dd/ffffff', '75af553a3390c5472db9ee698c7f33f22393b4f8', 'Broken', 'Borrowed'),
(188, '0ZN4620R0Q', '9-7X', 'Sensor', 'Administrator', 'Saab', 'Geochelone elegans', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', '8ba66fc02079b242faeb2542575c65684b6c97db', 'Broken', 'Reserved'),
(189, '7SK5721M0J', 'Ram 2500', 'Microcontroller', 'Administrator', 'Dodge', 'Actophilornis africanus', 'http://dummyimage.com/240x100.png/cc0000/ffffff', 'b23e4cde0463aa49df30151f2e755489a4044eb8', 'Broken', 'Maintenance'),
(190, '1BX3440U3Z', 'Rogue', 'Sensor', 'Administrator', 'Nissan', 'Ninox superciliaris', 'http://dummyimage.com/112x100.png/5fa2dd/ffffff', '422b319b7b373ccf7d5d60ce6315e10c43b88ed7', 'Reserved', 'Maintenance'),
(191, '9LE0866R0M', 'Savana 2500', 'Microcontroller', 'Employee', 'GMC', 'Manouria emys', 'http://dummyimage.com/158x100.png/ff4444/ffffff', '1d8c6928a64c43d9c30642401f754a067031b633', 'Maintenance', 'Reserved'),
(192, '6VP2377B4U', 'Arnage', 'Sensor', 'Administrator', 'Bentley', 'Suricata suricatta', 'http://dummyimage.com/201x100.png/5fa2dd/ffffff', '14eba29847f1e5c603c6b408a7d63edfb4814428', 'Reserved', 'Maintenance'),
(193, '3FZ6608H2G', 'Legacy', 'Microcontroller', 'Employee', 'Subaru', 'Spilogale gracilis', 'http://dummyimage.com/160x100.png/dddddd/000000', '7c1c23c1dbab2fbef849e214e1e20d5c1fd8ad6b', 'Broken', 'Borrowed'),
(194, '6TF8277N9F', 'Escort', 'Car', 'Executive', 'Ford', 'Dasypus novemcinctus', 'http://dummyimage.com/139x100.png/5fa2dd/ffffff', '612f3afe3172f77b7a958490dd71e1e1e2d90c23', 'Maintenance', 'Broken'),
(195, '5VO1328V0Z', 'Ram 3500', 'Microcontroller', 'Administrator', 'Dodge', 'Paraxerus cepapi', 'http://dummyimage.com/205x100.png/ff4444/ffffff', '0535746f6831a1d64157de6e14e21c788ff31c71', 'Borrowed', 'Reserved'),
(196, '1SL6338Y3G', 'C-Class', 'Microcontroller', 'Employee', 'Mercedes-Benz', 'Dendrocitta vagabunda', 'http://dummyimage.com/149x100.png/ff4444/ffffff', '52be815a15edc4997b7a9bf9b17d245e20c92d48', 'Broken', 'Available'),
(197, '8NB4559B1C', 'Spectra', 'Sensor', 'Employee', 'Kia', 'Colobus guerza', 'http://dummyimage.com/154x100.png/cc0000/ffffff', '58fd421bb1df11aa499b410f12f21deea1a66b9b', 'Broken', 'Available'),
(198, '7KZ2329Q8Q', 'V70', 'Laptop', 'Administrator', 'Volvo', 'Eudyptula minor', 'http://dummyimage.com/142x100.png/cc0000/ffffff', '99077425540648a6127321590e56b6d70320efed', 'Borrowed', 'Available'),
(199, '3RX1818T1I', 'Elise', 'Microcontroller', 'Administrator', 'Lotus', 'Eolophus roseicapillus', 'http://dummyimage.com/242x100.png/dddddd/000000', 'ea7334acff7b41fdcc6505e8cc3740fe584de78d', 'Available', 'Borrowed'),
(200, '8JC3980A7J', 'B-Series', 'Sensor', 'Administrator', 'Mazda', 'Microcebus murinus', 'http://dummyimage.com/164x100.png/cc0000/ffffff', '3db955e99e3248988fa9411d19689343940b538b', 'Borrowed', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(10) NOT NULL,
  `transaction_status` varchar(50) NOT NULL,
  `borrower` varchar(255) NOT NULL,
  `borrowedDev_id` varchar(255) DEFAULT NULL,
  `request_time` datetime NOT NULL,
  `decision_time` datetime NOT NULL,
  `return_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_status`, `borrower`, `borrowedDev_id`, `request_time`, `decision_time`, `return_date`) VALUES
(1, 'Pending', 'Elaine Enricoso', '1NQ5277N5O', '2022-10-18 15:31:15', '2022-10-20 16:00:00', '2022-12-20 16:00:00'),
(2, 'Pending', 'Elaine Enricoso', '7GM1009U4U', '2022-10-18 15:31:24', '2022-10-22 17:30:00', '2022-12-22 17:30:00'),
(3, 'Pending', 'Elaine Enricoso', '4DF4363F0T', '2022-10-18 15:31:38', '2022-10-25 17:40:00', '2022-12-25 17:40:00'),
(4, 'Pending', 'Rovic Gabriel Tabucol', '4CE0460D69', '2022-10-18 15:32:20', '2022-10-20 19:32:00', '2022-12-20 19:32:00'),
(5, 'Pending', 'Rovic Gabriel Tabucol', '1ET4069X9A', '2022-10-18 15:32:28', '2022-10-22 19:32:00', '2022-12-22 19:32:00'),
(6, 'Pending', 'John Michael Reyes', '9XM3558J1R', '2022-10-18 15:32:53', '2022-10-20 17:32:00', '2022-12-20 17:32:00'),
(7, 'Pending', 'John Michael Reyes', '7EM2146H0P', '2022-10-18 15:32:58', '2022-10-21 18:32:00', '2022-12-21 18:32:00'),
(8, 'Pending', 'John Michael Reyes', '3MT2981I3T', '2022-10-18 15:33:06', '2022-10-24 18:33:00', '2022-12-24 18:33:00'),
(9, 'Pending', 'John Michael Reyes', '4FW2478N9N', '2022-10-18 15:33:14', '2022-10-26 19:33:00', '2022-12-26 19:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `superior` varchar(50) NOT NULL,
  `emp_role` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `emp_image` varchar(50) NOT NULL,
  `rfid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emp_id`, `emp_name`, `emp_email`, `superior`, `emp_role`, `password`, `emp_image`, `rfid`) VALUES
(1, '2022-HA001', 'Head Admin', 'admin@gmail.com', 'David Lim', 'administrator', '0192023a7bbd73250516f069df18b500', 'placeholder1.png', 'None'),
(2, '2022-E0001', 'Andrea Blancaflor', 'andrea.blancaflor@gmail.com', 'Jose Luis Reyes', 'administrator', 'ce6e92851b851beb843a47ce337bc1df', 'Andrea1.png', 'None'),
(3, '2022-E0002', 'Rovic Gabriel Tabucol', 'rovic.tabucol@gmail.com', 'Juan Dela Cruz', 'employee', '4c4501548cb1fbf146201d6b3f1828b1', 'Rovic1.jpg', 'None'),
(4, '2022-E0003', 'Elaine Enricoso', 'elaine.enricoso@gmail.com', 'Jane Doe', 'employee', '9c1533d53b02039a76402407d65a5e46', 'Elaine1.png', 'None'),
(5, '2022-E0004', 'John Michael Reyes', 'jeem@gmail.com', 'Enteng Kabisote', 'executive', '11edd5475736938f90e47017c3c51b10', 'JM1.png', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(1, 'Head', 'Admin', 'admin@gmail.com', 'admin123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

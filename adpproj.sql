-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 12:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adpproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `cityinfo`
--

CREATE TABLE `cityinfo` (
  `id` bigint(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `info` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cityinfo`
--

INSERT INTO `cityinfo` (`id`, `city`, `info`) VALUES
(1, 'Paris', 'Paris is the capital and most populous city of France, with an estimated population of 2,175,601 residents as of 2018, in an area of more than 105 square kilometres (41 square miles).Since the 17th century, Paris has been one of Europe\'s major centres of finance, diplomacy, commerce, fashion, gastronomy, science and arts. The City of Paris is the centre and seat of government of the region and province of Île-de-France, or Paris Region, which has an estimated population of 12,174,880, or about 18 percent of the population of France as of 2017.'),
(2, 'Seoul', 'Seoul is the capital and largest metropolis of South Korea. Seoul has a population of 9.7 million people, and forms the heart of the Seoul Capital Area with the surrounding Incheon metropolis and Gyeonggi province. Considered to be a global city, Seoul was the world\'s 4th largest metropolitan economy in 2014 after Tokyo, New York City and Los Angeles.'),
(3, 'Kerala', 'Kerala, a state on India\'s tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. It\'s known for its palm-lined beaches and backwaters, a network of canals. Inland are the Western Ghats, mountains whose slopes support tea, coffee and spice plantations as well as wildlife.'),
(4, 'Tokyo', 'Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city\'s many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum).'),
(5, 'Giza', 'Giza is an Egyptian city on the west bank of the Nile, near Cairo. The Giza Plateau is home to iconic Egyptian monuments, including 3 tall pyramids built as royal mausoleums around the 26th century B.C. The largest, the Great Pyramid, is King Khufu’s tomb. '),
(6, 'Rio de Janeiro', 'Rio de Janeiro is a huge seaside city in Brazil, famed for its Copacabana and Ipanema beaches, 38m Christ the Redeemer statue atop Mount Corcovado and for Sugarloaf Mountain, a granite peak with cable cars to its summit. The city is also known for its sprawling favelas (shanty towns).'),
(7, 'Sydney', 'Sydney, capital of New South Wales and one of Australia\'s largest cities, is best known for its harbourfront Sydney Opera House, with a distinctive sail-like design. Massive Darling Harbour and the smaller Circular Quay port are hubs of waterside life, with the arched Harbour Bridge and esteemed Royal Botanic Garden nearby.'),
(8, 'New York', 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.'),
(9, 'Vancouver', 'Vancouver, a bustling west coast seaport in British Columbia, is among Canada’s densest, most ethnically diverse cities. A popular filming location, it’s surrounded by mountains, and also has thriving art, theatre and music scenes.'),
(10, 'Dubai', 'Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline.');

-- --------------------------------------------------------

--
-- Table structure for table `dubai`
--

CREATE TABLE `dubai` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dubai`
--

INSERT INTO `dubai` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'DU001', 'Burj Khalifa', 'The Burj Khalifa, known as the Burj Dubai prior to its inauguration in 2010, is a skyscraper in Dubai, United Arab Emirates. With a total height of 829.8 m and a roof height of 828 m, the Burj Khalifa has been the tallest structure and building in the world since its topping out in 2009.', 'upload.wikimedia.org/wikipedia/en/thumb/9/93/Burj_Khalifa.jpg/360px-Burj_Khalifa.jpg'),
(2, 'DU002', 'Burj Al Arab', 'The Burj Al Arab is a luxury hotel located in the city of Dubai, United Arab Emirates. Managed by Jumeirah hotel group, it is one of the tallest hotels in the world, although 39% of its total height is made up of non-occupiable space. Burj Al Arab stands on an artificial island that is 280 m from Jumeirah Beach and is connected to the mainland by a private curving bridge. ', 'upload.wikimedia.org/wikipedia/en/thumb/2/2a/Burj_Al_Arab%2C_Dubai%2C_by_Joi_Ito_Dec2007.jpg/360px-Burj_Al_Arab%2C_Dubai%2C_by_Joi_Ito_Dec2007.jpg'),
(3, 'DU003', 'The Dubai Mall', 'The Dubai Mall is a shopping mall in Dubai. It is the largest mall in the world by total land area, and the 26th-largest shopping mall in the world by gross leasable area, tying with West Edmonton Mall and Fashion Island —both of which are older than it. It has a total retail floor area of 502,000 square metres. Located in Dubai, United Arab Emirates, it is part of the 20-billion-dollar Downtown complex adjacent to the iconic Burj Khalifa, and includes over 1,200 shops.', 'upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Dubai_mall_indoor.JPG/405px-Dubai_mall_indoor.JPG'),
(4, 'DU004', 'Ski Dubai', 'Ski Dubai is an indoor ski resort with 22,500 square meters of indoor ski area. The park maintains a temperature of -1 degree to 2 degrees Celsius throughout the year. It is a part of the Mall of the Emirates, one of the largest shopping malls in the world, located in Dubai, United Arab Emirates. It was developed by Majid Al Futtaim Group, which also operates the Mall of the Emirates. ', 'upload.wikimedia.org/wikipedia/commons/thumb/0/07/Ski_Dubai_-_Outside_View.jpg/360px-Ski_Dubai_-_Outside_View.jpg'),
(5, 'DU005', 'The Dubai Fountain', 'The Dubai Fountain is a choreographed fountain system located on the 12 hectare manmade Burj Khalifa Lake, at the center of the Downtown Dubai development in Dubai, United Arab Emirates. ', 'upload.wikimedia.org/wikipedia/commons/thumb/c/c9/The_Dubai_Fountain_02.jpg/1215px-The_Dubai_Fountain_02.jpg'),
(6, 'DU006', 'Dubai Miracle Garden', 'The Dubai Miracle Garden is a flower garden located in the district of Dubailand, Dubai, United Arab Emirates. The garden was launched on Valentine\'s Day in 2013. The garden occupies over 72,000 square metres, making it the world\'s largest natural flower garden featuring over 50 million flowers and 250 million plants.', 'upload.wikimedia.org/wikipedia/commons/thumb/9/94/Miracle_Garden_1.jpg/360px-Miracle_Garden_1.jpg'),
(7, 'DU007', 'Wild Wadi Waterpark', 'The Wild Wadi Water Park is an outdoor water park in Dubai, United Arab Emirates. Situated in the area of Jumeirah, next to the Burj Al Arab and the Jumeirah Beach Hotel, the water park is operated by Jumeirah International, a Dubai-based hotelier. Wild Wadi has a heated/cooled wave pool, multiple water slides and two artificial surfing machines. ', 'upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Wild-wadi.jpg/330px-Wild-wadi.jpg'),
(8, 'DU008', 'Jumeirah Beach Hotel', 'Jumeirah Beach Hotel is a luxury hotel in Dubai, United Arab Emirates. The hotel, which opened in 1997, is operated by the Dubai-based hotelier Jumeirah. The hotel contains 598 rooms and suites, 19 beachfront villas, and 20 restaurants and bars.', 'upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Jumeira_Beach_Hotel_-_panoramio.jpg/360px-Jumeira_Beach_Hotel_-_panoramio.jpg'),
(9, 'DU009', 'Madinat Jumeirah', 'Madinat Jumeirah the Arabian Resort - Dubai is a 5 star resort in Dubai. It is the largest resort in the Emirate, spreading across over 40 hectares of landscapes and gardens. It is designed to resemble a traditional Arabian town. The resort comprises three boutique hotels and a courtyard of 29 summer houses called Jumeirah Dar Al Masyaf.', 'upload.wikimedia.org/wikipedia/commons/thumb/6/64/Madinat_Jumeirah_%28C%29.jpg/390px-Madinat_Jumeirah_%28C%29.jpg'),
(10, 'DU010', 'Dubai Frame', 'The Dubai Frame is an architectural landmark in Zabeel Park, Dubai. It has been described by The Guardian newspaper as \"the biggest picture frame on the planet, ” however is also controversial as the \"biggest stolen building of all time.” The project was conceived by Fernando Donis, and selected as the winner of a design competition by the Government of Dubai. ', 'upload.wikimedia.org/wikipedia/commons/thumb/3/31/Dubaiframe.jpg/360px-Dubaiframe.jpg'),
(11, 'DU011', 'Mall of the Emirates', 'Mall of the Emirates is a shopping mall in Dubai. Developed and owned by Majid Al Futtaim Properties, it opened in November 2005 and is located at interchange four on Sheikh Zayed road. The multi-level shopping mall currently features more than 630 retail outlets, 7900 parking spaces, over 100 restaurants and cafés, 80 luxury stores and 250 flagship stores.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mall_of_the_Emirates_%283679338750%29.jpg/300px-Mall_of_the_Emirates_%283679338750%29.jpg'),
(12, 'DU012', 'Jumeirah Beach', 'Jumeira Beach is a white sand beach that is located and named after the Jumeirah district of Dubai, United Arab Emirates, on the coast of the Persian Gulf. It stretches along the coast south of the city\'s historic district to the junction with The Palm Jumeirah and terminates between the southern end of the Jumeirah Beach Residence and the port facilities at Jebel Ali. ', 'upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Jumeirah_Beach_towards_the_Southwest.jpg/330px-Jumeirah_Beach_towards_the_Southwest.jpg'),
(13, 'DU013', 'Legoland® Dubai', 'Legoland Dubai is a family theme park in Dubai. It opened on October 31, 2016. It is the first Legoland park in the Middle East and was the seventh worldwide.', 'upload.wikimedia.org/wikipedia/en/1/1a/Legoland_Dubai_logo.png'),
(14, 'DU014', 'BollywoodParks™ Dubai', 'Amusement park with a Bollywood theme\r\n', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQWeF2KhYz2eGYm0ZStURjryCifUX-0x5DoMsfbtl8BzNx7eOpCqlBBYnv9UfvUgsuSGjdh68Wspbsx76R4OEAEdw'),
(15, 'DU015', 'Dubai Opera', 'Dubai Opera is a 2,000-seat, multi-format, performing arts centre, which is located within The Opera District in Downtown Dubai. It was developed by Emaar Properties to host a variety of performances and events including theatre, opera, ballet, concerts, conferences and exhibitions.', 'upload.wikimedia.org/wikipedia/en/thumb/6/63/DubaiOpera.jpg/413px-DubaiOpera.jpg'),
(16, 'DU016', 'Dubai Gold Souk', 'Dubai Gold Souk or Gold Souk, is a traditional market in Dubai, UAE. The souk is located in Dubai\'s commercial business district in Deira, in the locality of Al Dhagaya. The souk consists of over 380 retailers, most of whom are jewelry traders. Some of the shops are as old as four decades, while some are as new as a year. The major items of mall includes Gold, Platinum, Diamonds and sometimes also deals in silver. ', 'upload.wikimedia.org/wikipedia/commons/thumb/4/43/Dubai_Gold_Souk_on_31_May_2007_Pict_1.jpg/450px-Dubai_Gold_Souk_on_31_May_2007_Pict_1.jpg'),
(17, 'DU017', 'Dubai Creek', 'Dubai Creek is a saltwater creek located in Dubai, United Arab Emirates. Previously, it extended to Ras Al Khor Wildlife Sanctuary but as part of the new Dubai canal it extends through to the Persian Gulf. Some sources say that the creek extended as far inland as Al Ain, and that the Ancient Greeks called it River Zara. ', 'upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Dubai_Creek%2C_UAE_%284325886562%29.jpg/360px-Dubai_Creek%2C_UAE_%284325886562%29.jpg'),
(18, 'DU018', 'Jumeirah Mosque', 'Jumeirah Mosque is a mosque in Dubai, Emirate of Dubai, United Arab Emirates. Construction began in 1976; the mosque is built in traditional Fatimid style which originated from Syria and Egypt. Opened in 1979, the Jumeirah Mosque visit has been a key activity under the \'Open Doors. Open Minds.\' programs of the Sheikh Mohammed Centre for Cultural Understanding.', 'upload.wikimedia.org/wikipedia/en/thumb/3/30/Jumeira_Mosque_Dubai-2.jpg/330px-Jumeira_Mosque_Dubai-2.jpg'),
(19, 'DU019', 'Jumeirah Emirates Towers Hotel', 'Jumeirah Emirates Hotel Tower, also known as Emirates Tower Two, is a 52-level hotel in the city of Dubai, United Arab Emirates. The hotel includes 40 luxury suites and is operated by Jumeirah Group. Connected with the Emirates Office Tower by a retail boulevard, the two towers form the Emirates Towers complex. ', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQXDMEKMMDzJ1DSEpOLMQzquaHwyA7xd2tcFPIT-jbMSRqxYy7rcRzXl2mUfX3CBVt5czV-eoP3WoXNXld5zqL5sw'),
(20, 'DU020', 'Dubai Spices Souk', 'Dubai Spice Souk or the Old Souk is a traditional market in Dubai, United Arab Emirates. The Spice Souk is located in eastern Dubai, in Deira and is adjacent to the Dubai Gold Souk. The Spice Souk, situated on Baniyas Street, is in the locality of Al Ras. The souk comprises several narrow lanes which are lined with open and closed-roof stores. ', 'upload.wikimedia.org/wikipedia/commons/thumb/9/9a/UAE_Dubai_Spice_Souq_img1_asv2018-01.jpg/300px-UAE_Dubai_Spice_Souq_img1_asv2018-01.jpg'),
(21, 'DU021', 'Alserkal Avenue', 'Alserkal Avenue is an industrial compound hosting warehouses in the industrial zone of Al Quoz, in Dubai. Recently the area has become an arts and culture district for Dubai with lineup of galleries, facilities and platforms, such as Alserkal Avenue that houses residencies for local and global artists. ', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSKFYVH1ymqn1yJbp_UDSz0KNrzxy9hRNjIeC_Or47BmrRHSQX8Ta5IOXTJj0f7A6q2J-zO0LNA51Yz-IwV96Mywg');

-- --------------------------------------------------------

--
-- Table structure for table `giza`
--

CREATE TABLE `giza` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giza`
--

INSERT INTO `giza` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'GI001', 'The Egyptian Museum', 'The Museum of Egyptian Antiquities, known commonly as the Egyptian Museum or Museum of Cairo, in Cairo, Egypt, is home to an extensive collection of ancient Egyptian antiquities. It has 120,000 items, with a representative amount on display and the remainder in storerooms. Built in 1901 by the Italian construction company, Garozzo-Zaffarani, to a design by the French architect Marcel Dourgnon, the edifice is one of the largest museums in the region.', 'upload.wikimedia.org/wikipedia/commons/thumb/7/71/The_Egyptian_Museum.jpg/330px-The_Egyptian_Museum.jpg'),
(2, 'GI002', 'Giza Necropolis', 'The Giza Pyramid Complex, also called the Giza Necropolis, is the site on the Giza Plateau in Greater Cairo, Egypt that includes the Great Pyramid of Giza, the Pyramid of Khafre, and the Pyramid of Menkaure, along with their associated pyramid complexes and the Great Sphinx of Giza. All were built during the Fourth Dynasty of the Old Kingdom of Ancient Egypt. The site also includes several cemeteries and the remains of a workers village. ', 'en.wikipedia.org/wiki/File:Pyramids_of_the_Giza_Necropolis.jpg'),
(3, 'GI003', 'Great Sphinx of Giza', 'The Great Sphinx of Giza, commonly referred to as the Sphinx of Giza or just the Sphinx, is a limestone statue of a reclining sphinx, a mythical creature. Facing directly from west to east, it stands on the Giza Plateau on the west bank of the Nile in Giza, Egypt. The face of the Sphinx appears to represent the pharaoh Khafre. Cut from the bedrock, the original shape of the Sphinx has been restored with layers of limestone blocks.', 'upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Great_Sphinx_of_Giza_May_2015.JPG/375px-Great_Sphinx_of_Giza_May_2015.JPG'),
(4, 'GI004', 'Salah Al-Din Al-Ayoubi Castle', 'The Citadel of Cairo or Citadel of Saladin is a medieval Islamic-era fortification in Cairo, Egypt, built by Salah ad-Din and further developed by subsequent Egyptian rulers. It was the seat of government in Egypt and the residence of its rulers for nearly 700 years from the 13th to the 19th centuries. Its location on a promontory of the Mokattam hills near the center of Cairo commands a strategic position overlooking the city and dominating its skyline.', 'upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flickr_-_HuTect_ShOts_-_Citadel_of_Salah_El.Din_and_Masjid_Muhammad_Ali_%D9%82%D9%84%D8%B9%D8%A9_%D8%B5%D9%84%D8%A7%D8%AD_%D8%A7%D9%84%D8%AF%D9%8A%D9%86_%D8%A7%D9%84%D8%A3%D9%8A%D9%88%D8%A8%D9%8A_%D9%88%D9%85%D8%B3%D8%AC%D8%AF_%D9%85%D8%AD%D9%85%D8%AF_%D8%B9%D9%84%D9%8A_-_Cairo_-_Egypt_-_17_04_2010_%284%29.jpg/375px-thumbnail.jpg'),
(5, 'GI005', 'Mosque of Muhammad Ali', 'The Great Mosque of Muhammad Ali Pasha or Alabaster Mosque is a mosque situated in the Citadel of Cairo in Egypt and was commissioned by Muhammad Ali Pasha between 1830 and 1848. Situated on the summit of the citadel, this Ottoman mosque, the largest to be built in the first half of the 19th century, is, with its animated silhouette and twin minarets, the most visible mosque in Cairo. ', 'upload.wikimedia.org/wikipedia/commons/thumb/4/49/%D8%AC%D8%A7%D9%85%D8%B9_%D9%85%D8%AD%D9%85%D8%AF_%D8%B9%D9%84%D9%8A.JPG/330px-%D8%AC%D8%A7%D9%85%D8%B9_%D9%85%D8%AD%D9%85%D8%AF_%D8%B9%D9%84%D9%8A.JPG'),
(6, 'GI006', 'Gran Museo Egipcio', 'The Grand Egyptian Museum, also known as the Giza Museum, is an archaeological museum under construction in Giza, Egypt. When inaugurated, the GEM will be the largest archaeological museum in the world. It will house artifacts of ancient Egypt, including the complete Tutankhamun collection; many pieces will be displayed for the first time. The museum is sited on a plot of land of about 480,000 square metres approximately 2 kilometres from the Giza pyramid complex and is part of a new master plan for the Giza Plateau called Giza 2030. ', 'upload.wikimedia.org/wikipedia/commons/thumb/8/89/Grand_Egyptian_Museum_2019-11-07j.jpg/360px-Grand_Egyptian_Museum_2019-11-07j.jpg'),
(7, 'GI007', 'Giza Plateau', 'The Giza Plateau is a plateau in Giza, on the outskirts of Cairo, Egypt, site of the Fourth Dynasty Giza Necropolis, which includes the Great Pyramids of Khufu, Khafre and Menkaure, the Sphinx, several cemeteries, a workers\' village and an industrial complex. The plateau is elevated approximately 60 meters above sea-level.', 'upload.wikimedia.org/wikipedia/commons/thumb/9/94/Giza-pyramids.JPG/450px-Giza-pyramids.JPG'),
(8, 'GI008', 'Pyramid of Khafre', 'The Pyramid of Khafre or of Chephren is the second-tallest and second-largest of the 3 Ancient Egyptian Pyramids of Giza and the tomb of the Fourth-Dynasty pharaoh Khafre, who ruled c. 2558−2532 BC. ', 'upload.wikimedia.org/wikipedia/commons/thumb/7/71/Pyramid_of_Khafre_Giza_Egypt_in_2015_2.jpg/345px-Pyramid_of_Khafre_Giza_Egypt_in_2015_2.jpg'),
(9, 'GI009', 'The Hanging Church', 'Saint Virgin Mary\'s Coptic Orthodox Church, also known as the Hanging Church, is one of the oldest churches in Egypt and the history of a church on this site dates to the third century. It belongs to the Coptic Orthodox Church of Alexandria.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Kairo_Hanging_Church_BW_1.jpg/330px-Kairo_Hanging_Church_BW_1.jpg'),
(10, 'GI010', 'The Coptic Museum', 'The Coptic Museum is a museum in Coptic Cairo, Egypt with the largest collection of Coptic Christian artifacts in the world. It was founded by Marcus Simaika in 1908 to house Coptic antiquities. The museum traces the history of Egypt from its beginnings to the present day. It was erected on 8,000 square meter land offered by the Coptic Orthodox Church of Alexandria, under the guardianship of Pope Cyril V.', 'upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Kairo_-_Altkairo_05.jpg/330px-Kairo_-_Altkairo_05.jpg'),
(11, 'GI011', 'Pyramid of Menkaure', 'The Pyramid of Menkaure is the smallest of the three main Pyramids of Giza, located on the Giza Plateau in the southwestern outskirts of Cairo, Egypt. It is thought to have been built to serve as the tomb of the Fourth Dynasty Egyptian Pharaoh Menkaure.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/38/Cairo%2C_Gizeh%2C_Pyramid_of_Menkaure%2C_Egypt%2C_Oct_2005.jpg/450px-Cairo%2C_Gizeh%2C_Pyramid_of_Menkaure%2C_Egypt%2C_Oct_2005.jpg'),
(12, 'GI012', 'Khufu Ship', 'The Giza Solar boat museum is located in Egypt. It was constructed around 1985 and is dedicated to display the reconstructed Khufu solar ship. ', 'upload.wikimedia.org/wikipedia/commons/thumb/4/45/Cairo_-_Pharaons_funeral_ships_museum_outdoors.JPG/330px-Cairo_-_Pharaons_funeral_ships_museum_outdoors.JPG'),
(13, 'GI013', 'The National Museum of Egyptian Civilization', 'The National Museum of Egyptian Civilization is a large museum in the ancient city of Fustat, now part of Cairo, Egypt. The museum partially opened in February 2017 and will display a collection of 50,000 artefacts, presenting Egyptian civilization from prehistoric times to the present day.', 'lh5.googleusercontent.com/p/AF1QipNG5ad95-_oBHApMOnXvK0SjdKKVCIbi3jBANyR=w580-h325-n-k-no'),
(14, 'GI014', 'Prince Mohamed Ali Palace ', 'The Manial Palace and Museum is a former Alawiyya dynasty era palace and grounds on Rhoda Island on the Nile. It is located in the Sharia Al-Saray area in the El-Manial district of southern Cairo, Egypt. The palace and estate has been preserved as an Antiquities Council directed historic house museum and estate, reflecting the settings and lifestyle of the late 19th- and early 20th-century Egyptian royal prince and heir apparent. T', 'upload.wikimedia.org/wikipedia/commons/thumb/c/cd/A_Room_in_Mohamed_ali_Palace.jpg/360px-A_Room_in_Mohamed_ali_Palace.jpg'),
(15, 'GI015', 'Synagogue Ben Ezra', 'The Ben Ezra Synagogue, sometimes referred to as the El-Geniza Synagogue or the Synagogue of the Levantines, is situated in the Fustat part of Old Cairo, Egypt. According to local folklore, it is located on the site where baby Moses was found. This was the synagogue whose geniza or store room was found in the 19th century to contain a treasure of forgotten, stored-away Hebrew, Aramaic and Judeo-Arabic secular and sacred manuscripts.', 'upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Ben_Ezra_Synagogue-1.jpg/330px-Ben_Ezra_Synagogue-1.jpg'),
(16, 'GI016', 'St Sergius and St Bacchus Church', 'Saints Sergius and Bacchus Church, also known as Abu Serga, in Coptic Cairo is one of the oldest Coptic churches in Egypt, dating back to the 4th century.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Cairo%2C_chiesa_di_san_sergio_01.JPG/330px-Cairo%2C_chiesa_di_san_sergio_01.JPG'),
(17, 'GI017', 'Giza Zoo', 'The Giza Zoo is a zoological garden in Giza, Egypt. It is one of the few green areas in the city, and includes Giza\'s largest park. The zoo covers about 80 acres, and is home to many endangered species, as well as a selection of endemic fauna. The first to be built in the Middle East, rare species have been successfully bred in the zoo—including the first California sea lion to be born in the region. ', 'upload.wikimedia.org/wikipedia/commons/thumb/8/86/Sinai_Leopard_in_Giza_Zoological_Museum.jpg/255px-Sinai_Leopard_in_Giza_Zoological_Museum.jpg'),
(18, 'GI018', 'A\'mr ibn Al-A\'as Mosque', 'The Mosque of Amr ibn al-As, or Taj al-Jawame\', or Masjid Ahl ar-Rayah, or Jame’ al-Ateeq, was originally built in 641–642 AD, as the center of the newly founded capital of Egypt, Fustat. The original structure was the first mosque ever built in Egypt and the whole of Africa. For 600 years, the mosque was also an important center of Islamic learning until Al-Muizz\'s Al-Azhar Mosque in Islamic Cairo replaced it. Through the twentieth century, it was the fourth largest mosque in the Islamic world. ', 'upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mosque_Amr_ibn_Al-As_Entrance.jpg/330px-Mosque_Amr_ibn_Al-As_Entrance.jpg'),
(19, 'GI019', 'Gezira Island', 'Gezira is an island in the Nile River, in central Cairo, Egypt. The southern portion of the island contains the Gezira district, and the northern third contains the Zamalek district. Gezira is west of downtown Cairo and Tahrir Square, connected across the Nile by four bridges each on the east and west sides, the Qasr El Nil Bridge, 15th of May Bridge, Al-Gala\'a Brigde and 6th October Bridge.', 'upload.wikimedia.org/wikipedia/commons/7/75/Zamalek_Arial.jpg'),
(20, 'GE020', 'Fortress of Babylon', 'Babylon Fortress is an ancient fortress in the Nile Delta, located in the area known today as Coptic Cairo. It is situated in the former area of the Heliopolite Nome, upon the east bank of the Nile, at latitude 30°N, near the commencement of the Pharaonic Canal, from the Nile to the Red Sea. It was at the boundary between Lower and Middle Egypt, where the river craft paid tolls when ascending or descending the Nile.', 'upload.wikimedia.org/wikipedia/commons/thumb/5/5a/GD-EG-Caire-Copte074.JPG/330px-GD-EG-Caire-Copte074.JPG'),
(21, 'GE021', 'Pyramid of Djedefre', 'The Pyramid of Djedefre consists today mostly of ruins located at Abu Rawash in Egypt. It is Egypt\'s northernmost pyramid and is believed to have been built by Djedefre, son and successor to king Khufu.', 'upload.wikimedia.org/wikipedia/commons/thumb/1/17/Abu_Rawash_Pyramid.jpg/330px-Abu_Rawash_Pyramid.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kerala`
--

CREATE TABLE `kerala` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kerala`
--

INSERT INTO `kerala` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'KE001', 'Eravikulam National Park', 'Eravikulam National Park is a 97 km² national park located along the Western Ghats in the Idukki and Ernakulam districts of Kerala in India. Situated between 10º05\'N and 10º20\' north, and 77º0\' and 77º10\' east, it is the first national park in Kerala. Eravikulam National Park is administered by the Kerala Department of Forests and Wildlife, Munnar Wildlife Division.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSf4MYZVZYpL45Eczi8E4MX337ySzz_TFP1kpBkqCScn6CH37BEwJ-nTKV4T_1MbSIGl9-M4G2tb3rhg_DB_eiVsQ'),
(2, 'KE002', 'Varkala Beach', 'Varkala Beach, also known as Papanasham Beach is a beach situated in Varkala Town of Varkala Municipality in Thiruvananthapuram District, Kerala, India. The beach skirts the Arabian Sea, part of the Indian Ocean. The word \"papanasham\" means to wash away sins', 'https://q=tbn:ANd9GcSFwwA72JXDOvLShOsEvfiQGNd-0kuBTQrALemUs-BTrxpO23HcM95LJNA-c2HZnE_lNNpAnGzRs1DmYfg6U262JQ'),
(3, 'KE003', 'Athirappilly Water Falls', 'Athirappilly Falls, is situated in Athirappilly Panchayat in Chalakudy Taluk of Thrissur District in Kerala, India on the Chalakudy River, which originates from the upper reaches of the Western Ghats at the entrance to the Sholayar ranges. It is the largest waterfall in Kerala, which stands tall at 80 feet. Just a short drive from Athirappilly to the Vazhachal falls, which is close to dense green forests that are home to many endangered and endemic species of flora and fauna.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQqFPb9aY_eFA9LuCXkNsCq02n1oeWHQbeIBSk2dVm1VnUHk8FlzUnaN0SKkQhQ6QOOgYZzsMglA4xyuzGkpr8ivA'),
(4, 'KE004', 'Sree Padmanabhaswamy Temple', 'The Padmanabhaswamy temple is a Hindu temple located in Thiruvananthapuram, the state capital of Kerala, India. The name of the city of Thiruvananthapuram in Malayalam translates to \"The City of Lord Ananta\", referring to the deity of the Padmanabhaswamy temple. The temple is built in an intricate fusion of the Chera style and the Dravidian style of architecture, featuring high walls, and a 16th-century gopura.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQVgdyp5QZQ17x7YSH7G2YsCDRvvVosOsi8mnh0ruKXQ3T0za0Bi0ENc9t9qKjlmyg7UhlHKKdei0cm3ciGxsRf3g'),
(5, 'KE005', 'Cherai Beach', 'Cherai Beach is a beach located in Cherai in the northern side of Vypin Island, a suburb of the city Kochi in the state of Kerala, India. One of the most visited beaches in the state, it is situated at around 25 km from downtown Kochi and 20 km from Cochin International Airport.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfMqwWl7V4d9fjYPFsHHdFMWOAXn4n8bVVDWsgML7Hf1SGKwq3GciGq3lctHvYDIjm2kSp0Qjs-bvX8JGenAW0rw'),
(6, 'KE006', 'Mattancherry Palace', 'The Mattancherry Palace is a Portuguese palace popularly known as the Dutch Palace, in Mattancherry, Kochi, in the Indian state of Kerala which features Kerala murals depicting portraits and exhibits of the Rajas of Kochi. The palace was included in the \"tentative list\" of UNESCO World Heritage Site.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJn4KgQ9rdECo9yUqdMm-TflABBdej_7O2G19oNrYu_IpQSWUtrqyt1bxHOFHpVEZfevfUaXPJ1CpIUFAWsQoImA'),
(7, 'KE007', 'Edakkal Caves', 'Edakkal Caves are two natural caves at a remote location at Edakkal, 25 km from Kalpetta in the Wayanad district of Kerala in India\'s Western Ghats. They lie 1,200 m above sea level on Ambukutty Mala, near an ancient trade route connecting the high mountains of Mysore to the ports of the Malabar coast. Inside the caves are pictorial writings believed to date to at least 6,000 BCE, from the Neolithic man, indicating the presence of a prehistoric settlement in this region. ', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSGHXDc_v1rwPySSg_OaUoEkj6-FWGoQP9zDvUMvOvAfvhP_jv6IPi_jwGPVgBoGt9wsO6iIGPRyQsmfsaSPKY5Qw'),
(8, 'KE008', 'Silent Valley National Park', 'Silent Valley National Park is a national park in Kerala, India. It is located in the Nilgiri hills, has a core area of 89.52 km², which is surrounded by a buffer zone of 148 km². This national park has some rare species of flora and fauna. This area was explored in 1847 by the botanist Robert Wight. It is located in the border of Mannarkkad Taluk of Palakkad district, Nilambur Taluk of Malappuram district, Kerala, and Nilgiris district of Tamil Nadu.', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcScm5cfWv1V8cFX_zsQduCGqtRve3twv9AXAdZGO49VTCGUYsb9-UKGcKPkfHEfSLg0xzN4b3fJb6mHD3rF1vZT-Q'),
(9, 'KE009', 'Chembra', 'Chembra Peak is a mountain in the state of Kerala, India, with an elevation of 2,100 m above sea level. The highest peak in the Wayanad hills and one of the highest peaks in the Western Ghats, adjoining the Nilgiri Hills and Vellarimala, it is located in the Wayanad district of Kerala, near the town of Meppadi and 8 km south of Kalpetta.', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQuP3xEfg0Fsu25sBjzEzU53kIVZ5m6kk2_oF2OcZbVQJbfxEYeMI_7fx8a3Wn4MGLYwFgCqGDeD2s8dvY0TjizYA'),
(10, 'KE010', 'Alappuzha Beach', 'Alappuzha Beach is a beach in Alappuzha town and a tourist attraction in Kerala, India. Beach has an old pier which extend to sea is over 150 years old. Alappuzha beach host many events annually like Alappuzha beach festival, Sand art festival and many more.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ_OzPBaE50EBFcAi9Mhe-vMBhHvKaQs74Cr2_EitbUyKzMcPorKFWeJ_oHmpqZNFX50sIHOdxtHaOz2V3QBxXxvw'),
(11, 'KE011', 'St. Francis CSI Church', 'Saint Francis Church, in Fort Kochi, Kochi, originally built in 1503, is one of the oldest European churches in India and has great historical significance as a mute witness to the European colonial struggle in the subcontinent. The Portuguese explorer Vasco da Gama died in Kochi in 1524 when he was on his third visit to India. His body was originally buried in this church.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ68DPKMTHpUsB3E97k0MtPUHegizUNyGHNgYPguZ6Qr43FF667ncnxVa7lpNHOVa-3VauykbN1QKEZLhzK59yfBQ'),
(12, 'KE012', 'Bekal Fort', 'Bekal Fort was built by Shivappa Nayaka of Keladi in 1650 AD, at Bekal. It is the largest fort in Kerala, spreading over 40 acres.', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRjyaDufHlnIUHKaW72m6DPw56vCvFx16xZIE9kC4JQznGb7o6ayOrRdL1GHq2WLTqav_Gq4_tl4sMSVqr65zd5Qg'),
(13, 'KE013', 'Kumarakom Bird Sanctuary Observatory Tower', 'Kumarakom Bird Sanctuary is situated at Kumarakom in Kottayam taluk of Kottayam district in the Indian state of Kerala, on the banks of Vembanad Lake. Set in the Kerala Backwaters, the bird sanctuary is a favourite haunt of migratory birds.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS4dH05An4vn3UUbPEOe5B89aZNUiHhXrJp4TCxOxoA29aXfvtsBm5DEQJ14ICgICB-IHDXoSP3moaIFzyxiWq73g'),
(14, 'KE014', 'Hill Palace Museum', 'Hill Palace is an archaeological museum and palace located in the Tripunithura neighbourhood of Kochi city in the Indian state of Kerala. It is the largest archeological museum in the state and was the imperial administrative office and official residence of the Cochin Maharaja. Built in 1865, the palace complex consists of 49 buildings in the traditional architectural style, spreading across 54 acres. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTEDrBKDcCSJZCawc5oCtF3Vwcsw6wJy_N03qD2uoaSfr8ZmSn1BQ5lEHHdHkDV1QPz_0sZa_upxCDKY-iLrPcrFA'),
(15, 'KE015', 'Santa Cruz Cathedral Basilica Fort Kochi', 'The Santa Cruz Cathedral Basilica at Fort Kochi, Kochi is one of the nine Basilicas in Kerala. Counted as one of the heritage edifices of Kerala, this church is one of the finest and most impressive churches in India and visited by tourists the whole year round. It is a place of devotion as well as a center of historic significance, endowed with architectural and artistic grandeur and colours of the gothic style.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTLgpytuLaipmtfBUV2W8yuI_nAWuyTGPBsXs2H0C2qgPpkWGzAnpc0ovqbURw89YovODQMjduV0Oc6DeGwXvGDhw'),
(16, 'KE016', 'Mattupetty Dam', 'Mattupetty Dam, near Munnar in Idukki District, is a storage Concrete Gravity dam built in the mountains of Kerala, India to conserve water for hydroelectricity. It has been a vital source of power yielding along with other such dams, huge revenue to the states. The large amount of perennially available water allows wild animals and birds to flourish.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfO6Gp1HG0U8VImeQrn1TULfbbazZPtfCjYi4m2NjjboOmg_qqzBi-jb4c5Mmd0pFQqZy2Hg3FbsdLm-CXOD5t1A'),
(17, 'KE017', 'Soochipara Waterfalls', 'Soochipara Falls also known as Sentinel Rock Waterfalls is a three-tiered waterfall in Vellarimala, Wayanad, India. It is surrounded by deciduous, evergreen and montane forests. Locally referred to as Soochipara, the 15-20 minute drive from Meppadi to Sentinel Rock Waterfalls has views of a number of Wayanad\'s tea estates. The Sentinel Rock Waterfalls is 200 metres and offers a cliff face that is used for rock climbing.', 'lh5.googleusercontent.com/p/AF1QipPQGV39Ak5CPiF-5ReT4JZb9Ae2Zdzx6I1NbzIW=w464-h260-n-k-no'),
(18, 'KE018', 'Thattekad Bird Sanctuary', 'The Thattekkad Bird Sanctuary, covering an area of barely 25 km², and located about 12 km from Kothamangalam, was the first bird sanctuary in Kerala. Salim Ali, one of the best known ornithologists, described this sanctuary as the richest bird habitat on peninsular India. Thattekkad literally means flat forest, and the region is an evergreen low-land forest located between the branches of the Periyar River, the longest river in Kerala.', 'lh5.googleusercontent.com/p/AF1QipNclcS9oWzz4zXoegw0aX4mf5mSNJyJGTbMPyN5=w464-h260-n-k-no'),
(19, 'KE019', 'Ashtamudi Lake', 'Ashtamudi Lake, in the Kollam District of the Indian state of Kerala, is the most visited backwater and lake in the state. It possesses a unique wetland ecosystem and a large palm-shaped water body, second only in size to the Vembanad estuary ecosystem of the state. Ashtamudi means \'eight braids\' in the local Malayalam language. The name is indicative of the lake\'s topography with its multiple branches. The lake is also called the gateway to the backwaters of Kerala and is well known for its houseboat and backwater resorts.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQOvn03kXPKmtmnlRK2jZLjts0a02s0mhOPJFcFlGqGdX55RNTuCz4F11G853rhD2uhBNHIzBTe-7lFGREME63Nww'),
(20, 'KE020', 'Tea Museum', 'The KDHP Tea Museum is an industry and history museum situated in Munnar, a town in the Idukki district of Kerala in South India. Tata Tea Museum is its official name, but it\'s also known as Nalluthanni Estate where it is located, or Kannan Devan Hills Plantation Tea Museum.', 'lh5.googleusercontent.com/p/AF1QipPJ3qZbAXThBoYxp3Bmy0xoGB1fGzrKilSuca85=w464-h260-n-k-no'),
(21, 'KE021', 'Kuruvadweep', 'Kuruvadweep or Kuruva Island is a 950-acre protected river delta. It comprises three densely wooded uninhabited islands and a few submergible satellite islands, which lies on the banks of the tributaries of Kabini River in the Wayanad district, Kerala, India. It is uninhabited island, which is home to rare species of birds, orchids, herbal plants etc. These islands consists of dense and evergreen forest that is uninhabited and hence home to rare kinds of flora and fauna.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQuN1aTHBo1Us99AmcNvmBgXVZ1FG0-tqxO-uJUAqSEHiX6tHoGGpdLLWuORChcFbYTY7HKn9P7kdOvLJ1FwUQbmA');

-- --------------------------------------------------------

--
-- Table structure for table `newyork`
--

CREATE TABLE `newyork` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newyork`
--

INSERT INTO `newyork` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'NY001', 'Times Square', 'Times Square is a major commercial intersection, tourist destination, entertainment center, and neighborhood in the Midtown Manhattan section of New York City, at the junction of Broadway and Seventh Avenue. Brightly lit by numerous billboards and advertisements, it stretches from West 42nd to West 47th Streets, and is sometimes referred to as \"the Crossroads of the World\".', 'upload.wikimedia.org/wikipedia/commons/thumb/4/47/New_york_times_square-terabass.jpg/450px-New_york_times_square-terabass.jpg'),
(2, 'NY002', 'Empire State Building', 'The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan in New York City, United States. It was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from \"Empire State\", the nickname of the state of New York. The building has a roof height of 1,250 feet and stands a total of 1,454 feet tall, including its antenna. ', 'upload.wikimedia.org/wikipedia/commons/thumb/1/10/Empire_State_Building_%28aerial_view%29.jpg/375px-Empire_State_Building_%28aerial_view%29.jpg'),
(3, 'NY003', 'Statue of Liberty', 'The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor within New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. ', 'upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Lady_Liberty_under_a_blue_sky_%28cropped%29.jpg/330px-Lady_Liberty_under_a_blue_sky_%28cropped%29.jpg'),
(4, 'NY004', 'Central Park', 'Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan. It is the fifth-largest park in the city by area, covering 843 acres. It is the most visited urban park in the United States, with an estimated 42 million visitors annually as of 2016, and is the most filmed location in the world. ', 'upload.wikimedia.org/wikipedia/commons/thumb/1/13/Central_Park_-_The_Pond_%2848377220157%29.jpg/450px-Central_Park_-_The_Pond_%2848377220157%29.jpg'),
(5, 'NY005', 'The Metropolitan Museum of Art', 'The Metropolitan Museum of Art maintains a museum and library of art in the City of New York. Its main collections include arms and armor, ancient Near Eastern art, Asian art, costumes, drawings and prints, European sculpture and decorative arts, Greek and Roman art, Islamic art, medieval art, modern and contemporary art, musical instruments, photographs, and the Robert Lehman Collection, as well as the arts of Africa, Oceania, and the Americas.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/30/Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg/375px-Metropolitan_Museum_of_Art_%28The_Met%29_-_Central_Park%2C_NYC.jpg'),
(6, 'NY006', 'The Museum of Modern Art', 'The Museum of Modern Art (MoMA) acquires modern and contemporary art from around the world and hosts exhibits and film programs. It also supports research and publications related to its mission. MoMA\'s collection includes almost 200,000 works of art, such as paintings, sculptures, drawings, prints, and photographs.', 'upload.wikimedia.org/wikipedia/commons/thumb/8/8b/MoMa_NY_USA_1.jpg/330px-MoMa_NY_USA_1.jpg'),
(7, 'NY007', 'Brooklyn Bridge', 'The Brooklyn Bridge is a hybrid cable-stayed/suspension bridge in New York City, spanning the East River between Manhattan Island and Brooklyn on Long Island. Opened on May 24, 1883, the Brooklyn Bridge was the first fixed crossing of the East River. It was also the longest suspension bridge in the world at the time of its opening, with a main span of 1,595.5 feet and a deck 127 ft above mean high water.', 'upload.wikimedia.org/wikipedia/commons/thumb/0/00/Brooklyn_Bridge_Manhattan.jpg/495px-Brooklyn_Bridge_Manhattan.jpg'),
(8, 'NY008', 'Grand Central Terminal', 'Grand Central Terminal is a commuter rail terminal located at 42nd Street and Park Avenue in Midtown Manhattan, New York City. Grand Central is the southern terminus of the Metro-North Railroad\'s Harlem, Hudson and New Haven Lines, serving the northern parts of the New York metropolitan area. It also contains a connection to the New York City Subway at Grand Central–42nd Street station. ', 'upload.wikimedia.org/wikipedia/commons/thumb/7/71/Image-Grand_central_Station_Outside_Night_2.jpg/224px-Image-Grand_central_Station_Outside_Night_2.jpg'),
(9, 'NY009', 'Solomon R. Guggenheim Museum', 'The Solomon R. Guggenheim Museum, often referred to as The Guggenheim, is an art museum located at 1071 Fifth Avenue on the corner of East 89th Street in the Upper East Side neighborhood of Manhattan, New York City. It is the permanent home of a continuously expanding collection of Impressionist, Post-Impressionist, early Modern, and contemporary art and also features special exhibitions throughout the year.', 'upload.wikimedia.org/wikipedia/commons/thumb/6/6b/NYC_-_Guggenheim_Museum.jpg/420px-NYC_-_Guggenheim_Museum.jpg'),
(10, 'NY010', 'Rockefeller Center', 'Rockefeller Center is a large complex consisting of 19 commercial buildings covering 22 acres between 48th Street and 51st Street in Midtown Manhattan, New York City. The 14 original Art Deco buildings, commissioned by the Rockefeller family, span the area between Fifth Avenue and Sixth Avenue, split by a large sunken square and a private street called Rockefeller Plaza.', 'upload.wikimedia.org/wikipedia/commons/thumb/d/db/GE_Building_by_David_Shankbone.JPG/375px-GE_Building_by_David_Shankbone.JPG'),
(11, 'NY011', 'The High Line', 'The High Line is a 1.45-mile-long elevated linear park, greenway and rail trail created on a former New York Central Railroad spur on the west side of Manhattan in New York City. The High Line\'s design is a collaboration between James Corner Field Operations, Diller Scofidio + Renfro, and Piet Oudolf. The abandoned spur has been redesigned as a \"living system\" drawing from multiple disciplines which include landscape architecture, urban design, and ecology. ', 'upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Highline_03.jpg/435px-Highline_03.jpg'),
(12, 'NY012', 'American Museum of Natural History', 'The American Museum of Natural History is a natural history museum on the Upper West Side of Manhattan, New York City. In Theodore Roosevelt Park, across the street from Central Park, the museum complex comprises 26 interconnected buildings housing 45 permanent exhibition halls, in addition to a planetarium and a library.', 'upload.wikimedia.org/wikipedia/commons/thumb/e/ec/USA-NYC-American_Museum_of_Natural_History.JPG/435px-USA-NYC-American_Museum_of_Natural_History.JPG'),
(13, 'NY013', 'The Plaza', 'The Plaza Hotel is a luxury hotel and condominium apartment building in Midtown Manhattan in New York City. It is on the western side of Grand Army Plaza, just west of Fifth Avenue, between 58th Street and Central Park South. The Plaza Hotel is named for Grand Army Plaza, which in turn is at the southeastern corner of Central Park.', 'upload.wikimedia.org/wikipedia/commons/thumb/8/8b/New_York_-_Manhattan_-_Plaza_Hotel.jpg/360px-New_York_-_Manhattan_-_Plaza_Hotel.jpg'),
(14, 'NY014', '9/11 Memorial & Museum', 'The National September 11 Memorial & Museum is a memorial and museum in New York City commemorating the September 11, 2001 attack.', 'upload.wikimedia.org/wikipedia/commons/thumb/2/20/9.11_Memorial_Wide_Angle.jpg/450px-9.11_Memorial_Wide_Angle.jpg'),
(15, 'NY015', 'Brooklyn Museum', 'The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet (52,000 m2), the museum is New York City\'s third largest in physical size and holds an art collection with roughly 1.5 million works.', 'upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Brooklyn_Museum_Night_2015.jpg/375px-Brooklyn_Museum_Night_2015.jpg'),
(16, 'NY016', 'Brooklyn Botanic Garden', 'Brooklyn Botanic Garden is a botanical garden in the borough of Brooklyn, New York City. It was founded in 1910 and is in Mount Prospect Park in central Brooklyn, adjacent to Prospect Park and the Brooklyn Museum. The 52-acre garden holds over 14,000 taxa of plants and has nearly a million visitors each year.', 'upload.wikimedia.org/wikipedia/en/thumb/1/1c/Brooklyn_botanic_garden_fragrance_garden_gate.jpg/330px-Brooklyn_botanic_garden_fragrance_garden_gate.jpg'),
(17, 'NY017', 'Coney Island', 'Coney Island is a peninsular neighborhood and entertainment area in the southwestern section of the New York City borough of Brooklyn. The neighborhood is bounded by Brighton Beach to its east, Lower New York Bay to the south and west, and Gravesend to the north, and includes the subsections of Sea Gate to its west and Brighton Beach to its east.', 'upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Coney_Island_beach_and_amusement_parks_%28June_2016%29.jpg/450px-Coney_Island_beach_and_amusement_parks_%28June_2016%29.jpg'),
(18, 'NY018', 'St. Patrick\'s Cathedral', 'St. Patrick\'s Cathedral is a decorated Catholic cathedral in the Midtown Manhattan neighborhood of New York City. It is the seat of the archbishop of the Roman Catholic Archdiocese of New York as well as a parish church. The cathedral occupies a city block bounded by Fifth Avenue, Madison Avenue, 50th Street, and 51st Street, directly across from Rockefeller Center.', 'upload.wikimedia.org/wikipedia/commons/thumb/f/f8/St_Patrick%27s_Cathedral_-_New_York_City.jpg/330px-St_Patrick%27s_Cathedral_-_New_York_City.jpg'),
(19, 'NY019', 'Flatiron Building', 'The Flatiron Building, originally the Fuller Building, is a triangular 22-story, 285-foot-tall steel-framed landmarked building located at 175 Fifth Avenue in the eponymous Flatiron District neighborhood of the borough of Manhattan, New York City. Designed by Daniel Burnham and Frederick Dinkelberg, it was one of the tallest buildings in the city upon its 1902 completion.', 'upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Edificio_Fuller_%28Flatiron%29_en_2010_desde_el_Empire_State_crop_boxin.jpg/398px-Edificio_Fuller_%28Flatiron%29_en_2010_desde_el_Empire_State_crop_boxin.jpg'),
(20, 'NY020', 'Bryant Park', 'Bryant Park is a 9.6-acre public park located in the New York City borough of Manhattan. Privately managed, it is located between Fifth Avenue and Avenue of the Americas and between 40th and 42nd Streets in Midtown Manhattan. The eastern half of Bryant Park is occupied by the Main Branch of the New York Public Library.', 'upload.wikimedia.org/wikipedia/commons/thumb/a/a6/New-York_-_Bryant_Park.jpg/488px-New-York_-_Bryant_Park.jpg'),
(21, 'NY021', 'Bronx Zoo', 'The Bronx Zoo is a zoo within Bronx Park in the Bronx, New York. It is one of the largest zoos in the United States by area and is the largest metropolitan zoo in the United States by area, comprising 265 acres of park lands and naturalistic habitats separated by the Bronx River. On average, the zoo has 2.15 million visitors each year as of 2009. ', 'upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Bronx_Zoo_001.jpg/330px-Bronx_Zoo_001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paris`
--

CREATE TABLE `paris` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(20) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paris`
--

INSERT INTO `paris` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'PA001', 'Louvre Museum', 'The Louvre, is the worlds largest art museum and a historic monument in Paris, France, and is best known for being the home of the Mona Lisa. A central landmark of the city, it is located on the Right Bank of the Seine in the citys 1st arrondissement (district or ward).', 'upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Paris_July_2011-27a.jpg/1218px-Paris_July_2011-27a.jpg'),
(2, 'PA002', 'Eiffel Tower', 'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.', 'upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Tour_Eiffel_Wikimedia_Commons.jpg/300px-Tour_Eiffel_Wikimedia_Commons.jpg'),
(3, 'PA003', 'Notre Dame', 'Notre-Dame de Paris, referred to simply as Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité in the 4th arrondissement of Paris. The cathedral was consecrated to the Virgin Mary and considered to be one of the finest examples of French Gothic architecture. Its pioneering use of the rib vault and flying buttress, its enormous and colourful rose windows, as well as the naturalism and abundance of its sculptural decoration set it apart from the earlier Romanesque style. ', 'images.pexels.com/photos/1460145/pexels-photo-1460145.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
(4, 'PA004', 'Disneyland Paris', 'Disneyland Paris, formerly Euro Disney Resort, is an entertainment resort in Chessy, France, a town located 32 km (20 mi) east of the centre of Paris. It encompasses two theme parks, many resort hotels, Disney Nature Resorts, a shopping, dining, and entertainment complex, and a golf course, in addition to several additional recreational and entertainment venues.', 'upload.wikimedia.org/wikipedia/en/thumb/2/2d/Disneyland_Hotel%2C_Paris%2C_France%2C_2011.jpg/330px-Disneyland_Hotel%2C_Paris%2C_France%2C_2011.jpg'),
(5, 'PA005', 'River Seine', 'The Seine is a 775-kilometre-long (482 mi) river in northern France. Its drainage basin is in the Paris Basin (a geological relative lowland) covering most of northern France.', 'upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Bercy%2C_Paris_01.jpg/375px-Bercy%2C_Paris_01.jpg'),
(6, 'PA006', 'Musee d\'Orsay', 'The Musée d\'Orsay is a museum in Paris, France, on the Left Bank of the Seine. It is housed in the former Gare d\'Orsay, a Beaux-Arts railway station built between 1898 and 1900. The museum holds mainly French art dating from 1848 to 1914, including paintings, sculptures, furniture, and photography. It houses the largest collection of Impressionist and post-Impressionist masterpieces in the world.', 'upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg/345px-Pont_Royal_and_Mus%C3%A9e_d%27Orsay%2C_Paris_10_July_2020.jpg'),
(7, 'PA007', 'The Centre Pompidou', 'Centre National d\'Art et de Culture Georges-Pompidou operates and manages cultural venues, libraries, and a museum. The company was founded in 1975 and is based in Paris, France.', 'upload.wikimedia.org/wikipedia/en/thumb/9/95/Pompidou_center.jpg/360px-Pompidou_center.jpg'),
(8, 'PA008', 'Arc de Triomphe', 'The Arc de Triomphe de l\'Étoile is one of the most famous monuments in Paris, France, standing at the western end of the Champs-Élysées at the centre of Place Charles de Gaulle, formerly named Place de l\'Étoile—the étoile or \"star\" of the juncture formed by its twelve radiating avenues. The location of the arc and the plaza is shared between three arrondissements, 16th, 17th, and 8th. The Arc de Triomphe honours those who fought and died for France in the French Revolutionary and Napoleonic Wars, with the names of all French victories and generals inscribed on its inner and outer surfaces.', 'upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Arc_de_Triomphe%2C_Paris_5_February_2019.jpg/360px-Arc_de_Triomphe%2C_Paris_5_February_2019.jpg'),
(9, 'PA009', 'Palace de Versailles', 'The Palace of Versailles was the principal royal residence of France from 1682, under Louis XIV, until the start of the French Revolution in 1789, under Louis XVI. It is located in the department of Yvelines, in the region and province of Île-de-France, about 20 kilometres southwest of the centre of Paris.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/37/Palace_2%2C_Versailles_August_2013.jpg/450px-Palace_2%2C_Versailles_August_2013.jpg'),
(10, 'PA010', 'Champs Elysees', 'The Avenue des Champs-Élysées is an avenue in the 8th arrondissement of Paris, France, 1.9 kilometres long and 70 metres wide, running between the Place de la Concorde and the Place Charles de Gaulle, where the Arc de Triomphe is located. It is known for its theatres, cafés, and luxury shops, for the annual Bastille Day military parade, and as the finish of the Tour de France cycling race.', 'upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Avenue_des_Champs-%C3%89lys%C3%A9es_July_24%2C_2009_N1.jpg/345px-Avenue_des_Champs-%C3%89lys%C3%A9es_July_24%2C_2009_N1.jpg'),
(11, 'PA011', 'Sacre Coeur', 'The Basilica of the Sacred Heart of Paris, commonly known as Sacré-Cœur Basilica and often simply Sacré-Cœur, is a Roman Catholic church and minor basilica in Paris, France, dedicated to the Sacred Heart of Jesus. Sacré-Cœur Basilica is located at the summit of the butte Montmartre, the highest point in the city. It is a popular landmark, and the second-most visited monument in Paris. Sacré-Cœur Basilica has maintained a perpetual adoration of the Holy Eucharist since 1885. ', 'upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Le_sacre_coeur.jpg/390px-Le_sacre_coeur.jpg'),
(12, 'PA012', 'Luxembourg Gardens', 'The Jardin du Luxembourg, known in English as the Luxembourg Garden, colloquially referred to as the Jardin du Sénat, is located in the 6th arrondissement of Paris, France. It was created beginning in 1612 by Marie de\' Medici, the widow of King Henry IV, for a new residence she constructed, the Luxembourg Palace. The garden today is owned by the French Senate, which meets in the Palace. ', 'upload.wikimedia.org/wikipedia/commons/thumb/9/92/LuxembourgMontparnasse.JPG/420px-LuxembourgMontparnasse.JPG'),
(13, 'PA013', 'Saint Chapelle', 'The Sainte-Chapelle is a royal chapel in the Gothic style, within the medieval Palais de la Cité, the residence of the Kings of France until the 14th century, on the Île de la Cité in the River Seine in Paris, France. Construction began sometime after 1238 and the chapel was consecrated on 26 April 1248.', 'upload.wikimedia.org/wikipedia/commons/thumb/7/70/Sainte_Chapelle_-_Upper_level_1.jpg/330px-Sainte_Chapelle_-_Upper_level_1.jpg'),
(14, 'PA014', 'Tuileries Garden', 'The Tuileries Garden is a public garden located between the Louvre and the Place de la Concorde in the 1st arrondissement of Paris, France. Created by Catherine de\' Medici as the garden of the Tuileries Palace in 1564, it was eventually opened to the public in 1667 and became a public park after the French Revolution. In the 19th, 20th and 21st centuries, it was a place where Parisians celebrated, met, strolled and relaxed. ', 'upload.wikimedia.org/wikipedia/commons/thumb/5/58/Louvre_Museum_from_the_Roue_de_Paris%2C_11_July_2016.jpg/480px-Louvre_Museum_from_the_Roue_de_Paris%2C_11_July_2016.jpg'),
(15, 'PA015', 'Palais Garnier', 'The Palais Garnier or Opéra Garnier, is a 1,979-seat opera house at the Place de l\'Opéra in the 9th arrondissement of Paris, France. It was built for the Paris Opera from 1861 to 1875 at the behest of Emperor Napoleon III. Initially referred to as le nouvel Opéra de Paris, it soon became known as the Palais Garnier, \"in acknowledgment of its extraordinary opulence\" and the architect Charles Garnier\'s plans and designs, which are representative of the Napoleon III style. ', 'upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Academie_Nationale_de_Musique%2C_Paris_April_2011.jpg/330px-Academie_Nationale_de_Musique%2C_Paris_April_2011.jpg'),
(16, 'PA016', 'Moulin Rouge', 'Moulin Rouge is a cabaret in Paris, France. The original house, which burned down in 1915, was co-founded in 1889 by Charles Zidler and Joseph Oller, who also owned the Paris Olympia.', 'upload.wikimedia.org/wikipedia/commons/thumb/4/45/Moulin_Rouge_1900.jpg/330px-Moulin_Rouge_1900.jpg'),
(17, 'PA017', 'Pantheon', 'The Panthéon is a monument in the 5th arrondissement of Paris, France. It stands in the Latin Quarter, atop the Montagne Sainte-Geneviève, in the center of the Place du Panthéon, which was named after it.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Le_Panth%C3%A9on_-_The_Panth%C3%A9on_%282016%29.jpg/480px-Le_Panth%C3%A9on_-_The_Panth%C3%A9on_%282016%29.jpg'),
(18, 'PA018', 'Montparnasse Tower', 'Tour Maine-Montparnasse, also commonly named Tour Montparnasse, is a 210-metre office skyscraper located in the Montparnasse area of Paris, France. Constructed from 1969 to 1973, it was the tallest skyscraper in France until 2011, when it was surpassed by the 231-metre Tour First. It remains the tallest building in Paris outside of the La Défense business district', 'upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Cemetery_Montparnasse_for_Wikipedia.jpg/330px-Cemetery_Montparnasse_for_Wikipedia.jpg'),
(19, 'PA019', 'Les Invalides', 'Les Invalides, formally the Hôtel national des Invalides, also Hôtel des Invalides is a complex of buildings in the 7th arrondissement of Paris, France, containing museums and monuments, all relating to the military history of France, as well as a hospital and a retirement home for war veterans, the buildings’ original purpose.', 'upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Invalides_aerial_view.jpg/375px-Invalides_aerial_view.jpg'),
(20, 'PA020', 'Pont Alexandre III', 'The Pont Alexandre III is a deck arch bridge that spans the Seine in Paris. It connects the Champs-Élysées quarter with those of the Invalides and Eiffel Tower. The bridge is widely regarded as the most ornate, extravagant bridge in the city. It has been classified as a French monument historique since 1975.', 'upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Pont_Alexandre_III_depuis_pont_de_la_Concorde_Paris.jpg/420px-Pont_Alexandre_III_depuis_pont_de_la_Concorde_Paris.jpg'),
(21, 'PA021', 'Rodin Museum', 'The Rodin Museum is an art museum located in Philadelphia, Pennsylvania that contains one of the largest collections of sculptor Auguste Rodin\'s works outside Paris. Opened in 1929, the museum is administered by the Philadelphia Museum of Art.', 'upload.wikimedia.org/wikipedia/commons/thumb/3/30/Philly042107-009-RodinMuseum.jpg/300px-Philly042107-009-RodinMuseum.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) NOT NULL,
  `tripid` bigint(20) NOT NULL,
  `usernum` bigint(20) NOT NULL,
  `dest` varchar(25) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `tripid`, `usernum`, `dest`, `start`, `end`) VALUES
(1, 6864154986, 0, 'Paris', '2021-06-15', '2021-07-11'),
(2, 9549739, 0, 'Chennai', '2021-06-08', '2021-07-10'),
(3, 53031, 0, 'Seoul', '2021-06-02', '2021-06-20'),
(4, 4220918351, 0, 'Paris', '2021-06-30', '2021-07-05'),
(5, 757521, 0, 'Paris', '2021-06-29', '2021-07-03'),
(6, 560297, 0, 'Paris', '2021-06-29', '2021-07-02'),
(7, 407446076, 6, 'Paris', '2021-06-24', '2021-06-26'),
(8, 8537178122, 61497, 'Paris', '2021-06-24', '2021-06-26'),
(9, 1870707330, 61497, 'Egypt', '2021-06-30', '2021-07-02'),
(10, 575987924, 61497, 'Paris', '2021-06-17', '2021-06-20'),
(11, 7027588, 61497, 'Paris', '2021-06-20', '2021-06-23'),
(12, 1794794688, 61497, 'Paris', '2021-06-20', '2021-06-23'),
(13, 136468, 61497, 'Paris', '2021-06-20', '2021-06-23'),
(14, 49019, 6, 'Paris', '2021-06-30', '2021-07-02'),
(15, 640695966, 6, 'Seoul', '2021-07-02', '2021-07-05'),
(16, 5060852966, 6, 'Vancouver', '2021-07-23', '2021-07-30'),
(17, 99367237, 6, '', '0000-00-00', '0000-00-00'),
(18, 572395, 6, 'Paris', '2021-07-16', '2021-07-18'),
(19, 7625740, 6, 'Paris', '2021-07-16', '2021-07-18'),
(20, 97094194, 2554, 'Dubai', '2021-07-17', '2021-07-20'),
(21, 3795, 2554, 'Tokyo', '2021-07-16', '2021-07-20'),
(22, 6895, 2554, 'Syndney', '2021-07-16', '2021-07-20'),
(23, 12514129, 2554, 'Syndey', '2021-07-16', '2021-07-20'),
(24, 840693749, 2554, 'Rio de Janeiro', '2021-07-02', '2021-07-25'),
(25, 54140, 78634, 'Kerala', '2021-07-03', '2021-07-06'),
(26, 26220, 78634, 'Kerala', '2021-07-03', '2021-07-06'),
(27, 1519, 78634, 'Giza', '2021-07-03', '2021-07-04'),
(28, 4290, 78634, 'Dubai', '2021-07-03', '2021-07-04'),
(29, 97001, 78634, 'Vancouver', '2021-07-03', '2021-07-04'),
(30, 586843, 3748, 'Paris', '2021-07-03', '2021-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `rio`
--

CREATE TABLE `rio` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rio`
--

INSERT INTO `rio` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'RI001', 'Christ the Redeemer', 'Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face. Constructed between 1922 and 1931, the statue is 30 metres high, excluding its 8-metre pedestal. The arms stretch 28 metres wide. The statue weighs 635 metric tons, and is located at the peak of the 700-metre Corcovado mountain in the Tijuca Forest National Park overlooking the city of Rio de Janeiro', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS-lI8dDTAYonrBjH1ZDTy6VJkS3PhDRWjg-gROGf_YngjBO_cMrPuhGem-ndq_WQlV-xseOYbMDQlW02L1Y6fZhw'),
(2, 'RI002', 'Sugarloaf Mountain', 'Sugarloaf Mountain is a peak situated in Rio de Janeiro, Brazil, at the mouth of Guanabara Bay on a peninsula that juts out into the Atlantic Ocean. Rising 396 m above the harbor, its name is said to refer to its resemblance to the traditional shape of concentrated refined loaf sugar. It is known worldwide for its cableway and panoramic views of the city and beyond.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuv8pvre5hCCbRoi_4BkDtQr7JIz9MOAVtgnJ_521XcgPQY8AvfIjEtoqR1ix65irZJuKAP7IkSgUUROtUZs4_6w'),
(3, 'RI003', 'Copacabana Beach', 'A striking four kilometer stretch of fine sand and incredible visuals, Copacabana Beach is a whirlwind of movement; beach vendors relentlessly stroll up and down in the heat selling their goods, bronzed bodies soak up the sun, tourists drink coconuts and there\'s countless games of football and volleyball.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcQOtTxA1yWqddGVmdPH4bUPV9oLvtAVDnsFNafppIkzh9AOlRUHQAxj4Dt8GA3GVKQo-ZCSivsq7ClcVLBP-xJOIg'),
(4, 'RI004', 'Escadaria Selarón', 'Escadaria Selarón, also known as the \'Selaron Steps\', is a set of world-famous steps in Rio de Janeiro, Brazil. They are the work of Chilean-born artist Jorge Selarón who claimed it as \"my tribute to the Brazilian people\".', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQCvnWYE0S2QD8AMp-4FjoUiUVGr8QyxyOrHqvuoEbAhEKiegx8Owt9BV2L6-tVDnWdSJkecOj4T5BPA-L3_cQiw'),
(5, 'RI005', 'Museu do Amanhã', 'The Museum of Tomorrow is a science museum in the city of Rio de Janeiro, Brazil. It was designed by Spanish neofuturistic architect Santiago Calatrava, and built next to the waterfront at Pier Maua. Its construction was supported by the Roberto Marinho Foundation and cost approximately 230 million reais.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtlV_paCRRTEoADxVmehMeqVfgbkyR0uxZq9rRWPasFNiN_TEUX_aFsKE_jr_DoA1C5gkJ3X3fgDBGpcX130ZQ3Q'),
(6, 'RI006', 'Tijuca National Park', 'The Tijuca National Park is a urban national park in the mountains of the city of Rio de Janeiro, Brazil. The park is part of the Atlantic Forest Biosphere Preserve, and is administered by the Chico Mendes Institute for Biodiversity Conservation.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTgr_nLNwWyz8TlCrlUKKJEPFSCN4lr_qACAgOlD-_YLmdzOF6DRbD40y99_heftCvnmH6CTNbxvJW1h3B-LjdEUw'),
(7, 'RI007', 'Maracanã', 'Maracanã Stadium, officially named Estádio Jornalista Mário Filho, is an association football stadium in Rio de Janeiro, Brazil. The stadium is part of a complex that includes an arena known by the name of Maracanãzinho, which means \"The Little Maracanã\" in Portuguese. Owned by the Rio de Janeiro state government, the stadium is now managed by the clubs Flamengo and Fluminense, respectively. It is located at the Maracanã neighborhood.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQQmuUj5Gq-xfczlp3iYqShD4GTsPwik4_KYrW61seaTpILwcIrPx1le7YHm7vIGZMSKj-J5pqS5VGol2-_CeOiVw'),
(8, 'RI008', 'Niterói Contemporary Art Museum', 'The Niterói Contemporary Art Museum is situated in the city of Niterói, Rio de Janeiro, Brazil, and is one of the city’s main landmarks. It was completed in 1996. Designed by Oscar Niemeyer with the assistance of structural engineer Bruno Contarini, who had worked with Niemeyer on earlier projects, the MAC-Niterói is 16 meters high; its cupola has a diameter of 50 meters with three floors. The museum has a collection of 1,217 works from the art collector João Sattamini.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQV1Luwjz1MK4_loFqCYJ_0cQJ6mzr8Tq17PW75iD1loeYgV_FALl8f4YpLAwmwg4m2Vav2qQj01qt6YOlprqibbA'),
(9, 'RI009', 'Corcovado', 'Corcovado, which means \"hunchback\" in Portuguese, is a mountain in central Rio de Janeiro, Brazil. It is a 710-metre granite peak located in the Tijuca Forest, a national park. Corcovado hill lies just west of the city center but is wholly within the city limits and visible from great distances.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQ4WWBAHU-WkRZATB8vqksQdM9FOTOAbUOjVjWfA92vW3xVe6pWcX4o92ibimKjJAmbzM5Y5qht7oVuuEj8BVsug'),
(10, 'RI010', 'Jardim Botânico do Rio de Janeiro', 'The Rio de Janeiro Botanical Garden or Jardim Botânico is located at the Jardim Botânico district in the South Zone of Rio de Janeiro. The Botanical Garden shows the diversity of Brazilian and foreign flora. There are around 6,500 species distributed throughout an area of 54 hectares as well as numerous greenhouses. The garden also houses monuments of historical, artistic, and archaeological significance. T', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ9-ztgmJEvODqmCy26b0ZQo_qZV_Tup1e6iE_X9KotwTlCoQLE_vWaWI1E4JCk4WG60-R8NbiUYadqcDoiN5OIpw'),
(11, 'RI011', 'Parque Lage', 'Parque Enrique Lage is a public park in the city of Rio de Janeiro, located in the Jardim Botânico neighborhood at the foot of the Corcovado, on top of which Christ the Redeemer is located. The land was formerly the residence of industrialist Henrique Lage and his wife, singer Gabriella Besanzoni. During the 1920s Lage had the mansion remodeled by Italian architect Mario Vodret, with interior paintings by Salvador Payols Sabaté. ', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCT0Q_3G8xwpCyZwE2ft7x3L7FWZBHZ26jDnjmddy9Q5SmGPfCXW_V1VXB7DABkxtsDZcZV9QdM9ny8E8MQOSPzg'),
(12, 'RI012', 'Royal Portuguese Reading Room', 'The Royal Portuguese Cabinet of Reading is a library and lusophone cultural institution, is located in Luís de Camões Street, number 30, in the center of the city of Rio de Janeiro, Brazil. It is listed by the State Institute of Cultural Heritage. Elected the fourth most beautiful library in the world by Time magazine, the Cabinet has the largest collection of Portuguese literature outside Portugal.', 'https://q=tbn:ANd9GcRQvpuMXEQYvcBwdhBGdMD06bdw_tzCXbkm82ib27yZhBWvvcQ0xkvJD9Tr67ZGQHWsZdoyjZFsj9k74qyLuBIp_A'),
(13, 'RI013', 'Arpoador', 'Arpoador is a region located on the southern zone of the city Rio de Janeiro, in a small peninsula between Ipanema and Copacabana. Part of its territory belongs to the neighbourhood of Ipanema, and part to Copacabana.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSs_sf4hn2sGJiXKlbNzG34vp05GCn7A1m59wTLshEJn5ys2D_JGfFqC4l9Gm3rP4yGHth8wONw2BasMUuJhKv6vg'),
(14, 'RI014', 'Municipal Theater of Rio de Janeiro', 'The Theatro Municipal is an opera house in the Centro district of Rio de Janeiro, Brazil. Built in the early the twentieth century, it is considered to be one of the most beautiful and important theaters in the country. The building is designed in an eclectic style, inspired by the Paris Opéra of Charles Garnier. The outside walls are inscribed with the names of classic European & Brazilian artists.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYurzTlflKxeq0bmg6gt57rGwELFFbmC9piTfMQbsrYoGcLlhKoPUEm77QNAZ_zd96yQfRjEY9Ra3oy6GIEwTDNA'),
(15, 'RI015', 'Museu de Arte Moderna do Río de Janeiro', 'The Museum of Modern Art in Rio de Janeiro is a museum located in northeastern Flamengo Park, in the city of Rio de Janeiro, Brazil. It is in the Centro district, west of Santos Dumont Airport, on Guanabara Bay.', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQTyTbs7f56RpTsYP5_UrZ_7LTcmI3SVCALI0ULJAZ5-uqPUnoLUa6i2oSlU1uobgRTovnGwWdiyMg7v0dB6FD4-A'),
(16, 'RI016', 'Rodrigo de Freitas Lagoon', 'Rodrigo de Freitas Lagoon is a lagoon in the district of Lagoa in the Zona Sul area of Rio de Janeiro. The lagoon is connected to the Atlantic Ocean, allowing sea water to enter by a canal along the edge of a park locally known as Jardim de Alah.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSanrLUrb7W3dZvyC5nSK1gR8HR-1KNSTTKHOyrIJpz-pADBSXkvfjxQ2IUlgPsB717Jne5hEjIpPAUHZ5rcYO_5A'),
(17, 'RI017', 'Sambadrome Marquês de Sapucaí', 'The Sambadrome Marquês de Sapucaí is a purpose-built parade area built for the Rio Carnival in Rio de Janeiro, Brazil. The venue is also known as Passarela Professor Darcy Ribeiro or simply the Sambódromo in Portuguese or Sambadrome in English. It is located in the downtown area of Cidade Nova in Rio de Janeiro, and is the place where samba schools parade competitively each year during the Rio Carnival. ', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcR2VtRIxXpaYAY6VPN8RZO3OI1arcLNgInG2cAJ3ju0G-Ix7nuq5lqMye4qvzKetj1rq2-P34F_F3zNsHqLKTeHtw'),
(18, 'RI018', 'Carioca Aqueduct', 'The Carioca Aqueduct is an aqueduct in the city of Rio de Janeiro, Brazil. The aqueduct was built in the middle of the 18th century to bring fresh water from the Carioca River to the population of the city. It is a typical example of colonial architecture and engineering. The Carioca Aqueduct is located in the centre of the city, in the Lapa neighbourhood, and is frequently called Arcos da Lapa by Brazilian people.', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSmulUObHbCtI8_Hpq13aT7f8V6_wXlxRj867nlHQaPQ2NuHh9uS5lcGLJb5HmXm4FSmszX3glW4eAaA7SpAVMwjQ'),
(19, 'RI019', 'Pedra da Gávea', 'Pedra da Gávea is a monolithic mountain in Tijuca Forest, Rio de Janeiro, Brazil. Composed of granite and gneiss, its elevation is 844 metres, making it one of the highest mountains in the world that ends directly in the ocean. Trails on the mountain were opened up by the local farming population in the early 1800s; today, the site is under the administration of the Tijuca National Park. The mountain\'s name translates as Rock of the Topsail.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS7jkRfEp5f1ibrWroJdrbqlxhMOVG69JZ8Dpt6_fsE1a2wrnqwx3rtam_b6sBPYrR1HmF0VGT-R6-WaqSzicRMJg'),
(20, 'RI020', 'Museu Nacional de Belas Artes', 'The Museu Nacional de Belas Artes is a national art museum located in the city of Rio de Janeiro, Brazil. The museum, officially established in 1937 by the initiative of education minister Gustavo Capanema, was inaugurated in 1938 by President Getúlio Vargas. The museum collection, on the other hand, takes its rise in the transfer of the Portuguese Court to Brazil in the early 19th century. ', 'lh5.googleusercontent.com/p/AF1QipOggbdk2Oi5GqLnB6qQYy9Pocyc7WGOKk4-vkDc=w464-h260-n-k-no'),
(21, 'RI021', 'Catedral Metropolitana de São Sebastião do Rio de ', 'The Metropolitan Cathedral of Saint Sebastian better known as the Metropolitan Cathedral of Rio de Janeiro or as the Cathedral of St. Sebastian of Rio de Janeiro, is the seat of the Roman Catholic Archdiocese of São Sebastião do Rio de Janeiro.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScVbgEUDaL-JLB7fE-KVe6_3TPuNin2FR9lf1GpXacaDxYrSQ6SSyIHJg5qtMF-cr1Jx6FgJ6YtOeSJ9a0ae6zsw');

-- --------------------------------------------------------

--
-- Table structure for table `seoul`
--

CREATE TABLE `seoul` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seoul`
--

INSERT INTO `seoul` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'SE001', 'Gyeongbokgung Palace', 'Gyeongbokgung Palace, also known as Gyeongbok Palace, was built in 1395 to serve as the main royal palace for the kings of The Joseon Dynasty. Today, being one of the five palaces in Seoul, Gyeongbokgung remains the largest and most frequently visited. One can spend a day strolling around and admiring the intricate design of the paintings, fabric work, and fine craftsmanship that make the palace a pure visual treat. Wander through the passages that connect the rooms that vary distinctively from one another to get a glimpse of the lifestyle of the royals and Korean culture.', 'upload.wikimedia.org/wikipedia/commons/thumb/b/be/%EC%97%AD%EC%82%AC%EC%86%8D%EC%9C%BC%EB%A1%9C.jpg/360px-%EC%97%AD%EC%82%AC%EC%86%8D%EC%9C%BC%EB%A1%9C.jpg'),
(2, 'SE002', 'Namsan Seoul Tower', 'Namsan Seoul Tower was the first tower-type tourism spot in Korea. The top of the tower is at almost 480 meters above sea level, including Namsan Mountain (243 meters) and the tower’s own height (236.7 meters), making it one of the tallest towers in Asia. It is comprised of Seoul Tower Plaza, recently opened to public access after 40 years, and N Seoul Tower, operated by CJ Foodville since 2005. The tower was first established as a broadcasting tower to send out TV and radio signals in 1969. As of now, it has become one of the representative landmarks and multi-cultural venues in Seoul.', 'tong.visitkorea.or.kr/cms/resource/95/2660695_image2_1.jpg'),
(3, 'SE003', 'Bukchon Hanok Village', 'Bukchon Hanok Village is a Korean traditional village in Seoul with a long history located on the top of a hill between Gyeongbok Palace, Changdeok Palace and Jongmyo Royal Shrine. The traditional village is composed of many alleys, hanok and is preserved to show a 600-year-old urban environment. Bukchon is without a doubt an iconic historical district in Seoul. Visitors here can stroll at leisure in tiny streets lined with brick walls and traditional Korean houses that vary in shape and sizes.', 'upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Korea-Seoul-Bukchon-07.jpg/330px-Korea-Seoul-Bukchon-07.jpg'),
(4, 'SE004', 'Myeong-dong', 'This is a huge marketplace located in Seoul and is have for Cosmetics and Skin Care products. This is without a doubt the biggest and most famous market in all of South Korea. Originally the market was a famous local hot spot, but with a recent boom in Korea tourism, the market has become equally famous among tourists. Each block has around 20 shops, and you can find every imaginable makeup brand here.  It covers 0.99km² with a population of 3,409 and is mostly a commercial area, being one of Seoul\'s main shopping, parade route and tourism districts. In 2011, 2012 and 2013, Myeong-dong was listed as the ninth most expensive shopping street in the world.', 'upload.wikimedia.org/wikipedia/commons/thumb/6/63/Myeongdong_Neon_at_Night%2C_Seoul.jpg/375px-Myeongdong_Neon_at_Night%2C_Seoul.jpg'),
(5, 'SE005', 'Changdeokgung', 'Changdeokgung, also known as Changdeokgung Palace or Changdeok Palace, is set within a large park in Jongno-gu, Seoul, South Korea. It is one of the \"Five Grand Palaces\" built by the kings of the Joseon Dynasty. As it is located east of Gyeongbok Palace, Changdeokgung—along with Changgyeonggung—is also referred to as the \"East Palace\". Changdeokgung was the most favored palace of many Joseon princes and retained many elements dating from the Three Kingdoms of Korea period that were not incorporated in the more contemporary Gyeongbokgung.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSx4UlbuQ6A-nQMx33-zlfnOsnizky3CqQf16FwQm1fKiow3ePDJAe73XS33125fGNUH7NgNyOG-jkV-1YEj8IUuA'),
(6, 'SE006', 'Lotte World', 'Lotte World is a major recreation complex in Seoul, South Korea. It consists of the world\'s largest indoor theme park, an outdoor amusement park called \"Magic Island\", an artificial island inside a lake linked by monorail, shopping malls, a luxury hotel, a Korean folk museum, sports facilities, and movie theaters. Opened on July 12, 1989, Lotte World receives 7.3 million visitors each year. ', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWFBygjhky9_xlKO17Dd-X6K3jb_xX1d6VTiVsJqmrHidMRUC8bUuBq_25rG7ro68QEAzcFCut8ghkx4kIwsA9Bg'),
(7, 'SE007', 'Cheonggyecheon', 'Cheonggyecheon is a 10.9-kilometre-long, modern public recreation space in downtown Seoul, South Korea. The massive urban renewal project is on the site of a stream that flowed before the rapid post-war economic development caused it to be covered by transportation infrastructure. The $900 million project initially attracted much public criticism but, since opening in 2005, has become popular among residents and tourists.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR4QTUMEfDDhSycezC7MT3LbU1ewympUM_jZtLrV3LcrGbSsRsjd0kcxn060VylxDktHgykGB9eRxLrSlu6-9waCA'),
(8, 'SE008', 'Lotte World Tower', 'Lotte World Tower is a 555.7-metre, 123-story skyscraper located in Sincheon-dong, Songpa District, Seoul, South Korea. It opened to the public on April 3, 2017, and is currently the tallest building in South Korea and the fifth tallest in the world. Lotte World Tower is a landmark of Seoul and the first 100-story building in Korea. When it was completed, it was the fourth-highest tower in the world and the highest in the OECD countries. The conceptual design calls for a slender cone with convex, gently curved sides. An exterior of pale-coloured glass draws inspiration from Korean ceramics and features accents of metal filigree.', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTb_T2Ea2_6LtcLXp_Xs7flQnK4kP90Xazbzd6Gv9PJmbrjTx-6IqXwnEUQimZhbl0Hw5Bl0lZkeTQVHHokTeRL5g'),
(9, 'SE009', 'Dongdamum Design Plaza', 'The Dongdaemun Design Plaza, abbreviated as DDP, is a major urban development landmark in Seoul, South Korea designed by Zaha Hadid and Samoo, with a distinctively neofuturistic design characterized by the \"powerful, curving forms of elongated structures\". The landmark is the centerpiece of South Korea\'s fashion hub and popular tourist destination, Dongdaemun, featuring a walkable park on its roofs, large global exhibition spaces, futuristic retail stores and restored parts of the Seoul fortress.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRde2T07AFFabXJd0ykbkSr7suCSCwCCRWoadDQs9SouSrW29PV0uLzjeZtYEDkO6TxeOpICgyAsotCFTZwz0yjbA'),
(10, 'SE010', 'National Museum of Korea', 'The National Museum of Korea is the flagship museum of Korean history and art in South Korea and is the cultural organization that represents Korea. Since its establishment in 1945, the museum has been committed to various studies and research activities in the fields of archaeology, history, and art, continuously developing a variety of exhibitions and education programs.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR_eHM2LxvHw22WrMv2-e7ALnaO7DX7230xIs3WqHi5x7coMGlmpoJ9FITKD2mEeUX7Xt5Z4CunpOaBslrxxCQhTg'),
(11, 'SE011', 'Namdaemun Market', 'Namdaemun Market is a large traditional market in Seoul, South Korea. The market is located next to Namdaemun, the \"Great South Gate,\" which was the main southern gate to the old city. It is the oldest and largest market in Korea. Namdaemun Market is one of the oldest continually running markets in South Korea, and one of the largest retail markets in Seoul.The streets in which the market is located were built in a time when cars were not prevalent, so the market itself is not accessible by car. The main methods of transporting goods into and out of the market are by motorcycle and hand-drawn carts. ', 'upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Namdaemun-sijang.jpg/330px-Namdaemun-sijang.jpg'),
(12, 'SE012', 'Gwangjang Sijang', 'Gwangjang Market, previously Dongdaemun Market, is a traditional street market in Jongno-gu, Seoul, South Korea. The market is one of the oldest and largest traditional markets in South Korea, with more than 5000 shops and 20,000 employees in an area of 42,000 square metres. Approximately 65,000 people visit the market each day.', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcR1_-Gq2XdRq79jlpvGEhgu7dBcFp3dtKV8t7v2F_ANqOVFSOiuBicfULig0EwoGn-NkgrlJG2c_6nW2xeTG3VwSw'),
(13, 'SE013', 'Deoksugung', 'Deoksugung, also known as Gyeongun-gung, Deoksugung Palace, or Deoksu Palace, is a walled compound of palaces in Seoul that was inhabited by members of Korea\'s royal family during the Joseon monarchy until the annexation of Korea by Japan in 1910. It is one of the \"Five Grand Palaces\" built by the kings of the Joseon Dynasty. The buildings are of varying styles, including some of natural cryptomeria wood, painted wood, and stucco. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQmI90v6wjX3Qkgw9rLE1fKXefbH8ocfe_GVXLRGdbz7RECtc1lLxPvTpt_ICFkF9k7YsnHbA9ERkRyI8fTbHPR8w'),
(14, 'SE014', 'Jongmyo Shrine', 'Jongmyo is a Confucian shrine dedicated to the perpetuation of memorial services for the deceased kings and queens of the Korean Joseon Dynasty. According to UNESCO, the shrine is the oldest royal Confucian shrine preserved and the ritual ceremonies continue a tradition established in the 14th century. Such shrines existed during the Three Kingdoms of Korea period, but these have not survived. The Jongmyo Shrine was added to the UNESCO World Heritage list in 1995.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRgLk_40VvwzzYoXDh6UxRhIuZwfcl-slAj7n5apggaccskMDe6Xz5nb_YA4EgLgvNhcywSjTbcU2f7vsMf-__QcA'),
(15, 'SE015', 'The National Folk Museum of Korea', 'National Folk Museum of Korea is a national museum of South Korea, located within the grounds of the Gyeongbokgung Palace in Jongno-gu, Seoul. It uses replicas of historical objects to illustrate the history of traditional life of the Korean people.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT6c6A6mD0e09OMrnbTDIe1SGFvnTKn838w15JJNi088jPzkmUX5f2-xkV78p_OR-5ElHo6UcN5rvOzl2nIDGHPFQ'),
(16, 'SE016', 'Jogyesa', 'Jogyesa is the chief temple of the Jogye Order of Korean Buddhism. The building dates back to the late 14th century and became the order\'s chief temple in 1936. It thus plays a leading role in the current state of Seon Buddhism in South Korea. The temple was first established in 1395, at the dawn of the Joseon Dynasty; the modern temple was founded in 1910 and initially called \"Gakhwangsa\".', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcQOeSg_Hf36xegg_tGQAODcIE7S1YC7Wjqsg7rOYGLZ412ElKmNdtsLWcl68k2xXOTKtN_wFiMrfsvLEEPsckXR8w'),
(17, 'SE017', 'Changgyeonggung Palace', 'Changgyeong Palace is a palace located in Seoul, South Korea. The palace was built in the mid-15th century by King Sejong for his father, Taejong. It was originally named \"Suganggung,\" but it was renovated and enlarged in 1483 by King Seongjong, at which time it received its current name. Many structures were destroyed during Japan\'s multiple late 16th century attempts to conquer Korea and invade China. It was rebuilt by successive Joseon Kings.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS71wgF0THOAx469G86f8NKouCfXmR56sAM24ntwl8iQlo9_CS_DU4b2evlzRBjNOjgzi-Lsy0_oViEzMmBYXrgyg'),
(18, 'SE018', 'War Memorial of Korea', 'The War Memorial of Korea is a museum located in Yongsan-dong, Yongsan-gu, Seoul, South Korea. It opened in 1994 on the former site of the army headquarters to exhibit and memorialize the military history of Korea. It was built for the purpose of preventing war through lessons from the Korean War and for the hoped for peaceful reunification of North and South Korea. ', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSfk4d18lSSE7JuPnWgUEFO0I8lITrBIfjeqwwbo_09k38kRlh55pl2k3AaeY4c7m4zSIaGhzk7kSSe3spEzhRBdg'),
(19, 'SE019', 'Banpo Bridge', 'The Banpo Bridge is a major bridge in downtown Seoul over the Han River, South Korea, connecting the Seocho and Yongsan districts. The bridge is on top of Jamsu Bridge, forming the upper half of a double-deck bridge; it is the first double deck bridge built in South Korea. During periods of high rainfall, the Jamsu Bridge is designed to submerge as the water level of the river rises, as the lower deck lies close to the waterline.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVhymfNcoBTjktu4ZV7L7z7UDRcQjihfBjL9eK5l7VOzlZqyd_oJcjaMeFxzJ5E9pCGOPxtevZZ50uI9U8dzqp2Q'),
(20, 'SE020', 'Bukhansan', 'Bukhansan, or Bukhan Mountain, is a mountain on the northern periphery of Seoul, South Korea. There are three major peaks, Baegundae 836.5 meters, Insubong 810.5 meters, Mangyeongdae 787.0 meters. Because of its height and the fact that it borders a considerable portion of the city, Bukhansan is a major landmark visible from most city districts. The name \"Bukhansan\" means \"mountain north of Han River\", referring to the fact that it is the northern border of the city.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTv3CMTcILx5Xzi-y9Qofyj62qpZdYvH5x7qMYBUhz7-mj-45uWsGrK9w-c6nv9NLant0jrmj2Z3yIjVWwVlldrGw'),
(21, 'SE021', 'Olympic Park', 'Seoul Olympic Park, shortened to Olpark, is an Olympic Park built to host the 1988 Summer Olympics. It is located in Bangi-dong, Songpa-gu, Seoul, South Korea. The two nearest subway stations are Mongchontoseong and Olympic Park.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoanloiBasKLR3U5Hp_PisVimCpifry3e6HywyzzrxqiCXG6dgeM6T-Md2xNOwWgLODpQilvFu75uLeyNwczr_dA');

-- --------------------------------------------------------

--
-- Table structure for table `sydney`
--

CREATE TABLE `sydney` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sydney`
--

INSERT INTO `sydney` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'SY001', 'Sydney Opera House', 'The Sydney Opera House is a multi-venue performing arts centre on Sydney Harbour located in Sydney, New South Wales, Australia. It is one of the 20th century\'s most famous and distinctive buildings. Designed by Danish architect Jørn Utzon, but completed by an Australian architectural team headed by Peter Hall, the building was formally opened on 20 October 1973.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhFDpQMX6wrLn0Nedf5k7k9tLB6eBaztgmBx7XYDose0pDv7lAfCTvb988suo_YKHgT4WXS5MvadTfMHlLDmsAhg'),
(2, 'SY002', 'Bondi Beach', 'Bondi Beach is a popular beach and the name of the surrounding suburb in Sydney, New South Wales, Australia. Bondi Beach is located 7 km east of the Sydney central business district, in the local government area of Waverley Council, in the Eastern Suburbs. It has a population of 11,656 residents. ', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRdI9TdPUsNSOrDdppy5_uA4DFXhiXIecVnqHbCE_hX_2rxBySR3FmJ_xY6XL0csFbo_GO0dO84FdTp6bq-PWWgyg'),
(3, 'SY003', 'Sydney Harbour Bridge', 'The Sydney Harbour Bridge is an Australian heritage-listed steel through arch bridge across Sydney Harbour that carries rail, vehicular, bicycle, and pedestrian traffic between the Sydney central business district and the North Shore. The view of the bridge, the harbour, and the nearby Sydney Opera House is widely regarded as an iconic image of Sydney, and of Australia itself.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPu9JYLdPuI_UabJ4ek3FZiz8YzUubUFXcd5x59WyXiNKjVK9EP1DCAvkVsQIrAtmVKq_DxueRFKIhAeepmqQVYw'),
(4, 'SY004', 'Taronga Zoo Sydney', 'Taronga Zoo Sydney is a zoo located in Sydney, New South Wales, Australia, in the suburb of Mosman, on the shores of Sydney Harbour. It was officially opened on 7 October 1916. Taronga Zoo Sydney is managed by the Zoological Parks Board of New South Wales, under the trading name Taronga Conservation Society, along with its sister zoo, the Taronga Western Plains Zoo in Dubbo. Divided into eight zoogeographic regions, the 28-hectare Taronga Zoo Sydney is home to over 4,000 animals of 350 species, making it the largest zoo in Australia.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR2OZSLA2hBnUvYyZTXw91iXp53_0jeTTNzXeIFazrqBJABbsXrUbLUeFEswC76OT_McciBkpxZQJOKfX5giSsStg'),
(5, 'SY005', 'Royal Botanic Garden Sydney', 'The Royal Botanic Garden, Sydney is a heritage-listed major 30-hectare botanical garden, event venue and public recreation area located at Farm Cove on the eastern fringe of the Sydney central business district, in the City of Sydney local government area of New South Wales, Australia. Opened in 1816, the garden is the oldest scientific institution in Australia and one of the most important historic botanical institutions in the world. ', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTREWbQtRCpT4op-kIL6stesf5Nc0f0doqPB655kYHIixOJ8evGACbyeVPO-gt4lez6qiFa7BPtA7UDrmeT9GQsCw'),
(6, 'SY006', 'Darling Harbour', 'Darling Harbour is a harbour adjacent to the city centre of Sydney, New South Wales, Australia that is made up of a large recreational and pedestrian precinct that is situated on western outskirts of the Sydney central business district. Originally named Long Cove, the locality extends northwards from Chinatown, along both sides of Cockle Bay to King Street Wharf 3 on the east, and to the suburb of Pyrmont on the west.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTVc1mQi-8tOGhgAVdMTv6URLzxW9BSH681wVEs3UsEZM3xkp5juaMAQ3DSF8ga0wGtHVnthedByb9grRw6jf3_CQ'),
(7, 'SY007', 'Art Gallery of New South Wales', 'The Art Gallery of New South Wales, located in The Domain in Sydney, New South Wales, Australia, is the most important public gallery in Sydney and one of the largest in Australia. The Gallery\'s first public exhibition opened in 1874. Admission is free to the general exhibition space, which displays Australian art, European and Asian art. ', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMomdR409OURUb_6F19iQSxTu1r7bHHMweaGbyvarnhuTItrZRuIbnUgOuIP3iL_wkI9nsnRBphOJ_8TxknpnswQ'),
(8, 'SY008', 'Luna Park Sydney', 'Luna Park Sydney is a heritage-listed amusement park located at 1 Olympic Drive in the harbourside suburb of Milsons Point, New South Wales, Australia, on the northern shore of Sydney Harbour. The amusement park is owned by the Luna Park Reserve Trust, an agency of the Government of New South Wales, and was added to the New South Wales State Heritage Register on 5 March 2010. ', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPtggHTHXD4s7dA71LuLOAOLwVqTJ4gHE6VQWEByDXbnPmgjXjAvIVHE8KGSUeV6igGRZxaesxljkvo67NohsNbA'),
(9, 'SY009', 'Sydney Tower Eye', 'Sydney Tower is Sydney\'s tallest structure and the second tallest observation tower in the Southern Hemisphere. The name Sydney Tower has become common in daily usage; however, the tower has been known as the Sydney Tower Eye, AMP Tower, Flower Tower, Glower Tower, Westfield Centrepoint Tower, Big Poke, Centrepoint Tower or just Centrepoint. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRUzARh16tKG4Jcaya5FQr04lILgjmEVVzNEMwLJM6xGulR4eQKXhu6YQX1N9gOd_tBfxqMfS9GUyMbawKLA8TmMQ'),
(10, 'SY010', 'Madame Tussauds Sydney', 'Madame Tussauds Sydney is a wax museum located in Darling Harbour in Sydney, Australia and is situated on the Aquarium Wharf. Madame Tussauds is part of Merlin Entertainments which owns and operates attractions globally.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQwa3vWo3oZh5nC93lGrI4uVGEHHu_bV0l3qmfiHbNLR7lzpuoOaz3n74VpN315kWqW_dkViXoGiV8kGs1Ine8V8Q'),
(11, 'SY011', 'Port Jackson Bay', 'Port Jackson, consisting of the waters of Sydney Harbour, Middle Harbour, North Harbour and the Lane Cove and Parramatta Rivers, is the ria or natural harbour of Sydney, New South Wales, Australia. The harbour is an inlet of the Tasman Sea. It is the location of the Sydney Opera House and Sydney Harbour Bridge. ', 'upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Sydney%28from_air%29_V2.jpg/396px-Sydney%28from_air%29_V2.jpg'),
(12, 'SY012', 'BridgeClimb Sydney', 'Ottto Holdings (Aust.) Pty, Ltd., doing business as BridgeClimb, offers climbing services for the Sydney harbor bridge. It provides public access to the catwalks and ladders of the Sydney harbor bridge. The company was founded in 1998 and is based in Sydney, Australia.', 'upload.wikimedia.org/wikipedia/commons/thumb/1/1e/SYDNEY_HARBOR_BRIDGE_2.jpg/390px-SYDNEY_HARBOR_BRIDGE_2.jpg'),
(13, 'SY013', 'Royal National Park', 'The Royal National Park is a protected national park that is located in Sutherland Shire in the Australian state of New South Wales, just south of Sydney and is situated on Dharawal country. The 151-square-kilometre national park is about 29 kilometres south of the Sydney central business district near the localities of Loftus, Otford, and Waterfall.', 'upload.wikimedia.org/wikipedia/commons/thumb/4/44/Late_Afternoon_at_North_%26_South_Era.jpg/405px-Late_Afternoon_at_North_%26_South_Era.jpg'),
(14, 'SY014', 'Powerhouse Museum', 'The Powerhouse Museum operates as a museum in Sydney, Australia. It collects and spans history, science, technology, design, industry, decorative arts, music, transportation, and space exploration. The Powerhouse Museum was formerly known as Museum of Applied Arts and Sciences and it changed its name to The Powerhouse Museum in 1988. ', 'upload.wikimedia.org/wikipedia/commons/thumb/f/f9/New_South_Wales_Government_Locomotive_No._1.jpg/330px-New_South_Wales_Government_Locomotive_No._1.jpg'),
(15, 'SY015', 'Manly Beach', 'Manly Beach is a beach situated among the Northern Beaches of Sydney, Australia in Manly, New South Wales. From north to south, the three main sections are Queenscliff, North Steyne, and South Steyne.', 'upload.wikimedia.org/wikipedia/commons/thumb/4/49/Summer_at_Manly_Beach.jpg/375px-Summer_at_Manly_Beach.jpg'),
(16, 'SY016', 'Australian National Maritime Museum', 'The Australian National Maritime Museum is a federally operated maritime museum in Darling Harbour, Sydney. After considering the idea of establishing a maritime museum, the federal government announced that a national maritime museum would be constructed at Darling Harbour, tied into the New South Wales state government\'s redevelopment of the area for the Australian bicentenary in 1988.', 'upload.wikimedia.org/wikipedia/commons/thumb/6/64/National_Maritime_Museum%2C_Sydney_%28898337128%29.jpg/330px-National_Maritime_Museum%2C_Sydney_%28898337128%29.jpg'),
(17, 'SY017', 'Featherdale Sydney Wildlife Park', 'Australia. The park is located in Sydney’s south-west, approximately 40 kilometres from Sydney’s CBD. The park contains various species native to Australia, and is known to be one of the world’s largest collections of Australian fauna. The facility provides displays, events and interactive experiences. ', 'upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Featherdale_Wildlife_Park.jpg/330px-Featherdale_Wildlife_Park.jpg'),
(18, 'SY018', 'Queen Victoria Building', 'The Queen Victoria Building is a heritage-listed late-nineteenth-century building designed by the architect George McRae located at 429–481 George Street in the Sydney central business district, in the Australian state of New South Wales. The Romanesque Revival building was constructed between 1893 and 1898 and is 30 metres wide by 190 metres long. ', 'upload.wikimedia.org/wikipedia/commons/thumb/5/54/%281%29QVB-9.jpg/405px-%281%29QVB-9.jpg'),
(19, 'SY019', 'Cockatoo Island', 'Cockatoo Island is a UNESCO World Heritage Site at the junction of the Parramatta and Lane Cove River in Sydney Harbour, New South Wales, Australia. Cockatoo Island is the largest of several islands that were originally heavily timbered sandstone knolls. Originally the Island rose to 18 metres above sea level and was 12.9 hectares but it has been extended to 17.9 hectares and is now cleared of most vegetation.', 'upload.wikimedia.org/wikipedia/commons/thumb/f/fb/CockatooIslandPanorama.jpg/330px-CockatooIslandPanorama.jpg'),
(20, 'SY020', 'Chinese Garden of Friendship', 'The Chinese Garden of Friendship is a heritage-listed 1.03-hectare Chinese garden at 1 Harbour Street, in the Sydney Central Business District, City of Sydney, New South Wales, Australia. Modelled after the classic private gardens of the Ming Dynasty, the garden offers an insight into Chinese heritage and culture.', 'upload.wikimedia.org/wikipedia/commons/thumb/0/04/Chinese_Garden_of_Friendship_%28looking_back_at_city%29.jpg/405px-Chinese_Garden_of_Friendship_%28looking_back_at_city%29.jpg'),
(21, 'SY021', 'Hyde Park', 'Hyde Park is a heritage-listed 16.2-hectare urban park located in the central business district of Sydney, in the City of Sydney local government area of New South Wales, Australia. It is the oldest public parkland in Australia. Hyde Park is on the eastern fringe of the Sydney city centre and is approximately rectangular in shape, being squared at the southern end and rounded at the northern end.', 'upload.wikimedia.org/wikipedia/commons/thumb/1/1d/The_worlds_best_Hyde_park_Sydney.jpg/405px-The_worlds_best_Hyde_park_Sydney.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tokyo`
--

CREATE TABLE `tokyo` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokyo`
--

INSERT INTO `tokyo` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'TO001', 'Sensō-ji', 'Sensō-ji is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo\'s oldest temple, and one of its most significant. Formerly associated with the Tendai sect of Buddhism, it became independent after World War II. Adjacent to the temple is a five-story pagoda, the Asakusa Shinto shrine, as well as many shops with traditional goods in the Nakamise-dōri. ', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQnHyQAG3v4hzHWPHdvWcPhIxPexxgWz-F9CFbn4U0TQYs4ms1wwWkMgYrTgplwqNmwDSmPajIsVI0Guu3jex7VSw'),
(2, 'TO002', 'Meiji Jingu', 'Meiji Shrine, is a Shinto shrine in Shibuya, Tokyo, that is dedicated to the deified spirits of Emperor Meiji and his wife, Empress Shōken. The shrine does not contain the emperor\'s grave, which is located at Fushimi-momoyama, south of Kyoto.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR8qXYIj-IDsjONpdRZnkufvFNPcCQfAFQRuxWAe_jBXtgqvRsLJz2-mH63f55hqx_a2oizXUWCVzEd2J30-WxfAQ'),
(3, 'TO003', 'Tokyo Skytree', 'Tokyo Skytree is a broadcasting and observation tower in Sumida, Tokyo. It became the tallest structure in Japan in 2010 and reached its full height of 634 meters in March 2011, making it the tallest tower in the world, displacing the Canton Tower, and the second tallest structure in the world after the Burj Khalifa. The tower is the primary television and radio broadcast site for the Kantō region.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRZWiBtlSWdFFxxE2xSJov2dxQ_ljo0gFJljhykWkYL1hM6NIWzwfd0K-ds_BeFzivnblmGvmXk-5Hr72mAXjAK5A'),
(4, 'TO004', 'Shinjuku Gyoen National Garden', 'Shinjuku Gyo-en is a large park and garden in Shinjuku and Shibuya, Tokyo, Japan. It was originally a residence of the Naitō family in the Edo period. Afterwards, it became a garden under the management of the Imperial Household Agency of Japan. It is now a national park under the jurisdiction of the Ministry of the Environment.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTVhGFQfvYgc4PM6eU71OrbMPxbtImxmzDYp-3_BCrQxesktSeM8h0tuvHQZGbCgWAWTbcOkQhQf2G53fB4z_esyw'),
(5, 'TO005', 'Tokyo DisneySea', 'Tokyo DisneySea is a theme park at the Tokyo Disney Resort located in Urayasu, Chiba Prefecture, Japan, just outside Tokyo. It opened on 4 September 2001, at a cost of 335 billion yen. The Oriental Land Company owns the park, and licenses Disney characters and themes from The Walt Disney Company. With a size of 176-acre, Tokyo DisneySea attracted nearly fifteen million visitors in 2018, making it the fourth-most-visited theme park in the world.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRMQ5SJTxgpIiwsEAA6GT9jxidnkuNJhlyH2FgfdQqTkUHRFT82M5_09HSmxx_zSvzkLkoAT2K8RLJ8a6SgO3ENgw'),
(6, 'TO006', 'Tokyo Tower', 'The Tokyo Tower is a communications and observation tower in the Shiba-koen district of Minato, Tokyo, Japan. At 332.9 meters, it is the second-tallest structure in Japan. The structure is an Eiffel Tower-inspired lattice tower that is painted white and international orange to comply with air safety regulations. Built in 1958, the tower\'s main sources of income are tourism and antenna leasing. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTzTk79gzZgY-Vz6nzCaAqBW8Q3BquGNlosMI3Ne7GLw4KOMZFWE7T1woK2yhjbNKIqGKF65g0nb7auGVSC7oCAxQ'),
(7, 'TO007', 'Imperial Palace', 'The Tokyo Imperial Palace is the main residence of the Emperor of Japan. It is a large park-like area located in the Chiyoda district of the Chiyoda ward of Tokyo and contains several buildings including the main palace, some residences of the Imperial Family, an archive, museums and administrative offices. It is built on the site of the old Edo Castle. The total area including the gardens is 1.15 square kilometres.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRz-_GSUY62AerF7qMQlAgR04aYtrMidn6pIkFJjMM5EobkZ6j4lDGtM6CLeJbp1KQDK6rBmaEOt5STIfD-W6g2Og'),
(8, 'TO008', 'Harajuku', 'Harajuku is a district in Shibuya, Tokyo, Japan. Harajuku is the common name given to a geographic area spreading from Harajuku Station to Omotesando, corresponding on official maps of Shibuya ward as Jingūmae 1 chōme to 4 chōme. In popular reference, Harajuku also encompasses many smaller backstreets such as Takeshita Street and Cat Street spreading from Sendagaya in the north to Shibuya in the south. Harajuku is known internationally as a center of Japanese youth culture and fashion. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjyq76dmB0s8botfX96vX0Dp2NY6XHtRZ9hp8NZtg2N35ZYRrAZ9Xpsocn7AMjJn53BX_Rv8GQwjtrEngbEjzG0w'),
(9, 'TO009', 'Ueno Park', 'Ueno Park is a spacious public park in the Ueno district of Taitō, Tokyo, Japan. The park was established in 1873 on lands formerly belonging to the temple of Kan\'ei-ji. Amongst the country\'s first public parks, it was founded following the western example as part of the borrowing and assimilation of international practices that characterizes the early Meiji period. The home of a number of major museums, Ueno Park is also celebrated in spring for its cherry blossoms and hanami.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSmTpZtCrB1VUZQ-UQZ-YaG9uYhfGDWzrE4n2JHkl2nsJSC9vBpyor0_32ME7eSSRBrN-VQKLJkIDnkwbhgNt9BSg'),
(10, 'TO010', 'Yoyogi Park', 'Yoyogi Park is a park in Yoyogikamizonocho, Shibuya, Tokyo, Japan, located adjacent to Harajuku Station and Meiji Shrine. The park is a popular Tokyo destination. On Sundays, it is especially busy when it is used as a gathering place for Japanese rock music fans, jugglers, comedians, martial arts clubs, cosplayers and other subculture and hobby groups.', 'encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTuiHd-I-S8oLgaTzMbqJE8FVj1yZahzYqH5wjWzFkMEdXnIvxgSQD1C-QZLsWawxG2x-ZmpC1B1aA5e85MEYUUzg'),
(11, 'TO011', 'Odaiba', 'Odaiba today is a large artificial island in Tokyo Bay, Japan, across the Rainbow Bridge from central Tokyo. Odaiba was initially built in this area for defensive purposes in the 1850s. Reclaimed land offshore Shinagawa was dramatically expanded during the late 20th century as a seaport district, and has developed since the 1990s as a major commercial, residential and leisure area.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9mVa0brTt5TtmYKnIJmdTOezAnyP45n2lGu8UqiLPSo01iw9t_GpwkvqB2OPr51FJUburGPe6Z5ZqotTHuBhpw'),
(12, 'TO012', 'Roppongi', 'Roppongi is a district of Minato, Tokyo, Japan, famous for the affluent Roppongi Hills development area and popular night club scene. A few foreign embassies are located near Roppongi, and the night life is popular with locals and foreigners alike. It is in the central part of Tokyo, south of Akasaka and north of Azabu.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQJSNN77tVpV4rsaue6mvISw4CPAc6DRZnbwftbngse_4VZLdONSdYi-B7ISTr0BwCA35RyCf_9ZSYUlS-HGhbChw'),
(13, 'TO013', 'Tokyo National Museum', 'The Tokyo National Museum or TNM is an art museum in Ueno Park in the Taitō ward of Tokyo, Japan. It is one of the four museums operated by the National Institutes for Cultural Heritage, is considered the oldest national museum in Japan, is the largest art museum in Japan, and is one of the largest art museums in the world. The museum collects, preserves, and displays a comprehensive collection of artwork and cultural objects from Asia, with a focus on ancient and medieval Japanese art and Asian art along the Silk Road.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcR-uQzjD1pOW5_oCRdE9YM-mQcBlh-kV0vJBEBlFPAEgm4wdbKERQDDvZVS1nOjB95SOXl3BXtEo0A5SIFL-s0Ckw'),
(14, 'TO014', 'Ghibli Museum', 'The Ghibli Museum is a museum showcasing the work of the Japanese animation studio Studio Ghibli. It is located in Inokashira Park in Mitaka, a western city of Tokyo, Japan. The museum combines features of a children\'s museum, technology museum, and a fine arts museum, and is dedicated to the art and technique of animation.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTz6leo-MkcfWQ2eW-GWJ2tgM9zHH5oZslIqxQTvoAkHcFCoqSnMS6YH5jfQRXx_SV0pRQvSoQjdUwCVC2uruuiAA'),
(15, 'TO015', 'Tokyo Metropolitan Government Building', 'The Tokyo Metropolitan Government Building, also referred to as Tochō for short, houses the headquarters of the Tokyo Metropolitan Government, which governs the special wards, cities, towns, and villages that constitutes the whole Tokyo Metropolis. Located in Shinjuku, the building was designed by architect Kenzo Tange. It consists of a complex of three structures, each taking up a city block.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSGX8maD3ui585IrY6c9PaAzEAKqMsBYI_7VPApXDBfBdq4YAH8pLhxQl3nQAOlGepKJS98SwqYyWpd5uDoF0oBUw'),
(16, 'TO016', 'Mori Art Museum', 'The Mori Art Museum is a contemporary art museum founded by the real estate developer Minoru Mori in the Roppongi Hills Mori Tower in the Roppongi Hills complex both of which he built in Tokyo, Japan. The exterior architect of the museum\'s galleries on the 35th floor of the 45 -story tower in which the museum is housed is Richard Gluckman of Gluckman Mayner Architects. ', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRWWgC3zbyLf5N5Aaw_VDFTZlMdgAqTbQkPFDWgTrJbW87epQSVm7Lhz-gEJ3qfoaYzf-KkHsHbKEOi183CTE3CSA'),
(17, 'TO017', 'Imperial Hotel Tokyo', 'The Imperial Hotel is a hotel in Uchisaiwaicho, Chiyoda ward, Tokyo. It was created in the late 1880s at the request of the Japanese aristocracy to cater to the increasing number of Western visitors to Japan. The hotel site is located just south of the Imperial Palace grounds, next to the previous location of the Palace moat. The modern hotel overlooks the Palace, the 40-acre Western-style Hibiya Park, and the Yurakucho and Ginza neighborhoods. ', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQrXNL0F9q2pJ2U-5gnwDkX4NTsFj7_daWWEjqkKc8iXDppoOE48MzACOpMybSa5kCQekXc1p1uZEC0iMp7xeDWVQ'),
(18, 'TO018', 'Edo-Tokyo Museum', 'The Edo-Tokyo Museum is a historical museum located at 1-4-1 Yokoami, Sumida-Ku, Tokyo in the Ryogoku district. The museum opened in March 1993 to preserve Edo\'s cultural heritage, and features city models of Edo and Tokyo between 1590 and 1964. It was the first museum built dedicated to the history of Tokyo.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmVN118Azf4ODcba7YxLMMHaW7x87uK2IeHHz4QX6IxAxJ_b0Lk5nc4XJwGSxgkv97NKFM0yRsqki4gHxnuZNj8A'),
(19, 'TO019', 'Mount Takao', 'Mount Takao is a mountain in the city of Hachiōji, Tokyo, Japan. It is protected within Meiji no Mori Takao Quasi-National Park. Standing 599 metres tall and located within an hour of downtown Tokyo, it is a popular hiking spot, with eight hiking courses and more than 2.5 million annual visitors. The Tama Forest Science Garden is also located at the mountain\'s base.', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcSXUX8z0UyfCGq3NIj31fiKhklThCetb25-LJYafuMhmnsOkGXR8ROz8kA_Ie02XnJ8IA0ZlpBrGzO63Yx0rHhR2w'),
(20, 'TO020', 'Takeshita Street', 'Takeshita Street is a pedestrian shopping street lined with fashion boutiques, cafes and restaurants in Harajuku in Tokyo, Japan. Stores on Takeshita Street include major chains such as The Body Shop, McDonald\'s, and 7-Eleven, but most of the businesses are small independent shops that carry an array of styles. The shops on this street are often a bellwether for broader fads, and some are known as \"antenna shops\".', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQV0p3wz1eO5yl-xzKjYVcj0lkNjr8Ec1871wS8AbqFHQh9wZFnLziaMIMw0d_qP6AbtVlBGuZehiesY1W-Bhh13Q'),
(21, 'TO021', 'Rikugien Gardens', 'Rikugien Gardens are a Tokyo metropolitan park in Bunkyō-ku. The name Rikugien means Garden of the Six Principles, referring to the six elements in waka poetry, based on the traditional division of Chinese poetry into six categories. The gardens consist of a small pond, trees, and a hill.', 'encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSw0P1tOBfdbGNgkLcKdgXfSGYP2T7CQCG4qQ3bY973xR4TtAqMhHm_u635MqXLneYVzVB5q30fZpWA2arlxlE0eg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pwd` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `username`, `email`, `pwd`) VALUES
(5, 78634, 'Federer', 'rogfed@champ.com', '1234'),
(6, 3748, 'Djokovic', 'djokernole@gmail.com', '2345');

-- --------------------------------------------------------

--
-- Table structure for table `vancouver`
--

CREATE TABLE `vancouver` (
  `id` bigint(20) NOT NULL,
  `plid` varchar(5) NOT NULL,
  `place` varchar(50) NOT NULL,
  `det` varchar(8000) NOT NULL,
  `image` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vancouver`
--

INSERT INTO `vancouver` (`id`, `plid`, `place`, `det`, `image`) VALUES
(1, 'VA001', 'Stanley Park', 'Stanley Park is a 405-hectare public park in British Columbia, Canada that makes up the northwestern half of Vancouver\'s Downtown Peninsula, surrounded by waters of Burrard Inlet and English Bay. The park borders the neighbourhoods of West End and Coal Harbour to its southeast, and is connected to the North Shore via the Lions Gate Bridge. The historic lighthouse on Brockton Point marks the park\'s easternmost point. Stanley Park has a long history.', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRzn4fUxyKPB58W48abGfafDrEisfFIit4iqrUdabbsg06jqAR49rCk4NdJD5AYP5RK1TVJatcOtOfEkDKUsdSOZA'),
(2, 'VA002', 'Capilano Suspension Bridge Park', 'The Capilano Suspension Bridge is a simple suspension bridge crossing the Capilano River in the District of North Vancouver, British Columbia, Canada. The current bridge is 140 metres long and 70 metres above the river. It is part of a private facility with an admission fee, and draws over 1.2 million visitors per year.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRk9XRtLHT_ydDXbNVAyJCin77u8_nPSWY7iZTi6DcxlaaDReMDXouty7i8CSL3TNDa3dRYuJ98mwrY_xIzg79Z1w'),
(3, 'VA003', 'Granville Island', 'Granville Island is a peninsula and shopping district in Vancouver, British Columbia, Canada. It is located across False Creek from Downtown Vancouver under the south end of the Granville Street Bridge. The peninsula was once an industrial manufacturing area, but today it is a hotspot for Vancouver tourism and entertainment. The area was named after Granville Leveson-Gower, 2nd Earl Granville. ', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRloRihrnKSDvGc70lAKG7oGj3IiaAF7ixi61DX4YNFLK-47f6WXldvXw7KNOJwsvtHep1a1sNRmGmHPoEGy2wYDg'),
(4, 'VA004', 'Vancouver Aquarium', 'The Vancouver Aquarium is a public aquarium located in Stanley Park in Vancouver, British Columbia, Canada. In addition to being a major tourist attraction for Vancouver, the aquarium is a centre for marine research, ocean literacy education, conservation and marine animal rehabilitation. The Vancouver Aquarium was one of the first facilities to incorporate professional naturalists into the galleries to interpret animal behaviours.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1t6TIA_SWx0LeJVjPHjaRLwDAqG_kvI0gaPkJ37jasOiLAOK0sP0TShf4w6TZEUmRkQmS3Rm_n7V4wqaEQnn0nA'),
(5, 'VA005', 'Vancouver Art Gallery', 'The Vancouver Art Gallery is an art museum in Vancouver, British Columbia, Canada. The museum occupies a 15,300-square-metre-building adjacent to Robson Square in downtown Vancouver, making it the largest art museum in Western Canada by building size. Designed by Francis Rattenbury, the building the museum presently occupies was originally opened as a provincial courthouse, before it was re-purposed for museum use in the early 1980s. ', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ7olE5IDRRBv8wZZYywcxigUchFYcO0kUiAqYCO8LH9r2_RNuIX82JsElzb5yPG_Sa_4UAx8TXYK5PiMwjDJCEfQ'),
(6, 'VA006', 'Grouse Mountain', 'Grouse Mountain is one of the North Shore Mountains of the Pacific Ranges in the District Municipality of North Vancouver, British Columbia, Canada. With a maximum elevation of over 1,200 m (4,100 feet) at its peak, the mountain is the site of an alpine ski area, Grouse Mountain Resort, which overlooks Metro Vancouver has four chairlifts servicing 33 runs. In the summer, Grouse Mountain Resort features lumberjack shows, the \"Birds in Motion\" birds of prey demonstration, a scenic chairlift ride, disc golf, mountain biking, zip lining, tandem paragliding, helicopter tours, and guided ecowalks.', 'upload.wikimedia.org/wikipedia/commons/thumb/8/87/Grouse_Mountain_Gondola.JPG/360px-Grouse_Mountain_Gondola.JPG'),
(7, 'VA007', 'Museum of Anthropology', 'The Museum of Anthropology at the University of British Columbia campus in Vancouver, British Columbia, Canada is renowned for its displays of world arts and cultures, in particular works by First Nation band governments of the Pacific Northwest. As well as being a major tourist destination, MOA is a research and teaching museum, where UBC courses in art, anthropology, archaeology, conservation, and museum studies are given.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTJC2Y4w5cIUZqqyjqTF-zMKl6eLmyDSpjFSYYLr9f2EdfDXp_z515eNyebA5U5T_gWBRZyHPsDycKLtUBXIxUAWg'),
(8, 'VA008', 'Queen Elizabeth Park', 'Queen Elizabeth Park is a 130-acre municipal park located in Vancouver, British Columbia, Canada. It is located on top of Little Mountain and is the location of former basalt quarries that were dug in the beginning of the twentieth century to provide material for roads in the city.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTusR_XbuizzdeT0gaJ1a8vJYAg1a9ESGlwY5tuzk6h5-L67ZpMn6qdZKwm1TayW2TBnJvUOfO87i5_CmxkGmwQ2Q'),
(9, 'VA009', 'VanDusen Botanical Garden', 'In 1970 the Vancouver Foundation, the British Columbia provincial government, and the city of Vancouver signed an agreement to provide the funding to develop a public garden on part of the old Shaughnessy Golf Course. That garden, VanDusen Botanical Garden, is situated in the Shaughnessy neighbourhood of Vancouver, British Columbia, Canada at the North West corner of 37th Avenue and Oak Street.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ4911UkMEpl2QiDeioG58ulZvllloWhDl5sTZe-L-eHfq8s4zd7Zt_ybg0BXB_HxS8yj3LXDnIJG7NoLskdJOiA'),
(10, 'VA010', 'Science World', 'Science World is a science centre run by a not-for-profit organization of the same name in Vancouver, British Columbia, Canada. It is located at the end of False Creek and features many permanent interactive exhibits and displays, as well as areas with varying topics throughout the years. Prior to the building being handed over to Science World by the city government in 1987, the building was built as Expo Centre for the Expo 86 world\'s fair.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQaylnffLcPYIZjxgBOStrVgKC33PVNOgTxAYinXV9MSPooJ4I_JDtmyt-aMfua3M4OUq-hoxhotDeS4RN5qphIXg'),
(11, 'VA011', 'Dr. Sun Yat-Sen Classical Chinese Garden', 'The Dr. Sun Yat-Sen Classical Chinese Garden is the first Chinese or \"scholars\" garden built outside of China, and is located in Chinatown in Vancouver, British Columbia, Canada. It is located at 578 Carrall Street and consists of a freely accessible public park and a garden with an admission fee. The mandate of the garden is to \"maintain and enhance the bridge of understanding between Chinese and western cultures\".', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQQyi8mJjBeb-2_s4eqQy-UVIs2CQ7rLnS-ip1DjVbrLKPyR3r3viJr5F5uNPgV3RNINxgO3tuPUcoMU_b5ITZoTQ'),
(12, 'VA012', 'Cypress Mountain', 'Cypress Mountain is a ski area in West Vancouver, British Columbia, Canada, located in the southern section of Cypress Provincial Park, operated under a BC Parks Park Use Permit. The ski resort is a 30-minute drive north of downtown Vancouver, and has 53 named alpine ski runs (many accessible for night skiing) and 19 km of cross country trails. Snowshoeing tours are also popular. Snow schools and rentals, Cypress Creek Grill, Gold Medal Cafe and Crazy Raven Bar and Grill and a Big Bear Sports retail shop are also located on the premises in the Cypress Creek Lodge.', 'upload.wikimedia.org/wikipedia/commons/thumb/2/21/Cypress-foggy.jpg/360px-Cypress-foggy.jpg'),
(13, 'VA013', 'Lynn Canyon Suspension Bridge', 'Lynn Canyon Park is a municipal park in the District of North Vancouver, British Columbia. When the park officially opened in 1912 it was only 12 acres in size, but it now encompasses 617 acres. The park has many hiking trails of varying length and difficulty. The Baden-Powell Trail passes through the park crossing over the Lynn Canyon Suspension Bridge.', 'encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZ6IPadXVPCGN_VBNZI0tlFZZf_ab4hu-hZRFVbJLkiKziSVtEd_EJUczDY9VTfas4okgrsaWi05zUJE4-x9reMA'),
(14, 'VA014', 'Canada Place', 'Canada Place is a building situated on the Burrard Inlet waterfront of Vancouver, British Columbia, Canada. It is the home of the Vancouver Convention Centre, the Pan Pacific Vancouver Hotel, Vancouver\'s World Trade Centre, and the virtual flight ride FlyOver Canada. The building\'s exterior is covered by fabric roofs resembling sails. It is also the main cruise ship passenger terminal for the region, where cruises to Alaska originate. ', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTn8xeoZ7XfgeEt8TLjX32XZD1-erElMNwO6Ey_WsxGpXUKOn2p-VdP9L8Y0Lmitma0AH9s5feBxuRoLDlhiLSJBQ'),
(15, 'VA015', 'Lighthouse Park ', 'Lighthouse Park is a neighbourhood park located in a residential area in West Vancouver. It is a popular tourist attraction for visitors to Vancouver as it is a National Historic Site of Canada. It is a well-maintained park, and is open year-round throughout all four seasons. The park is known for the Point Atkinson Lighthouse, located at the southernmost tip of the peninsula.', 'encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSlnB58oe7bouko2YTgfKzq0ResQ-WtVr2UptOa04c15m4I6cGa_RK611xBbjokmC8KJRD_HS-sn8MAfoIBYKc8jQ'),
(16, 'VA016', 'Kitsilano Beach', 'Kitsilano Beach is one of the most popular beaches in Vancouver, especially in the warm summer months. Located at the north edge of the Kitsilano neighbourhood, the beach faces out onto English Bay. The beach is home to the longest swimming pool in Canada, the salt-water outdoor Kitsilano Pool, operated by the Vancouver Park Board and open annually from May to September.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZjxwgXHYKKsgM6x8CiOPhmWinFWM_jrLp4L0CvXc03J_z_L0iYcLpYYl2CyuLfshDGDURqpmWLG6p10EBEgG0ew'),
(17, 'VA017', 'Museum of Vancouver', 'The Museum of Vancouver is a civic history museum located in Vanier Park, Vancouver, British Columbia. The MOV is the largest civic museum in Canada and the oldest museum in Vancouver. The museum was founded in 1894 and went through a number of iterations before being rebranded as the Museum of Vancouver in 2009.', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSfMji4zDW5O_AmfJ7762y2AnMOhO5d4gHXf8x3nnVMhq1AU2I4K6nt7KcBBGvbA475NZ-ZulHs0rjTPsVF8fcbvg'),
(18, 'VA018', 'English Bay', 'English Bay is an open bay northwest of the Burrard Peninsula in British Columbia, Canada, extending from the headland between Siwash Rock and Prospect Point on Vancouver\'s Downtown peninsula in the northeast, to the northwestern tip of Point Grey in the southwest. The bay encompasses the coasts of Stanley Park, the West End, Kitsilano, West Point Grey and the University Endowment Lands, and makes up the southeastern portion of the Outer Burrard Inlet.', 'encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp5kKA__e878VIbc_D_TRLNxaONFtMc5evSqwVbaLEzqrnJjkQIc43qqq_HB7TAC3GfcYRL7iVa14DViaDamB7UA'),
(19, 'VA019', 'FlyOver Canada', 'FlyOver is a flying theater attraction. The first FlyOver attraction, FlyOver Canada, opened in 2013 at Canada Place in downtown Vancouver, British Columbia. The ride takes guests on a virtual flight across Canada, utilizing ride equipment that launches up to 61 people at a time into a 19m diameter spherical screen and employs wind, mist, and scents to enhance the experience. \r\n', 'encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcR6IRoswfXS2LvC-5HiaKsBIiFc1Yb425C18UAQSPsn3pmvxcE5uizfYj8eia6i5voimCMCP7oXwtlBrc3AWpAE4A'),
(20, 'VA020', 'Pacific Spirit Regional Park', 'Pacific Spirit Regional Park is a 874 hectares park located in the University Endowment Lands, on Point Grey to the west of the city of Vancouver, British Columbia. It surrounds the endowment lands of the University of British Columbia on the shores of Georgia Strait in the Pacific Ocean. It is a nature preserve of the British Columbia government and classified under Electoral Area A. The park contains over 73 km of walking/hiking trails, 50 km of which are designated multi-use and available for cycling and horseback riding as well. \r\n', 'encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTAhWHLVHahsocDDIBv-okILUi36TT7gchxR4tP_3qCmrZczLs2c9CH9tgp0lJ07FE4Yi5fbFwBWT346FArXV5YdQ'),
(21, 'VA021', 'Vancouver Seawall', 'The seawall in Vancouver, British Columbia, Canada, is a stone wall that was constructed around the perimeter of Stanley Park to prevent erosion of the park\'s foreshore. Colloquially, the term also denotes the pedestrian, bicycle, and rollerblading pathway on the seawall, one which has been extended far outside the boundaries of Stanley Park and which has become one of the most-used features of the park by both locals and tourists.', 'encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQpyJcvRGj5sKGWjDY9-gKb9sRSq2UQfkLxbAYFl_VPXw43HEeivpU5rtqaT0b27p3Jar7ze4yyG27Kj4eNa_sd8A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cityinfo`
--
ALTER TABLE `cityinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dubai`
--
ALTER TABLE `dubai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giza`
--
ALTER TABLE `giza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kerala`
--
ALTER TABLE `kerala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newyork`
--
ALTER TABLE `newyork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paris`
--
ALTER TABLE `paris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rio`
--
ALTER TABLE `rio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seoul`
--
ALTER TABLE `seoul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sydney`
--
ALTER TABLE `sydney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokyo`
--
ALTER TABLE `tokyo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vancouver`
--
ALTER TABLE `vancouver`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cityinfo`
--
ALTER TABLE `cityinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dubai`
--
ALTER TABLE `dubai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `giza`
--
ALTER TABLE `giza`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kerala`
--
ALTER TABLE `kerala`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `newyork`
--
ALTER TABLE `newyork`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `paris`
--
ALTER TABLE `paris`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rio`
--
ALTER TABLE `rio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seoul`
--
ALTER TABLE `seoul`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sydney`
--
ALTER TABLE `sydney`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tokyo`
--
ALTER TABLE `tokyo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vancouver`
--
ALTER TABLE `vancouver`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

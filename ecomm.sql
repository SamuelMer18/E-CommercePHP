-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 03:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2),
(6, 14, 7, 1),
(7, 16, 1, 8),
(12, 16, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Parlantes Portatiles', 'parlantes-portatiles'),
(5, 'Equipos de Música', 'equipos-musica'),
(6, 'Hogar', 'hogar'),
(7, 'Refrigeradores Freezers', 'refrigeradores-freezers'),
(8, 'Deporte y Salud', 'deporte-salud'),
(9, 'TV y Video', 'tv-video'),
(10, 'Lavadoras y Secadoras', 'Lavadoras y Secadoras');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2023-03-07', 1),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2023-03-02', 1),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 8, 'Maquina Trotadora Monark Prestige T5454', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Marca</td>\r\n			<td>MONARK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>58127004611248</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Azul</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'maquina-trotadora-monark-prestige-t5454', 15000, 'apple-9-7-ipad-32-gb-gold_1677717332.jpg', '2018-05-10', 3),
(6, 10, 'Lavadora Whirlpool carga superior de 13kg blanco', '<p>Lavadora Whirlpool carga superior de 13kg blanca, 5 niveles de agua, funciones inteligentes y tambor de acero inoxidable Caracter&iacute;sticas principales:</p>\r\n\r\n<p>&bull;Ciclo Remoci&oacute;n de Manchas Pro: Elimina m&aacute;s de 40 tipos de manchas,desde las m&aacute;s frecuentes hasta las m&aacute;s dif&iacute;ciles, como grasa, desodorante y marcadores de colores, sin da&ntilde;ar las ropas.</p>\r\n\r\n<p>&bull;Ciclo Pelusas y Motas: Ciclo con lavado especial con agitaci&oacute;n suave que reduce La formaci&oacute;n de pelotas en la ropa durante el lavado, manteni&eacute;ndolas con apariencia de nuevas por m&aacute;s tiempo</p>\r\n\r\n<p>&bull;Ciclo Antial&eacute;rgico: Pasos de enjuague adicionales promueven la eliminaci&oacute;n de suavizante y residuos de jab&oacute;n de manera m&aacute;s eficiente, minimizando los riesgos de irritaci&oacute;n de la piel.</p>\r\n\r\n<p>&bull;Ciclo delicada: Cuidado especial al lavar ropas delicadas, mediante agitaci&oacute;n suave</p>\r\n\r\n<p>&bull;Ciclo color: Evita que la ropa de color se desvanezca, manteniendo los colores originales de la ropa</p>\r\n\r\n<p>&bull;Niveles de agua: Ajusta el nivel de agua requerido para cada lavado de acuerdo con la cantidad de ropa, mejorando el rendimiento del lavado y evitando el desperdicio.&nbsp;</p>\r\n', 'lavadora-whirlpool-carga-superior-de-13kg-blanco', 4000, 'dell-inspiron-15-5000-15_1677719178.jpg', '2023-03-01', 1),
(7, 7, 'Freezer Kernig de 142 Litros - 1 puerta', '<p>&bull; Funcionamiento dual: refrigera y congela &bull; Condensador interno &bull; Interior prepintado blanco &bull; Luz LED interior</p>\r\n', 'freezer-kernig-de-142-litros-1-puerta', 3000, 'apple-10-5-ipad-pro-64-gb-space-grey-2017_1677717166.jpg', '2023-03-01', 1),
(8, 10, 'Lavadora LG carga frontal de 9 Kg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Marca</td>\r\n			<td>TOSHIBA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Caracter&iacute;sticas unicas</td>\r\n			<td>Inteligencia Artificial: Detecta las caracter&Atilde;&fnof;&Acirc;&shy;sticas de los tejidos bas&Atilde;&fnof;&Acirc;&iexcl;ndose en una data base de 20.000 patrones. Hasta un 18% menos de desgaste en tu ropa.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Carga</td>\r\n			<td>Frontal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Consejos de uso</td>\r\n			<td>Deje siempre la tapa de la lavadora abierta entre un uso y otro, para ayudar a que se seque la lavadora y evitar la acumulaci&Atilde;&fnof;&Acirc;&sup3;n de residuos causantes de olores.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Inverter</td>\r\n			<td>S&iacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>WD9WVC4S6ABWPECL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperatura de agua</td>\r\n			<td>Fr&iacute;a y caliente</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>Blanco</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'lavadora-lg-carga-frontal-de-9-kg', 4400, 'asus-transformer-mini-t102ha-10-1-2-1-silver_1677719098.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '2023-03-01', 4),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2023-03-02', 2),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2018-05-12', 1),
(12, 4, 'Altavoz JBL Flip 6 bluetooth waterproof color Rojo', '<p>La banda sonora de tus aventuras El atrevido JBL Flip 6 ofrece el potente sonido JBL Original Pro con una claridad excepcional gracias a su sistema de altavoces bidireccionales, con un driver optimizado en forma de pista de carreras, un altavoz de agudos independiente y dos radiadores pasivos (uno a cada lateral). Este altavoz, adem&aacute;s de ofrecerte el mejor sonido, es f&aacute;cil de transportar y es resistente al agua y al polvo, por lo que puedes llevarlo a cualquier parte, sin importar el tiempo que haga. Y con 12 horas de bater&iacute;a, puedes irte de fiesta desde el amanecer al anochecer, all&aacute; donde te lleve la m&uacute;sica. Usa PartyBoost para conectar varios altavoces compatibles. El Flip 6 est&aacute; disponible en una gran variedad de colores.</p>\r\n', 'altavoz-jbl-flip-6-bluetooth-waterproof-color-rojo', 1099, 'altavoz-jbl-flip-6-bluetooth-waterproof-color-rojo_1677692401.jpg', '2023-03-02', 1),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2023-03-01', 1),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-05-10', 1),
(16, 9, 'Televisor LG 43\'\' UHD AI ThinQ Smart tv webOS -Procesador inteligente ?5 Gen5', '<p>Inteligente m&aacute;s all&aacute; de lo que piensas. F&aacute;cil control con solo su voz, el control de voz inteligente a trav&eacute;s del Asistente de Google, Amazon Alexa, Apple AirPlay y m&aacute;s, hace que controlar su televisor LG UHD sea m&aacute;s f&aacute;cil y r&aacute;pido que nunca</p>\r\n\r\n<p><strong>Mi perfil</strong></p>\r\n\r\n<p>Disfrute de la comodidad iniciando sesi&oacute;n en su propia cuenta y viendo contenido recomendado solo para usted.</p>\r\n\r\n<p><strong>Alerta de deportes</strong></p>\r\n\r\n<p>&iexcl;Con la alerta de deportes puede dejar de preocuparse por perderse sus partidos favoritos! Reciba notificaciones antes de todos los partidos m&aacute;s importantes.</p>\r\n\r\n<p><strong>Panel de control para juegos y optimizador</strong></p>\r\n\r\n<p>Encuentre todas las configuraciones que necesita para un juego &oacute;ptimo en un solo lugar. El panel de control para juegos le permite cambiar r&aacute;pidamente la configuraci&oacute;n actual del g&eacute;nero del juego.</p>\r\n\r\n<p>&nbsp;<strong>M&aacute;s verde y mejor</strong></p>\r\n\r\n<p>El empaque de LG UHD TV ha sido redise&ntilde;ado utilizando impresi&oacute;n de un solo color y una caja reciclable.</p>\r\n\r\n<p><strong>Experiencia 4K de gran nitidez</strong></p>\r\n\r\n<p>Los televisores UHD de LG mejoran tu experiencia visual. Disfruta de colores vivos y detalles impresionantes con un 4K real.</p>\r\n', '', 2800, 'pc-specialist-vortex-core-ii-gaming-pc_1677719484.jpg', '2018-05-10', 2),
(17, 4, 'Bocina BOSE para exteriores 200W', '<p>Altavoces Ambientales 251. Adem&aacute;s de ser resistentes a la intemperie, nuestros mejores altavoces de exterior de montaje en pared ofrecen un sonido est&eacute;reo rico y completo en una amplia &aacute;rea de escucha exterior. Los galardonados altavoces ambientales 251&reg; le permitir&aacute;n disfrutar de un sonido est&eacute;reo rico y balanceado en un &aacute;rea mucho m&aacute;s amplia que con la mayor&iacute;a de los altavoces de exterior convencionales. Podr&aacute; conectar estos robustos altavoces resistentes a la intemperie a sus componentes est&eacute;reo o sistema Lifestyle&reg; y montarlos en una pared exterior. Cobertura garantizadaCon los altavoces de exterior convencionales, el sonido s&oacute;lo llega correctamente a unas cuantas zonas &oacute;ptimas de escucha en lugar de cubrir la superficie de patios, piscinas o jardines. Pero con los altavoces ambientales Bose&reg; 251, se obtiene un sonido excepcionalmente rico en un &aacute;rea de escucha mucho m&aacute;s amplia. El elemento fundamental de este rendimiento es el dise&ntilde;o de altavoces Articulated Array&reg;, que incluye dos altavoces precisamente orientados en cada caja. El resultado es un campo sonoro sumamente amplio que permite que los efectos est&eacute;reo se distribuyan uniformemente por toda la superficie exterior. Las peque&ntilde;as cajas de los altavoces de exterior convencionales no suelen ser capaces de reproducir graves impactantes. Sin embargo, gracias a su tecnolog&iacute;a y dise&ntilde;o, los altavoces 251 no s&oacute;lo se integran en su entorno, sino que eliminan las distorsiones audibles que suelen presentar otros altavoces. Podr&aacute; por tanto disfrutar de un sonido rico y completo sin necesidad de emplear grandes y voluminosos altavoces. Bose se enfrenta a la naturaleza. Los altavoces 251 de Bose han sido dise&ntilde;ados y probados para soportar la nieve, la lluvia, la sal y temperaturas extremas de -30&deg; C a 60&deg; C. Estos altavoces ofrecen un nivel de rendimiento que muchos altavoces de exterior convencionales &mdash;y la mayor&iacute;a de los altavoces de interior&mdash; simplemente no pueden igualar. Adem&aacute;s, est&aacute;n cubiertos por una garant&iacute;a limitada de cinco a&ntilde;os. Lleve el rendimiento de su sistema Lifestyle&reg; al exterior. Si dispone de un sistema Lifestyle&reg;, s&oacute;lo tendr&aacute; que a&ntilde;adir un conjunto de altavoces ambientales 251 /amplificador SA-3 para llevar el rendimiento del sistema al exterior. Podr&aacute; escuchar m&uacute;sica en la piscina, la terraza o donde le apetezca. Adem&aacute;s, empleando sistemas Lifestyle&reg; compatibles y el amplificador SA-3, incluso podr&aacute; reproducir otra fuente de m&uacute;sica o una pel&iacute;cula en el interior. Si ya dispone de un sistema Lifestyle&reg; y de altavoces 251, s&oacute;lo tendr&aacute; que conectar un amplificador SA-3 al sistema por medio de un solo cable.</p>\r\n', 'bocina-bose-para-exteriores-200w', 3999, 'bocina-bose-para-exteriores-200w_1677716734.jpg', '2023-03-02', 1),
(18, 4, 'Equipo de sonido Sony MHC-V02', '<p>Inunda la pista de baile con el sonido Lleva el sonido propio de los festivales a tus cumplea&ntilde;os, ocasiones especiales y eventos m&aacute;s animados. El sonido de graves a larga distancia del jet bass booster permite que la m&uacute;sica suene m&aacute;s potente en tus fiestas. Tweeters en &aacute;ngulo inunda la sala con el sonido de la fiesta gracias a los tweeters en &aacute;ngulo para propagar m&aacute;s el sonido. Siente el ritmo incluso a gran distancia con jet bass booster Una estructura c&oacute;nica de conducto bass reflex concentra el flujo de aire del sonido de graves para que puedas o&iacute;rlos claramente y sentirlos f&iacute;sicamente aunque est&eacute;s entre la multitud o lejos del altavoz. Anima el ambiente con luces de altavoz Utiliza las luces discotequeras de los altavoces con iluminaci&oacute;n led para animar la fiesta. La luz azul pulsa siguiendo un patr&oacute;n al ritmo de la m&uacute;sica. Despierta el cantante que llevas dentro Canta tus canciones favoritas. Una entrada de micr&oacute;fono convierte el mhc-v02 en el compa&ntilde;ero perfecto para las fiestas de karaoke. Tambi&eacute;n puedes conectar una guitarra a la entrada de micr&oacute;fono y usar el sistema como ampli. Disfruta de tres modos: n&iacute;tido para un sonido claro, distorsi&oacute;n para un sonido de guitarra distorsionado y bajo para tocar el bajo. Entrada de audio s&iacute; Bluetooth&reg; s&iacute; (iap sobre bt) Entradas y salidas entrada de audio anal&oacute;gico 1 Puerto usb 1 Entrada de micr&oacute;fono 1 Funciones de sonido Ecualizador de m&uacute;sica m&uacute;sica (emotion eq) Funci&oacute;n de enfatizaci&oacute;n de graves mega bass Wireless party chain mediante bluetooth&reg; s&iacute; Funci&oacute;n de a&ntilde;adir altavoz (bluetooth&reg;) s&iacute; Clearaudio+ s&iacute; Surround dolby&reg; digital Efecto de iluminaci&oacute;n luz del altavoz Karaoke atenuador vocal s&iacute; Grabaci&oacute;n usb s&iacute; Discos compatibles (audio) Cd s&iacute; Cd-r s&iacute; Cd-rw s&iacute;</p>\r\n', 'equipo-de-sonido-sony-mhc-v02', 1499, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1677716842.jpg', '2018-05-12', 2),
(19, 5, 'Torre de sonido Aiwa 800W Bluetooth', '<p>Bocina con luz LED multicolor, para que tu fiesta llegue a otro nivel.</p>\r\n\r\n<p>Arma el party y escucha tu m&uacute;sica con doble potencia en sonido y calidad, ahora con tecnolog&iacute;a TWS puedes escuchar con dos parlantes el mismo audio. Adem&aacute;s si te gusta tocar guitarra, es tu oportunidad de brillar, tiene entrada Jack y funci&oacute;n para grabar.</p>\r\n\r\n<p>Elige si quieres cantar, escuchar la radio, poner USB o transmitir desde tu celular o equipo tu m&uacute;sica favorita.</p>\r\n\r\n<p>Deja que el sonido te transporte con nuestros Sistemas de Audio AIWA.</p>\r\n', 'torre-de-sonido-aiwa-800w-bluetooth', 1799, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black_1677716983.jpg', '2018-05-10', 1),
(20, 4, 'Parlante Portatil Sony Extra Bass XB43 Color Azul', '<p>Sonido que merece la pena compartir La bocina inal&aacute;mbrica SRS-XB43 integra graves profundos y potentes con voces claras para ese caracter&iacute;stico sonido festivalero. Resistente y f&aacute;cil de usar para que disfrutes de la fiesta con tus amigos.</p>\r\n', 'parlante-portatil-sony-extra-bass-xb43-color-azul', 1500, 'apple-9-7-ipad-32-gb-space-grey_1677717435.jpg', '2023-03-01', 2),
(27, 9, 'Televisor LG 50\'\' UHD AI ThinQ Smart tv webOS -Procesador inteligente ?5 Gen5', '<p>Los televisores UHD de LG mejoran tu experiencia visual. Disfruta de colores vivos y detalles impresionantes con un 4K real.</p>\r\n\r\n<ul>\r\n	<li>Panel 4K UHD</li>\r\n	<li>4K Procesador Inteligente &alpha;5 generaci&oacute;n 5</li>\r\n	<li>4K Active HDR</li>\r\n	<li>Ultra Surround</li>\r\n	<li>LG ThinQ AI: Inteligencia Artificial</li>\r\n</ul>\r\n', '', 3900, 'dasg_1677719715.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(9, 'ndevierte@gmail.com', '$2y$10$V9QYhuCerNIIprq7WTPkqOTOid83VghciRlCHT.rBxbUHJGtmfHjC', 0, 'Neovic', 'Devierte', 'Silay City, Negros Occidental', '09092735719', 'facebook-profile-image.jpeg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(13, 'sam@upds', '$2y$10$QcTj1JUXI66tsJx2juC1qODmc6wHVhpBX4OCNKKR.u9Nqkb5g7DCm', 1, 'Samuel', 'Mercado', '', '', '', 1, 'S4cXdEVNJYoO', '', '2023-03-01'),
(14, 'rezor@gmail.com', '$2y$10$JAIJ.YCTLXdknQZIDJ8wVOc.nMJg4Bt.gcdhX8pBIol9/Qcdgr936', 1, 'Alex', 'Romero Juarez', 'morros', 'tarija234234', 'descarga.jfif', 1, 'jiOblmNDEBIQ', '', '2023-03-01'),
(16, 'mauri@gmail.com', '$2y$10$sEUsRnLFXKd4G4q4MeMCru4sWvF/2cG1J6VWTXU1PmFl/Bw8mg3AG', 0, 'mauri', 'Aram', 'Guadalquivir', '', '', 1, 'an859RtjPmZ7', '', '2023-03-01'),
(17, 'celeste@gmail.com', '$2y$10$ZV878eTaWnqeSIRmt7HiVeP/m2hMJJWQ233bb9PBTuJFqjy5BGbjW', 1, 'Celeste', 'Caucota', '', '', '', 1, 'LNvVQMOaSwt2', '', '2023-03-02'),
(18, 'armellacarlos18@gmail.com', '$2y$10$RixIOCz8NhSC3M/jrgCP0uU9jrbA7oTidwJKkFu9Y4MqY5SwwFHki', 0, 'Carlos', 'Armella', '', '', '', 1, '1GJw9fjHhQiZ', '', '2023-03-02'),
(19, 'probar@gmial.com', '$2y$10$ZtmfQeh5Zv9HOCG0WbgBweLu170IY//apKVxtp/WHXgrR3yFU.Snu', 0, 'Alex', 'Juarez', '', '', '', 1, 'OEAeMWs2iTQ8', '', '2023-03-02'),
(20, 'ke@me.com', '$2y$10$VeAWpmhieyyjbtX.FkCmfeQQF65VykvBJoyWRWaZiidY9QmcIr.Hy', 1, 'kar', 'me', '', '', '', 1, 'AoOfF1TQPzvN', '', '2023-03-06'),
(21, 'admin@admin.com', '$2y$10$5uVNwf6DhrOt6DJX9rdAtu7nuqeIivGHjCkuDqVGQnOQrMHI0bDYW', 1, 'ad', 'addd', '', '', '', 1, '9XTCaSqAV2Je', '', '2023-03-06'),
(22, 'user@user.com', '$2y$10$tXuPPu9XUUKFh9kPkxkZhOlZYAMr.yvIdOWrNKIkwP6zNBS.mcMZ2', 0, 'user', 'uuu', '', '', '', 1, 'nrm9VAbt3zUx', '', '2023-03-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

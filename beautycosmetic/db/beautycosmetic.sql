-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2017 at 06:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beautycosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Maybelline', '2017-01-21 23:14:52', '2017-01-21 23:14:52', NULL),
(2, 'Loral', '2017-01-21 23:15:00', '2017-01-21 23:15:00', NULL),
(3, 'Revlon', '2017-01-21 23:15:16', '2017-01-21 23:15:16', NULL),
(4, 'NYX', '2017-01-21 23:16:13', '2017-01-21 23:16:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Eyeliner', '2017-01-21 23:09:18', '2017-01-21 23:09:18', NULL),
(2, 'Eyeshaldow', '2017-01-21 23:09:25', '2017-01-21 23:09:25', NULL),
(3, 'Makeup', '2017-01-21 23:10:21', '2017-01-21 23:10:21', NULL),
(4, 'Lipstick', '2017-01-21 23:14:22', '2017-01-21 23:14:22', NULL),
(5, 'Nail', '2017-01-21 23:14:29', '2017-01-21 23:14:29', NULL),
(6, 'Mascara', '2017-01-25 07:22:49', '2017-01-25 07:22:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `category_id`, `brand_id`, `image`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, ' Master Precise Curvy™ Black', 1, 1, 'images.png', 9000, 'Now, you control the curve! Define your eyes with full-bodied precision. Our patent pending tip hugs lids for a seamless curvy line.\r\n', '2017-01-21 23:25:41', '2017-01-21 23:25:41', NULL),
(2, ' Eyestudio® Master Precise® Liquid Liner Black', 1, 1, 'index.png', 9000, 'Don’t just own it, master it! This Allure Best of Beauty Award Winner 2013 delivers laser-sharp precision for the most defined line.\r\n\r\n', '2017-01-21 23:34:35', '2017-01-21 23:34:35', NULL),
(3, 'Eyestudio® Lasting Drama® Waterproof Gel Pencil ', 1, 1, 'index.jpg', 9000, 'Make a lasting impression with our waterproof gel pencil that delivers all-day, intense color.\r\n\r\n', '2017-01-21 23:37:52', '2017-01-21 23:37:52', NULL),
(4, 'Eyestudio® Lasting Drama® Gel Liner Blackest Black', 1, 1, '2.jpg', 13000, 'Achieve winged drama with Maybelline''s oil-free gel eyeliner.\r\nabliable colors- black,brown,Eggplant,charcoal', '2017-01-21 23:47:31', '2017-01-21 23:47:31', NULL),
(5, ' Define-A-Line® Eye Liner Brownish Black', 1, 1, '1.jpg', 10500, 'No sharpening necessary! This mechanical pencil liner creates defined eye looks.\r\n\r\n\r\n', '2017-01-21 23:54:50', '2017-01-21 23:54:50', NULL),
(6, 'Master Precise Skinny™ Gel Pencil Defining Black', 1, 1, 'maybelline-eyeliner-master-precise-skinny-defining-black_003.jpg', 11000, 'Sleek, defined, and on point. Master the most precise eye looks with our always-sharp gel liner.\r\n\r\n', '2017-01-21 23:59:36', '2017-01-21 23:59:36', NULL),
(7, ' The Rock Nudes™ Eye Shadow Palette Eye Shadow Palette', 2, 1, 'maybelline-eye-shadow-rock-nudes-palette-041554460513-o.jpg', 16000, 'Dare to go nude! Create 13 eye shadow looks from one palette.\r\n', '2017-01-22 00:09:41', '2017-01-22 00:09:41', NULL),
(8, 'The Blushed Nudes® Eye Shadow Palette Eye Shadow Palette', 2, 1, 'maybelline-eye-shadow-the-blushed-nudes-palette-041554434866.jpg', 16500, 'Dare to go nude! Create 13 eye shadow looks from one palette.\r\n', '2017-01-22 00:12:11', '2017-01-22 00:12:11', NULL),
(9, ' Expert Wear® Eye Shadow Quads Natural Smokes', 2, 1, 'maybelline-eye-shadow-the-nudes-palette-041554419184-o.jpg', 8000, 'Extraordinary color and exceptional wear that lasts up to 12 hours.', '2017-01-22 00:14:09', '2017-01-22 00:14:09', NULL),
(10, ' Eyestudio® ColorTattoo® Metal 24HR Cream Gel Eye Shadow Barely Branded', 2, 1, 'maybelline-eye-shadow-color-tattoo-24hr-cream-bad-to-the_002.jpg', 9500, 'Dare to get inked. This cream gel eye shadow delivers 24-hour metallic intensity paired with tattoo tenacity.\r\n\r\n', '2017-01-22 00:15:46', '2017-01-22 00:15:46', NULL),
(11, ' Expert Wear® Eye Shadow Nude Glow', 2, 1, 'maybelline-eye-shadow-expert-wear-quad-natural-smokes-04_002.jpg', 6000, 'Extraordinary creamy rich color and incredible wear that lasts up to 14 hours.\r\n\r\n', '2017-01-22 00:20:50', '2017-01-22 00:20:50', NULL),
(12, ' Fit Me® Matte + Poreless Powder Translucent', 3, 1, 'maybelline-loose-powder-shine-free-oil-control-light-041_002.jpg', 12000, 'Maybelline''s 1st mattifying powder that fits skin tone and texture. Skin stays poreless and perfectly matte for up to 16 hours.', '2017-01-22 00:49:28', '2017-01-22 00:49:28', NULL),
(13, 'Color Sensational® Lip Color Pink Satin', 4, 1, 'maybelline-color-sensational-creamy-matte-nude-raw-chocolate.jpg', 9500, 'Irresistible color meets precious honey nectar for a supremely sensational lipstick.\r\n\r\n', '2017-01-22 00:51:31', '2017-01-22 00:51:31', NULL),
(14, ' Shine Free® Oil-Control Loose Powder Light', 3, 1, '070712-100__88149.jpg', 7500, 'Advanced 100% oil-free formula keeps skin fresh, clean, and shine-free for hours.\r\n\r\n', '2017-01-22 00:58:17', '2017-01-22 00:58:17', NULL),
(15, 'Lips® Moisturizing Lip Balm Cherry Me', 4, 3, 'fc6f939c06e6585d23694a0d9c352110.jpg', 6500, 'No more basic lip balm! Achieve intense lip repair + eight-hour hydration.\r\n\r\n', '2017-01-22 01:01:09', '2017-01-22 01:01:09', NULL),
(16, 'Dream Wonder® Powder Buff Beige', 3, 1, '330103-15__51807.jpg', 15000, 'This powder glides on soft and smooth for flawless coverage and a natural silky finish.\r\n\r\n\r\n\r\n', '2017-01-22 01:03:14', '2017-01-22 01:03:14', NULL),
(17, 'Dream Liquid® Mousse Classic Ivory', 3, 1, '010109-m2-closed__42666.jpg', 14000, 'Achieve the look of completely poreless skin with a perfected airbrushed finish.\r\n\r\n', '2017-01-23 23:55:26', '2017-01-23 23:55:26', NULL),
(18, ' Fit Me® Matte + Poreless Foundation Natural Tan', 3, 1, '040144_Creamy_Natural__08113.jpg', 11000, 'Want the perfect foundation fit? It''s all about matching skin tone and texture. Mattifying liquid formula ideal for normal to oily skin.\r\n\r\n', '2017-01-24 00:00:16', '2017-01-24 00:00:16', NULL),
(19, ' Dream Fresh BB® Light/Medium', 3, 1, '60__00882.jpg', 12500, 'Welcome a good skin day, every day! This 8-in-1 BB Cream instantly beautifies skin.\r\n\r\n', '2017-01-24 00:03:25', '2017-01-24 00:03:25', NULL),
(20, 'Dream Cushion™ Fresh Face Liquid Foundation Classic Ivory', 3, 1, 'Maybelline-Foundation-Dream-Cushion-Ivory-041554482331-O.png', 20500, 'Complete luminous coverage for fresh-faced perfection.', '2017-01-24 00:10:26', '2017-01-24 00:10:26', NULL),
(21, ' Color Sensational® Lip Liner Nude', 1, 1, 'maybelline-eyeliner-ultra-liner-waterproof-black-0415545_002.jpg', 7500, 'Color-coordinating smudge and smear-proof liners keep your lipstick beautiful.\r\n\r\n', '2017-01-24 00:20:04', '2017-01-24 00:20:04', NULL),
(22, ' Color Sensational® Vivid Matte Liquid™ Rebel Red', 4, 1, 'maybelline-lip-color-superstay-24hr-2step-everlasting-wi_002.jpg', 8500, 'Drench your lips in vivid color with a velvety matte finish. Designed with 2X the pigments for intense color.\r\n\r\n', '2017-01-24 00:46:58', '2017-01-24 00:46:58', NULL),
(23, ' Super Stay 24® Lip Color Everlasting Wine', 4, 1, 'maybelline-vivid-matte-liquid-sinful-stone-041554493627-o.jpg', 13500, 'Put our 24-hour lip color to the challenge. Always looks and feels just-applied through 300 cupcake bites, 120 coffee sips, and 90 kisses.\r\n\r\n', '2017-01-24 00:48:25', '2017-01-24 00:48:25', NULL),
(24, 'Lip Studio™ COLORblur® Cream Matte Pencil & Smudger', 4, 1, 'maybelline-lip-color-color-blur-berry-misbehaved-04155444814.jpg', 9500, 'Bold or soft lip color? Try it all. Blur the lines of what’s possible with our matte finish lipstick pencil.\r\n\r\n', '2017-01-24 01:19:49', '2017-01-24 01:19:49', NULL),
(25, ' Color Show® Nail Polish An Old Flame', 5, 1, 'maybelline-nail-polish-color-show-an-old-flame-041554417_002.jpg', 4500, 'Just off the runway! Nail polish colors straight from the shows of New York Mercedes-Benz Fashion Week.\r\n\r\n', '2017-01-24 01:21:55', '2017-01-24 01:21:55', NULL),
(26, ' Color Show® Blushed Nudes Nail Polish In The Blush', 5, 1, '050732__15045.1433175121.190.250.jpg', 4500, 'Dare to go nude with our blushing nail polish shades!\r\n\r\n', '2017-01-24 01:23:56', '2017-01-24 01:23:56', NULL),
(27, 'Revlon Super Lustrous Lipstick, 1 Nude Attitude, 0.15 ', 4, 3, 'bc53098f790cb4be314bfb055c20ab74.500.jpg', 7500, 'Available in four finishes: Crème, Matte, Pearl and Shine\r\n    ', '2017-01-24 01:48:03', '2017-01-24 01:48:03', NULL),
(28, 'Revlon Super Lustrous Lipstick, 525 Wine With Everything (Creme)', 4, 3, 'eed72100b656050075e6d7d29947ed45.500.jpg', 6500, 'Available in four finishes: Crème, Matte, Pearl and Shine. \r\n  ', '2017-01-24 02:29:49', '2017-01-24 02:29:49', NULL),
(29, 'Revlon Moon Drops Moisture Creme Lipstick, 700 Crystal Cut Coral, 0.15 Oz', 4, 3, '6d34777bba5f63e216166a41312de2b7.jpg', 10500, 'REVLON Siren Crystal Cut Coral 700\r\n\r\n    Keeps your lips soft & supple\r\n    Conditions and moisutrizes dry lips\r\n\r\n', '2017-01-24 02:34:10', '2017-01-24 02:34:10', NULL),
(30, ' Moon Drops Moisture Creme Lipstick, 200 Bamboo Bronze, 0.15 Oz', 4, 1, 'c3f176c6b122786de18e6456226f300e.jpg', 10500, ' Siren Bamboo Bronze 200\r\n\r\n    Keeps your lips soft & supple\r\n    Conditions and moisutrizes dry lips\r\n\r\n', '2017-01-24 02:39:21', '2017-01-24 02:39:21', NULL),
(31, 'Revlon New Complexion Oil Control Makeup, SPF 20, 1 oz.', 3, 3, '050152_08_Warm_Golden__48396.jpg', 15000, 'Shine-free complexion.Total matte perfection. Oil-absorbing spheres put an end to shine once and for all.\r\n    ', '2017-01-24 03:05:33', '2017-01-24 03:05:33', NULL),
(32, 'Revlon Colorstay Overtime Lipcolor', 4, 3, '050522_010_Non_Stop_Cherry__04844.jpg', 12500, 'The result? Beautiful, shiny lips that last and feel great as long as you do.\r\n', '2017-01-24 03:12:11', '2017-01-24 03:12:11', NULL),
(33, 'Revlon Beyond Natural Cream to Powder Eye Shadow, 0.20 oz.', 2, 3, '050015_530__98679.jpg', 8500, 'Lightweight formula applies like a cream, blends easily, and dries to a soft powder finish.\r\n', '2017-01-24 03:14:42', '2017-01-24 03:14:42', NULL),
(34, 'Revlon Bedroom Eyes Powder Liner', 1, 3, '050317_675_Jaded__52972.jpg', 6500, 'Get smoldering, smokey eyes with the Revlon Bedroom Eyes Powder Liner. ', '2017-01-24 03:16:56', '2017-01-24 03:16:56', NULL),
(35, 'Revlon Colorstay Gel-Smooth Base Coat + Gel-Shine Top Coat Longwear Nail Enamel Combination', 5, 3, '050704__68302.1425069095.190.250.jpg', 4000, 'Stronger and vibrant colors for up to 11 days.\r\nResin and high molecular weight polymers provide a shatterproof gloss.', '2017-01-24 03:20:44', '2017-01-24 03:20:44', NULL),
(36, ' ColorStay Gel Envy Nail Enamel & Top Coat Value Pack', 5, 2, 'Cos30_5.jpg', 5000, ' Includes nail enamel & base coat.Gorgeous colors; perfect for any occasion.long-lasting; wont chip, fade, or wear off  .\r\n\r\n', '2017-01-24 03:26:33', '2017-01-24 03:26:33', NULL),
(37, 'Revlon Brilliant Strength Nail Enamel', 5, 3, '050744_large__95025.jpg', 6500, 'Revlon Brilliant Strength Nail Enamel is a three-in-one base coat, color, and top coat designed to strengthen your nails while bathing them in bright, beautiful color.\r\n', '2017-01-24 03:43:27', '2017-01-24 03:43:27', NULL),
(38, 'Revlon Colorstay Gel Envy Diamond Top Coat', 5, 3, '050706___92957.jpg', 7000, '    Shine + Strength formula\r\n    Gel like wear and shine\r\n    Salon quality\r\n    Creates longer lasting nail color than traditional top coats\r\n\r\n', '2017-01-24 03:45:20', '2017-01-24 03:45:20', NULL),
(39, 'Revlon ColorStay Longwear Nail Enamel, .4 oz.', 5, 3, '050740__68822.jpg', 4500, '   Up to 11 days of shining, flawless color when used with ColorStay Gel-Shine Top Coat.', '2017-01-24 03:48:03', '2017-01-24 03:48:03', NULL),
(40, 'Revlon ColorStay Gel Envy Longwear Nail Enamel', 5, 3, 'Beginners_Luck__90810.jpg', 4000, 'Gorgeous and vibrant color\r\nLong-lasting polish\r\nSalon quality finish\r\nEasy to remove with nail polish remover\r\n', '2017-01-24 03:51:54', '2017-01-24 03:51:54', NULL),
(41, 'Revlon CustomEyes Shadow & Liner', 2, 3, '050021_015_Party_Pops__20408.jpg', 3000, 'Four complementary powder shadows and one powder liner make this a shadow series unlike any other.', '2017-01-24 10:58:33', '2017-01-24 10:58:33', NULL),
(42, 'Revlon Luxurious Color Diamond Lust Eye Shadow', 2, 3, '050016__44836.jpg', 6000, ' Define and accent your natural beauty with shades that are designed to complement you!', '2017-01-24 11:04:19', '2017-01-24 11:04:19', NULL),
(43, 'Revlon ColorStay Mineral Eye Shadow, 0.04 oz.', 2, 3, '050014_full1__72465.jpg', 8500, ' gives you a trio of mineral-rich shadow that wears for 16 hours. Safe for sensitive eyes and contact lens wearers.', '2017-01-24 11:10:35', '2017-01-24 11:10:35', NULL),
(44, 'Revlon ColorStay 16 Hour Eye Shadow', 2, 3, 'Revlon_Colorstay__85088.jpg', 6500, ' Rich, velvety shades blend together seamlessly to give you a gorgeous look you''ll love.', '2017-01-24 11:12:46', '2017-01-24 11:12:46', NULL),
(45, 'Revlon ColorStay 12 Hour Eye Shadow with SoftFlex', 2, 3, '050024_Midnight_Express__71876.jpg', 8500, ' Coordinated quads help you mix, match, and build a look that is all you.', '2017-01-24 11:14:57', '2017-01-24 11:14:57', NULL),
(46, 'Revlon PhotoReady Primer + Shadow', 2, 3, '050025_large__99045.jpg', 6500, 'The Revlon PhotoReady Primer + Shadow compact is an all-in-one primer and shadow palette designed to help you create a look that is all you.', '2017-01-24 11:41:20', '2017-01-24 11:41:20', NULL),
(47, 'Revlon ColorStay Pressed Powder with SoftFlex, .3 oz.', 3, 3, '050709_820_Light__06194_002.jpg', 13500, 'Revlon ColorStay Pressed Powder with SoftFlex is the perfect finishing touch for your favorite foundation.', '2017-01-24 11:45:52', '2017-01-24 11:45:52', NULL),
(48, 'Revlon Age Defying Powder with DNA Advantage', 3, 3, '050734_10__67760.jpg', 14000, 'The smooth pressed powder glides on effortlessly and minimizes the signs of aging, wrinkles, fine lines and more! ', '2017-01-24 12:25:29', '2017-01-24 12:25:29', NULL),
(49, 'Revlon Nearly Naked Pressed Powder', 3, 3, '050743_010__82784.jpg', 12500, 'Revlon Nearly Naked Pressed Powder sits so lightly on your skin, you may not know it''s there. You''ll get a lightweight feel and even coverage.\r\n', '2017-01-24 12:26:54', '2017-01-24 12:26:54', NULL),
(50, 'Maybelline Dream Matte Powder', 3, 1, '050711_245__42510.jpg', 10500, '. It provides a perfect natural looking foundation. Stays on all day without need for touchup.', '2017-01-24 12:28:35', '2017-01-24 12:28:35', NULL),
(51, 'Revlon ColorStay Mineral Finishing Powder, .31 oz', 3, 3, '050719_020__84039.jpg', 13500, 'Put the finishing touch on your look with Revlon ColorStay Mineral Finishing Powder.', '2017-01-24 12:30:12', '2017-01-24 12:30:12', NULL),
(52, 'Loreal Ideal Balance Quick Stick Balancing Foundation', 3, 2, 'Creme_Cafe__39905.jpg', 18500, 'This stick blends smoothly and easily as a full makeup or does quick fixes.', '2017-01-24 12:34:15', '2017-01-24 12:34:15', NULL),
(53, 'Loreal Infallible Never Fail Lipcolour', 4, 2, '306__86580.jpg', 13500, 'An intensely moisturizing complex including Marine Collagen and Vitamin E protects and conditions lips, preventing moisture loss over time.', '2017-01-24 12:38:23', '2017-01-24 12:38:23', NULL),
(54, 'Loreal Infallible Never Fail Eyeliner', 1, 2, 'Scarlett_Glamour__06085.jpg', 7500, 'Up to 16-hours of smudge-resistant color.Built-in smudger and sharpener', '2017-01-24 12:42:29', '2017-01-24 12:42:29', NULL),
(55, 'Loreal Infallible 24 Hr Eye Shadow', 2, 2, '030024_large__33160.jpg', 6000, 'Ultra intense eye shadow that lasts from day until dawn - a full 24 hours.', '2017-01-24 23:18:08', '2017-01-24 23:18:08', NULL),
(56, 'Loreal Wear Infinite Eye Shadow Quad', 2, 2, 'Out_of_the_blue__69166.jpg', 7000, 'An infinite number of looks for your eyes ... all in one package!\r\n\r\n', '2017-01-24 23:20:10', '2017-01-24 23:20:10', NULL),
(57, 'Loreal Wear Infinite Eye Shadow Duo', 2, 2, '030009-CTNCNDY__02714.jpg', 4500, 'This product hasn''t received any reviews yet. Be the first to review this product!', '2017-01-24 23:23:24', '2017-01-24 23:23:24', NULL),
(58, 'Loreal Telescopic Precision Waterproof Liquid Eyeliner', 1, 2, 'Eyeliner__81231_002.jpg', 13500, 'With a fine point tip you can do any eye design and look fabulous all day long. ', '2017-01-24 23:28:17', '2017-01-24 23:28:17', NULL),
(59, 'Loreal HIP Color Truth Cream Eyeliner', 1, 2, '945__57180.jpg', 8500, 'Loreal HIP Color Truth Cream Eyeliner gives you the bold color you want in a creamy, long lasting formula. ', '2017-01-24 23:30:44', '2017-01-24 23:30:44', NULL),
(60, 'Loreal Colour Riche Lip Liner & Sharpener', 1, 2, '030306-174__71800.jpg', 5500, ' Rich, Creamy Lip Liner and Sharpener In One!\r\nSharpener on one side and Lip Liner on the other.', '2017-01-24 23:36:43', '2017-01-24 23:36:43', NULL),
(61, 'Loreal Colour Riche Balm', 4, 2, '030515_172__11081.jpg', 7800, 'Smoothes lips instantly.\r\n8 full hours of continuous hydration.\r\nLips are softer and more supple.', '2017-01-24 23:39:29', '2017-01-24 23:39:29', NULL),
(62, 'Loreal Colour Caresse by Colour Riche Lipstick', 4, 2, '030580_175__10159.1456170251.190.250.jpg', 8500, 'Ready to shine bright?\r\n', '2017-01-24 23:42:54', '2017-01-24 23:42:54', NULL),
(63, 'Loreal Colour Riche Caresse Wet Shine Stain', 4, 2, '030581_187__07065.1456172242.190.250.jpg', 5800, 'Looking for a flawless long-lasting lip color? You should try out the L''oreal Paris Riche Caresse Wet Shine Lip Gloss.', '2017-01-24 23:46:16', '2017-01-24 23:46:16', NULL),
(64, 'Loreal Wear Infinite Powder Eyeliner', 1, 2, '030402_540__82923.1455638751.190.250.jpg', 6500, 'Create thick or thin lines for definition that''s dynamic or delicate with Wear Infinite Soft Powder Eyeliner', '2017-01-24 23:49:19', '2017-01-24 23:49:19', NULL),
(65, 'Revlon Liquid Quick Dry, 0.5 oz.', 5, 3, '340__30107.1450713326.190.250.jpg', 6500, 'We don''t always have time to let our nails dry. Thankfully we do have Revlon Liquid Quick Dry. ', '2017-01-24 23:52:44', '2017-01-24 23:52:44', NULL),
(66, 'Revlon Top Speed Fast Dry Nail Enamel, .5oz', 5, 3, '050714_990__75338.1458154156.190.250.jpg', 7000, 'The color precise brush ensures even, smooth, salon quality application every time.', '2017-01-24 23:54:07', '2017-01-24 23:54:07', NULL),
(67, 'Loreal Nail Polish', 5, 2, 'loreal-nail-polish-4pack__16808.1481147421.190.250.jpg', 4000, 'Inspired by shades of pure romance.\r\nSoft nail shades complete this look that''s hard to resist.', '2017-01-24 23:57:06', '2017-01-24 23:57:06', NULL),
(68, 'Loreal Bijou Facets Precious Effect Nail Colour, 0.2 oz.', 5, 2, '915__20888.1455913903.190.250.jpg', 3500, ' Loreal Bijou Facets Precious Effect Nail Colour\r\n    0.2 FL OZ / 6 ml\r\n\r\n', '2017-01-25 00:00:16', '2017-01-25 00:00:16', NULL),
(69, 'Maybelline Color Show Nail Lacquer', 5, 1, 'maybelline-color-show__05851.1481232780.190.250.jpg', 2500, 'Long lasting nail polish.\r\nNo chip color nail lacquer.\r\nEasy-flow brush.\r\n', '2017-01-25 00:45:35', '2017-01-25 00:45:35', NULL),
(70, 'Maybelline Express Finish 50 Second Nail Color', 5, 1, '639__47422.1452271954.190.250.jpg', 2500, 'Polish sets in 50 seconds\r\nAnti-chip formula', '2017-01-25 00:50:19', '2017-01-25 00:50:19', NULL),
(71, 'Loreal De-Crease Eye Shadow Base For All Skin Types', 4, 2, 'De_crease__11103.1454961187.190.250.jpg', 8000, 'Use wand to apply base to eyelid\r\nUsing fingertip, blend base from lash line to brow\r\n', '2017-01-25 01:07:26', '2017-01-25 01:07:26', NULL),
(72, 'Loreal Sublime Glow Moisturizing MicroFine Mist 4.2 oz - Medium Skin Tones', 3, 2, '030803__88941.1455907011.190.250.jpg', 15800, ' Angle spraying.Quick-dry.Gradual build-up of color. Moisturizes skin and keeps it healthy.\r\n\r\n', '2017-01-25 07:08:49', '2017-01-25 07:08:49', NULL),
(73, 'Loreal Dermo Expertise Transformance Skin Perfecting Solution 1.0 Fl. Oz.', 3, 2, 'Cos3b_4_pack-shot.jpg', 17500, 'At last, the skin you''ve always wanted. Ultra-soft. Ultra-smooth. Newly even. Virtually poreless. Flawless.', '2017-01-25 07:13:32', '2017-01-25 07:13:32', NULL),
(74, 'Loreal Visible Lift Line Minimizing Powder', 3, 2, '030704-160__31599.1474572664.190.250.jpg', 14500, 'Visible Lift Line-Minimizing & Tone-Enhancing Powder is L''Oreal''s most advanced age-minimizing powder.', '2017-01-25 07:16:14', '2017-01-25 07:16:14', NULL),
(75, 'Loreal Telescopic Explosion Mascara', 6, 2, '030624_970_Black__48639.1456159362.190.250.jpg', 9800, 'Smooth formula wears all day without smudging or flaking.Suitable for sensitive eyes and contact lens wearers.\r\n', '2017-01-25 07:28:18', '2017-01-25 07:28:18', NULL),
(76, 'Loreal Voluminous Million Lashes Diamonds Mascara', 6, 2, '030630__48912.1456159704.190.250.jpg', 9800, 'Limited Edition diamond sprinkle formula.\r\nNo clumps.', '2017-01-25 07:29:40', '2017-01-25 07:29:40', NULL),
(77, 'Loreal Voluminous Miss Manga Oversize Volume Mascara', 6, 2, '374__87928.1452192961.190.250.jpg', 9000, 'Wide-eyed look.Even application', '2017-01-25 07:31:59', '2017-01-25 07:31:59', NULL),
(78, 'Loreal Voluminous Million Lashes Mascara, Denim Shades', 6, 2, '030632_718__57371.1456162008.190.250.jpg', 13000, 'Glides on smoothly and lasts all day while thickening and separating each lash.', '2017-01-25 07:33:55', '2017-01-25 07:33:55', NULL),
(79, 'Loreal Original Voluminous Mascara', 6, 2, '030602_115__49629.1456167497.190.250.jpg', 8000, 'Thickens and lengthens.Zero clumps, flakes, or smudges\r\n', '2017-01-25 07:37:10', '2017-01-25 07:37:10', NULL),
(80, 'Maybelline Volum'' Express One by One Mascara', 6, 1, '040652_Satin_Black_257__21417.1457106135.190.250.jpg', 8500, 'Instant volume and bold, dark shades to make your eyes pop.\r\nOphthalmologist tested and contact lens safe.', '2017-01-25 07:39:38', '2017-01-25 07:39:38', NULL),
(81, 'Maybelline Eye Studio Brow Drama Sculpting Brow Mascara', 6, 1, '265__84369.1452264133.190.250.jpg', 9000, 'Sculpting mascara formula that naturally defines and fills brows', '2017-01-25 07:41:31', '2017-01-25 07:41:31', NULL),
(82, 'Revlon Grow Luscious by Fabulash Mascara & Lash Enhancer', 6, 3, '050619_004__01946.1458141113.190.250.jpg', 11000, 'The revolutionary formula gets deep into your lashes to strengthen them and provide bold color in one sweep of the brush.', '2017-01-25 07:43:58', '2017-01-25 07:43:58', NULL),
(83, 'Revlon Lash Potion Volume & Length Waterproof Mascara', 6, 3, '050601-221__64109.1478816031.190.250.jpg', 6500, 'It''s not magic, it''s Revlon Lash Potion Volume & Length Mascara', '2017-01-25 07:45:34', '2017-01-25 07:45:34', NULL),
(84, 'Maybelline The Colossal Volum'' Express Mascara', 6, 1, '040269_Classic_Black_231__53029.1457105292.190.250.jpg', 7800, 'Patented MegaBrush + Collagen Formula plump lashes one by one', '2017-01-25 08:01:23', '2017-01-25 08:01:23', NULL),
(85, 'Maybelline Volum'' Express Mascara Waterproof', 6, 1, 'unknown__17848.1457116497.190.250.jpg', 9800, 'Exclusive long lasting tri-volume formula surrounds lashes giving dramatic volume while gently conditioning.', '2017-01-25 08:09:04', '2017-01-25 08:09:04', NULL),
(86, 'Maybelline Volum'' Express Falsies Big Eyes Waterproof Mascara', 1, 1, '040619__51385.1478815898.190.250.jpg', 8500, 'Waterproof formula stays put all day.Bold look makes eyes pop and look wider and bigger.', '2017-01-25 08:27:54', '2017-01-25 08:27:54', NULL),
(87, 'Maybelline XXL Pro Volume Mascara', 6, 1, '040641__88617.1432146807.190.250.jpg', 15500, 'Contact lens safe.Opthalmologist tested.Removes easily with soap and water.\r\n', '2017-01-25 08:32:19', '2017-01-25 08:32:19', NULL),
(88, 'Maybelline XXL Curl Power Volume + Length Washable Microfiber Mascara', 6, 1, '040634__12142.1415390024.190.250.jpg', 9500, 'This mascara dramatically curls and extends lashes 45å¡ from root to tip. ', '2017-01-25 08:35:09', '2017-01-25 08:35:09', NULL),
(89, 'Maybelline XXL Volume + Length Microfiber Mascara', 6, 1, 'maybelline_xxl_full__52424.1415386025.190.250.gif', 8500, 'Removes easily with soap and water or Maybelline 100% Oil Free Eye Makeup Remover.', '2017-01-25 08:38:44', '2017-01-25 08:38:44', NULL),
(90, 'Maybelline Intense XXL Volume + Length Microfiber Mascara - Waterproof', 6, 1, '040632__72795.1415390011.190.250.jpg', 7800, 'This mascara creates up to 60% longer lashes and 7X the volume.', '2017-01-25 08:41:24', '2017-01-25 08:41:24', NULL),
(91, 'Maybelline Define-A-Lash Volume Mascara', 6, 1, '040640_821_Very_Black__87037.1457110002.190.250.jpg', 7000, 'Washable formula. Removes easily with soap and water.', '2017-01-25 08:42:43', '2017-01-25 08:42:43', NULL),
(92, 'Maybelline Define-A-Lash Mascara', 6, 1, '040624_Soft_Black__04434.1457110115.190.250.jpg', 9000, 'Sweep mascara from your outer lash to inner lash, sweeping brush slowly from root to tip. Do not let dry between coats.', '2017-01-25 08:45:52', '2017-01-25 08:45:52', NULL),
(93, 'Maybelline Lash Expansion Washable Mascara', 6, 1, '040650_Brownish_Black__31976.1457108585.190.250.jpg', 6000, 'Choose seriously sexy lashes in black or brown', '2017-01-25 08:47:24', '2017-01-25 08:47:24', NULL),
(94, 'Mineral Finishing Powder', 3, 4, 'mineralfinishingpowder_main.jpg', 1200, 'A mineral finishing powder that sets your favorite look with a flawless finish; skin appears fresh and radiant throughout the day.', '2017-01-25 09:15:38', '2017-01-25 09:15:38', NULL),
(95, 'Blotting Powder', 3, 4, 'blottingpowder_main.jpg', 14500, 'Kissed with the barest hint of pigment Blotting Powder takes down the shine without settling into fine lines polishing skin to satin matte perfection. ', '2017-01-25 09:18:52', '2017-01-25 09:18:52', NULL),
(96, 'Studio Finishing Powder', 3, 4, 'studiofinishingpowder_main.jpg', 13000, 'A miracle in a jar! This 100% pure mineral silica finishing powder is perfect for setting your foundation or wearing alone. ', '2017-01-25 09:20:10', '2017-01-25 09:20:10', NULL),
(97, ' Stay Matte But Not Flat Powder Foundation', 3, 4, 'staymattebutnotflatpowderfoundationmain.jpg', 11500, 'Want a matte finish to help you achieve a flawless-looking complexion?', '2017-01-25 09:24:39', '2017-01-25 09:24:39', NULL),
(98, 'Total Control Drop Foundation', 3, 4, '800897068837_totalcontroldropfoundation_buff_main.jpg', 16500, 'From sheer to full, your ideal coverage is just drops away with our new Total Control Drop Foundation!', '2017-01-25 09:26:51', '2017-01-25 09:26:51', NULL),
(99, 'Strobe of Genius Illuminating Palette ', 2, 4, 'strobeofgeniusilluminatingpalette_main.jpg', 20800, 'This breakthrough palette features seven velvety-smooth shades that will enhance your features with serious levels of illumination.', '2017-01-25 09:34:13', '2017-01-25 09:34:13', NULL),
(100, 'Love Contours All Palette ', 2, 4, 'lovecontoursallpalette_main.jpg', 23000, 'You can create a whole look using one sleek palette. Hold on, this heart just skipped a beat.', '2017-01-25 09:37:35', '2017-01-25 09:37:35', NULL),
(101, ' Soft Matte Lip Cream Set 8', 4, 4, 'softmattelipcreamset8_main.jpg', 8000, 'Envelope your lips in creamy, highly pigmented matte color with our limited-edition Soft Matte Lip Cream Sets! Perfect for holiday gifting,', '2017-01-25 22:17:19', '2017-01-25 22:17:19', NULL),
(102, 'Double Stacked Mascara', 6, 4, 'doublestackedmascara_main.jpg', 18000, 'Coat your lashes with mascara. Add fibers.', '2017-01-25 22:25:06', '2017-01-25 22:25:06', NULL),
(103, 'Color Mascara', 6, 4, '800897822040_colormascara_blue_swatch_large.jpg', 8500, 'Think beyond the ordinary with these fun and vibrant new mascara options from NYX.', '2017-01-25 22:27:38', '2017-01-25 22:27:38', NULL),
(104, 'Perfect Filter Shadow Palette ', 2, 4, '800897067540_perfectfiltershadowpalette_oliveyou_main.jpg', 19000, 'Shadow Palettes feature ten vibrant shades of our amazing eyeshadow.', '2017-01-25 22:30:23', '2017-01-25 22:30:23', NULL),
(105, ' Ultimate Shadow Palette ', 2, 4, '800897017644_ultimateshadowpalette_warmneutrals_main.jpg', 20000, 'what it is--a pro-level palette packed with 16 high-performance eyeshadows in a rainbow of tone-inspired shades.', '2017-01-25 22:33:37', '2017-01-25 22:33:37', NULL),
(106, 'Jumbo Eye Pencil', 1, 1, 'jumboeyepencil_main.jpg', 5500, 'Our most voluptuous pencil yet! Our Jumbo Eye Pencils can be sharpened with a sharpener that has an opening for a large pencil.', '2017-01-25 22:39:52', '2017-01-25 22:39:52', NULL),
(107, 'Slide On Pencil', 1, 4, 'fauxblackseyeliner_main.jpg', 9000, 'Don’t let the softness of this pencil fool you.', '2017-01-25 22:47:10', '2017-01-25 22:47:10', NULL),
(108, 'Precious Pearls', 5, 4, 'preciouspearl_main.jpg', 12000, 'Plunge into the spellbound hues of the ocean and embellish your nails with 3-dimensional breathtaking pearls ', '2017-01-25 23:13:35', '2017-01-25 23:13:35', NULL),
(109, ' Liquid Suede Cream Lipstick Set 3', 4, 4, 'liquidsuedecreamlipstickset3_main.jpg', 7000, 'Cherry Skies, Soft-Spoken and Vintage. ', '2017-01-25 23:18:10', '2017-01-25 23:18:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2017_01_11_111940_create_category_table', 1),
(27, '2017_01_11_112500_create_brand_table', 1),
(28, '2017_01_11_112509_create_item_table', 1),
(29, '2017_01_11_122926_create_users_table', 1),
(30, '2017_01_12_093950_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `users_id`, `cart`, `phone`, `address`, `delivery_address`, `date`, `status`, `created_at`, `updated_at`) VALUES
(14, 3, 'O:8:"App\\Cart":3:{s:5:"items";a:4:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:9000;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:1;s:4:"name";s:30:" Master Precise Curvy™ Black";s:11:"category_id";i:1;s:8:"brand_id";i:1;s:5:"image";s:10:"images.png";s:5:"price";i:9000;s:11:"description";s:134:"Now, you control the curve! Define your eyes with full-bodied precision. Our patent pending tip hugs lids for a seamless curvy line.\r\n";s:10:"created_at";s:19:"2017-01-22 05:55:41";s:10:"updated_at";s:19:"2017-01-22 05:55:41";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:1;s:4:"name";s:30:" Master Precise Curvy™ Black";s:11:"category_id";i:1;s:8:"brand_id";i:1;s:5:"image";s:10:"images.png";s:5:"price";i:9000;s:11:"description";s:134:"Now, you control the curve! Define your eyes with full-bodied precision. Our patent pending tip hugs lids for a seamless curvy line.\r\n";s:10:"created_at";s:19:"2017-01-22 05:55:41";s:10:"updated_at";s:19:"2017-01-22 05:55:41";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:8;a:3:{s:3:"qty";i:1;s:5:"price";i:16500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:8;s:4:"name";s:57:"The Blushed Nudes® Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-eye-shadow-the-blushed-nudes-palette-041554434866.jpg";s:5:"price";i:16500;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:42:11";s:10:"updated_at";s:19:"2017-01-22 06:42:11";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:8;s:4:"name";s:57:"The Blushed Nudes® Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-eye-shadow-the-blushed-nudes-palette-041554434866.jpg";s:5:"price";i:16500;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:42:11";s:10:"updated_at";s:19:"2017-01-22 06:42:11";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:25;a:3:{s:3:"qty";i:1;s:5:"price";i:4500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:25;s:4:"name";s:38:" Color Show® Nail Polish An Old Flame";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-nail-polish-color-show-an-old-flame-041554417_002.jpg";s:5:"price";i:4500;s:11:"description";s:107:"Just off the runway! Nail polish colors straight from the shows of New York Mercedes-Benz Fashion Week.\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:51:55";s:10:"updated_at";s:19:"2017-01-24 07:51:55";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:25;s:4:"name";s:38:" Color Show® Nail Polish An Old Flame";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-nail-polish-color-show-an-old-flame-041554417_002.jpg";s:5:"price";i:4500;s:11:"description";s:107:"Just off the runway! Nail polish colors straight from the shows of New York Mercedes-Benz Fashion Week.\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:51:55";s:10:"updated_at";s:19:"2017-01-24 07:51:55";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:26;a:3:{s:3:"qty";i:1;s:5:"price";i:4500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:26;s:4:"name";s:52:" Color Show® Blushed Nudes Nail Polish In The Blush";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:36:"050732__15045.1433175121.190.250.jpg";s:5:"price";i:4500;s:11:"description";s:57:"Dare to go nude with our blushing nail polish shades!\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:53:56";s:10:"updated_at";s:19:"2017-01-24 07:53:56";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:26;s:4:"name";s:52:" Color Show® Blushed Nudes Nail Polish In The Blush";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:36:"050732__15045.1433175121.190.250.jpg";s:5:"price";i:4500;s:11:"description";s:57:"Dare to go nude with our blushing nail polish shades!\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:53:56";s:10:"updated_at";s:19:"2017-01-24 07:53:56";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}}s:8:"totalQty";i:4;s:10:"totalPrice";i:34500;}', '098572883', 'Yangon', 'Yangon', '2017-01-07', 1, '2017-01-31 22:49:46', '2017-01-31 22:51:57'),
(15, 4, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:33;a:3:{s:3:"qty";i:1;s:5:"price";i:8500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:33;s:4:"name";s:58:"Revlon Beyond Natural Cream to Powder Eye Shadow, 0.20 oz.";s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";s:21:"050015_530__98679.jpg";s:5:"price";i:8500;s:11:"description";s:93:"Lightweight formula applies like a cream, blends easily, and dries to a soft powder finish.\r\n";s:10:"created_at";s:19:"2017-01-24 09:44:42";s:10:"updated_at";s:19:"2017-01-24 09:44:42";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:33;s:4:"name";s:58:"Revlon Beyond Natural Cream to Powder Eye Shadow, 0.20 oz.";s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";s:21:"050015_530__98679.jpg";s:5:"price";i:8500;s:11:"description";s:93:"Lightweight formula applies like a cream, blends easily, and dries to a soft powder finish.\r\n";s:10:"created_at";s:19:"2017-01-24 09:44:42";s:10:"updated_at";s:19:"2017-01-24 09:44:42";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:8;a:3:{s:3:"qty";i:1;s:5:"price";i:16500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:8;s:4:"name";s:57:"The Blushed Nudes® Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-eye-shadow-the-blushed-nudes-palette-041554434866.jpg";s:5:"price";i:16500;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:42:11";s:10:"updated_at";s:19:"2017-01-22 06:42:11";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:8;s:4:"name";s:57:"The Blushed Nudes® Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-eye-shadow-the-blushed-nudes-palette-041554434866.jpg";s:5:"price";i:16500;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:42:11";s:10:"updated_at";s:19:"2017-01-22 06:42:11";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:25000;}', '09421009999', 'Mandalay', 'Mandalay', '2017-01-30', 1, '2017-01-31 22:50:53', '2017-01-31 22:53:01'),
(16, 4, 'O:8:"App\\Cart":3:{s:5:"items";a:4:{i:7;a:3:{s:3:"qty";i:1;s:5:"price";i:16000;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:7;s:4:"name";s:56:" The Rock Nudes™ Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:59:"maybelline-eye-shadow-rock-nudes-palette-041554460513-o.jpg";s:5:"price";i:16000;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:39:41";s:10:"updated_at";s:19:"2017-01-22 06:39:41";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:7;s:4:"name";s:56:" The Rock Nudes™ Eye Shadow Palette Eye Shadow Palette";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:59:"maybelline-eye-shadow-rock-nudes-palette-041554460513-o.jpg";s:5:"price";i:16000;s:11:"description";s:63:"Dare to go nude! Create 13 eye shadow looks from one palette.\r\n";s:10:"created_at";s:19:"2017-01-22 06:39:41";s:10:"updated_at";s:19:"2017-01-22 06:39:41";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:9;a:3:{s:3:"qty";i:1;s:5:"price";i:8000;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:9;s:4:"name";s:46:" Expert Wear® Eye Shadow Quads Natural Smokes";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:58:"maybelline-eye-shadow-the-nudes-palette-041554419184-o.jpg";s:5:"price";i:8000;s:11:"description";s:67:"Extraordinary color and exceptional wear that lasts up to 12 hours.";s:10:"created_at";s:19:"2017-01-22 06:44:09";s:10:"updated_at";s:19:"2017-01-22 06:44:09";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:9;s:4:"name";s:46:" Expert Wear® Eye Shadow Quads Natural Smokes";s:11:"category_id";i:2;s:8:"brand_id";i:1;s:5:"image";s:58:"maybelline-eye-shadow-the-nudes-palette-041554419184-o.jpg";s:5:"price";i:8000;s:11:"description";s:67:"Extraordinary color and exceptional wear that lasts up to 12 hours.";s:10:"created_at";s:19:"2017-01-22 06:44:09";s:10:"updated_at";s:19:"2017-01-22 06:44:09";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:26;a:3:{s:3:"qty";i:1;s:5:"price";i:4500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:26;s:4:"name";s:52:" Color Show® Blushed Nudes Nail Polish In The Blush";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:36:"050732__15045.1433175121.190.250.jpg";s:5:"price";i:4500;s:11:"description";s:57:"Dare to go nude with our blushing nail polish shades!\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:53:56";s:10:"updated_at";s:19:"2017-01-24 07:53:56";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:26;s:4:"name";s:52:" Color Show® Blushed Nudes Nail Polish In The Blush";s:11:"category_id";i:5;s:8:"brand_id";i:1;s:5:"image";s:36:"050732__15045.1433175121.190.250.jpg";s:5:"price";i:4500;s:11:"description";s:57:"Dare to go nude with our blushing nail polish shades!\r\n\r\n";s:10:"created_at";s:19:"2017-01-24 07:53:56";s:10:"updated_at";s:19:"2017-01-24 07:53:56";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}i:13;a:3:{s:3:"qty";i:1;s:5:"price";i:9500;s:4:"item";O:8:"App\\Item":24:{s:8:"\0*\0table";s:4:"item";s:11:"\0*\0fillable";a:6:{i:0;s:4:"name";i:1;s:11:"category_id";i:2;s:8:"brand_id";i:3;s:5:"image";i:4;s:5:"price";i:5;s:11:"description";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:10:{s:2:"id";i:13;s:4:"name";s:40:"Color Sensational® Lip Color Pink Satin";s:11:"category_id";i:4;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-color-sensational-creamy-matte-nude-raw-chocolate.jpg";s:5:"price";i:9500;s:11:"description";s:88:"Irresistible color meets precious honey nectar for a supremely sensational lipstick.\r\n\r\n";s:10:"created_at";s:19:"2017-01-22 07:21:31";s:10:"updated_at";s:19:"2017-01-22 07:21:31";s:10:"deleted_at";N;}s:11:"\0*\0original";a:10:{s:2:"id";i:13;s:4:"name";s:40:"Color Sensational® Lip Color Pink Satin";s:11:"category_id";i:4;s:8:"brand_id";i:1;s:5:"image";s:64:"maybelline-color-sensational-creamy-matte-nude-raw-chocolate.jpg";s:5:"price";i:9500;s:11:"description";s:88:"Irresistible color meets precious honey nectar for a supremely sensational lipstick.\r\n\r\n";s:10:"created_at";s:19:"2017-01-22 07:21:31";s:10:"updated_at";s:19:"2017-01-22 07:21:31";s:10:"deleted_at";N;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:16:"\0*\0forceDeleting";b:0;}}}s:8:"totalQty";i:4;s:10:"totalPrice";i:38000;}', '09421009999', 'Mandalay', 'Mandalay', '2017-02-01', 1, '2017-01-31 22:52:51', '2017-01-31 22:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'susu', 'susu@gmail.com', '$2y$10$VmOq6IDln.xYzfa.jkSNUO8/Y6ekbj1OSNzQVbJdEIQzAPQBW67d.', 'prRp0ClHYnoi8sMGZeUtrkznhQIXN7QYWqKwXZ9dF0z0vt0dOV57pxx4g9nk', '2017-01-27 18:20:52', '2017-01-31 22:49:54'),
(4, 'ma ma', 'mama@gmail.com', '$2y$10$or.Zokrwt9P/zIJv.U2laOhYxDpqpYNa4mL.wMFHWkWpJ3OIKBQbu', 't8GdH3RQSljnzHNmL4067VOOpPo4zWxzUWpEBpd5YaE7yXj7M7vA9X4NEJk0', '2017-01-31 22:41:30', '2017-01-31 22:54:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

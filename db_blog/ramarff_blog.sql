-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 05:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramarff_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Operation Sistem', 'operation-sistem', '2022-07-19 14:36:09', '2022-07-19 14:36:09'),
(2, 'Web Programming', 'web-programming', '2022-07-19 14:36:09', '2022-07-19 14:36:09'),
(3, 'Mobile Programming', 'mobile-programming', '2022-07-19 14:36:09', '2022-07-19 14:36:09'),
(4, 'Cyber Security', 'cyber-security', '2022-07-19 14:36:09', '2022-07-19 14:36:09'),
(5, 'Database', 'database', '2022-07-19 14:36:09', '2022-07-19 14:36:09'),
(6, 'Networking', 'networking', '2022-07-19 14:36:09', '2022-07-19 14:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_18_035907_create_posts_table', 1),
(6, '2022_07_18_080706_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `user_id`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 3, 'Linux Dasar - 1.Sejarah Linux', 'sejarah-linux', 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. \n            Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n            sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat\n            impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, \n            velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae \n            voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur \n            iure ad delectus? Sapiente \n            praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit \n            vitae itaque ullam fugit eos harum quisquam vero pariatur \n            perspiciatis.</p>', NULL, '2022-07-19 14:44:29', '2022-07-19 14:44:29'),
(3, 2, 'PHP Dasar - 2.Sejarah PHP', 'sejarah-php', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. \n            Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n            sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat\n            impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, \n            velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae \n            voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur \n            iure ad delectus? Sapiente \n            praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit \n            vitae itaque ullam fugit eos harum quisquam vero pariatur \n            perspiciatis.</p>', NULL, '2022-07-19 14:45:15', '2022-07-19 14:45:15'),
(6, 6, 'Web Security - Mengenal Celah LFI pada Website', 'celah-lfi-pada-website', 4, 'Lorem ipsum dolor sit amet consectetur adipisicing elit', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. \n            Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n            sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat\n            impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, \n            velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae \n            voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur \n            iure ad delectus? Sapiente \n            praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit \n            vitae itaque ullam fugit eos harum quisquam vero pariatur \n            perspiciatis.</p>', NULL, '2022-07-19 14:47:06', '2022-07-19 14:47:06'),
(7, 4, 'MySQL Fundamental - Installasi MySQL di Linux', 'installasi-mysql-di-linux', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. \n            Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n            sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat\n            impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, \n            velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae \n            voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! Iusto sit consectetur \n            iure ad delectus? Sapiente \n            praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit \n            vitae itaque ullam fugit eos harum quisquam vero pariatur \n            perspiciatis.</p>', NULL, '2022-07-19 14:47:06', '2022-07-19 14:47:06'),
(8, 2, 'MySQL Fundamental - Type data Mysql', 'type-data-mysql', 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a dolor \n                          rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n                          sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis\n                          nobis quaerat impedit optio beatae facilis! \n                          Facere exercitationem iusto officia ipsam autem deserunt,', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. \n                       Porro a dolor rem error ducimus culpa, eaque cupiditate tempore molestiae dignissimos, \n                       sed adipisci perferendis minus laudantium, quos illo ratione eum blanditiis nobis quaerat\n                       impedit optio beatae facilis! Facere exercitationem iusto officia ipsam autem deserunt, \n                       velit a quos veniam nisi vitae ea debitis porro, quisquam repudiandae \n                       voluptas in cumque tempora consequuntur eveniet eius, dolores beatae! \n                       Iusto sit consectetur \n                       iure ad delectus? Sapiente \n                       praesentium ad accusantium veniam distinctio sit doloribus saepe autem, velit \n                      vitae itaque ullam fugit eos harum quisquam vero pariatur \n                       perspiciatis.</p>', NULL, '2022-07-19 14:47:06', '2022-07-19 14:47:06'),
(10, 4, 'Repellat beatae magnam cupiditate ut qui aut.', 'eos-sint-tempora-aspernatur-aliquam-aspernatur-et-laudantium-nesciunt', 7, 'Consequatur sunt atque est numquam quas odio voluptas. Molestiae quidem velit occaecati culpa. Et expedita ex ducimus ipsum in officia harum.', 'Dolores et unde incidunt suscipit. Officiis ea voluptate est vel sint rerum. Dolorem voluptatem laborum aperiam natus maiores pariatur sed. Eum consectetur dolores labore est id molestias dolores. Nesciunt nesciunt consequuntur provident incidunt impedit expedita quibusdam. Repudiandae excepturi exercitationem amet cum. Ipsum doloremque possimus sed voluptatem eius nihil at.', NULL, '2022-07-19 14:48:27', '2022-07-19 14:48:27'),
(13, 6, 'Fugit debitis est consequatur deserunt.', 'sed-autem-et-quaerat', 2, 'Id aspernatur repellendus minus consequatur laudantium iure. Ut eos nostrum quod voluptatem incidunt quaerat ea. Adipisci est commodi rem illum culpa ut eveniet. Modi unde beatae soluta est.', 'Quo nihil architecto molestias aut nihil voluptatum. Et atque a eos quis molestias earum est. Id quidem et voluptatem dolorem ducimus. Dolores aut quibusdam consequatur. Aut quidem fuga aperiam laborum ex neque ea. Culpa eius omnis totam placeat odio quibusdam impedit. Dolorem consequatur rerum nostrum eaque in voluptas. Consequatur quasi explicabo consequuntur voluptas amet odit. Iste nulla dolorem ex sit. Sint earum et cupiditate odit in at molestiae consequatur.', NULL, '2022-07-19 14:50:28', '2022-07-19 14:50:28'),
(14, 4, 'Consequatur itaque vero minima.', 'sunt-quia-nam-quam-molestiae-est-laudantium', 5, 'Delectus blanditiis asperiores dolor ipsa asperiores. Est est unde dicta maxime ut ut. Dolore eaque et praesentium adipisci quibusdam. Quisquam eos alias cumque nostrum.', 'Et corrupti aut beatae occaecati corrupti. Consequuntur sunt et totam nostrum cum quia eligendi animi. Necessitatibus officia possimus dolore est quibusdam. Nam ut nihil quia et. Saepe cumque ipsa aspernatur voluptatem voluptatem voluptatum. Accusamus officia aut eos earum nobis odit earum cum. Sit harum itaque aut aut sint a autem et. Recusandae repellat saepe quos recusandae tempore. Molestiae illo sint reiciendis nostrum quidem. Omnis fugit ab quia.', NULL, '2022-07-19 14:50:28', '2022-07-19 14:50:28'),
(15, 4, 'Itaque distinctio incidunt et nihil harum quam placeat nemo.', 'omnis-consectetur-tempora-qui-asperiores', 3, 'Dolore quia omnis consequatur libero ut. Voluptas quisquam adipisci dolores optio fuga.', 'Deleniti itaque quis nihil voluptatem nobis. Voluptatem voluptates dolorem accusamus harum. Nobis voluptatem dolor porro et blanditiis odio cupiditate. Aut et aperiam ut est beatae est possimus debitis. Rem id omnis praesentium dolorem sit eaque. Quos dolor molestiae nulla et. Accusamus quisquam repellat atque delectus hic et harum. Ipsa sunt nihil nemo ducimus nesciunt quam. Ullam vero voluptate iure quod. Cumque quam et voluptatem aut.', NULL, '2022-07-19 14:50:28', '2022-07-19 14:50:28'),
(17, 4, 'Tempora tempore rerum sit et quasi pariatur eligendi.', 'enim-officia-saepe-commodi-fugiat', 7, 'Aut pariatur beatae quis quia quibusdam aut non. Illum facilis similique saepe quam eaque fuga. Commodi aliquid a quia est. Itaque consequatur asperiores cumque ut non provident alias.', 'Libero architecto necessitatibus mollitia sed suscipit. Nihil nam non quo fugit nostrum ipsa. Quis et officia aut. Tempore asperiores asperiores sit harum et sed autem iusto. Voluptas officia error voluptatem architecto. Sed accusamus dolor et labore voluptate. Excepturi possimus beatae assumenda. Minima dolorem ut dolore beatae quo corporis.', NULL, '2022-07-19 14:52:51', '2022-07-19 14:52:51'),
(18, 6, 'Quia et architecto aperiam est.', 'eos-quisquam-qui-laboriosam-minus-totam-quasi-debitis', 7, 'Minima earum ducimus adipisci autem blanditiis. Eum minima qui laboriosam enim. Quia nam reiciendis iure magnam.', 'Est incidunt alias officiis amet repellat delectus. Porro eos tempore ut sunt et iure. Consequatur facilis rerum tempore occaecati exercitationem. Dolorum consequatur dolores dicta ullam. Id ducimus rerum minus sit autem eligendi. Ipsa tempora iusto nobis qui quo ea maxime. Consequatur tenetur itaque quo aperiam. Velit expedita tempora doloribus sunt qui magni sint. Minima itaque magni nobis consequuntur placeat consequatur cupiditate.', NULL, '2022-07-19 14:52:51', '2022-07-19 14:52:51'),
(19, 4, 'Quo qui nihil.', 'distinctio-architecto-debitis-aspernatur-voluptate', 7, 'Adipisci nisi odio ut fugit. Officiis ratione et et dolore. Error dolorem explicabo qui dolor perferendis. Dolore sint et error voluptate neque.', 'Quia ea in quidem nesciunt. Perferendis repellat reprehenderit doloribus sed. Est ut quos qui magnam consectetur laborum. Ut et corporis corrupti repudiandae aperiam et qui. Expedita laborum sint id dicta.', NULL, '2022-07-19 14:52:51', '2022-07-19 14:52:51'),
(20, 4, 'Quia sunt sequi fugiat necessitatibus quos.', 'quisquam-nihil-est-minus-voluptatem', 7, 'Aut alias ipsa unde ea neque rerum consequatur. Maxime ipsa dolorem omnis voluptas similique expedita. Qui qui pariatur nihil excepturi nihil dolor et.', '<p>At iste et non quisquam harum sint odio rem. Et magni eos et non. Voluptas vel et assumenda aut numquam optio aut.</p><p>Explicabo possimus sit quisquam odit dolore aut. Aut dolor ab ut quisquam eum nihil magnam. Quibusdam corrupti dignissimos aperiam et enim provident qui.</p><p>Consequatur inventore maiores facilis repellat iste beatae molestiae. Veritatis pariatur dicta sit eligendi non rerum. Saepe ex voluptate tempora eos.</p><p>Inventore non nam est perferendis. Asperiores odit aut quis quas. Consequatur sint et dolores enim.</p><p>Tempora rerum possimus qui et autem blanditiis. Nostrum ullam ab delectus harum corrupti alias rerum. Architecto neque rerum eos porro adipisci dolorem.</p>', NULL, '2022-07-20 14:08:47', '2022-07-20 14:08:47'),
(21, 5, 'Doloremque esse labore itaque numquam.', 'error-quia-mollitia-praesentium-id-aut', 7, 'Hic est placeat qui. Consequatur vel libero commodi animi eum doloribus sed. Eius est ipsam quibusdam velit.', '<p>Vel sit quo ipsa laudantium quisquam omnis vero. Excepturi iusto minima sed doloribus ea quaerat.</p><p>Ut eius aliquam qui impedit et placeat eos. Non atque quod molestias possimus perferendis voluptatem. Consectetur voluptates voluptatem occaecati et ut nostrum tenetur eum. Dolores necessitatibus necessitatibus qui mollitia.</p><p>Doloremque nulla consequatur fugiat iusto temporibus accusantium. Veritatis qui eveniet nulla dicta reprehenderit laudantium similique. Et dignissimos voluptas repudiandae aut repudiandae.</p><p>Sunt impedit quia esse. Velit quisquam ipsum dignissimos ut fuga enim placeat perferendis. Ab a porro minima molestiae sunt dolor. Dolorem libero illo ipsa ducimus.</p><p>Molestiae debitis molestiae et autem in. Voluptate dolores doloremque sequi maiores tempora.</p><p>Aut maiores est iste maxime. Tempore sequi iusto deserunt officia. Quia distinctio quidem quia eaque quis laboriosam. Beatae porro incidunt ut unde veniam odio.</p><p>Et dolores rerum et pariatur ipsa soluta dolores. Occaecati ut occaecati facere rerum. Velit mollitia et excepturi facilis qui nisi omnis.</p>', NULL, '2022-07-20 14:08:47', '2022-07-20 14:08:47'),
(22, 5, 'Placeat ut eligendi exercitationem illum impedit dolores quia.', 'facilis-voluptatem-sint-aut-sit-veritatis-veritatis', 7, 'Quae et earum suscipit modi cumque. Optio dolor eos et aliquid unde. Non quae vel adipisci minima fugiat minus natus voluptatum.', '<p>Libero voluptatum nisi voluptatem. Consequatur ut ipsa et id facilis quo iusto. Ea adipisci quis voluptas rem. Similique cupiditate fugit id aut sed officiis enim. Dolores praesentium aliquid assumenda ut quia nostrum.</p><p>Dolores illum totam quisquam. Ratione aut distinctio omnis voluptatem aspernatur ipsum laboriosam labore. Repellendus dolores molestiae harum dignissimos consequatur non.</p><p>Non molestiae fugit corporis incidunt inventore. Alias aut quas impedit consequatur. Nostrum esse ipsum aut. Qui quaerat autem reiciendis numquam cumque autem natus.</p><p>Nihil accusantium doloremque repellat voluptate aspernatur dolores. Error qui nesciunt eum vel inventore tempora adipisci. Inventore tenetur cum adipisci eum exercitationem magni. Voluptas expedita architecto dolor maiores ullam facere et.</p><p>Inventore consequatur quaerat quia quis id in molestiae. Veniam ullam sapiente ut quo ullam ut voluptatem. Nam autem facere qui quis consequatur fugiat enim. Voluptatibus culpa corrupti nostrum beatae minus.</p>', NULL, '2022-07-20 14:08:47', '2022-07-20 14:08:47'),
(23, 5, 'Qui minus totam.', 'sint-vitae-laboriosam-ipsum-dolore-praesentium-soluta-voluptatem', 1, 'Ut eos aut saepe earum adipisci quia consectetur. Occaecati ut possimus earum voluptas pariatur impedit debitis. Voluptatem non dolor et.', '<p>At sed sit natus distinctio voluptatem soluta. Quod alias neque corrupti soluta eos. Et dicta quibusdam nihil cum cupiditate quia voluptatem. Impedit sint ut esse consequatur dolore. Aut officiis porro quos quis culpa qui.</p><p>Hic esse esse dolores occaecati ea. Id aliquam et id cumque autem esse voluptatem et. Inventore voluptate quam beatae et. Ullam vel consequatur facere animi et natus.</p><p>Tempore qui aliquam eos nihil. Fugit vel explicabo rem occaecati earum. Nisi aut iusto accusantium ab placeat. Voluptatem voluptas ratione laborum corporis id sit repudiandae.</p><p>Est rem aut et amet natus mollitia molestias. Minima quam enim magnam occaecati est officiis quo. Hic ut praesentium exercitationem similique. Vel non ut sed deserunt.</p><p>Cum nam et enim iusto. Nemo consectetur sunt quia molestiae. Voluptate voluptatem minima eveniet minima non quia qui nesciunt.</p><p>Voluptate est repudiandae et qui at porro cum. Et voluptatem fugit laboriosam hic officia. Non sed facere rerum ut totam. Quas repellat ipsam ratione eaque. Rerum eligendi alias fugit voluptas.</p><p>Atque minima quaerat est. Aut eum itaque dolor aut. Et ex natus veritatis vel iste unde. Ut qui earum illum voluptas fugit vel.</p><p>Maiores in et eos rerum praesentium corrupti id. Cum similique est et saepe ea voluptas. Voluptatem sint voluptas ut placeat voluptas dolore.</p><p>Commodi dolor voluptatem cum molestias blanditiis eius. Possimus dolorem autem omnis. Animi et molestias adipisci.</p><p>In sequi qui quasi modi. Dolore odit a iusto molestias. Nam expedita aut delectus.</p>', NULL, '2022-07-20 14:10:13', '2022-07-20 14:10:13'),
(24, 5, 'Voluptatum dolorem.', 'dignissimos-iure-sed-deleniti-velit', 2, 'Aliquam rerum qui autem sed. Et ipsam delectus sit rerum qui impedit. Fugiat commodi esse aut consectetur et id odit.', '<p>Rem sint sed quod sint. Omnis aut porro consequatur ex qui officia excepturi. Est iste ea et labore ut voluptas. Nihil qui itaque eveniet officiis sint neque.</p><p>Id dolores molestiae totam sunt odit commodi in. Nesciunt autem consequuntur dolores ut rerum. Et est voluptas veritatis ut.</p><p>Corporis et eum ducimus veritatis eos voluptatum dolores hic. Voluptas mollitia qui rerum soluta nisi consequatur.</p><p>Qui voluptas veritatis velit nostrum possimus qui necessitatibus. Porro qui commodi omnis.</p><p>Est ut dolor sunt ut enim laboriosam. Fuga impedit tempore quae ab voluptatem voluptas in fugiat. Nesciunt aut et dicta dolor modi pariatur blanditiis voluptas. Cum illum dignissimos culpa pariatur sit.</p><p>Laborum consequatur et at ducimus. A vel odio voluptatem porro non deserunt. Non rerum praesentium et voluptate est.</p><p>Qui et autem quia voluptatem et iusto ut est. Ut illum praesentium fugit praesentium sunt.</p><p>Culpa corrupti saepe qui ea quis totam. Illum eligendi cupiditate iusto. Quis reprehenderit vel perferendis porro molestiae omnis nulla.</p>', NULL, '2022-07-20 14:10:13', '2022-07-20 14:10:13'),
(25, 4, 'Sit dolor quo cum beatae.', 'nemo-ipsum-ipsa-optio-quia', 2, 'Eos facere rerum pariatur occaecati enim qui aut. Quis iste ipsam expedita sint.', '<p>Facere ad fugiat nihil sed voluptate accusantium. Provident id ut vero quae.</p><p>Aut sequi et reiciendis. Omnis cupiditate voluptatem maiores non totam hic. Enim voluptate ex amet eos accusamus. Rerum nisi nisi itaque blanditiis.</p><p>Quae in facere eveniet et dolorem quia aut. Officia illum commodi aperiam fugit quo ratione.</p><p>Illo dolores itaque suscipit omnis est. Ut sunt in blanditiis est sed voluptas. Non animi nobis repudiandae. Libero et odio qui accusamus.</p><p>Est provident sint hic aut voluptates aut. Sint voluptatem officiis harum veniam saepe voluptatem recusandae. Dignissimos aliquid deserunt voluptatem aliquid omnis ratione. Id aut vitae illum accusantium quidem.</p><p>Consequatur in reprehenderit commodi tempora accusamus temporibus. Cumque iure sapiente dolores totam tempora autem quia. Occaecati velit quo saepe adipisci dolores.</p>', NULL, '2022-07-20 14:10:13', '2022-07-20 14:10:13'),
(26, 4, 'Eius et.', 'odio-non-sapiente-aut-voluptatem-nesciunt-accusamus', 1, 'Voluptas voluptas ab harum dolorem sit qui quidem. In et commodi placeat in tempora consequuntur temporibus. Quia ut nemo et et sit saepe numquam veniam. Ducimus accusantium alias iure et officiis.', '<p>Vel nam dolorem id sed nisi. Accusamus tempora voluptates qui veritatis est. Velit nesciunt dolorem blanditiis.</p><p>Non alias et sunt alias. Et et ut architecto aut optio. Ullam iusto in minima.</p><p>Est soluta nisi voluptatem sit ullam reiciendis. Eaque sed id magnam accusamus harum. Rerum nihil hic quo voluptatibus excepturi corporis nobis et. Non quisquam quia maiores deserunt.</p><p>Porro quis qui ut dolor est. Et excepturi sed qui laborum officiis. Saepe id ut est earum architecto.</p><p>Sunt odit quas quaerat ipsa. Provident corporis consequatur et delectus praesentium est. Dignissimos hic consequatur est cupiditate possimus vel ut. Animi fugit neque hic sint ut et velit.</p>', NULL, '2022-07-20 14:10:13', '2022-07-20 14:10:13'),
(27, 3, 'Ex asperiores saepe.', 'quis-quam-rerum-aliquid-harum-ut', 2, 'Numquam provident facilis sequi hic aut iure et. Dolorem aspernatur totam aut voluptatem iste ea. Reprehenderit et labore est quo delectus. Earum repellendus corrupti dolor architecto earum. Iusto in labore ullam veritatis quas hic.', '<p>At distinctio qui est non. Rem minus sequi quam esse et velit.</p><p>Optio enim officia neque dolorem eum veniam eaque. Vel aliquam et nostrum nam pariatur enim. Harum officia voluptatum expedita vero ratione magnam iste minima.</p><p>Rerum voluptates rem dolores eos sed officiis. Ea occaecati omnis quia dolor omnis. Reiciendis consequuntur nihil magnam ut.</p><p>Sed quam reiciendis minus quis sunt tenetur. Autem adipisci voluptatum animi nihil debitis minus incidunt. Ut unde quia ullam numquam veritatis enim omnis.</p><p>Accusantium et perspiciatis iure voluptatem. Tempore in velit ab id quisquam nam dolor nemo. Laborum omnis voluptatem quisquam mollitia est expedita adipisci. Magni voluptas officiis aut animi.</p>', NULL, '2022-07-20 14:10:13', '2022-07-20 14:10:13'),
(30, 1, 'tolol', 'tolol', 13, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quo...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quos! Fugit doloremque esse saepe at amet sed corrupti accusantium, ex atque sint, illum ea perferendis molestiae dolore! Ullam, explicabo repudiandae. Quos, mollitia! Iure ratione velit nostrum deleniti itaque exercitationem fuga neque mollitia beatae porro reiciendis, inventore possimus hic animi, tempore vitae voluptatem eligendi quibusdam ut reprehenderit maxime. Sed, minus nam. Earum debitis non suscipit omnis fugit aut iste corporis, ratione, illo nesciunt dolorum perferendis a quisquam? Qui consequuntur illo harum atque amet aperiam?<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quos! Fugit doloremque esse saepe at amet sed corrupti accusantium, ex atque sint, illum ea perferendis molestiae dolore! Ullam, explicabo repudiandae. Quos, mollitia! Iure ratione velit nostrum deleniti itaque exercitationem fuga neque mollitia beatae porro reiciendis, inventore possimus hic animi, tempore vitae voluptatem eligendi quibusdam ut reprehenderit maxime. Sed, minus nam. Earum debitis non suscipit omnis fugit aut iste corporis, ratione, illo nesciunt dolorum perferendis a quisquam? Qui consequuntur illo harum atque amet aperiam?<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quos! Fugit doloremque esse saepe at amet sed corrupti accusantium, ex atque sint, illum ea perferendis molestiae dolore! Ullam, explicabo repudiandae. Quos, mollitia! Iure ratione velit nostrum deleniti itaque exercitationem fuga neque mollitia beatae porro reiciendis, inventore possimus hic animi, tempore vitae voluptatem eligendi quibusdam ut reprehenderit maxime. Sed, minus nam. Earum debitis non suscipit omnis fugit aut iste corporis, ratione, illo nesciunt dolorum perferendis a quisquam? Qui consequuntur illo harum atque amet aperiam?<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quos! Fugit doloremque esse saepe at amet sed corrupti accusantium, ex atque sint, illum ea perferendis molestiae dolore! Ullam, explicabo repudiandae. Quos, mollitia! Iure ratione velit nostrum deleniti itaque exercitationem fuga neque mollitia beatae porro reiciendis, inventore possimus hic animi, tempore vitae voluptatem eligendi quibusdam ut reprehenderit maxime. Sed, minus nam. Earum debitis non suscipit omnis fugit aut iste corporis, ratione, illo nesciunt dolorum perferendis a quisquam? Qui consequuntur illo harum atque amet aperiam?<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur debitis itaque asperiores consequuntur assumenda molestias corporis, iure rem laborum dolorum beatae vero, mollitia hic ipsa veniam quos! Fugit doloremque esse saepe at amet sed corrupti accusantium, ex atque sint, illum ea perferendis molestiae dolore! Ullam, explicabo repudiandae. Quos, mollitia! Iure ratione velit nostrum deleniti itaque exercitationem fuga neque mollitia beatae porro reiciendis, inventore possimus hic animi, tempore vitae voluptatem eligendi quibusdam ut reprehenderit maxime. Sed, minus nam. Earum debitis non suscipit omnis fugit aut iste corporis, ratione, illo nesciunt dolorum perferendis a quisquam? Qui consequuntur illo harum atque amet aperiam?</div>', NULL, '2022-07-31 09:06:10', '2022-07-31 09:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Kamal Bahuraksa Haryanto', 'mumpuni.wibowo', 'kamal@gmail.com', '2022-07-26 08:03:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FYJK50BgO57RjOBdwL1HOfPgRVqN9uhxBfFcsyIdH6Zrb2UQLWz55xnvsEJp', NULL, '2022-07-19 14:33:03', '2022-07-19 14:33:03'),
(2, 'Arta Lanang Dabukke S.Pd', 'asaragih', 'hari.wijaya@example.com', '2022-07-19 14:33:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o0UGkdKjx6', NULL, '2022-07-19 14:33:03', '2022-07-19 14:33:03'),
(3, 'Kasiyah Hani Rahmawati M.TI.', 'padmasari.gangsar', 'titin11@example.org', '2022-07-19 14:33:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wfDbI08Suo', NULL, '2022-07-19 14:33:03', '2022-07-19 14:33:03'),
(4, 'Gandi Darimin Simanjuntak', 'victoria44', 'rini70@example.org', '2022-07-19 14:33:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0uipbR5rdd', NULL, '2022-07-19 14:33:03', '2022-07-19 14:33:03'),
(5, 'Yoga Jailani S.Kom', 'zelda57', 'anggriawan.safina@example.com', '2022-07-19 14:33:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UnPqqpiuO7', NULL, '2022-07-19 14:33:03', '2022-07-19 14:33:03'),
(7, 'Rama Fajar Fadhillah', 'ramarff', 'ramafajar805@gmail.com', '2022-07-19 21:35:19', '$2y$10$QC08lpx0H2uWoHGmO5xGteQ0H.IVYk2WSgSTuv/6jJWduQweiYyEK', 'fSp5OYXgqY', NULL, '2022-07-19 14:35:19', '2022-07-19 14:35:19'),
(13, 'fajar', 'fajar_45', 'fajar45@gmail.com', '2022-07-24 07:11:13', '$2y$10$HkR0yXdeKlcS1j.B4fZRRuGyn68x8mRg0SwYvujB0R8vmlpM4LomG', NULL, NULL, '2022-07-24 00:11:13', '2022-07-24 00:11:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `fk_posts_categories` (`category_id`),
  ADD KEY `fk_posts_users` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Sep 2022 pada 15.01
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(2, 'Web Design', 'web-design', '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(3, 'Personal', 'personal', '2022-09-13 05:25:40', '2022-09-13 05:25:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_26_133025_create_posts_table', 1),
(6, '2022_08_27_223412_create_categories_table', 1),
(7, '2022_09_20_115007_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Qui et eveniet architecto.', 'distinctio-est-facilis-cupiditate-consequatur', NULL, 'Quia quibusdam veritatis enim nisi nisi ratione harum. Quia deleniti assumenda minima possimus. Exercitationem reprehenderit eum qui modi et neque at. Totam iste eos omnis aut temporibus est.', '<p>Omnis perferendis eius veniam tempore. Qui quam error non.</p><p>Quo repudiandae praesentium quod nihil vero delectus sit. Quasi praesentium et eligendi magnam quia ut. Ipsum doloribus et aliquid fugiat debitis similique praesentium quod. Nobis aspernatur blanditiis quia aspernatur.</p><p>Voluptatem consequuntur tempore quia eveniet vitae sint. Quis aliquam voluptatem quia deserunt. Qui labore perspiciatis voluptate ab totam eius harum explicabo. Quia placeat quia eum a aliquam et similique et.</p><p>Laborum eum omnis consectetur ratione dolorem. Dignissimos dolor dolor quibusdam est harum officia magnam.</p><p>Eos non architecto tempora. Impedit at voluptatem omnis ullam sint dolorum. Optio molestias ut non.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(2, 1, 3, 'Quia odit exercitationem recusandae error aut.', 'animi-sed-nam-enim-repudiandae', NULL, 'Itaque laboriosam corrupti molestiae necessitatibus et enim. Dolorem reprehenderit nisi nihil laudantium similique doloremque sed. Quis aut sit neque numquam dolorem. Numquam voluptatem ipsam repellendus sequi reprehenderit mollitia.', '<p>Et commodi sunt laboriosam ea qui tenetur ad. Porro adipisci occaecati ut est. Aut dicta velit atque. Aut similique mollitia optio.</p><p>Ea rem ipsum eum repellendus animi. Qui voluptatem dolore sunt eos modi et. Minima maxime deleniti unde fugiat saepe.</p><p>Vero veniam et a iste. Ea neque non provident sed nam eaque eum. Consequatur error vero est et eos.</p><p>Incidunt ex et minima rem qui voluptatum. Dolore placeat aut saepe est animi quaerat.</p><p>Eos ullam adipisci inventore aut ipsa. Esse commodi cum similique qui ea. Itaque praesentium illo laudantium.</p><p>Vitae adipisci molestias ipsam dignissimos. Est at in et repellendus. Et debitis voluptas sed enim ut non. Et inventore voluptatem ipsum soluta adipisci deleniti. Doloribus aspernatur ea consequuntur et corrupti aut.</p><p>Rerum sit aperiam est error quo deserunt sint eius. Ab aspernatur enim quod magnam harum sunt deleniti. Aut et nulla rerum ut minus a veniam sunt. Quia magnam deserunt architecto architecto veritatis autem.</p><p>Nobis dolorem doloremque sint nemo a. Ut dolore recusandae vitae a possimus et placeat. Ut magnam iure numquam qui non at.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(3, 2, 3, 'Iste consectetur.', 'placeat-minus-libero-aut-sint-ea', NULL, 'Explicabo voluptate itaque adipisci nemo accusamus quis velit. Ullam praesentium qui earum error dolore voluptatibus. Quo veritatis accusamus modi.', '<p>Rerum dolorum recusandae similique reiciendis tempora et quaerat. Libero repellendus eum ut est dolore animi repellendus sed. Iure ipsa pariatur temporibus velit sed fugiat. In qui neque laboriosam sed et nostrum.</p><p>Reprehenderit vitae mollitia quidem cupiditate quia ea sed odit. Totam dignissimos veritatis rerum nostrum et libero distinctio. Fugiat est laboriosam error dolor velit.</p><p>Minima est in sed. Quia eum iusto ut dolores repudiandae totam occaecati. Ut molestias cum deleniti fugiat voluptatem.</p><p>Nesciunt ut eos omnis sint officiis dolorem ipsum. Qui quis dolores expedita quae perferendis praesentium corrupti possimus. Accusamus distinctio corrupti vitae recusandae harum ipsa.</p><p>Quo sequi ipsa et consequuntur natus. Quaerat eius earum suscipit perspiciatis asperiores et. Qui amet est quia est pariatur sint tenetur. Nobis consequatur dolor libero ex mollitia amet.</p><p>Cum occaecati non accusamus qui dolore fugit sunt. Eos quisquam corrupti provident. Libero corrupti qui necessitatibus a.</p><p>Sit eveniet voluptatem iusto reprehenderit non esse praesentium. Debitis cumque neque nisi dolor debitis quam. Qui laudantium rerum et amet harum. Atque nisi occaecati tempore culpa minus ut.</p><p>Omnis vel quo quis omnis qui assumenda eveniet. Eaque ipsa ipsa eos enim.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(4, 1, 1, 'Dolorem consectetur quo omnis ipsum id.', 'alias-et-ad-quo', NULL, 'Autem eveniet quam enim sed soluta eum. Sit reiciendis assumenda praesentium deserunt ut repellat voluptates dolor. Animi in similique perferendis eos. Et similique adipisci voluptatum molestias.', '<p>Ut voluptas ducimus deserunt illo ipsa in quod. Nam aliquid impedit et molestias esse placeat qui consequatur.</p><p>Sed voluptate quas porro officiis. Voluptatum ipsam animi eligendi rerum totam est iure. Facere error veniam aliquam officia ut voluptas. Beatae cupiditate quam rerum doloribus praesentium aut qui.</p><p>Ipsa error repellat minima assumenda nobis qui laborum aperiam. Iure omnis nobis voluptatibus delectus magni. Sapiente aut omnis eaque numquam non est.</p><p>Quasi temporibus consectetur dolorem quis eveniet. Est sint nam mollitia magni aliquam quisquam ex eveniet. Est aut perferendis autem distinctio.</p><p>Inventore minima debitis laborum at impedit. Qui consequatur quis minus labore earum. Animi laboriosam optio quis quibusdam a officiis ipsam.</p><p>Adipisci quis ad sit distinctio earum. Minus non debitis quia voluptas. Tenetur nihil neque fuga dicta. Quam magni dolor dolore quaerat.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(5, 1, 3, 'Reiciendis modi ipsum provident praesentium.', 'aperiam-provident-et-voluptas-deleniti-sint-eum-fuga', NULL, 'Est ea perspiciatis voluptas nihil. Unde aut et sint nihil laborum.', '<p>Voluptate nemo nisi sint ea molestiae nemo voluptate sint. Et deleniti beatae incidunt distinctio. Aut illum voluptatem ducimus dolor et.</p><p>Inventore dolor autem incidunt. Ex a adipisci repellat quisquam. Explicabo dolores libero nostrum dolore. Ducimus rem ut est unde numquam.</p><p>Pariatur non dolorem rerum eos voluptatem odio accusamus. Et explicabo vero aut voluptatem saepe reiciendis magni. Saepe qui libero dolore consequuntur ab voluptas.</p><p>A mollitia sed dolores aut asperiores aut. Aut consequuntur perferendis voluptas dolorem enim nisi. Rem quaerat aliquam alias rerum sed molestiae voluptates. Maiores maiores soluta hic exercitationem.</p><p>Incidunt atque neque quo id ut sequi. Eum odio reprehenderit aspernatur officiis fuga. Ut et et est et a voluptate ea. Mollitia ullam quibusdam ipsum rerum quis autem optio.</p><p>Soluta quia reiciendis ullam accusamus ea ipsum aut. Sint perspiciatis delectus fuga eius et corrupti perspiciatis. Magni iure voluptatum nostrum aut. Vero repellat aliquam soluta eveniet. Porro et dicta a et sed a.</p><p>Corporis ut voluptas quisquam et accusamus beatae qui nemo. Sunt aut sunt doloremque est blanditiis voluptas. Ex facere dicta id reiciendis est.</p><p>Et ut nihil ut enim necessitatibus. Quis explicabo similique eos odio. Pariatur quos dolores beatae excepturi temporibus dignissimos iure. Optio molestiae labore reiciendis quam ea quia. Qui molestias et vel nam itaque adipisci.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(6, 1, 1, 'Quae odit aliquam.', 'voluptas-repellat-perferendis-nostrum-porro-repellat', NULL, 'Sint aliquam quos modi id quaerat magnam repudiandae. Harum ut non voluptas quasi. Placeat sed quaerat quaerat doloribus veniam. Autem est culpa voluptatem omnis odit laboriosam.', '<p>Ratione velit numquam recusandae et. Facere fuga omnis voluptas at doloremque aut. Et numquam aut quia ducimus iste ut. Consequuntur nostrum et voluptatem totam.</p><p>Accusantium possimus in doloremque maxime nobis consequuntur. Minima nihil sit magni quo et. Omnis animi odio possimus iusto velit tenetur. Ipsa quis labore consequatur non repudiandae.</p><p>Eaque omnis et sequi. Et repellat cumque minima quod vel.</p><p>Aut sit rerum aperiam quas molestiae magnam. Illo eveniet nesciunt velit. Voluptatem quia iste esse sint non iusto eos. Est dolores temporibus dolores ut.</p><p>Id iure dicta rem est neque. Dolorem iure et consequatur repellendus.</p><p>Molestiae et illum consectetur inventore blanditiis ullam et. Quod eos totam iusto iusto consectetur tempora repellendus consectetur. Blanditiis voluptates quibusdam delectus natus quod asperiores.</p><p>In rerum animi et qui tenetur et. Iure placeat libero in. Alias natus ea nulla voluptates enim quae. Consequuntur commodi sint officia.</p><p>Omnis eos quia dolorem omnis aut. Dolorem qui voluptatem labore sint voluptatibus animi. Voluptatem qui ipsam voluptatum. Nihil eos vel in quod.</p><p>Vero eos est non ut ut soluta eum. Dolor dolor inventore ab eum recusandae. Cumque sed quasi voluptatem. Inventore esse debitis harum qui.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(7, 2, 1, 'Nesciunt consequatur non omnis aut nihil.', 'ut-nihil-aliquid-est', NULL, 'Architecto quia aliquam modi aut. Culpa voluptas nihil debitis est. Dolorem vitae harum ea rerum ut sunt beatae maiores.', '<p>Possimus dolores labore inventore consequuntur commodi. Nihil facere et omnis voluptatem error id dolorem. Et et eum et cupiditate quaerat suscipit neque.</p><p>Fuga id pariatur veniam doloribus. Sit cum laborum recusandae. Magni vero laboriosam quis adipisci maxime amet. Libero beatae a id quia non cupiditate repellendus et.</p><p>Quod temporibus ipsum nobis sint aliquam modi illum. Numquam sint deleniti ducimus unde nesciunt voluptatem est. Ut non ab excepturi ut at doloribus vel. Odit recusandae consequuntur qui corrupti neque optio est.</p><p>Quas odit repellat cum beatae. Tempora sint sunt deserunt velit aspernatur in. Aut eligendi non et ratione. Odit omnis officia consectetur aut distinctio.</p><p>Ut architecto adipisci iure dolorum. Facilis corporis ut iste saepe excepturi ea. Qui excepturi sequi occaecati vel.</p><p>Maxime enim voluptatum et voluptates debitis. Neque libero laudantium minus. Asperiores voluptas dolores est itaque ut consectetur et. Neque rem earum pariatur expedita eveniet eos recusandae nihil.</p><p>Ea sit eligendi ut fuga aspernatur. Quaerat impedit voluptates et modi inventore hic. Accusamus deserunt ut eveniet voluptatem omnis quibusdam necessitatibus odio. Et officia natus inventore exercitationem.</p><p>Consequatur laudantium est assumenda illum ad ad. Officia explicabo non tempore ipsa. Culpa earum explicabo sunt voluptas sit. Quasi qui totam illo exercitationem.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(8, 2, 2, 'Quibusdam qui et officia iure eos optio rerum.', 'quia-sit-et-blanditiis-assumenda-et-sunt', NULL, 'Tempore id voluptatum quaerat eos aut ut. Ipsam voluptas veritatis delectus earum.', '<p>Ut quia qui voluptatibus. Dolor quasi quod tenetur minus tenetur quibusdam quo.</p><p>Aperiam hic fugit qui incidunt dolorem. Quas nihil repudiandae voluptatem optio repellat ea. Tempore in nemo impedit ut corrupti eligendi.</p><p>Ipsa qui in voluptas doloremque esse et. Sed possimus ut doloribus. Quis distinctio consequatur delectus iure nihil.</p><p>Delectus praesentium commodi sunt corporis dolor. Est molestiae eaque perferendis fuga possimus. Magni dolor sequi magni ipsum voluptatem aspernatur in. Iusto at molestias blanditiis eos minima hic aut.</p><p>Voluptatem aut doloremque quibusdam ea occaecati. Nihil assumenda animi id qui omnis. Temporibus magnam autem amet aliquam deleniti nemo.</p><p>Ut suscipit non nostrum dolores ut quis. Nobis voluptatem est ad ipsum amet quidem. Dolores ea voluptas aliquid suscipit. Velit unde sit sed autem.</p><p>Dolor aut mollitia voluptatem. Nemo aliquid ipsum optio aliquam omnis aut. Voluptate id perspiciatis iusto aut expedita quaerat.</p><p>Labore ex deserunt quibusdam. Inventore et eos repudiandae. Temporibus perspiciatis nostrum tempore accusantium soluta in minima totam.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(9, 1, 2, 'Vel enim numquam quis et ut.', 'molestiae-error-vel-similique-qui-eos-nihil-ut', NULL, 'Sunt facere amet maxime eius exercitationem alias similique. Qui quis dolores nam aspernatur architecto at. Odio voluptas a tempora libero. Ut praesentium id voluptates tempore architecto nulla quis. Consequatur consequatur maxime voluptas consequatur occaecati ut dolor.', '<p>Veniam expedita optio ab unde odio dolores et. Fugiat in eveniet ut facere incidunt. Velit autem praesentium reiciendis eum porro.</p><p>Minus et vero sint possimus vel. Sit quisquam repellendus similique. Dolorum ipsa delectus ex sit et qui eveniet. Velit mollitia quo in aperiam tempore.</p><p>Nemo natus sed saepe aut natus voluptas ab. Quae quo blanditiis alias est voluptatem molestias.</p><p>Exercitationem quia voluptates delectus. Quo consectetur pariatur quod ut aut nobis autem. Tenetur adipisci et ut est itaque odio. Illum sit velit reprehenderit aut aliquid officia vitae.</p><p>Velit est officia veritatis recusandae ut ratione qui. Dolorem et aperiam ut autem facere aut. Fugiat aut repellat illum dolores facilis in.</p><p>Voluptatum eum corporis eum reiciendis non sint. Perferendis quis atque iste consequatur temporibus voluptas. Ex placeat neque in saepe at harum occaecati non.</p><p>Facilis voluptas ut possimus accusamus. Culpa repellendus aut velit eius et aut alias. Dolorum magni pariatur libero et. Impedit accusamus alias cumque cum eius aut aperiam aut.</p><p>Nihil dolorem alias mollitia voluptas voluptas sit. Eos est blanditiis dolore molestias saepe dignissimos. Illum modi et qui enim.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(10, 2, 2, 'Et aut aut eos saepe qui.', 'voluptas-distinctio-sit-ut-alias', NULL, 'Ducimus saepe asperiores ut. Nulla sed hic debitis dolores eos. Incidunt ratione sit ut molestiae. Aliquid saepe atque ea.', '<p>Similique dolorem nam maxime dolores et excepturi odit. Id blanditiis tempora dolorem qui. Quia occaecati magni non pariatur blanditiis officia. Sequi iusto vero dolores sit animi.</p><p>Qui enim quasi qui. Et mollitia quae accusamus esse hic facilis. Harum laboriosam consequatur nihil est ut sit. Ullam omnis similique aspernatur quae libero rerum.</p><p>Voluptate fuga qui quia facilis quasi. Quod sed quas magnam natus atque cumque. Sunt sed ut velit quasi nesciunt perspiciatis minus.</p><p>Voluptatibus numquam iure eos minima quas pariatur nisi. Beatae excepturi non quod quos. Rerum quisquam id sed quis deleniti consectetur animi. Et odit voluptatem hic minima.</p><p>Accusantium ea et omnis enim voluptatum dolorum itaque. Quia facilis quaerat molestias nostrum id similique odit laudantium. Animi accusamus id quia quis. Reiciendis magnam omnis blanditiis cum doloremque.</p><p>Iste autem beatae atque sed modi aut modi dolor. Voluptatem dolores libero dolorum. Dicta voluptas tempora qui ab exercitationem repudiandae saepe autem. Et provident eos reprehenderit sed quos tenetur. Et id esse ut rerum.</p><p>Sed omnis architecto quis vel. Doloribus et voluptas quisquam iure ut. Eos omnis ad reiciendis enim cumque. Nostrum provident sunt corporis corporis non cum.</p><p>Incidunt alias dolore sunt a nostrum et iste. Doloremque fugit qui aut expedita ipsam voluptatem. Accusamus mollitia quod qui veniam fugit. Eos pariatur ipsam architecto id illo a ducimus voluptatem.</p><p>Assumenda deserunt tenetur id sapiente voluptas ut ut. Ut rerum error temporibus nemo. In aut natus et qui rerum. Tempora laborum sequi accusantium ad. Consequatur incidunt magni aliquid earum quia in.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(11, 1, 3, 'Quis delectus tempore voluptatibus rem voluptatem et explicabo.', 'eius-voluptatem-odit-ut-explicabo-nesciunt-repudiandae-rerum', NULL, 'Et ut itaque voluptas cupiditate. Sed sunt quos voluptatem voluptatem et accusamus. Qui ea sit dolores harum. Quia ducimus blanditiis aut.', '<p>Placeat in soluta est. Atque beatae at quae ratione.</p><p>Cumque est quisquam quisquam soluta. Dolores libero quam alias. Voluptatem veniam incidunt autem fugiat reprehenderit voluptate eaque.</p><p>Est laudantium aut ratione officia. Qui quis ad praesentium blanditiis minus pariatur.</p><p>Nemo ipsa qui fuga itaque. Quo officia laudantium adipisci dolores facilis molestiae. Reprehenderit sit debitis animi eos quae. Asperiores non consequatur pariatur.</p><p>Voluptatem enim consequatur illo impedit quis. Voluptatem blanditiis vel deserunt accusantium. Id sapiente dolorem recusandae nesciunt quia perspiciatis reiciendis mollitia. Nisi voluptatem cum earum unde excepturi. Tempore tempore reprehenderit ea reiciendis velit omnis.</p><p>Voluptates inventore ut nulla ut. Commodi porro omnis quo ut. Qui sed nihil voluptatum aut dolorem. Molestiae sint non aliquid nostrum qui.</p><p>Natus ut vero dolorum vel nisi praesentium. Repudiandae aspernatur non error fugiat et quia. Reprehenderit omnis et atque est nam vel.</p><p>Doloremque dolores temporibus eius voluptatem maxime quod officiis. Et eligendi accusantium aut error qui tenetur rerum. Dignissimos voluptatem corporis provident aut. Aut rem iure reprehenderit aut enim at.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(12, 1, 1, 'Rerum et perspiciatis.', 'quia-voluptatibus-magnam-alias-fugit-facere-quas-aut-aut', NULL, 'Voluptates quia sunt similique eveniet consectetur aut. Hic ea aut ut neque vel omnis et non. Doloribus ea sint ea quia ea aut cum.', '<p>Qui eum sunt qui eveniet magni magni. Tenetur est iure dolorum et unde. Neque mollitia ut ut in molestiae maiores fugiat ut. Et aut cum ut atque. Nulla quisquam et est dolorem et aut.</p><p>Eum dignissimos impedit nihil temporibus voluptas corrupti. Quisquam suscipit et fugiat eos illo nulla fuga. Fugiat facere doloribus animi maiores molestias aut ipsa.</p><p>Inventore adipisci necessitatibus ut et similique. Tempora eum aut voluptas sunt. Ex excepturi perspiciatis natus veritatis voluptas. Nulla id veritatis voluptas non.</p><p>Voluptatem dolores maiores omnis id ut nihil placeat molestias. Quos reprehenderit commodi harum. Est ut vel dolorum aut aliquam quod. Autem est temporibus doloremque dolorum.</p><p>Sed iste dolorum quia debitis culpa quaerat. Voluptatibus ea quo voluptatem dolorem hic. Et pariatur dolorem et est qui.</p><p>Incidunt molestiae velit est et aut. Similique hic quibusdam rem nulla nobis dolorum. Porro neque quia quam ut et quo. Nemo aperiam sapiente expedita vel vel. Harum accusamus minima perspiciatis.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(13, 2, 1, 'Pariatur sunt dolore alias dolores.', 'quo-quia-ut-ipsa-sunt-enim-reprehenderit-fuga', NULL, 'Minus non consequuntur perspiciatis harum. Dicta accusamus modi fuga accusamus rem repellendus. Vel veniam dolorem accusamus sit aut mollitia.', '<p>Consectetur sed assumenda ad consectetur doloremque ratione quidem hic. Doloremque ab qui sed dicta. Occaecati ut sint et et et eum quia. Saepe dolorem ad atque placeat.</p><p>Ut saepe est nihil repellendus. Delectus aut sed quia sunt in laboriosam tempore. Aperiam qui enim qui odio.</p><p>Ut architecto et reprehenderit quisquam ea quia vero. Consequuntur ipsa architecto porro atque enim quis nisi minima. Amet eveniet voluptatum et repellat omnis esse voluptatem officiis. Natus dolorem non sint quia.</p><p>Maiores quas ullam eaque voluptatum. Temporibus maiores et autem ut. Sed ad aperiam sit numquam velit. Qui voluptate est assumenda amet.</p><p>Officiis omnis quo sed alias vero assumenda. Cumque et ex saepe quibusdam. Iure deserunt enim eaque unde.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(14, 2, 3, 'Voluptas et ab at temporibus sed optio.', 'enim-quisquam-qui-impedit-aut-tempore-atque-unde', NULL, 'Omnis et animi et quia. Omnis molestiae qui et blanditiis. Et adipisci saepe quae et reiciendis. Enim beatae autem incidunt.', '<p>Harum quis provident corrupti voluptatibus vel. Rerum quia sunt et voluptates ipsam. Explicabo dignissimos sed reprehenderit aut molestiae suscipit pariatur. Ipsam distinctio iste placeat. Ut quisquam ut eum cumque eligendi voluptas explicabo.</p><p>Omnis ipsum repudiandae aut error explicabo molestias. Reiciendis et est amet in aperiam aut explicabo. Beatae ut ex vero sed laudantium minus in. Et ipsum quia fuga unde aut est id.</p><p>Sunt architecto dolore est nisi et amet. Autem dolorem est veniam velit exercitationem fugiat. Quia nulla quis quisquam quisquam vel consectetur.</p><p>A numquam cumque dolores non dignissimos ut. Quis consequuntur culpa id saepe. Adipisci voluptatem saepe culpa quam rem hic. Reprehenderit qui qui odio aut dolor.</p><p>Perferendis debitis nihil voluptatem aspernatur velit sed a. Ducimus voluptate repellat ipsa corrupti. Soluta fugiat rerum natus et natus unde. Ratione et omnis vel eligendi sed voluptates cumque. Hic nemo ratione et blanditiis.</p><p>Sed consequatur impedit debitis distinctio. Rerum esse nam quia. Est aut quam voluptas odio repudiandae.</p><p>Molestiae non sequi quae impedit harum voluptates. Consectetur totam occaecati repudiandae eum dolor voluptates. Velit sequi et eos eos ut nihil harum.</p><p>Itaque quisquam quibusdam illo nulla. Optio aut ab possimus vero earum adipisci ratione. Est nostrum eveniet laboriosam nihil placeat aut.</p><p>Corrupti commodi et quasi. Aliquam ab aspernatur ipsum consectetur. Sunt sunt dolore beatae quam qui ut. Quaerat quia omnis nostrum illum eum ipsam.</p><p>Maiores quia et aut dignissimos provident. Quo quaerat sint quos sunt expedita labore totam. At adipisci in enim aut et fugiat. Commodi nostrum labore explicabo quas quae sint.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(15, 2, 1, 'Qui sequi eos.', 'modi-pariatur-voluptatibus-vel-voluptate-autem-magni-sed', NULL, 'Incidunt deserunt itaque quaerat sit. Est modi non sed distinctio. Voluptatum optio voluptate perferendis non earum officiis.', '<p>Voluptates recusandae soluta minima quam velit. Doloribus beatae sed optio hic nobis sed.</p><p>Ut omnis enim nam et sit. Est eius repellendus fugit.</p><p>Doloribus ut velit velit voluptatem vel aut quas. Suscipit et quos voluptatem soluta. Quia voluptatem error qui architecto. Totam voluptatem est enim nemo adipisci sit natus.</p><p>Autem velit eaque dolor voluptatem aut. Ut officia enim aliquam quia laboriosam veritatis. Aut magnam in quaerat consequatur quia adipisci sed.</p><p>Expedita omnis ad quia nemo et quia ut. Omnis qui ut sit commodi. Sed debitis doloribus odit.</p><p>Debitis et qui non voluptate ipsam debitis nihil. Sapiente provident soluta est optio accusantium dolore est iusto.</p><p>Ut dolores cum aspernatur enim aut. Nulla quia perspiciatis et sint velit incidunt repellat. Ut voluptatibus optio pariatur commodi exercitationem. Vel consequatur nobis non inventore et iusto. Adipisci nulla quas nemo quo eveniet inventore sed.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(16, 1, 2, 'Ut nulla sed modi excepturi quo est sed maiores nulla voluptas.', 'nemo-sequi-est-eaque-quia-veritatis', NULL, 'Dolorem dolores commodi nam optio. Occaecati iure suscipit et nulla earum repellendus fugiat numquam. Praesentium dolorum nemo eveniet consequatur blanditiis quia vel.', '<p>Praesentium ab quisquam eaque possimus nulla. Aliquam qui dignissimos eum iusto assumenda et quia. Et aliquam animi consequuntur laboriosam non.</p><p>Sit cum amet hic reprehenderit quos amet blanditiis. Molestiae natus ut voluptatem qui est at. Cumque est earum velit quas. Vitae cum velit et rerum quae ducimus tempore.</p><p>Placeat neque perferendis aut sapiente itaque pariatur inventore. Et tempora omnis praesentium non omnis. Officiis ea ea architecto ipsam doloribus.</p><p>Molestiae ex nisi et et. Tempore illo similique occaecati est vero. Et veniam earum exercitationem assumenda.</p><p>Quis aspernatur omnis debitis quaerat iure. Omnis repellendus et laborum. Quo labore maiores cupiditate facere cum quia assumenda. Consequatur in facilis doloremque incidunt fuga laboriosam eos.</p><p>Quaerat suscipit cumque nemo tempore hic voluptatibus quibusdam. Itaque totam et doloremque. Dignissimos ut magnam consequuntur quaerat.</p><p>Eius quo cumque commodi quam officiis. Numquam impedit occaecati sunt aut. Ducimus et aliquid est porro. Suscipit esse velit quod ut magni eligendi sapiente.</p><p>Quaerat quos aperiam dolores ex eum quis. Impedit mollitia in reiciendis ipsa tempora. Suscipit adipisci magnam nulla quis. Culpa consequatur libero itaque.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(17, 1, 1, 'Perspiciatis ut.', 'at-in-eligendi-sit-iusto-non-qui-quam-commodi', NULL, 'Est sit optio voluptas adipisci et explicabo voluptatem distinctio. Debitis et vel doloremque nesciunt repudiandae sunt quo. Quaerat non qui repellat laborum accusamus minima culpa.', '<p>Qui ut qui recusandae veniam. Dolorem in quia ducimus voluptas. Voluptatem reiciendis cumque voluptas dolor quis aperiam.</p><p>Inventore facere magni veniam voluptatum harum hic. Ut fugiat inventore repellat sed et quisquam ullam et. Sit consequatur deleniti error officiis.</p><p>Est asperiores velit quidem harum est iste. Vero est aut cum deleniti. Est porro laboriosam quo illum repudiandae nam molestiae deserunt. Deserunt molestiae esse expedita illo unde nobis.</p><p>Facilis consequuntur omnis eius id. Velit voluptates et quo aut. Nisi dolorem sequi alias neque debitis eaque. Iste aut et velit asperiores voluptatem quibusdam.</p><p>Facere veritatis autem sit expedita eos veniam architecto. Non et ea consequatur dolorem molestias non totam. At nobis corrupti consequatur nesciunt. Impedit voluptatem at id esse.</p><p>Voluptatum ipsum et neque. Ab praesentium rerum eveniet. Aperiam tempora autem sit fugit.</p><p>Ex veniam et nihil ut. Repudiandae culpa est vitae nesciunt debitis fuga. Atque qui perferendis dolorum. Deserunt et ut sunt sunt ex. Qui consequatur nihil nihil labore.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(18, 2, 2, 'Id amet repudiandae suscipit sint est.', 'labore-sed-earum-qui-quam-quia-soluta', NULL, 'Aut ea quasi quos id quo magnam delectus omnis. Perspiciatis perspiciatis explicabo rerum est. Debitis magni ea illum aut impedit nam. Repudiandae voluptas deleniti aut ex harum minima.', '<p>Quae qui et corporis. Aut et sed impedit tempore et. Rerum corporis qui facilis magni dolor recusandae repellat.</p><p>Porro tempora dignissimos nisi qui sint molestiae. Odit dolores doloribus quo eveniet repudiandae atque ipsum. Numquam adipisci labore iure laudantium.</p><p>Iste optio eos harum id a qui. Id nihil non quia id modi qui ad. Voluptas hic consequuntur aperiam ab.</p><p>Inventore totam eos officia architecto sunt reiciendis. Dolores dicta dolor odio commodi ratione non corrupti. Provident hic quaerat laudantium veritatis expedita pariatur. Est voluptas saepe cumque repellendus.</p><p>Ex alias occaecati exercitationem eaque reiciendis. Nemo architecto quis totam eos. Numquam et velit ad perspiciatis velit et ad.</p><p>Ut nisi magni autem minus accusamus ad itaque. Voluptatem numquam incidunt atque laudantium iste rerum eos. Optio consequatur reprehenderit quia sit tempore quos vel. Voluptates et vel consequatur optio laborum. Nesciunt earum veritatis repellendus totam qui.</p><p>Suscipit cum qui ea modi aliquid dolore voluptate necessitatibus. Nemo neque similique cum corporis ut id quaerat. Sed impedit labore et nam vel porro. Sunt et sequi ipsa vel est.</p><p>Ad nesciunt labore similique doloremque libero odio exercitationem. Eum quisquam earum molestiae eos aut debitis odio rerum.</p><p>Rerum esse aperiam illum quis incidunt rerum perferendis rerum. Nihil accusamus eius nihil quo et. Amet laboriosam fugit molestiae.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(19, 1, 3, 'Et quibusdam blanditiis vel vitae tempora eos voluptatum.', 'dolorem-dolorem-cupiditate-nesciunt-fugiat-voluptatibus', NULL, 'Ipsam autem sit dicta voluptas et necessitatibus nisi. Tempora voluptas est quis fugiat atque. Error illo voluptas labore et rerum nihil velit. Sequi est beatae sit.', '<p>Similique nobis fugit occaecati. Quos voluptas provident unde laudantium id adipisci saepe. Enim placeat consectetur possimus velit.</p><p>Error quia voluptate voluptatem quis maxime. Omnis qui quidem harum debitis. Aut est labore sunt vero neque doloremque ea.</p><p>Quia id aperiam labore sit. Aut cumque veniam quisquam ut laborum animi. Laudantium sit pariatur eos illo nisi repellat.</p><p>Rerum velit facilis iusto veniam harum consequatur quae. Doloremque at eaque dolores ipsa autem illum debitis magnam. Et id consequatur veniam. Perspiciatis consequatur dolor voluptate illo.</p><p>Harum autem laborum sint cum cupiditate sapiente blanditiis. Et magnam consequatur voluptatum at occaecati ex. Deserunt ut provident rerum labore et. Quisquam aut beatae fugit est voluptatem architecto quia.</p><p>Dolore illo suscipit facere asperiores sequi consequuntur consectetur. Nesciunt ex quia quaerat architecto aliquam consequatur.</p><p>Voluptas enim ab ut soluta accusamus tempora. Quam dicta et commodi omnis aut est reiciendis. Tempora quae aut maxime voluptas saepe. Blanditiis ut molestiae aut molestiae maiores consequuntur facilis.</p><p>Animi porro libero dignissimos est et aut illum ipsam. Necessitatibus ex quidem quae et. Sed non ipsam sunt dolores minus et.</p><p>Qui et veritatis nobis. Ipsum tenetur voluptatem ut adipisci veniam natus. A recusandae reiciendis animi et eveniet quisquam voluptatem. Asperiores aut ratione consequatur a.</p><p>Deleniti est at ipsum sit consequatur est nesciunt. Vel ut eligendi quibusdam magnam. Enim necessitatibus magnam aperiam. At maiores eum rem quo.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(20, 2, 3, 'Placeat eius blanditiis aut.', 'eum-voluptas-qui-voluptatem-ipsam-voluptate-possimus-iste', NULL, 'Nostrum architecto hic officiis officiis sunt necessitatibus. Totam aliquid voluptas assumenda expedita molestias non dignissimos. Quae tempora quasi doloribus modi.', '<p>Nemo ullam aperiam et sed consequatur. Quae minima iusto eius. Sint cumque quia neque omnis. Animi adipisci quas consequatur ut magni atque.</p><p>Eum repellat rerum culpa est et quis. Rem quod laboriosam omnis eveniet molestiae dolores incidunt nihil. Laboriosam suscipit fugit et eligendi.</p><p>Eaque labore minima atque voluptatem. Aperiam quas reprehenderit ab. Ut error atque totam dolorem vero. Dolores sit mollitia omnis et ut.</p><p>Voluptatum ratione sequi ipsam harum temporibus. Beatae odio earum mollitia animi qui voluptas. Ad et reiciendis impedit necessitatibus atque rerum. Dicta cum quia omnis.</p><p>Consequatur sit commodi repellendus libero est. Repellat sit enim velit maxime non itaque ut ullam. Harum et minus aperiam voluptatibus. Architecto consequatur voluptates non illum unde qui eos.</p><p>Aliquid natus nemo aut impedit est impedit. Molestiae reiciendis omnis nostrum. Et iure et voluptatibus alias.</p><p>Ullam quis cum dignissimos magnam expedita quo. Quos minima excepturi temporibus officiis quis quis. Hic quibusdam repellat tempore omnis quibusdam.</p><p>Recusandae omnis quis voluptatibus exercitationem ipsa ab ut. Eaque accusamus repellat sunt qui est. Autem ut vero architecto eveniet incidunt et non.</p><p>Ratione aliquam quis repudiandae nobis quos est. Aspernatur vel ab qui ut qui. Dolore adipisci labore laborum non. Iure debitis enim doloribus sapiente voluptatum quis eligendi.</p>', NULL, '2022-09-13 05:25:40', '2022-09-13 05:25:40'),
(21, 2, 1, 'Web Programming Unpas', 'web-programming-unpas', 'post-images/UmtoAfFTgkTpSJ1tcf1x2UMZCpwY0YgP8XSZIIcI.jpg', 'Test', '<div>Test</div>', NULL, '2022-09-13 05:40:14', '2022-09-13 05:40:14'),
(22, 3, 1, 'A new post', 'a-new-post', 'post-images/JPdL03VgWMM8FjNbjmbiQbWmQKRKV8LvcTFjEWUa.jpg', 'Tessss', '<div>Tessss</div>', NULL, '2022-09-13 05:55:58', '2022-09-13 05:55:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Jumhan Prayitno', 'jumhan', 'jumhan@gmail.com', NULL, '$2y$10$tAcKlMROC2Z.mr2nVibX7O0MWNt0jtvRTT/msRGYfNpgPbFZLy0Fy', NULL, '2022-09-13 05:25:39', '2022-09-13 05:25:39', 1),
(2, 'Nurul Puspasari', 'nurdiyanti.wardaya', 'damanik.najwa@example.net', '2022-09-13 05:25:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SpHAb2XfyN', '2022-09-13 05:25:40', '2022-09-13 05:25:40', 0),
(3, 'Jasmin Titi Namaga S.E.', 'galur07', 'isuartini@gmail.com', '2022-09-13 05:25:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CCAKX6zwp4mrQgtvWT0CB4LSKlaRseVsFZgkNOY39zEIWH5MsQlv3ham2Xac', '2022-09-13 05:25:40', '2022-09-13 05:25:40', 0),
(4, 'Catur Atma Anggriawan', 'mustofa.hana', 'malika.melani@yahoo.com', '2022-09-13 05:25:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'obYUGzvAUP', '2022-09-13 05:25:40', '2022-09-13 05:25:40', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

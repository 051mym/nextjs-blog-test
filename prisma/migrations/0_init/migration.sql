-- CreateTable
CREATE TABLE `admin_fitur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `admin_fitur_action` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `admin_fitur_id` INTEGER NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `action_code` VARCHAR(50) NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `all_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `analisa_mitra` (
    `id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
    `mitra_id` INTEGER UNSIGNED NOT NULL,
    `store_name` VARCHAR(255) NOT NULL,
    `store_category` VARCHAR(255) NOT NULL,
    `active_fee_percentage` DECIMAL(10, 1) NOT NULL,
    `status` ENUM('active', 'inactive', 'deleted') NOT NULL DEFAULT 'active',
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `analisa_webmin` (
    `id` INTEGER NOT NULL DEFAULT 0,
    `user_code` VARCHAR(255) NOT NULL,
    `user_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(155) NOT NULL,
    `mobile_phone` VARCHAR(155) NOT NULL,
    `religion` VARCHAR(50) NULL,
    `gender` ENUM('Laki-laki', 'Perempuan') NULL,
    `date_birth` DATE NULL,
    `role` VARCHAR(155) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `referral_code` VARCHAR(256) NULL,
    `webmin_access` ENUM('active', 'inactive') NOT NULL DEFAULT 'inactive',
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `astrapay_account_link` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `user_code` VARCHAR(255) NOT NULL,
    `signature` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,
    `callback_log` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `astrapay_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `authorization` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `fcmtoken` TEXT NOT NULL,
    `token` TEXT NOT NULL,
    `token_created_at` DATE NOT NULL,
    `token_expired_at` DATE NOT NULL,
    `is_aktif` ENUM('true', 'false') NOT NULL DEFAULT 1,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `banner_banner` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `url_type` ENUM('screen', 'url') NOT NULL DEFAULT 'url',
    `desc` BLOB NOT NULL,
    `banner_group` INTEGER NOT NULL,
    `product_group` INTEGER NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,
    `sort` INTEGER NOT NULL,
    `mode` VARCHAR(255) NOT NULL,

    INDEX `banner_group`(`banner_group`),
    INDEX `banner_group_2`(`banner_group`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `banner_group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `update_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `banner_slider` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` VARCHAR(155) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `blog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `category` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `date_publish` DATE NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `blog_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bnc_va_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `request` TEXT NOT NULL,
    `response` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bniqris_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `request` TEXT NOT NULL,
    `response` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `brand` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` VARCHAR(155) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `product_group` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_bank` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `image` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `description` TEXT NOT NULL,
    `tnc` TEXT NOT NULL,
    `ordering` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_berita` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `image` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `description` TEXT NOT NULL,
    `tnc` TEXT NOT NULL,
    `ordering` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_berita_count` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `portal` VARCHAR(255) NOT NULL,
    `user_id` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_finansial` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `image` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `description` TEXT NOT NULL,
    `tnc` TEXT NOT NULL,
    `sort` INTEGER NOT NULL,
    `category_id` INTEGER NOT NULL,
    `subcategory_id` INTEGER NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_kebaikan` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `image` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `description` TEXT NOT NULL,
    `tnc` TEXT NOT NULL,
    `ordering` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cari_kebaikan_items` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `cari_kebaikan_id` INTEGER NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `image` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `ordering` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `bank_name` VARCHAR(255) NOT NULL,
    `acc_name` VARCHAR(255) NOT NULL,
    `acc_number` VARCHAR(255) NOT NULL,
    `last_num` VARCHAR(2) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cariberita_article_count` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `title` TEXT NOT NULL,
    `url` TEXT NOT NULL,
    `portal` VARCHAR(255) NOT NULL,
    `kanal` VARCHAR(255) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `caricare_article` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `topic` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `caricare_rate` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `caricare_topic` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `carikurir_customers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sender_user_id` INTEGER NULL,
    `sender_store_id` INTEGER NULL,
    `sender_branch_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `handphone` VARCHAR(255) NULL,
    `address` TEXT NULL,
    `receiver_place` TEXT NOT NULL,
    `latitude` TEXT NULL,
    `longitude` TEXT NULL,
    `district_id` INTEGER NULL,
    `region_id` INTEGER NULL,
    `city_id` INTEGER NULL,
    `province_id` INTEGER NULL,
    `create_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `carikurir_product_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `value` VARCHAR(255) NOT NULL,
    `text` VARCHAR(255) NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `ordering` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `carikurir_senders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sender_user_id` INTEGER NULL,
    `sender_store_id` INTEGER NULL,
    `sender_branch_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `handphone` VARCHAR(255) NULL,
    `address` TEXT NULL,
    `sender_place` TEXT NOT NULL,
    `postcode` VARCHAR(255) NULL,
    `latitude` TEXT NULL,
    `longitude` TEXT NULL,
    `district_id` INTEGER NULL,
    `region_id` INTEGER NULL,
    `city_id` INTEGER NULL,
    `province_id` INTEGER NULL,
    `create_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cart` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `is_selected` ENUM('true', 'false') NOT NULL DEFAULT 'true',
    `cart_code` VARCHAR(255) NOT NULL,
    `type` ENUM('delivery', 'dinein', 'takeaway') NOT NULL DEFAULT 'delivery',
    `customer_id` INTEGER NOT NULL,
    `mitra_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `status` VARCHAR(50) NULL,
    `date` VARCHAR(20) NULL,
    `time` VARCHAR(20) NULL,
    `created_at` VARCHAR(255) NULL,
    `updated_at` VARCHAR(0) NULL,
    `is_direct_checkout` ENUM('true', 'false') NULL DEFAULT 'false',

    INDEX `fk_cart_customer`(`customer_id`),
    INDEX `fk_cart_mitra`(`mitra_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cart_product` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `is_selected` ENUM('true', 'false') NOT NULL DEFAULT 'true',
    `product_id` INTEGER NOT NULL,
    `cart_id` BIGINT NOT NULL,
    `quantity` INTEGER NOT NULL,
    `note` TEXT NOT NULL,
    `date` VARCHAR(20) NULL,
    `time` VARCHAR(20) NULL,
    `status` VARCHAR(30) NULL,
    `cart_status` VARCHAR(155) NOT NULL,
    `created_at` VARCHAR(50) NULL,
    `updated_at` VARCHAR(50) NULL,

    INDEX `fk_cart_prd_cart_id`(`cart_id`),
    INDEX `fk_cart_prd_prd_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `chat_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `coin_history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `mitra_store_id` INTEGER NULL,
    `value` VARCHAR(255) NOT NULL,
    `remark` TEXT NOT NULL,
    `transaction_id` INTEGER NULL,
    `total_product_amount` VARCHAR(255) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `community` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `complain_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `complains_list` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `text` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `ordering` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `configuration` (
    `id` INTEGER NOT NULL,
    `environment` ENUM('development', 'staging', 'production') NOT NULL DEFAULT 'development',
    `xendit_type` ENUM('development', 'production') NOT NULL DEFAULT 'development',
    `xenditapikey_development` TEXT NOT NULL,
    `xenditapikey_production` TEXT NOT NULL,
    `xenditcallbackveriytoken_development` TEXT NOT NULL,
    `xenditcallbackveriytoken_production` TEXT NOT NULL,
    `xendit_callbackurl_development` TEXT NOT NULL,
    `xendit_callbackurl_production` TEXT NOT NULL,
    `sicepat_type` ENUM('development', 'production') NOT NULL DEFAULT 'development',
    `sicepatapikey` TEXT NOT NULL,
    `sicepatendpoint_development` TEXT NOT NULL,
    `sicepatendpoint_production` TEXT NOT NULL,
    `sicepatauthkey_development` TEXT NOT NULL,
    `sicepatauthkey_production` TEXT NOT NULL,
    `dbsApiUrl` TEXT NOT NULL,
    `dbsXapiKey` TEXT NOT NULL,
    `carinihGpgKey` VARCHAR(255) NOT NULL,
    `dbsGpgKey` VARCHAR(255) NOT NULL,
    `danamon_url_onboarding` TEXT NOT NULL,
    `paxel_api_key` TEXT NOT NULL,
    `paxel_api_secret` TEXT NOT NULL,
    `paxel_url` TEXT NOT NULL,
    `lalamove_api_key` TEXT NOT NULL,
    `lalamove_api_secret` TEXT NOT NULL,
    `lalamove_url` TEXT NOT NULL,
    `jwt_key` TEXT NOT NULL,
    `mailgun_smtp_pass` TEXT NOT NULL,
    `sendinblue_smtp_pass` TEXT NOT NULL,
    `flashsale_date` VARCHAR(255) NOT NULL,
    `flashsale_starttime` VARCHAR(10) NOT NULL,
    `flashsale_endtime` VARCHAR(10) NOT NULL,
    `anteraja_api_key` TEXT NOT NULL,
    `anteraja_api_secret` TEXT NOT NULL,
    `anteraja_url` TEXT NOT NULL,
    `danamon_va_key` TEXT NOT NULL,
    `hash_key` TEXT NOT NULL,
    `firebase_admin_file` TEXT NOT NULL,
    `ninja_api_url` TEXT NOT NULL,
    `ninja_standard_id` TEXT NOT NULL,
    `ninja_standard_secret` TEXT NOT NULL,
    `ninja_standard_token` TEXT NOT NULL,
    `ninja_nextday_id` TEXT NOT NULL,
    `ninja_nextday_secret` TEXT NOT NULL,
    `ninja_nextday_token` TEXT NOT NULL,
    `ninja_sameday_id` TEXT NOT NULL,
    `ninja_sameday_secret` TEXT NOT NULL,
    `ninja_sameday_token` TEXT NOT NULL,
    `ninja_hmac` TEXT NOT NULL,
    `grabfood_clientid` TEXT NOT NULL,
    `grabfood_clientsecret` TEXT NOT NULL,
    `grabfood_oauthurl` TEXT NOT NULL,
    `grabfood_url` TEXT NOT NULL,
    `grabfood_token_7days` TEXT NOT NULL,
    `grabfood_token_created` TIMESTAMP(0) NULL,
    `grabfood_register_text` TEXT NOT NULL,
    `grabexpress_clientid` TEXT NOT NULL,
    `grabexpress_clientsecret` TEXT NOT NULL,
    `grabexpress_oauthurl` TEXT NOT NULL,
    `grabexpress_url` TEXT NOT NULL,
    `grabexpress_token` TEXT NOT NULL,
    `grabexpress_token_created` TIMESTAMP(0) NULL,
    `grabexpress_token_expired` TIMESTAMP(0) NULL,
    `gofood_client_id` TEXT NOT NULL,
    `gofood_clientsecret` TEXT NOT NULL,
    `gofood_oauthurl` TEXT NOT NULL,
    `gofood_url` TEXT NOT NULL,
    `gofood_register_text` TEXT NOT NULL,
    `gofood_login_page` TEXT NOT NULL,
    `gofood_notification_secret` TEXT NOT NULL,
    `astrapay_clientid` TEXT NOT NULL,
    `astrapay_clientsecret` TEXT NOT NULL,
    `astrapay_auth_url` TEXT NOT NULL,
    `astrapay_token` TEXT NOT NULL,
    `astrapay_token_created` TIMESTAMP(0) NULL,
    `astrapay_account_link_url` TEXT NOT NULL,
    `astrapay_payment_url` TEXT NOT NULL,
    `astrapay_profile_url` TEXT NOT NULL,
    `astrapay_hashkey` TEXT NOT NULL,
    `astrapay_token_expired` VARCHAR(255) NOT NULL,
    `bankneo_api_url` TEXT NOT NULL,
    `bankneo_client_id` TEXT NOT NULL,
    `bankneo_partner_id` TEXT NOT NULL,
    `bankneo_merchant_id` TEXT NULL,
    `bankneo_app_id` TEXT NULL,
    `bankneo_token` TEXT NOT NULL,
    `bankneo_token_created` TIMESTAMP(0) NULL,
    `bankneo_token_expired` TIMESTAMP(0) NULL,
    `bni_qris_url` TEXT NOT NULL,
    `bni_access_token` TEXT NOT NULL,
    `bni_refresh_token` TEXT NOT NULL,
    `bni_token_expired` TIMESTAMP(0) NULL,
    `bni_clientid` VARCHAR(255) NOT NULL,
    `bni_clientsecret` VARCHAR(255) NOT NULL,
    `bni_username` VARCHAR(255) NOT NULL,
    `bni_password` VARCHAR(255) NOT NULL,
    `bni_hmackey` VARCHAR(255) NOT NULL,
    `bni_merchantid` VARCHAR(255) NOT NULL,
    `bni_merchantid_dynamic` VARCHAR(255) NOT NULL,
    `dbs_clientid` TEXT NOT NULL,
    `dbs_apiurl` TEXT NOT NULL,
    `carinih_dbs_rsa_privatekey` TEXT NOT NULL,
    `carikurir_max_order_daily` INTEGER NOT NULL,
    `carikurir_whitelist_userids` TEXT NOT NULL,
    `idexpress_url` TEXT NOT NULL,
    `idexpress_app_id` TEXT NOT NULL,
    `idexpress_secret` TEXT NOT NULL,
    `emeterai_url` TEXT NULL,
    `emeterai_username` TEXT NULL,
    `emeterai_pass` TEXT NULL,
    `emeterai_token` TEXT NULL,
    `emeterai_user_id` TEXT NULL,
    `emeterai_expired_token` TEXT NULL,
    `emeterai_jenis_doc` TEXT NULL,
    `maybank_va_key` TEXT NULL,
    `emeterai_urlsn` TEXT NULL,
    `emeterai_urlstamp` TEXT NULL,
    `danamon_client_id` TEXT NOT NULL,
    `danamon_secret` TEXT NOT NULL,
    `danamon_partner_id` VARCHAR(255) NOT NULL,
    `danamon_rsa_publickey` TEXT NOT NULL,
    `bnc_rsa_privatekey` TEXT NULL,
    `bnc_rsa_publickey` TEXT NULL,
    `carinih_rsa_privatekey` TEXT NULL,
    `carinih_rsa_publickey` TEXT NULL,
    `bnc_token` TEXT NULL,
    `bnc_expired_token` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `courier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `api_connection` TEXT NOT NULL,
    `type_parent` VARCHAR(155) NOT NULL,
    `sort` VARCHAR(155) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `courier_checkout_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `courier` VARCHAR(255) NOT NULL,
    `request_json` TEXT NOT NULL,
    `response_json` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `courier_mitra` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `courier_service_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `price` INTEGER NULL DEFAULT 0,
    `courier_by_product` ENUM('yes', 'no') NULL,
    `courier_by_product_if` ENUM('yes', 'no') NULL,
    `courier_by_product_condition` VARCHAR(50) NULL,
    `courier_by_product_service_area` ENUM('yes', 'no') NULL,
    `courier_by_product_service_area_data` TEXT NULL,
    `courier_by_product_shopping_value` ENUM('yes', 'no') NULL,
    `courier_by_product_shopping_min_value` INTEGER NULL,
    `courier_by_product_shopping_max_value` INTEGER NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `courier_services` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `status_shiping_id` INTEGER NOT NULL,
    `courier_id` INTEGER NOT NULL,
    `service_name_in_api` VARCHAR(255) NULL,
    `desc` TEXT NOT NULL,
    `discount_type` ENUM('', 'percentage', 'amount') NULL,
    `discount_value` DECIMAL(10, 1) NOT NULL DEFAULT 0.0,
    `discount_type_carinih` ENUM('', 'percentage', 'amount') NULL,
    `discount_value_carinih` DECIMAL(10, 1) NULL,
    `max_discount` INTEGER NULL,
    `limit_discount` VARCHAR(255) NULL,
    `quantity_discount` INTEGER UNSIGNED NULL,
    `start_date_discount` TIMESTAMP(0) NULL,
    `end_date_discount` TIMESTAMP(0) NULL,
    `day_discount` VARCHAR(225) NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `carikurir_status` ENUM('inactive', 'active') NOT NULL DEFAULT 'inactive',
    `tnc_url` TEXT NOT NULL,
    `service_fee` DECIMAL(10, 1) NOT NULL DEFAULT 0.0,
    `service_fee_type` ENUM('percentage', 'amount') NOT NULL DEFAULT 'percentage',
    `api_fee` INTEGER NOT NULL DEFAULT 0,
    `ppn` DECIMAL(10, 1) NOT NULL DEFAULT 0.0,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `courier_tracking_history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` ENUM('carikurir', 'delivery') NULL,
    `order_id` INTEGER NULL,
    `history` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER NOT NULL,
    `customer_group_id` INTEGER NOT NULL,
    `customer_code` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,
    `has_transaction` ENUM('false', 'true') NOT NULL DEFAULT 'false',

    UNIQUE INDEX `tb_customer_cust_kode`(`customer_code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_account_bank` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_bank_id` INTEGER NOT NULL,
    `bank_city` VARCHAR(255) NOT NULL,
    `account_id` INTEGER NOT NULL,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `number` VARCHAR(255) NOT NULL,
    `status` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_address` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `district_id` INTEGER NOT NULL,
    `customer_id` INTEGER NOT NULL,
    `code` VARCHAR(255) NOT NULL,
    `recipient_name` VARCHAR(255) NULL,
    `recipient_handphone` VARCHAR(255) NOT NULL,
    `address` VARCHAR(1000) NOT NULL,
    `address_type` VARCHAR(255) NULL DEFAULT 'Rumah',
    `longitude` VARCHAR(255) NULL,
    `latitude` VARCHAR(255) NULL,
    `image` VARCHAR(255) NULL,
    `as_primary` VARCHAR(155) NOT NULL,
    `is_pickup_address` VARCHAR(30) NOT NULL DEFAULT 'true',
    `is_return_address` VARCHAR(30) NOT NULL DEFAULT 'true',
    `status` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_bank_account` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER NOT NULL,
    `bank_id` INTEGER NOT NULL,
    `bank_city` VARCHAR(255) NOT NULL,
    `is_primary` ENUM('yes', 'no') NOT NULL,
    `bank_name` VARCHAR(255) NOT NULL,
    `account_name` VARCHAR(255) NOT NULL,
    `account_number` VARCHAR(255) NOT NULL,
    `verified` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `status` ENUM('active', 'inactive') NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_notifications` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `user_id` INTEGER NOT NULL,
    `data` TEXT NOT NULL,
    `created_date` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `is_clicked` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `image` VARCHAR(255) NULL,
    `topic` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_promotions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER NOT NULL,
    `promotion_voucher_id` INTEGER NOT NULL,
    `valid_until` TIMESTAMP(0) NULL,
    `count_available` INTEGER NOT NULL DEFAULT 0,
    `count_redeem` INTEGER NOT NULL DEFAULT 0,
    `count_expired` INTEGER NOT NULL DEFAULT 0,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customer_view` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `danamon_onboarding` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `bank` VARCHAR(200) NULL,
    `name` VARCHAR(255) NULL DEFAULT 'not login yet',
    `email` VARCHAR(255) NOT NULL,
    `handphone` VARCHAR(255) NOT NULL,
    `create_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dbs_response_json` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `response` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dbsdirectdebit_account_link` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `user_code` VARCHAR(256) NOT NULL,
    `linkId` TEXT NOT NULL,
    `link_status` ENUM('active', 'inactive') NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dbsdirectdebit_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dbsqris_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `request` TEXT NOT NULL,
    `response` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emeterai` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `filename` TEXT NULL,
    `filesavename` TEXT NULL,
    `filepass` VARCHAR(255) NULL,
    `url_download` TEXT NULL,
    `idfile` TEXT NULL,
    `qr_name` TEXT NULL,
    `qr_sn` VARCHAR(255) NULL,
    `created_at` VARCHAR(255) NULL,
    `expired_at` VARCHAR(255) NULL,
    `localpath` VARCHAR(255) NULL,
    `jenis_doc` VARCHAR(255) NULL,
    `no_doc` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emeterai_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` VARCHAR(255) NULL,
    `type` VARCHAR(255) NULL,
    `request_log` TEXT NULL,
    `response_log` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emeterai_buy_history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_transaction_id` INTEGER NULL,
    `user_id` INTEGER NULL,
    `order_number` VARCHAR(255) NULL,
    `total_bill` DECIMAL(10, 0) NULL,
    `quantity` INTEGER NULL,
    `status` ENUM('Batal', 'Success', 'Menunggu Pembayaran') NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emeterai_sn` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sn` TEXT NULL,
    `filenameQR` TEXT NULL,
    `status` ENUM('avail', 'used', 'onpaid', 'booked') NULL DEFAULT 'avail',
    `users_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `error_log` (
    `code_id` INTEGER NOT NULL AUTO_INCREMENT,
    `error_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `solved` ENUM('no', 'yes') NULL DEFAULT 'no',
    `solved_by` VARCHAR(255) NULL,
    `comment` TEXT NULL,

    PRIMARY KEY (`code_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `financial_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `sort` INTEGER NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `financial_subcategory` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(50) NOT NULL,
    `category_id` INTEGER NOT NULL,
    `sort` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gender` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_id` VARCHAR(255) NULL,
    `execution_time` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_linked_account` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `users_id` INTEGER NOT NULL,
    `access_token` TEXT NOT NULL,
    `refresh_token` TEXT NOT NULL,
    `expired_token` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `is_linked` ENUM('false', 'true') NOT NULL DEFAULT 0,
    `mitra_store_id` INTEGER NOT NULL,
    `outlet_name` VARCHAR(255) NOT NULL,
    `outlet_id` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_modifier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gofood_product_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `ordering` INTEGER NOT NULL,
    `min` INTEGER NOT NULL,
    `max` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_modifier_item` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gofood_modifier_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` DECIMAL(10, 0) NOT NULL,
    `available_status` ENUM('AVAILABLE', 'UNAVAILABLE') NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_orders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `service_type` VARCHAR(255) NOT NULL,
    `outlet_id` VARCHAR(255) NOT NULL,
    `mitra_store_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `pin` VARCHAR(255) NOT NULL,
    `total_price` DECIMAL(10, 0) NOT NULL,
    `takeaway_charges` DECIMAL(20, 0) NOT NULL,
    `currency` VARCHAR(255) NOT NULL,
    `total_product_price` DECIMAL(10, 0) NOT NULL,
    `driver_name` VARCHAR(255) NOT NULL,
    `customer_name` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `order_date` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_orders_items` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `product_gofood_id` VARCHAR(255) NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `price` DECIMAL(10, 0) NOT NULL,
    `quantity` DECIMAL(10, 0) NOT NULL,
    `notes` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_orders_items_modifier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `item_id` INTEGER NOT NULL,
    `itemsModifiersId` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `itemsModifiersQuantity` VARCHAR(255) NOT NULL,
    `itemsModifiersPrice` INTEGER NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_orders_state` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NOT NULL,
    `toState` VARCHAR(255) NOT NULL,
    `fromState` VARCHAR(255) NOT NULL,
    `orderAcceptedType` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gofood_product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `price` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `monday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `monday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `monday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `tuesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `tuesday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `tuesday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `wednesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `wednesday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `wednesday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `thursday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `thursday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `thursday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `friday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `friday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `friday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `saturday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `saturday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `saturday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `sunday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `sunday_from` VARCHAR(255) NOT NULL DEFAULT '00:00',
    `sunday_to` VARCHAR(255) NOT NULL DEFAULT '00:00',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabexpress_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_modifier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `grabfood_product_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `available_status` ENUM('AVAILABLE', 'UNAVAILABLE') NOT NULL DEFAULT 'UNAVAILABLE',
    `ordering` INTEGER NOT NULL DEFAULT 1,
    `min` INTEGER NOT NULL DEFAULT 0,
    `max` INTEGER NOT NULL DEFAULT 1,

    INDEX `grabfood_product_id`(`grabfood_product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_modifier_item` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `grabfood_modifier_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` INTEGER NOT NULL DEFAULT 0,
    `available_status` ENUM('AVAILABLE', 'UNAVAILABLE') NOT NULL DEFAULT 'UNAVAILABLE',
    `ordering` INTEGER NOT NULL DEFAULT 1,

    INDEX `grabfood_modifier_id`(`grabfood_modifier_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_orders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `orderID` VARCHAR(35) NULL,
    `shortOrderNumber` VARCHAR(35) NULL,
    `merchantID` VARCHAR(255) NULL,
    `partnerMerchantID` VARCHAR(255) NULL,
    `mitra_store_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `paymentType` VARCHAR(35) NULL,
    `cutlery` BOOLEAN NULL,
    `orderTime` VARCHAR(35) NULL,
    `scheduledTime` VARCHAR(35) NULL,
    `currencyCode` VARCHAR(5) NULL,
    `currencySymbol` VARCHAR(10) NULL,
    `currencyExponent` VARCHAR(5) NULL,
    `featureFlagsOrderAcceptedType` VARCHAR(10) NULL,
    `featureFlagsOrderType` VARCHAR(25) NULL,
    `featureFlagsIsMexEditOrder` BOOLEAN NULL,
    `priceGrabFundPromo` INTEGER NULL,
    `priceMerchantFundPromo` INTEGER NULL,
    `priceDeliveryFee` INTEGER NULL,
    `priceEaterPayment` INTEGER NOT NULL,
    `priceMerchantChargeFee` VARCHAR(6) NULL,
    `priceTax` INTEGER NULL,
    `priceSubtotal` INTEGER NULL,
    `dineInTableID` VARCHAR(12) NULL,
    `dineInEaterCount` VARCHAR(5) NULL,
    `receiverName` VARCHAR(35) NULL,
    `receiverPhones` VARCHAR(15) NULL,
    `receiverAddressUnitNumber` INTEGER NULL,
    `receiverAddressDeliveryInstruction` VARCHAR(160) NULL,
    `receiverAddressPoiSource` VARCHAR(35) NULL,
    `receiverAddressPoiID` INTEGER NULL,
    `receiverAddressAddress` VARCHAR(160) NULL,
    `receiverAddressPostcode` VARCHAR(6) NULL,
    `receiverAddressCoordinatesLatitude` VARCHAR(35) NULL,
    `receiverAddressCoordinatesLongitude` VARCHAR(35) NULL,
    `prepare_status` BOOLEAN NULL,
    `prepare_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,
    `settlement_at` DATETIME(0) NULL,
    `note_settlement` VARCHAR(255) NULL,
    `is_settlement` ENUM('yes', 'no') NULL DEFAULT 'no',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_orders_campaigns` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NULL,
    `campaignsId` VARCHAR(35) NULL,
    `campaignsName` VARCHAR(35) NULL,
    `campaignsLevel` VARCHAR(35) NULL,
    `campaignsType` VARCHAR(35) NULL,
    `campaignsUsageCount` INTEGER NULL,
    `campaignsMexFundedRatio` INTEGER NULL,
    `campaignsDeductedPart` VARCHAR(35) NULL,
    `campaignsDeductedAmount` INTEGER NULL,
    `campaignsAppliedItemIDs` VARCHAR(35) NULL,
    `campaignsFreeItemId` INTEGER NULL,
    `campaignsFreeItemName` VARCHAR(35) NULL,
    `campaignsFreeItemQuantity` INTEGER NULL,
    `campaignsFreeItemPrice` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_orders_items` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NULL,
    `itemsId` VARCHAR(35) NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `product_image` TEXT NOT NULL,
    `itemsQuantity` INTEGER NULL,
    `itemPrice` INTEGER NULL,
    `itemSpecifications` VARCHAR(160) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_orders_items_modifiers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `item_id` INTEGER NULL,
    `itemsModifiersId` VARCHAR(255) NULL,
    `name` VARCHAR(255) NOT NULL,
    `itemsModifiersQuantity` VARCHAR(255) NULL,
    `itemsModifiersPrice` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_orders_state` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NULL,
    `fromState` VARCHAR(35) NULL,
    `toState` VARCHAR(25) NULL,
    `orderAcceptedType` VARCHAR(35) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `price` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'inactive',
    `ordering` INTEGER NOT NULL DEFAULT 1,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `grabfood_stores` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `grab_store_id` VARCHAR(100) NULL,
    `grabfood_name` VARCHAR(100) NULL,
    `descriptions` TEXT NULL,
    `food_text` TEXT NULL,
    `is_halal` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `price_with_tax` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `preparation_time` VARCHAR(50) NULL,
    `mitra_id` INTEGER NULL,
    `mitra_store_id` INTEGER NULL,
    `mitra_store_address_id` INTEGER NULL,
    `location_type` VARCHAR(100) NULL,
    `image_store_outdoor` VARCHAR(100) NULL,
    `image_store_indoor` VARCHAR(100) NULL,
    `no_nmid` VARCHAR(50) NULL,
    `sales_year` VARCHAR(100) NULL,
    `sales_month` VARCHAR(100) NULL,
    `type` ENUM('personal', 'company') NOT NULL,
    `phone_outlet` TEXT NOT NULL,
    `email_outlet` TEXT NOT NULL,
    `phone_headoffice` TEXT NULL,
    `email_headoffice` TEXT NULL,
    `bank_account_image` TEXT NULL,
    `menu_image` TEXT NULL,
    `logo_image` TEXT NULL,
    `akta_perubahan_file` TEXT NULL,
    `akta_pengesahan_file` TEXT NULL,
    `status` ENUM('register', 'activation', 'active', 'inactive', 'rejected', 'approved') NOT NULL,
    `reason` VARCHAR(100) NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `home_block_labels_v2` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `block_key` VARCHAR(255) NOT NULL,
    `title1` VARCHAR(255) NOT NULL,
    `title2` VARCHAR(255) NOT NULL,
    `sort` INTEGER NOT NULL,
    `is_active` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `status` ENUM('', 'active', 'inactive') NULL DEFAULT 'inactive',
    `is_new` ENUM('true', 'false') NULL DEFAULT 'false',
    `subtitle` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `idexpress_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_id` VARCHAR(255) NOT NULL,
    `execution_time` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `idexpress_coverage` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `province_id` INTEGER NULL,
    `province_name` VARCHAR(255) NULL,
    `city_id` INTEGER NULL,
    `city_name` VARCHAR(255) NULL,
    `district_id` INTEGER NULL,
    `district_name` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `image_group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `image_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image_group` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `information` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `kompastv_article_count` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `title` TEXT NOT NULL,
    `url` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_account_bank` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_cities` (
    `cities_id` INTEGER NOT NULL AUTO_INCREMENT,
    `cities_province_id` VARCHAR(100) NOT NULL,
    `cities_name` VARCHAR(255) NOT NULL,
    `cities_code` CHAR(5) NULL,
    `l1_tier_code` CHAR(12) NULL,
    `grabexpress_code` VARCHAR(3) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`cities_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_district` (
    `district_id` INTEGER NOT NULL AUTO_INCREMENT,
    `district_region_id` VARCHAR(100) NOT NULL,
    `district_name` VARCHAR(255) NOT NULL,
    `post_code` VARCHAR(100) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` BLOB NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`district_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_follow_status` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(155) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(155) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_payment_method` (
    `name` VARCHAR(250) NOT NULL,
    `desc` MEDIUMTEXT NOT NULL,
    `image` VARCHAR(250) NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created_at` DATETIME(0) NOT NULL,
    `updated_at` DATETIME(0) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_province` (
    `province_id` INTEGER NOT NULL AUTO_INCREMENT,
    `province_name` VARCHAR(255) NOT NULL,
    `province_code` VARCHAR(2) NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`province_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `master_region` (
    `region_id` INTEGER NOT NULL AUTO_INCREMENT,
    `region_cities_id` VARCHAR(100) NOT NULL,
    `region_name` VARCHAR(255) NOT NULL,
    `region_code` CHAR(8) NULL,
    `l2_tier_code` CHAR(12) NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`region_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER NOT NULL,
    `mitra_group_id` INTEGER NOT NULL,
    `mitra_category_id` INTEGER NULL,
    `mitra_type_id` INTEGER NOT NULL,
    `mitra_code` VARCHAR(255) NOT NULL,
    `store_name` VARCHAR(255) NOT NULL,
    `store_name_alias` VARCHAR(255) NOT NULL,
    `status` ENUM('active', 'inactive', 'deleted') NOT NULL DEFAULT 'active',
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,
    `has_transaction` ENUM('false', 'true') NOT NULL DEFAULT 'false',
    `pos_trial_usage` ENUM('available', 'not available') NULL DEFAULT 'available',
    `is_verified` ENUM('yes', 'no') NULL DEFAULT 'yes',

    UNIQUE INDEX `tb_customer_cust_kode`(`mitra_code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_admin_access` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `admin_email_handphone` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `mitra_id` INTEGER NOT NULL,
    `mitra_store_id` INTEGER NULL,
    `mitra_store_address_id` INTEGER NULL,
    `role` ENUM('owner', 'shop admin', 'outlet admin') NULL,
    `is_active` ENUM('active', 'inactive') NOT NULL DEFAULT 'inactive',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_admin_access_detail` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `admin_fitur_action_id` INTEGER NOT NULL,
    `admin_access_id` INTEGER NOT NULL,
    `pic_admin_access_id` VARCHAR(255) NULL,
    `need_owner_approval` BOOLEAN NOT NULL,
    `updated_at` TIMESTAMP(0) NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_bank_account` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_id` INTEGER NULL,
    `mitra_store_id` INTEGER NOT NULL,
    `bank_id` INTEGER NOT NULL,
    `bank_city` VARCHAR(255) NOT NULL,
    `is_primary` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `bank_name` VARCHAR(255) NOT NULL,
    `account_name` VARCHAR(255) NOT NULL,
    `account_number` VARCHAR(255) NOT NULL,
    `verified` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `is_tnc` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `is_recommended` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `tnc` LONGTEXT NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_dining_tables` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_address_id` INTEGER NOT NULL,
    `table_number` VARCHAR(255) NOT NULL,
    `max_capacity` INTEGER NOT NULL,
    `current_capacity` INTEGER NOT NULL,
    `is_smoking` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_outdoor` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_privateroom` ENUM('no', 'yes') NULL DEFAULT 'no',
    `floor_number` INTEGER NOT NULL,
    `duration_hours` INTEGER NOT NULL,
    `is_available` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `mitra_store_address_id`(`mitra_store_address_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_dining_tables_booking` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_address_id` INTEGER NOT NULL,
    `table_id` INTEGER NOT NULL,
    `offline_order_id` INTEGER NULL,
    `booking_date` DATE NOT NULL,
    `booking_note` TEXT NULL,
    `start_time` INTEGER NOT NULL,
    `finish_time` INTEGER NOT NULL,
    `duration_hours` INTEGER NOT NULL,
    `status` ENUM('booking', 'booked', 'cancel') NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `accept_at` TIMESTAMP(0) NULL,
    `cancel_at` TIMESTAMP(0) NULL,
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `table_id`(`table_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_dining_tables_booking_hour` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_dining_tables_booking_id` INTEGER NOT NULL,
    `booked_hour` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_fee` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `percentage` VARCHAR(100) NOT NULL,
    `fix_cost` VARCHAR(100) NOT NULL,
    `min_percentage` VARCHAR(100) NOT NULL DEFAULT '0',
    `min_fix_cost` VARCHAR(100) NOT NULL DEFAULT '0',
    `mitra_category` VARCHAR(155) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_finance_fee` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_id` VARCHAR(155) NOT NULL,
    `mitra_category_id` VARCHAR(155) NOT NULL,
    `percentage` VARCHAR(50) NOT NULL,
    `fix_cost` VARCHAR(50) NOT NULL,
    `is_selected` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_follow` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `account_id` INTEGER NOT NULL,
    `mitra_id` INTEGER NOT NULL,
    `follow_status_id` INTEGER NOT NULL,
    `date` DATE NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `fk_account_id`(`account_id`),
    INDEX `fk_follow_status_id`(`follow_status_id`),
    INDEX `fk_mitra_id`(`mitra_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_id` INTEGER NOT NULL,
    `identity_number` VARCHAR(100) NULL,
    `identity_image` VARCHAR(300) NULL,
    `npwp_number` VARCHAR(100) NULL,
    `npwp_image` VARCHAR(300) NULL,
    `passpor_number` VARCHAR(100) NULL,
    `passpor_image` VARCHAR(300) NULL,
    `drive_licensed` VARCHAR(100) NULL,
    `drive_licensed_image` VARCHAR(300) NULL,
    `profile_image` VARCHAR(300) NULL,
    `nib_number` VARCHAR(300) NULL,
    `ktp_direktur_image` VARCHAR(300) NULL,
    `other` VARCHAR(255) NULL,

    INDEX `fk_mitra_image`(`mitra_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_modal` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `branch_id` INTEGER NOT NULL,
    `first_modal` VARCHAR(255) NOT NULL,
    `last_modal` VARCHAR(255) NOT NULL,
    `open_by` INTEGER NOT NULL,
    `close_by` INTEGER NOT NULL,
    `open_time` DATETIME(0) NOT NULL,
    `close_time` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_operational_day` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_address_id` INTEGER UNSIGNED NOT NULL,
    `monday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `monday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `monday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `tuesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `tuesday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `tuesday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `wednesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `wednesday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `wednesday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `thursday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `thursday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `thursday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `friday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `friday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `friday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `saturday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `saturday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `saturday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `sunday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `sunday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `sunday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `red_holiday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `red_holiday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `red_holiday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_monday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_monday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_monday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_tuesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_tuesday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_tuesday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_wednesday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_wednesday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_wednesday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_thursday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_thursday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_thursday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_friday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_friday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_friday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_saturday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_saturday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_saturday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_sunday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_sunday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_sunday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `dntw_red_holiday_is_open` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `dntw_red_holiday_from` VARCHAR(255) NOT NULL DEFAULT '08:00',
    `dntw_red_holiday_to` VARCHAR(255) NOT NULL DEFAULT '21:00',
    `date_closed` VARCHAR(255) NULL,

    INDEX `mitra_store_address_id`(`mitra_store_address_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_store` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `mitra_id` INTEGER UNSIGNED NOT NULL,
    `store_name` VARCHAR(255) NOT NULL,
    `is_physical_store` ENUM('yes', 'no') NULL,
    `email` VARCHAR(255) NOT NULL,
    `store_code` VARCHAR(255) NULL,
    `store_category_id` INTEGER UNSIGNED NOT NULL,
    `store_category` VARCHAR(255) NOT NULL,
    `proposed_fee_percentage` FLOAT NULL,
    `proposed_fee_reason` TEXT NOT NULL,
    `active_fee_percentage` DECIMAL(10, 1) NOT NULL,
    `fee_approved` BOOLEAN NOT NULL DEFAULT false,
    `profile` TEXT NOT NULL,
    `logo` TEXT NOT NULL,
    `count_change_name` INTEGER NOT NULL DEFAULT 0,
    `community_id` INTEGER NULL,
    `official_store` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `invoice_required` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `store_url` VARCHAR(100) NULL,
    `status` ENUM('active', 'inactive', 'deleted') NOT NULL DEFAULT 'active',
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_store_address` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_id` INTEGER UNSIGNED NULL,
    `is_primary` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `district_id` INTEGER NOT NULL,
    `mitra_id` INTEGER NOT NULL,
    `type_store_id` INTEGER NOT NULL,
    `store_status` ENUM('open', 'close') NULL DEFAULT 'open',
    `store_code` VARCHAR(255) NOT NULL,
    `pic_name` VARCHAR(255) NOT NULL,
    `pic_handphone` VARCHAR(255) NOT NULL,
    `store_name` VARCHAR(255) NULL,
    `branch_name` VARCHAR(100) NOT NULL,
    `store_phone` VARCHAR(255) NULL,
    `address` VARCHAR(1000) NULL,
    `address_detail` TEXT NOT NULL,
    `latitude` VARCHAR(255) NULL,
    `longitude` VARCHAR(255) NULL,
    `is_dinein_takeaway` ENUM('no', 'yes') NOT NULL DEFAULT 'yes',
    `is_dinein` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_takeaway` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_pickup_address` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `is_return_address` ENUM('yes', 'no') NULL DEFAULT 'yes',
    `return_pic_name` VARCHAR(255) NULL,
    `return_pic_handphone` VARCHAR(255) NULL,
    `return_address` TEXT NULL,
    `return_address_detail` TEXT NULL,
    `return_latitude` VARCHAR(255) NULL,
    `return_longitude` VARCHAR(255) NULL,
    `return_phone` VARCHAR(255) NULL,
    `return_district_id` INTEGER UNSIGNED NULL,
    `can_reserve` BOOLEAN NOT NULL DEFAULT false,
    `tax_type` ENUM('percentage', 'amount') NOT NULL DEFAULT 'amount',
    `tax_value` FLOAT NOT NULL DEFAULT 0,
    `service_charge_type` ENUM('percentage', 'amount') NOT NULL DEFAULT 'amount',
    `service_charge_value` FLOAT NOT NULL DEFAULT 0,
    `qrtable_image` VARCHAR(255) NOT NULL,
    `status` ENUM('active', 'inactive', 'deleted') NOT NULL DEFAULT 'active',
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,
    `pos_status` ENUM('active', 'inactive', 'trial') NULL DEFAULT 'active',
    `pos_expired_at` DATE NULL,
    `payment_at` DATETIME(0) NULL,

    INDEX `fk_mitra_store`(`mitra_id`),
    INDEX `mitra_store_id`(`mitra_store_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_store_customers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `handphone` VARCHAR(255) NULL,
    `address` TEXT NULL,
    `postcode` VARCHAR(255) NULL,
    `latitude` TEXT NULL,
    `longitude` TEXT NULL,
    `district_id` INTEGER NULL,
    `region_id` INTEGER NULL,
    `city_id` INTEGER NULL,
    `province_id` INTEGER NULL,
    `create_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    INDEX `mitra_store_address_id`(`mitra_store_address_id`),
    INDEX `mitra_store_id`(`mitra_store_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_store_storefrontmenu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_store_id` INTEGER NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `sort` INTEGER NOT NULL DEFAULT 1,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `mitra_upload_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `account_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `sort` INTEGER NOT NULL,
    `date` DATE NOT NULL,
    `mitra_category_id` INTEGER NOT NULL,
    `themes_id` INTEGER NOT NULL,
    `image` VARCHAR(155) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ninjaexpress_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `receipt_number` VARCHAR(255) NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ninjaexpress_coverage` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `origin_l1_tier_code` VARCHAR(12) NULL,
    `origin_l2_tier_code` VARCHAR(12) NULL,
    `destination_l1_tier_code` VARCHAR(12) NULL,
    `destination_l2_tier_code` VARCHAR(12) NULL,
    `sameday_flag` BOOLEAN NOT NULL DEFAULT false,
    `sameday_fee` INTEGER NULL,
    `sameday_estimated` TEXT NULL,
    `nextday_flag` BOOLEAN NOT NULL DEFAULT false,
    `nextday_fee` INTEGER NULL,
    `nextday_estimated` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ninjaexpress_timeslots` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `start_time` TIME(0) NULL,
    `end_time` TIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notification` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` LONGBLOB NOT NULL,
    `desc` LONGBLOB NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `sending_time` VARCHAR(255) NOT NULL,
    `deeplink` VARCHAR(255) NULL,
    `url_type` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `cron` VARCHAR(255) NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `updated_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_api_logs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NULL,
    `type` VARCHAR(255) NULL,
    `request_log` TEXT NULL,
    `response_log` TEXT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `execution_time` VARCHAR(255) NULL,
    `user_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_courier` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `courier_oc_id` INTEGER NULL,
    `name` VARCHAR(255) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_order` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `oc_stores_id` INTEGER NULL,
    `order_id` VARCHAR(255) NULL,
    `order_number` VARCHAR(255) NULL,
    `courier_name` VARCHAR(255) NULL,
    `courier_service` VARCHAR(255) NULL,
    `courier_resi` TEXT NULL,
    `total_price` DECIMAL(10, 0) NULL,
    `shipping_price` DECIMAL(10, 0) NULL,
    `total_product_price` DECIMAL(10, 0) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `modified_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `order_date` DATETIME(0) NULL,
    `customer_name` VARCHAR(255) NULL,
    `customer_phone` VARCHAR(255) NULL,
    `customer_address` VARCHAR(255) NULL,
    `invoice_url` VARCHAR(255) NULL,
    `accept_order_deadline` VARCHAR(255) NULL,
    `notes` TEXT NULL,
    `oc_type_id` INTEGER NULL,
    `paymentType` VARCHAR(255) NULL,
    `total_product_weight` DECIMAL(10, 0) NULL,
    `canceled_at` TIMESTAMP(0) NULL,
    `pickup_at` TIMESTAMP(0) NULL,
    `accepted_at` TIMESTAMP(0) NULL,
    `arrived_at` TIMESTAMP(0) NULL,
    `finish_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_order_detail` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `oc_order_id` INTEGER NULL,
    `oc_product_id` INTEGER NULL,
    `oc_product_name` TEXT NULL,
    `quantity` VARCHAR(255) NULL,
    `price` DECIMAL(10, 0) NULL,
    `notes` TEXT NULL,
    `oc_variant_id` INTEGER NULL,
    `weight` DECIMAL(10, 0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_order_state` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NOT NULL,
    `toState` VARCHAR(255) NOT NULL,
    `fromState` VARCHAR(255) NOT NULL,
    `orderAcceptedType` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `deleted_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NULL,
    `name` VARCHAR(255) NULL,
    `oc_stores_id` INTEGER NULL,
    `oc_product_id` INTEGER NULL,
    `price` DECIMAL(10, 0) NULL,
    `status` VARCHAR(255) NULL,
    `oc_status` VARCHAR(255) NULL,
    `is_variant` ENUM('false', 'true') NULL DEFAULT 0,
    `oc_subcategory_id` VARCHAR(255) NULL,
    `courier_oc_id` VARCHAR(255) NULL,
    `category_id` INTEGER NULL,
    `category_name` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_settings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `oc_name` VARCHAR(255) NULL,
    `logo` VARCHAR(255) NULL,
    `oc_appid` VARCHAR(255) NULL,
    `oc_url` VARCHAR(255) NULL,
    `oc_oauthurl` VARCHAR(255) NULL,
    `oc_clientid` VARCHAR(255) NULL,
    `oc_clientsecret` VARCHAR(255) NULL,
    `oc_token` TEXT NULL,
    `oc_token_created` DATETIME(0) NULL,
    `reject_reason` TEXT NULL,
    `verify_auth` TEXT NULL,
    `text` VARCHAR(255) NULL,
    `tnc` LONGTEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_stores` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_id` INTEGER NULL,
    `mitra_store_id` INTEGER NULL,
    `branch_id` INTEGER NULL,
    `status` ENUM('false', 'true') NULL DEFAULT 0,
    `reason` VARCHAR(100) NULL,
    `shop_id` VARCHAR(255) NULL,
    `shop_url` TEXT NULL,
    `shop_name` TEXT NULL,
    `oc_id` INTEGER NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `token` TEXT NULL,
    `expired_token_at` DATETIME(0) NULL,
    `generate_token_at` DATETIME(0) NULL,
    `valid_date_auth` DATETIME(0) NULL,
    `refresh_token` TEXT NULL,
    `access_token` TEXT NULL,
    `expired_access_token` DATETIME(0) NULL,
    `expired_refresh_token` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_variant` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    `status` VARCHAR(255) NULL,
    `oc_product_id` INTEGER NULL,
    `oc_variantdetail_id` VARCHAR(255) NULL,
    `price` DECIMAL(10, 0) NULL,
    `stock` VARCHAR(255) NULL,
    `sku` VARCHAR(255) NULL,
    `oc_variant_id` INTEGER NULL,
    `weight` DECIMAL(10, 0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `omnichannel_variant_detail` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    `hex_colour` VARCHAR(255) NULL,
    `oc_variantdetail_id` INTEGER NULL,
    `ordering` INTEGER NULL,
    `oc_parent_name` VARCHAR(255) NULL,
    `oc_parent_identifier` VARCHAR(255) NULL,
    `oc_name` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operational_day` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `operational_hour` VARCHAR(155) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `operational_hour` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `store_status_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `hour_start` VARCHAR(30) NULL,
    `hour_until` VARCHAR(30) NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_detail` (
    `id` VARCHAR(21) NULL,
    `order_id` BIGINT NOT NULL,
    `product_id` INTEGER NULL,
    `sku` VARCHAR(255) NULL,
    `product_code` VARCHAR(255) NOT NULL,
    `nama_barang` VARCHAR(255) NOT NULL,
    `qty_jual` INTEGER NOT NULL DEFAULT 1,
    `price` INTEGER NOT NULL,
    `total_price` INTEGER NOT NULL,
    `tgl_terjual` DATETIME(0) NULL,
    `kanal` VARCHAR(9) NOT NULL DEFAULT ''
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_edit_approval` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_number` VARCHAR(255) NOT NULL,
    `order_type` VARCHAR(255) NOT NULL,
    `request_type` VARCHAR(255) NOT NULL,
    `requested_by` VARCHAR(255) NOT NULL,
    `decision_by` VARCHAR(255) NOT NULL,
    `requested_at` DATETIME(0) NOT NULL,
    `decision_at` DATETIME(0) NOT NULL,
    `decision` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_payments` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `payment_category` VARCHAR(255) NOT NULL,
    `payment_product` VARCHAR(255) NOT NULL,
    `amount` INTEGER NULL,
    `metadata` TEXT NULL,
    `created_at` DATETIME(0) NULL,

    INDEX `fk_order_payments_order_id`(`order_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_payments_dinein` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NOT NULL,
    `payment_category` VARCHAR(255) NOT NULL,
    `payment_product` VARCHAR(255) NOT NULL,
    `amount` INTEGER NOT NULL,
    `metadata` TEXT NOT NULL,
    `created_at` DATETIME(0) NULL,

    INDEX `order_id`(`order_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_payments_takeaway` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_id` INTEGER NOT NULL,
    `payment_category` VARCHAR(255) NOT NULL,
    `payment_product` VARCHAR(255) NOT NULL,
    `amount` INTEGER NOT NULL,
    `metadata` TEXT NOT NULL,
    `created_at` DATETIME(0) NULL,

    INDEX `order_id`(`order_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_productedit_approval` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_edit_approve_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `quantity` VARCHAR(255) NOT NULL,
    `harga` INTEGER NOT NULL,
    `action_type` VARCHAR(255) NOT NULL,
    `notes` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_products` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_store_id` BIGINT NOT NULL,
    `product_id` INTEGER NULL,
    `product_code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `category` VARCHAR(255) NOT NULL,
    `highlight` TEXT NULL,
    `description` TEXT NOT NULL,
    `sku` VARCHAR(255) NULL,
    `qty` INTEGER NOT NULL DEFAULT 1,
    `price` INTEGER NOT NULL,
    `total_price` INTEGER NOT NULL,
    `message` VARCHAR(255) NULL,
    `weight_gram` INTEGER NOT NULL,
    `length_cm` INTEGER NOT NULL,
    `width_cm` INTEGER NOT NULL,
    `height_cm` INTEGER NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `fk_order_products_order_store_id`(`order_store_id`),
    INDEX `fk_order_products_product_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_products_dinein` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_store_dinein_id` INTEGER NOT NULL,
    `product_id` INTEGER NULL,
    `product_code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `highlight` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `sku` VARCHAR(255) NULL,
    `qty` INTEGER NOT NULL DEFAULT 1,
    `price` INTEGER NOT NULL,
    `total_price` INTEGER NOT NULL,
    `message` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_products_takeaway` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_store_takeaway_id` BIGINT NOT NULL,
    `product_id` INTEGER NULL,
    `product_code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `highlight` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `sku` VARCHAR(255) NULL,
    `qty` INTEGER NOT NULL DEFAULT 1,
    `price` INTEGER NOT NULL,
    `total_price` INTEGER NOT NULL,
    `message` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_receiver_address` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `province` VARCHAR(255) NULL,
    `city` VARCHAR(255) NULL,
    `region` VARCHAR(255) NULL,
    `district` VARCHAR(255) NULL,
    `postcode` VARCHAR(255) NULL,
    `latitude` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(255) NOT NULL,

    INDEX `fk_order_receiver_address_order_id`(`order_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_store_shippings` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_store_id` BIGINT NOT NULL,
    `courier_service_id` INTEGER NULL,
    `courier_name` VARCHAR(255) NULL,
    `service_name` VARCHAR(255) NULL,
    `estimated` VARCHAR(255) NULL,
    `total_price` INTEGER NULL,
    `insurance` INTEGER NOT NULL DEFAULT 0,
    `receipt_created` ENUM('yes', 'no', 'cancel') NOT NULL DEFAULT 'no',
    `receipt_number` VARCHAR(255) NOT NULL,
    `pdf_file` TEXT NULL,
    `pickup_datetime` TIMESTAMP(0) NULL,
    `request_datetime` TIMESTAMP(0) NULL,
    `arrived_datetime` TIMESTAMP(0) NULL,
    `driver` VARCHAR(255) NULL,
    `latest_status` VARCHAR(255) NULL,
    `request_number` VARCHAR(255) NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `updated_status_log` TEXT NOT NULL,
    `mitra_message` TEXT NOT NULL,
    `customer_message` TEXT NOT NULL,
    `inquiry_mitra_message` TEXT NOT NULL,
    `inquiry_customer_message` TEXT NOT NULL,
    `is_api_measurement` ENUM('false', 'true') NOT NULL DEFAULT 0,

    INDEX `fk_order_shippings_courier_service_id`(`courier_service_id`),
    INDEX `fk_order_shippings_store_order_id`(`order_store_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_store_shippings_log` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_store_shippings_id` INTEGER NOT NULL,
    `receipt_type` ENUM('request', 'cancel') NOT NULL,
    `receipt_number` VARCHAR(255) NOT NULL,
    `request_datetime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `request_number` VARCHAR(255) NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_stores` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_id` BIGINT NOT NULL,
    `order_type` ENUM('online', 'offline', 'qr', 'qr-table') NULL,
    `mitra_id` INTEGER NOT NULL,
    `customer_id` INTEGER NULL,
    `store_customer_id` INTEGER NULL,
    `mitra_store_id` INTEGER UNSIGNED NOT NULL,
    `mitra_store_address_id` INTEGER NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `status` ENUM('waiting payment', 'waiting confirmation', 'packing', 'delivering', 'arrived', 'accepted', 'complain', 'finish settlement', 'cancel') NOT NULL DEFAULT 'waiting payment',
    `type` VARCHAR(255) NULL,
    `po_type` ENUM('regular', 'scheduled') NULL,
    `shipping_date` DATE NULL,
    `total_product_price` BIGINT NULL,
    `original_shipping_fee` INTEGER NULL,
    `shipping_fee` INTEGER NOT NULL DEFAULT 0,
    `total_shipping_price` BIGINT NULL,
    `total_discount` BIGINT NULL DEFAULT 0,
    `discount_manual` DOUBLE NOT NULL DEFAULT 0,
    `service_charge` DOUBLE NOT NULL DEFAULT 0,
    `tax` DOUBLE NOT NULL DEFAULT 0,
    `tips` DOUBLE NOT NULL DEFAULT 0,
    `total_discount_product` INTEGER NOT NULL DEFAULT 0,
    `total_discount_shipping` INTEGER NOT NULL DEFAULT 0,
    `shipping_insurance` INTEGER NOT NULL DEFAULT 0,
    `dropship_name` VARCHAR(255) NULL,
    `dropship_phone` VARCHAR(255) NULL,
    `dropship_address_id` INTEGER NULL,
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `waitingconfirmation_expired_date` TIMESTAMP(0) NULL,
    `packing_expired_date` TIMESTAMP(0) NULL,
    `customer_confirm_expired_date` TIMESTAMP(0) NULL,
    `confirm_at` TIMESTAMP(0) NULL,
    `confirm_type` ENUM('not yet', 'accepted', 'complain') NOT NULL DEFAULT 'not yet',
    `complain_expired_date` TIMESTAMP(0) NULL,
    `is_complain_resolved` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `complain_message` TEXT NOT NULL,
    `cancel_at` TIMESTAMP(0) NULL,
    `note_cancel` TEXT NULL,
    `cancel_by` ENUM('seller', 'customer', 'system', 'admin') NULL,
    `packing_at` TIMESTAMP(0) NULL,
    `settlement_at` TIMESTAMP(0) NULL,
    `note_settlement` TEXT NULL,
    `status_settlement` VARCHAR(50) NULL,
    `settlement_amount` INTEGER NULL,
    `settlement_bank` VARCHAR(255) NULL,
    `settlement_account_name` VARCHAR(255) NULL,
    `settlement_account_number` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `is_approval` INTEGER NOT NULL,
    `updated_status_log` TEXT NULL,

    INDEX `fk_order_stores_mitra_id`(`mitra_id`),
    INDEX `fk_order_stores_mitra_store_address_id`(`mitra_store_address_id`),
    INDEX `fk_order_stores_order_id`(`order_id`),
    INDEX `mitra_store_id`(`mitra_store_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_stores_carikurir` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_number` VARCHAR(255) NOT NULL,
    `user_id` INTEGER NOT NULL,
    `store_id` INTEGER NULL,
    `branch_id` INTEGER NULL,
    `order_transaction_id` INTEGER NOT NULL,
    `sender_name` VARCHAR(255) NOT NULL,
    `sender_phone` VARCHAR(255) NOT NULL,
    `sender_district_id` INTEGER NOT NULL,
    `sender_region_id` INTEGER NOT NULL,
    `sender_address` TEXT NOT NULL,
    `sender_place` TEXT NOT NULL,
    `sender_latitude` VARCHAR(255) NOT NULL,
    `sender_longitude` VARCHAR(255) NOT NULL,
    `sender_note` TEXT NOT NULL,
    `receiver_name` VARCHAR(255) NOT NULL,
    `receiver_phone` VARCHAR(255) NOT NULL,
    `receiver_region_id` INTEGER NOT NULL,
    `receiver_district_id` INTEGER NOT NULL,
    `receiver_address` TEXT NOT NULL,
    `receiver_place` TEXT NOT NULL,
    `receiver_latitude` VARCHAR(255) NOT NULL,
    `receiver_longitude` VARCHAR(255) NOT NULL,
    `receiver_note` TEXT NOT NULL,
    `weight` INTEGER NOT NULL,
    `length` INTEGER NOT NULL,
    `width` INTEGER NOT NULL,
    `height` INTEGER NOT NULL,
    `product_name` VARCHAR(255) NOT NULL,
    `product_type` VARCHAR(255) NOT NULL,
    `total_product_amount` INTEGER NOT NULL,
    `contain_liquid` VARCHAR(3) NOT NULL,
    `quick_expired` VARCHAR(3) NOT NULL,
    `frozen_food` VARCHAR(3) NOT NULL,
    `shipping_date` TIMESTAMP(0) NULL,
    `courier_service_id` INTEGER NOT NULL,
    `courier_name` VARCHAR(255) NOT NULL,
    `service_name` VARCHAR(255) NOT NULL,
    `original_shipping_fee` INTEGER NULL,
    `shipping_fee` INTEGER NOT NULL DEFAULT 0,
    `total_shipping_price` INTEGER NOT NULL,
    `insurance` INTEGER NOT NULL,
    `service_fee` INTEGER NOT NULL DEFAULT 0,
    `status` ENUM('not paid', 'cancel', 'ongoing', 'finish') NOT NULL,
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `receipt_created` VARCHAR(10) NOT NULL,
    `receipt_number` TEXT NOT NULL,
    `pdf_file` TEXT NOT NULL,
    `pickup_datetime` TIMESTAMP(0) NULL,
    `request_datetime` TIMESTAMP(0) NULL,
    `arrived_datetime` TIMESTAMP(0) NULL,
    `request_number` TEXT NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `inquiry_mitra_message` TEXT NOT NULL,
    `updated_status_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `cancel_at` TIMESTAMP(0) NULL,
    `note_cancel` TEXT NULL,
    `cancel_by` VARCHAR(255) NULL,
    `settlement_at` DATETIME(0) NULL,
    `note_settlement` TEXT NULL,
    `is_settlement` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `is_api_measurement` ENUM('false', 'true') NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_stores_dinein` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `orders_dinein_id` BIGINT NOT NULL,
    `order_type` ENUM('offline', 'online', 'qr', 'qr-table') NULL,
    `mitra_id` INTEGER NOT NULL,
    `customer_id` INTEGER NULL,
    `store_customer_id` INTEGER NULL,
    `mitra_store_id` INTEGER UNSIGNED NOT NULL,
    `mitra_store_address_id` INTEGER NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `booking_code` VARCHAR(255) NULL,
    `status` ENUM('waiting payment', 'waiting confirmation', 'dinein done', 'finish settlement', 'cancel', 'booking', 'accepted', 'paid', 'no booking yet', 'order nego') NOT NULL DEFAULT 'no booking yet',
    `dinein_date` DATE NULL,
    `dinein_time` VARCHAR(255) NULL,
    `guest_number` INTEGER NOT NULL,
    `guest_note` TEXT NOT NULL,
    `total_product_price` BIGINT NULL,
    `total_discount` BIGINT NULL DEFAULT 0,
    `discount_manual` DOUBLE NOT NULL DEFAULT 0,
    `service_charge` DOUBLE NOT NULL DEFAULT 0,
    `tax` DOUBLE NOT NULL DEFAULT 0,
    `tips` DOUBLE NOT NULL DEFAULT 0,
    `total_discount_product` INTEGER NOT NULL DEFAULT 0,
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `waitingnego_expired_date` TIMESTAMP(0) NULL,
    `waitingconfirmation_expired_date` TIMESTAMP(0) NULL,
    `customer_comment` TEXT NULL,
    `confirm_at` TIMESTAMP(0) NULL,
    `done_at` TIMESTAMP(0) NULL,
    `cancel_at` TIMESTAMP(0) NULL,
    `note_cancel` TEXT NULL,
    `cancel_by` ENUM('seller', 'customer', 'system', 'admin') NULL,
    `settlement_at` TIMESTAMP(0) NULL,
    `note_settlement` TEXT NULL,
    `settlement_amount` INTEGER NULL,
    `settlement_bank` VARCHAR(255) NULL,
    `settlement_account_name` VARCHAR(255) NULL,
    `settlement_account_number` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `is_approval` INTEGER NOT NULL,
    `total_discount_shipping` INTEGER NOT NULL DEFAULT 0,
    `table_number` VARCHAR(50) NOT NULL,

    INDEX `order_id`(`orders_dinein_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_stores_others` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_transaction_id` INTEGER NOT NULL,
    `order_type` ENUM('offline', 'online', 'emeterai', 'ppob', 'carikebaikan', 'pos') NULL,
    `mitra_id` INTEGER NULL,
    `mitra_store_id` INTEGER NULL,
    `mitra_store_address_id` INTEGER NULL,
    `customer_id` INTEGER NULL,
    `customer_name` VARCHAR(255) NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `total_bill` INTEGER NOT NULL,
    `discount_manual` FLOAT NOT NULL,
    `service_charge` FLOAT NOT NULL,
    `tax` FLOAT NOT NULL,
    `tips` FLOAT NOT NULL,
    `description` TEXT NOT NULL,
    `comment` TEXT NOT NULL,
    `status` ENUM('not paid', 'paid', 'cancel', 'finish settlement') NOT NULL DEFAULT 'not paid',
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `settlement_at` TIMESTAMP(0) NULL,
    `settlement_amount` INTEGER NOT NULL,
    `settlement_bank` VARCHAR(255) NOT NULL,
    `settlement_account_name` VARCHAR(255) NOT NULL,
    `settlement_account_number` VARCHAR(255) NOT NULL,
    `note_settlement` TEXT NOT NULL,
    `cancel_at` TIMESTAMP(0) NULL,
    `cancel_by` ENUM('system', 'seller', 'admin') NULL,
    `note_cancel` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `is_approval` INTEGER NOT NULL,
    `api_log` TEXT NULL,

    INDEX `customer_id`(`customer_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_stores_takeaway` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `orders_takeaway_id` INTEGER NOT NULL,
    `order_type` ENUM('online', 'offline', 'qr', 'qr-table') NULL,
    `mitra_id` INTEGER NOT NULL,
    `customer_id` INTEGER NULL,
    `store_customer_id` INTEGER NULL,
    `mitra_store_id` INTEGER UNSIGNED NOT NULL,
    `mitra_store_address_id` INTEGER NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `guest_note` TEXT NULL,
    `booking_code` VARCHAR(255) NULL,
    `status` ENUM('waiting payment', 'waiting confirmation', 'takeaway done', 'finish settlement', 'cancel', 'booking', 'accepted', 'paid', 'no booking yet', 'order nego') NOT NULL DEFAULT 'no booking yet',
    `type` VARCHAR(255) NULL,
    `po_type` ENUM('regular', 'scheduled') NULL,
    `po_fulfilment_days` INTEGER NULL,
    `takeaway_date` DATE NULL,
    `takeaway_time` VARCHAR(255) NULL,
    `takeaway_by` ENUM('self', 'courier') NOT NULL DEFAULT 'self',
    `total_product_price` BIGINT NULL,
    `total_discount` BIGINT NULL DEFAULT 0,
    `discount_manual` DOUBLE NOT NULL DEFAULT 0,
    `service_charge` DOUBLE NOT NULL DEFAULT 0,
    `tax` DOUBLE NOT NULL DEFAULT 0,
    `tips` DOUBLE NOT NULL DEFAULT 0,
    `total_discount_product` INTEGER NOT NULL DEFAULT 0,
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `waitingnego_expired_date` TIMESTAMP(0) NULL,
    `waitingconfirmation_expired_date` TIMESTAMP(0) NULL,
    `customer_comment` TEXT NULL,
    `pickup_at` TIMESTAMP(0) NULL,
    `confirm_at` TIMESTAMP(0) NULL,
    `done_at` TIMESTAMP(0) NULL,
    `cancel_at` TIMESTAMP(0) NULL,
    `note_cancel` TEXT NULL,
    `cancel_by` ENUM('seller', 'customer', 'system', 'admin') NULL,
    `packing_at` TIMESTAMP(0) NULL,
    `settlement_at` TIMESTAMP(0) NULL,
    `note_settlement` TEXT NULL,
    `settlement_amount` INTEGER NULL,
    `settlement_bank` VARCHAR(255) NULL,
    `settlement_account_name` VARCHAR(255) NULL,
    `settlement_account_number` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `log_moka` TEXT NULL,
    `is_approval` INTEGER NOT NULL,
    `total_discount_shipping` INTEGER NOT NULL DEFAULT 0,
    `table_number` VARCHAR(50) NOT NULL,

    INDEX `order_id`(`orders_takeaway_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_transaction` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(100) NULL,
    `is_show_manual` VARCHAR(50) NULL,
    `customer_id` INTEGER UNSIGNED NULL,
    `transaction_code` VARCHAR(255) NOT NULL,
    `amount` INTEGER UNSIGNED NOT NULL,
    `platform_fee` INTEGER NOT NULL DEFAULT 0,
    `discount` INTEGER NOT NULL,
    `tax` INTEGER NOT NULL,
    `tips` INTEGER NOT NULL,
    `service_charge` INTEGER NOT NULL,
    `discount_manual` INTEGER NOT NULL DEFAULT 0,
    `payment_category` VARCHAR(255) NOT NULL,
    `payment_product` VARCHAR(255) NOT NULL,
    `memo` TEXT NOT NULL,
    `status` ENUM('not paid', 'paid', 'cancel') NOT NULL DEFAULT 'not paid',
    `request_log` TEXT NOT NULL,
    `inquiry_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `bni_bill_number` VARCHAR(255) NULL,
    `bnc_ref_inquiry` VARCHAR(255) NULL,
    `bnc_ref_payment` VARCHAR(255) NULL,
    `waitingpayment_expired_date` TIMESTAMP(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `cancel_at` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL,
    `created_by` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orderall` (
    `id` VARCHAR(21) NULL,
    `order_id` BIGINT NOT NULL,
    `order_number` VARCHAR(255) NOT NULL,
    `tgl_order` DATETIME(0) NULL,
    `order_type` ENUM('online', 'offline', 'qr', 'qr-table') NULL,
    `status_paid` ENUM('not paid', 'paid', 'cancel') NULL DEFAULT 'not paid',
    `status_order` VARCHAR(20) NOT NULL DEFAULT '',
    `total_product_price` BIGINT NULL,
    `original_shipping_fee` INTEGER NULL,
    `shipping_fee` INTEGER NOT NULL DEFAULT 0,
    `total_shipping_price` BIGINT NULL,
    `total_discount` BIGINT NULL DEFAULT 0,
    `total_discount_product` INTEGER NOT NULL DEFAULT 0,
    `total_discount_shipping` INTEGER NOT NULL DEFAULT 0,
    `shipping_insurance` INTEGER NOT NULL DEFAULT 0,
    `total_bill` BIGINT NULL,
    `payment_category` VARCHAR(255) NULL,
    `payment_product` VARCHAR(255) NULL,
    `mitra_store_id` INTEGER UNSIGNED NOT NULL,
    `store_name` VARCHAR(255) NOT NULL,
    `category_mitra` VARCHAR(255) NULL,
    `branch_name` VARCHAR(100) NOT NULL,
    `type_mitra` VARCHAR(255) NULL,
    `sender` VARCHAR(255) NULL,
    `role_sender` VARCHAR(155) NULL,
    `tgl_regis_sender` DATETIME(0) NULL,
    `monthcohort` BIGINT NULL,
    `month_cohort_mitra` BIGINT NULL,
    `customer_id` INTEGER NULL,
    `nama_penerima` VARCHAR(255) NULL,
    `province_customer` VARCHAR(255) NULL,
    `city_customer` VARCHAR(255) NULL,
    `region_customer` VARCHAR(255) NULL,
    `district_customer` VARCHAR(255) NULL,
    `lati_long_cust` VARCHAR(511) NULL,
    `district_mitra` VARCHAR(255) NULL,
    `region_mitra` VARCHAR(255) NULL,
    `tgl_mitra` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `cities_mitra` VARCHAR(255) NULL,
    `province_mitra` VARCHAR(255) NULL,
    `lati_Long_mitra` VARCHAR(511) NULL,
    `courier_name` VARCHAR(255) NULL,
    `service_name` VARCHAR(255) NULL,
    `kanal` VARCHAR(12) NOT NULL DEFAULT ''
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `order_transaction_id` INTEGER UNSIGNED NOT NULL,
    `customer_id` INTEGER NULL,
    `order_code` VARCHAR(255) NOT NULL,
    `total_bill` BIGINT NULL,
    `status` ENUM('not paid', 'paid', 'cancel') NOT NULL DEFAULT 'not paid',
    `need_attention` INTEGER NOT NULL DEFAULT 1,
    `customer_note` TEXT NULL,
    `created_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `fk_orders_customer_id`(`customer_id`),
    INDEX `order_transaction_id`(`order_transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders_dinein` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_transaction_id` INTEGER NULL,
    `cart_id` INTEGER NULL,
    `customer_id` INTEGER NULL,
    `order_code` VARCHAR(255) NOT NULL,
    `total_bill` INTEGER NOT NULL,
    `status` ENUM('not paid', 'paid', 'cancel') NOT NULL DEFAULT 'not paid',
    `need_attention` INTEGER NOT NULL DEFAULT 1,
    `customer_note` TEXT NOT NULL,
    `created_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `customer_id`(`customer_id`),
    INDEX `order_transaction_id`(`order_transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `orders_takeaway` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_transaction_id` INTEGER NULL,
    `cart_id` INTEGER NULL,
    `customer_id` INTEGER NULL,
    `order_code` VARCHAR(255) NOT NULL,
    `total_bill` INTEGER NOT NULL,
    `status` ENUM('not paid', 'paid', 'cancel') NOT NULL DEFAULT 'not paid',
    `need_attention` INTEGER NOT NULL DEFAULT 1,
    `customer_note` TEXT NULL,
    `created_at` DATETIME(0) NULL,
    `paid_at` TIMESTAMP(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `customer_id`(`customer_id`),
    INDEX `order_transaction_id`(`order_transaction_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `parameter` (
    `id` INTEGER NOT NULL,
    `mitra_fee_percentage` VARCHAR(100) NULL,
    `mitra_fee_fix_cost` VARCHAR(100) NULL,
    `point_reward` VARCHAR(100) NOT NULL,
    `point_reward_expiry` VARCHAR(100) NOT NULL,
    `member_reward` VARCHAR(100) NOT NULL,
    `minimum_transaction` VARCHAR(100) NOT NULL,
    `updated_at` DATETIME(0) NULL,
    `mitra_fee_percentage_marketplace` VARCHAR(100) NOT NULL,
    `mitra_fee_fix_cost_marketplace` VARCHAR(100) NOT NULL,
    `mitra_fee_percentage_non_marketplace` VARCHAR(100) NOT NULL,
    `mitra_fee_fix_cost_non_marketplace` VARCHAR(100) NOT NULL,
    `platform_fee` INTEGER NOT NULL,
    `transaction_fee_text` TEXT NOT NULL,
    `link_form_bank_mitra` VARCHAR(255) NULL,
    `referral_reward_type` ENUM('amount', 'percentage') NOT NULL DEFAULT 'percentage',
    `referral_reward_value` INTEGER NOT NULL,
    `referral_reward_day` INTEGER NOT NULL,
    `referral_date_start` TIMESTAMP(0) NULL,
    `referral_date_end` TIMESTAMP(0) NULL,
    `emeterai_price` DECIMAL(10, 0) NULL,
    `emeterai_diskon` DECIMAL(10, 0) NULL,
    `emeterai_stock` DECIMAL(10, 0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_shipment_creator` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `invoice_number` VARCHAR(35) NOT NULL,
    `payment_type` VARCHAR(5) NOT NULL,
    `invoice_value` FLOAT NOT NULL,
    `origin_name` VARCHAR(100) NOT NULL,
    `origin_email` VARCHAR(255) NULL,
    `origin_phone` VARCHAR(20) NOT NULL,
    `origin_address` VARCHAR(400) NOT NULL,
    `origin_note` VARCHAR(200) NOT NULL,
    `origin_longitude` VARCHAR(50) NULL,
    `origin_latitude` VARCHAR(50) NULL,
    `origin_province` VARCHAR(60) NOT NULL,
    `origin_city` VARCHAR(60) NOT NULL,
    `origin_village` VARCHAR(60) NOT NULL,
    `origin_district` VARCHAR(60) NOT NULL,
    `origin_zip_code` VARCHAR(5) NOT NULL,
    `destination_name` VARCHAR(100) NOT NULL,
    `destination_email` VARCHAR(255) NULL,
    `destination_phone` VARCHAR(20) NOT NULL,
    `destination_address` VARCHAR(400) NOT NULL,
    `destination_note` VARCHAR(200) NOT NULL,
    `destination_longitude` VARCHAR(50) NULL,
    `destination_latitude` VARCHAR(50) NULL,
    `destination_province` VARCHAR(60) NOT NULL,
    `destination_city` VARCHAR(60) NOT NULL,
    `destination_village` VARCHAR(60) NOT NULL,
    `destination_district` VARCHAR(60) NOT NULL,
    `destination_zip_code` VARCHAR(5) NOT NULL,
    `is_highvalue` INTEGER NULL,
    `pickup_datetime` DATETIME(0) NOT NULL,
    `need_insurance` INTEGER NOT NULL,
    `note` VARCHAR(200) NULL,
    `is_dropship` INTEGER NULL,
    `dropshipper_name` VARCHAR(150) NULL,
    `dropshipper_phone` VARCHAR(20) NULL,
    `service_type` VARCHAR(50) NULL DEFAULT 'SAMEDAY',
    `airwaybill_code` VARCHAR(300) NULL,
    `shipping_cost` INTEGER NULL,
    `created_datetime` DATETIME(0) NULL,
    `estimated_pickup_date` DATE NULL,
    `estimated_pickup_min_time` TIME(0) NULL,
    `estimated_pickup_max_time` TIME(0) NULL,
    `estimated_arrival_date` DATE NULL,
    `estimated_arrival_min_time` TIME(0) NULL,
    `estimated_arrival_max_time` TIME(0) NULL,
    `status` VARCHAR(100) NULL,
    `cancellation_reason` VARCHAR(200) NULL,
    `created_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_shipment_creator_item` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `paxel_shipment_creator_id` BIGINT NOT NULL,
    `code` VARCHAR(32) NOT NULL,
    `name` VARCHAR(200) NOT NULL,
    `category` VARCHAR(50) NOT NULL,
    `is_fragile` INTEGER NOT NULL DEFAULT 0,
    `price` FLOAT NOT NULL,
    `quantity` INTEGER NOT NULL,
    `weight` FLOAT NOT NULL,
    `length` FLOAT NOT NULL,
    `width` FLOAT NOT NULL,
    `height` FLOAT NOT NULL,

    INDEX `fk_psc_id_item`(`paxel_shipment_creator_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_shipment_creator_item_hvs_criteria` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `paxel_shipment_creator_item_id` BIGINT NOT NULL,
    `name_id` VARCHAR(60) NOT NULL,
    `name_en` VARCHAR(60) NOT NULL,

    INDEX `fk_psci_id_hvs_criteria`(`paxel_shipment_creator_item_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_shipment_tracking` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `awb` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_time` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `pickup_start` TIME(0) NULL,
    `pickup_end` TIME(0) NULL,
    `delivery_start` TIME(0) NULL,
    `delivery_end` TIME(0) NULL,
    `note` TEXT NULL,
    `is_today` ENUM('yes', 'no') NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paxel_time_mapping` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `paxel_time_id` BIGINT NULL,
    `origin_city` BIGINT NULL,
    `destination_city` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name_category` VARCHAR(255) NULL,
    `name` VARCHAR(255) NULL,
    `label` VARCHAR(255) NULL,
    `image` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `logo_description` VARCHAR(255) NULL,
    `min_amount` INTEGER NULL DEFAULT 0,
    `min_amount_qr` INTEGER NOT NULL,
    `sort` INTEGER NULL,
    `is_coming_soon` ENUM('yes', 'no') NULL DEFAULT 'no',
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `updated_at` DATETIME(0) NULL,
    `created_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_mdr` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `payment_channel_id` INTEGER NOT NULL,
    `on_mitra` TEXT NULL,
    `mdr_mitra_type` ENUM('amount') NOT NULL,
    `mdr_partner_type` ENUM('amount') NOT NULL,
    `on_us_mitra` FLOAT NOT NULL,
    `off_us_mitra` FLOAT NOT NULL,
    `on_us_partner` FLOAT NOT NULL,
    `off_us_partner` FLOAT NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    INDEX `payment_channel_id`(`payment_channel_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment_product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `payment_category_id` INTEGER NULL,
    `name` VARCHAR(255) NULL,
    `label` VARCHAR(255) NULL,
    `image` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `logo_description` VARCHAR(255) NULL,
    `min_amount` INTEGER NULL DEFAULT 0,
    `min_amount_qr` INTEGER NOT NULL,
    `sort` INTEGER NULL,
    `is_coming_soon` ENUM('yes', 'no') NULL DEFAULT 'no',
    `status` ENUM('active', 'inactive') NULL DEFAULT 'inactive',
    `updated_at` DATETIME(0) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `payment_id` VARCHAR(255) NULL,
    `parent_name` VARCHAR(255) NULL,
    `name` VARCHAR(255) NULL,
    `label` VARCHAR(255) NULL,
    `image` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `logo_description` VARCHAR(255) NULL,
    `is_coming_soon` ENUM('yes', 'no') NULL DEFAULT 'no',
    `whitelist_user_id` TEXT NULL,
    `active_days` VARCHAR(255) NULL,
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `updated_at` DATETIME(0) NULL,
    `created_at` DATETIME(0) NULL,
    `sort` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ppob_buyer_history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `input` VARCHAR(255) NULL,
    `services_id` INTEGER NULL,
    `user_id` INTEGER NULL,
    `product_id` VARCHAR(255) NULL,
    `other_data` VARCHAR(255) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ppob_product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    `code` VARCHAR(255) NULL,
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `services_id` INTEGER NULL,
    `providers` VARCHAR(255) NULL,
    `providers_type` VARCHAR(255) NULL,
    `charge_type` ENUM('amount', 'percentage') NULL DEFAULT 'amount',
    `charge_value` VARCHAR(255) NULL DEFAULT '0',
    `sort` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ppob_settings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    `username` VARCHAR(255) NULL,
    `password` VARCHAR(255) NULL,
    `account_id` VARCHAR(255) NULL,
    `merchant_id` VARCHAR(255) NULL,
    `counter_id` VARCHAR(255) NULL,
    `url` VARCHAR(255) NULL,
    `token` VARCHAR(255) NULL,
    `expired_token` VARCHAR(255) NULL,
    `logs` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` ENUM('product', 'service') NOT NULL,
    `product_code` VARCHAR(255) NOT NULL,
    `account_id` INTEGER NOT NULL,
    `mitra_id` INTEGER NOT NULL,
    `mitra_store_id` INTEGER NULL,
    `name` VARCHAR(500) NOT NULL,
    `available_for` VARCHAR(255) NOT NULL DEFAULT 'online',
    `offline_available_for` VARCHAR(255) NULL,
    `available_at_branches` VARCHAR(255) NOT NULL,
    `storefrontmenu_id` INTEGER NULL,
    `hash_tag` VARCHAR(500) NULL DEFAULT '',
    `highlight` VARCHAR(500) NULL DEFAULT '',
    `sku` VARCHAR(255) NULL,
    `description` TEXT NULL,
    `model` VARCHAR(255) NULL,
    `price` INTEGER UNSIGNED NULL,
    `quantity` INTEGER NULL,
    `is_bestseller` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `minimum_order` INTEGER UNSIGNED NULL,
    `maximum_order` INTEGER UNSIGNED NULL,
    `unit_id` INTEGER NULL,
    `product_condition_id` INTEGER UNSIGNED NULL,
    `shipping` VARCHAR(50) NULL,
    `status_shipping_id` VARCHAR(1000) NULL,
    `courier_service_id` VARCHAR(100) NULL,
    `product_availability` VARCHAR(20) NULL,
    `business_id` INTEGER NULL,
    `product_group_id` INTEGER NULL,
    `product_category_id` INTEGER NULL,
    `product_subcategory_id` INTEGER NULL,
    `brand_id` INTEGER NULL,
    `promotion_type` VARCHAR(30) NULL,
    `images_type` VARCHAR(30) NULL,
    `image` VARCHAR(300) NULL,
    `images_text` VARCHAR(1200) NULL,
    `product_pdf` VARCHAR(300) NULL,
    `product_video` TEXT NULL,
    `status` VARCHAR(100) NULL,
    `is_product_feature` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_product_22` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `is_product_flashsale` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `related` VARCHAR(1000) NULL,
    `weight` INTEGER NULL,
    `dimension_length` INTEGER NULL,
    `dimension_width` INTEGER NULL,
    `dimension_height` INTEGER NULL,
    `contain_liquid` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `quick_expired` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `frozen_food` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,
    `is_sell_online` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `is_sell_offline` ENUM('yes', 'no') NOT NULL DEFAULT 'yes',
    `is_variant` ENUM('yes', 'no') NULL,
    `is_grabfood` ENUM('yes', 'no') NULL,
    `is_gofood` ENUM('yes', 'no') NULL,
    `is_tokopedia` ENUM('yes', 'no') NULL,
    `is_shopee` ENUM('yes', 'no') NULL,
    `is_tiktok` ENUM('yes', 'no') NULL,
    `promotion_id` VARCHAR(255) NOT NULL,
    `total_rating` INTEGER NOT NULL DEFAULT 0,
    `average_rating` FLOAT NOT NULL DEFAULT 0,
    `total_buy` INTEGER NOT NULL DEFAULT 0,

    INDEX `brand_id`(`brand_id`),
    INDEX `business_id`(`business_id`),
    INDEX `product_category_id`(`product_category_id`),
    INDEX `product_condition_id`(`product_condition_id`),
    INDEX `product_group_id`(`product_group_id`),
    INDEX `product_subcategory_id`(`product_subcategory_id`),
    INDEX `storefrontmenu_id`(`storefrontmenu_id`),
    INDEX `unit_id`(`unit_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_categories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` VARCHAR(155) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `product_group` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_chat` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `user_id` VARCHAR(155) NOT NULL,
    `mitra_id` VARCHAR(155) NOT NULL,
    `product_id` VARCHAR(155) NOT NULL,
    `chat_type_id` VARCHAR(155) NOT NULL,
    `sender` VARCHAR(155) NOT NULL,
    `receiver` VARCHAR(155) NOT NULL,
    `message` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `date` DATE NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_condition` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_group` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` INTEGER NOT NULL,
    `slug` TEXT NULL,
    `image` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `active_link` VARCHAR(255) NULL,
    `tnc` TEXT NULL,
    `is_new` ENUM('true', 'false') NULL DEFAULT 'false',
    `new_image` VARCHAR(255) NULL,
    `block_key` VARCHAR(255) NULL,
    `whitelist_user_id` VARCHAR(255) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `title` VARCHAR(300) NULL,
    `image` VARCHAR(500) NOT NULL,
    `as_primary` VARCHAR(50) NULL DEFAULT 'no',
    `image_order` VARCHAR(255) NOT NULL,

    INDEX `fk_prd_images_prd_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_log` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(255) NOT NULL,
    `product_id` INTEGER NULL,
    `user_id` INTEGER NOT NULL,
    `log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_model` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `variant_parent` VARCHAR(255) NULL,
    `mitra_id` VARCHAR(155) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `image` TEXT NOT NULL,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,
    `product_variant_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_po` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `po_type` VARCHAR(30) NULL,
    `use_stock` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `regular_fulfillment_day` VARCHAR(30) NULL,
    `regular_note` VARCHAR(1000) NULL,
    `scheduled_type` VARCHAR(20) NULL,
    `scheduled_once_open_date` VARCHAR(255) NOT NULL,
    `scheduled_once_close_date` VARCHAR(255) NOT NULL,
    `scheduled_once_send_date` VARCHAR(30) NULL,
    `scheduled_once_note` VARCHAR(1000) NULL,
    `scheduled_weekly_day_open` VARCHAR(30) NULL,
    `scheduled_weekly_day_close` VARCHAR(30) NULL,
    `scheduled_weekly_send_date` VARCHAR(30) NULL,
    `scheduled_weekly_note` VARCHAR(1000) NULL,
    `scheduled_monthly_date_open` VARCHAR(30) NULL,
    `scheduled_monthly_date_close` VARCHAR(30) NULL,
    `scheduled_monthly_send_date` VARCHAR(30) NULL,
    `scheduled_monthly_note` VARCHAR(1000) NULL,

    INDEX `fk_prd_preorder`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_price_bulk` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `min_qty` INTEGER NOT NULL,
    `price` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_promotion_bulk` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `customer_group_id` INTEGER NOT NULL,
    `quantity` VARCHAR(255) NOT NULL,
    `price` VARCHAR(200) NOT NULL,
    `date_start` DATE NOT NULL,
    `date_end` DATE NOT NULL,

    INDEX `fk_prd_promotion_customer_group_id`(`customer_group_id`),
    INDEX `fk_prd_promotion_prd_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_promotion_discount` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `customer_group_id` INTEGER NOT NULL,
    `type` ENUM('percentage', 'amount') NOT NULL DEFAULT 'percentage',
    `discount` INTEGER UNSIGNED NOT NULL,
    `max_qty` INTEGER NULL,
    `date_start` TIMESTAMP(0) NULL,
    `date_end` TIMESTAMP(0) NULL,

    INDEX `fk_prd_promotion_customer_group_id`(`customer_group_id`),
    INDEX `fk_prd_promotion_prd_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_promotion_freeongkir` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER UNSIGNED NOT NULL,
    `customer_group_id` INTEGER UNSIGNED NOT NULL,
    `max_ongkir` INTEGER UNSIGNED NULL,
    `date_start` TIMESTAMP(0) NULL,
    `date_end` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_promotion_special` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `customer_group_id` INTEGER NOT NULL,
    `price` VARCHAR(200) NOT NULL,
    `max_qty` INTEGER NULL,
    `date_start` TIMESTAMP(0) NULL,
    `date_end` TIMESTAMP(0) NULL,

    INDEX `fk_prd_promotion_customer_group_id`(`customer_group_id`),
    INDEX `fk_prd_promotion_prd_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_report` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` VARCHAR(250) NOT NULL,
    `product_id` VARCHAR(222) NOT NULL,
    `date` VARCHAR(222) NOT NULL,
    `mitra_id` VARCHAR(222) NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `comment` TEXT NOT NULL,
    `product_report_code` VARCHAR(250) NOT NULL,
    `product_report_type_id` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_review` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `mitra_store_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `rating` INTEGER NOT NULL,
    `comment` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `image_1` VARCHAR(222) NOT NULL,
    `image_2` VARCHAR(222) NOT NULL,
    `image_3` VARCHAR(222) NOT NULL,
    `image_4` VARCHAR(222) NOT NULL,
    `image_5` VARCHAR(222) NOT NULL,
    `feedback` TEXT NULL,
    `order_type` ENUM('dinein', 'takeaway', 'delivery') NOT NULL,
    `order_store_code` VARCHAR(255) NOT NULL,
    `rate_id` INTEGER NULL,
    `date` VARCHAR(255) NULL,
    `status` VARCHAR(255) NOT NULL DEFAULT 'active',
    `account_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_review_feedback` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_id` INTEGER NOT NULL,
    `date` VARCHAR(222) NOT NULL,
    `product_review_id` INTEGER NOT NULL,
    `comment` TEXT NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,
    `product_review_feedback_code` VARCHAR(222) NOT NULL,
    `account_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_review_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_review_id` INTEGER NOT NULL,
    `name` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_stock` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `product_id` INTEGER NOT NULL,
    `value` INTEGER NOT NULL,
    `status` VARCHAR(30) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_stock_branch` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `product_id` VARCHAR(255) NOT NULL,
    `mitra_store_address_id` VARCHAR(155) NOT NULL,
    `value` INTEGER NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NULL,

    INDEX `mitra_store_address_id`(`mitra_store_address_id`),
    INDEX `product_id`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_stock_mutation` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `store_id` INTEGER NOT NULL,
    `branch_id` INTEGER NOT NULL,
    `stock` INTEGER NOT NULL,
    `type` VARCHAR(1) NOT NULL,
    `reason` VARCHAR(255) NOT NULL,
    `status` ENUM('under review', 'approved', 'rejected') NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `approved_at` TIMESTAMP(0) NULL,
    `rejected_at` TIMESTAMP(0) NULL,
    `request_user_id` INTEGER NULL,
    `decision_user_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_subcategories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` VARCHAR(155) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `product_group` VARCHAR(255) NOT NULL,
    `product_categories` VARCHAR(255) NOT NULL,
    `point_reward` VARCHAR(255) NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_variant` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(250) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `product_id` INTEGER NULL,
    `product_model_id` INTEGER NULL,
    `price` DECIMAL(20, 0) NULL,
    `stock` INTEGER NULL,
    `sku` VARCHAR(255) NULL,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,
    `image` VARCHAR(250) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_variant_stock` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(155) NOT NULL,
    `product_stock_id` INTEGER NOT NULL,
    `product_variant_id` VARCHAR(155) NOT NULL,
    `product_model_id` VARCHAR(155) NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `fk_product_stock`(`product_stock_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_variant_stock_branch` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(255) NOT NULL,
    `product_stock_branch_id` INTEGER NOT NULL,
    `product_variant_id` VARCHAR(155) NOT NULL,
    `product_model_id` VARCHAR(155) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    INDEX `fk_product_stock_branch`(`product_stock_branch_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_view` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER NOT NULL,
    `date` TIMESTAMP(0) NULL,
    `product_id` INTEGER NOT NULL,
    `branch_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_view_count` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `customer_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `total_count` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_wishlist` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` VARCHAR(250) NOT NULL,
    `wishlist_id` INTEGER NOT NULL,
    `product_id` VARCHAR(222) NOT NULL,
    `date` VARCHAR(222) NOT NULL,
    `mitra_id` VARCHAR(222) NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,
    `product_wishlist_code` VARCHAR(250) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promo` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(222) NOT NULL,
    `image` VARCHAR(222) NOT NULL,
    `url` VARCHAR(222) NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promotion_mitra` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `updated_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promotion_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `updated_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promotion_voucher` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `promotion_id` INTEGER NOT NULL,
    `voucher_code` VARCHAR(50) NOT NULL,
    `title` VARCHAR(20) NOT NULL,
    `subtitle` VARCHAR(50) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `tnc` TEXT NULL,
    `is_recommended` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `voucher_type` ENUM('Diskon Produk', 'Diskon Ongkir', 'Cashback') NOT NULL,
    `redeem_type` ENUM('voucher', 'redeem_code', 'product', 'coin') NOT NULL,
    `min_spend` INTEGER NOT NULL DEFAULT 0,
    `type_discount` ENUM('amount', 'percentage') NOT NULL DEFAULT 'amount',
    `discount_value` DOUBLE NOT NULL,
    `max_discount` INTEGER NULL,
    `start_date` DATETIME(0) NOT NULL,
    `end_date` DATETIME(0) NULL,
    `valid_days` TINYINT NULL,
    `total_available_promotion` INTEGER NULL,
    `max_redeem` INTEGER NOT NULL,
    `sort` INTEGER NULL,
    `image` VARCHAR(255) NULL,
    `status` ENUM('active', 'inactive') NOT NULL,
    `by_product` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `product_value` TEXT NULL,
    `by_mitra_store_city` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `mitra_store_city_value` TEXT NULL,
    `by_mitra_store` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `mitra_store_value` TEXT NULL,
    `by_customer` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `customer_value` TEXT NULL,
    `by_courier` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `status_shipping_id` VARCHAR(255) NULL,
    `courier_service_id` VARCHAR(255) NULL,
    `by_payment` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `payment_category_id` VARCHAR(255) NULL,
    `payment_product_id` VARCHAR(255) NULL,
    `by_mitra_outlet` ENUM('yes', 'no') NOT NULL DEFAULT 'no',
    `mitra_store_address` VARCHAR(255) NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promotion_voucher_log` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `promotion_voucher_id` INTEGER NOT NULL,
    `customer_id` INTEGER NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `data` TEXT NULL,
    `remark` TEXT NULL,
    `total` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `promotions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `promotion_mitra_id` INTEGER NOT NULL,
    `mitra_id` INTEGER NULL,
    `name` VARCHAR(255) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qris_payment_methods` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `bank_code` VARCHAR(255) NOT NULL,
    `label` VARCHAR(255) NOT NULL,
    `ordering` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `logo` TEXT NOT NULL,
    `logoDescription1` TEXT NOT NULL,
    `logoDescription2` TEXT NOT NULL,
    `min_amount` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qrisbni_transaction_detail` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` ENUM('credit', 'refund') NULL,
    `transaction_code` VARCHAR(255) NOT NULL,
    `transaction_datetime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `transaction_status` VARCHAR(255) NOT NULL,
    `acquiring_institution_name` VARCHAR(255) NOT NULL,
    `merchant_pan` VARCHAR(255) NOT NULL,
    `issuing_institution_name` VARCHAR(255) NOT NULL,
    `issuing_customer_name` VARCHAR(255) NOT NULL,
    `customer_pan` VARCHAR(255) NOT NULL,
    `retrieval_reference_number` VARCHAR(255) NOT NULL,
    `amount` INTEGER NOT NULL,
    `convenience_fee` INTEGER NOT NULL,
    `transaction_type` VARCHAR(255) NOT NULL,
    `txnRefId` VARCHAR(255) NOT NULL,
    `json_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qrisdbs_transaction_detail` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `type` ENUM('credit', 'refund') NULL,
    `transaction_code` VARCHAR(255) NOT NULL,
    `transaction_datetime` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `transaction_status` VARCHAR(255) NOT NULL,
    `acquiring_institution_name` VARCHAR(255) NOT NULL,
    `merchant_pan` VARCHAR(255) NOT NULL,
    `issuing_institution_name` VARCHAR(255) NOT NULL,
    `issuing_customer_name` VARCHAR(255) NOT NULL,
    `customer_pan` VARCHAR(255) NOT NULL,
    `retrieval_reference_number` VARCHAR(255) NOT NULL,
    `amount` INTEGER NOT NULL,
    `convenience_fee` INTEGER NOT NULL,
    `transaction_type` VARCHAR(255) NOT NULL,
    `txnRefId` VARCHAR(255) NOT NULL,
    `json_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qrorder` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(255) NULL,
    `name` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `logo` VARCHAR(255) NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qrstatic` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER NOT NULL,
    `store_id` INTEGER NOT NULL,
    `branch_id` INTEGER NOT NULL,
    `bank` VARCHAR(100) NOT NULL,
    `bank_name` VARCHAR(100) NOT NULL,
    `account_name` VARCHAR(255) NOT NULL,
    `account_number` VARCHAR(100) NOT NULL,
    `mid` VARCHAR(255) NULL,
    `form_qrstatic` VARCHAR(255) NOT NULL,
    `qrstatic` VARCHAR(255) NOT NULL,
    `status` ENUM('submit', 'review', 'active', 'reject', 'inactive') NOT NULL DEFAULT 'submit',
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `qrstore` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `qrorder_id` INTEGER NOT NULL,
    `mitra_store_id` VARCHAR(255) NOT NULL,
    `mitra_store_address_id` VARCHAR(255) NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `request_pickup_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_number` VARCHAR(100) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `security_incident_log` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `ip_address` VARCHAR(255) NOT NULL,
    `controller` VARCHAR(255) NOT NULL,
    `function` VARCHAR(255) NOT NULL,
    `incident` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `service_payments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `service_id` INTEGER NULL,
    `payment_id` INTEGER NULL,
    `min_amount` INTEGER NULL,
    `max_amount` INTEGER NULL,
    `sort` TINYINT NULL,
    `day_max_amount` INTEGER NULL,
    `week_max_amount` INTEGER NULL,
    `month_max_amount` VARCHAR(255) NULL,
    `branch_id` TEXT NULL,
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `updated_at` DATETIME(0) NULL,
    `created_at` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `charge_type` ENUM('amount', 'percentage') NULL DEFAULT 'amount',
    `charge_value` VARCHAR(255) NULL DEFAULT '0',

    INDEX `payment_id_fk`(`payment_id`),
    INDEX `service_id_fk`(`service_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `services` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    `type` VARCHAR(255) NULL,
    `status` ENUM('active', 'inactive') NULL DEFAULT 'active',
    `updated_at` DATETIME(0) NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `charge_type` ENUM('percentage', 'amount') NULL,
    `charge_value` VARCHAR(255) NULL,
    `logo` VARCHAR(255) NULL,
    `product_list` VARCHAR(255) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sicepat_awb_development` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `receipt_number` TEXT NOT NULL,
    `status` ENUM('unused', 'used') NOT NULL DEFAULT 'unused',
    `order_number` VARCHAR(255) NULL,
    `request_number` VARCHAR(255) NULL,
    `request_datetime` TIMESTAMP(0) NULL,
    `is_cancel` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sicepat_awb_production` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `receipt_number` TEXT NOT NULL,
    `status` ENUM('unused', 'used') NOT NULL DEFAULT 'unused',
    `order_number` VARCHAR(255) NULL,
    `request_number` VARCHAR(255) NULL,
    `request_datetime` TIMESTAMP(0) NULL,
    `is_cancel` ENUM('no', 'yes') NOT NULL DEFAULT 'no',
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_at` TIMESTAMP(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sicepat_location` (
    `destination_code` VARCHAR(8) NOT NULL,
    `subdistrict` VARCHAR(40) NOT NULL,
    `city` VARCHAR(34) NOT NULL,
    `province` VARCHAR(25) NOT NULL,

    PRIMARY KEY (`destination_code`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `status_complain` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `status_shipping` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sort` INTEGER NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `store_erp` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `store_id` INTEGER NOT NULL,
    `branch_id` INTEGER NULL,
    `product_id` INTEGER NULL,
    `type` ENUM('hpp', 'ops') NOT NULL,
    `category` VARCHAR(255) NULL,
    `payment_group` VARCHAR(255) NULL,
    `value` INTEGER NOT NULL,
    `description` TEXT NULL,
    `transaction_date` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `start_date` TIMESTAMP(0) NULL,
    `end_date` TIMESTAMP(0) NULL,
    `pic` VARCHAR(255) NULL,
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `store_review` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `order_type` ENUM('dinein', 'takeaway', 'delivery') NOT NULL,
    `order_store_code` VARCHAR(255) NOT NULL,
    `customer_id` INTEGER NOT NULL,
    `mitra_store_id` INTEGER NOT NULL,
    `mitra_store_address_id` INTEGER NOT NULL,
    `rating` INTEGER NOT NULL,
    `comment` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NULL,
    `feedback` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `store_review_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `store_review_id` INTEGER NOT NULL,
    `name` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `store_status` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `team` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `no` INTEGER NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `themes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `mitra_category_id` INTEGER NOT NULL,
    `themes_category_id` INTEGER NOT NULL,
    `desc` TEXT NOT NULL,
    `html` LONGTEXT NOT NULL,
    `js` TEXT NOT NULL,
    `app` TEXT NOT NULL,
    `image` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,
    `status` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `themes_category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(222) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(222) NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `transfer_settlement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `note` TEXT NULL,
    `mitra` VARCHAR(100) NOT NULL,
    `mitra_code` VARCHAR(50) NOT NULL,
    `transfer_amount` INTEGER NOT NULL,
    `bank_name` VARCHAR(100) NOT NULL,
    `account_name` VARCHAR(100) NOT NULL,
    `account_number` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `type_shipping` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `sort` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `type_store` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `desc` TEXT NULL,
    `status` VARCHAR(155) NOT NULL,
    `image` VARCHAR(255) NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `unit` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `volume` VARCHAR(100) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_account_bank` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_bank_id` INTEGER NOT NULL,
    `account_id` INTEGER NOT NULL,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `number` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_log_status` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER NOT NULL,
    `user_status_type_id` INTEGER NOT NULL,
    `date` DATE NOT NULL,
    `ip_address` VARCHAR(155) NOT NULL,
    `os` VARCHAR(255) NOT NULL,
    `fcmtoken` TEXT NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `location_log` TEXT NOT NULL,
    `application` VARCHAR(255) NOT NULL,
    `browser` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_status_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `flag` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `va_payment_instructions` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `va_payment_id` INTEGER NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `content` TEXT NOT NULL,
    `ordering` INTEGER NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `va_payment_methods` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `bank_code` VARCHAR(8) NOT NULL,
    `logo` TEXT NOT NULL,
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    `ordering` INTEGER NOT NULL,
    `label` TEXT NOT NULL,
    `min_amount` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `version_mobile_app` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `version_number` VARCHAR(100) NOT NULL,
    `is_update_android` BOOLEAN NOT NULL,
    `is_required_update_android` BOOLEAN NOT NULL,
    `link_update_android` VARCHAR(255) NOT NULL,
    `is_update_ios` BOOLEAN NOT NULL,
    `is_required_update_ios` BOOLEAN NOT NULL,
    `link_update_ios` VARCHAR(255) NOT NULL,
    `tnc` LONGTEXT NOT NULL,
    `tnc_omnichannel` TEXT NOT NULL,
    `privacy` TEXT NOT NULL,
    `faq` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `voucher` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(222) NOT NULL,
    `code` VARCHAR(222) NOT NULL,
    `voucher_type_id` INTEGER NOT NULL,
    `customer_login` INTEGER NOT NULL,
    `free_shipping` INTEGER NOT NULL,
    `date_start` VARCHAR(222) NOT NULL,
    `date_end` VARCHAR(222) NOT NULL,
    `uses_per_coupon` INTEGER NOT NULL,
    `uses_per_customer` INTEGER NOT NULL,
    `desc` TEXT NOT NULL,
    `customer_group_id` VARCHAR(11) NOT NULL,
    `image` VARCHAR(222) NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,
    `voucher_code` VARCHAR(222) NOT NULL,
    `value` INTEGER NOT NULL,
    `product_group_id` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `voucher_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(222) NOT NULL,
    `desc` TEXT NOT NULL,
    `image` VARCHAR(222) NOT NULL,
    `status` VARCHAR(222) NOT NULL,
    `created_at` VARCHAR(222) NOT NULL,
    `updated_at` VARCHAR(222) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_profile` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `telephone` VARCHAR(255) NOT NULL,
    `fax` VARCHAR(255) NOT NULL,
    `mobile_phone` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `email_2` VARCHAR(200) NOT NULL,
    `address` MEDIUMTEXT NOT NULL,
    `address2` MEDIUMTEXT NOT NULL,
    `latitude` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(255) NOT NULL,
    `caption` VARCHAR(155) NOT NULL,
    `footer_text` VARCHAR(255) NOT NULL,
    `logo` VARCHAR(255) NOT NULL,
    `logo_footer` VARCHAR(100) NOT NULL,
    `favicon` VARCHAR(100) NOT NULL,
    `urlImg` VARCHAR(155) NOT NULL,
    `meta_keyword` MEDIUMTEXT NOT NULL,
    `meta_description` MEDIUMTEXT NOT NULL,
    `contactus` MEDIUMTEXT NOT NULL,
    `website` VARCHAR(150) NOT NULL,
    `gmail` VARCHAR(200) NOT NULL,
    `password` MEDIUMTEXT NOT NULL,
    `facebook` VARCHAR(100) NOT NULL,
    `twitter` VARCHAR(100) NOT NULL,
    `youtube` VARCHAR(100) NOT NULL,
    `whatsapp` VARCHAR(155) NOT NULL,
    `pinterest` VARCHAR(100) NOT NULL,
    `instagram` VARCHAR(255) NOT NULL,
    `skype` VARCHAR(200) NOT NULL,
    `caption_skype` MEDIUMTEXT NOT NULL,
    `paypal_id` VARCHAR(255) NOT NULL,
    `currency` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_account` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_code` VARCHAR(255) NOT NULL,
    `user_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(155) NOT NULL,
    `mobile_phone` VARCHAR(155) NOT NULL,
    `religion` VARCHAR(50) NULL,
    `gender` ENUM('Laki-laki', 'Perempuan') NULL,
    `date_birth` DATE NULL,
    `role` VARCHAR(155) NOT NULL,
    `photo` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `status_reason` ENUM('waiting verification', 'suspect fraud', 'verified', 'other') NULL,
    `verification_code` TEXT NOT NULL,
    `reset_code` TEXT NOT NULL,
    `cookie` TEXT NOT NULL,
    `fcmtoken` TEXT NULL,
    `fcmtoken_web` TEXT NULL,
    `referrer_user_id` INTEGER NULL,
    `referral_code` VARCHAR(256) NULL,
    `token` TEXT NULL,
    `token_created_at` DATE NULL,
    `token_expired_at` DATE NULL,
    `webmin_access` ENUM('active', 'inactive') NOT NULL DEFAULT 'inactive',
    `by_area` ENUM('yes', 'no') NULL DEFAULT 'no',
    `cities_id` TEXT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,
    `coin` VARCHAR(255) NOT NULL DEFAULT '0',
    `referal_image` TEXT NOT NULL,
    `referal_text` TEXT NOT NULL,
    `currency` VARCHAR(50) NOT NULL DEFAULT 'IDR',
    `emeterai_token` INTEGER NULL,
    `is_soundloop` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_activity` (
    `activity_id` INTEGER NOT NULL AUTO_INCREMENT,
    `activity_time` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `activity_user` VARCHAR(200) NOT NULL,
    `activity_type` VARCHAR(200) NOT NULL,
    `activity_action` VARCHAR(200) NOT NULL,
    `activity_item` VARCHAR(200) NOT NULL,
    `activity_assign_to` VARCHAR(200) NOT NULL,
    `activity_assign_type` VARCHAR(200) NOT NULL,

    PRIMARY KEY (`activity_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_api_logs` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `type` VARCHAR(255) NOT NULL,
    `request_log` TEXT NOT NULL,
    `response_log` TEXT NOT NULL,
    `created_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_biodata` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_id` INTEGER NOT NULL,
    `gender_id` INTEGER NOT NULL,
    `twitter` TEXT NOT NULL,
    `facebook` TEXT NOT NULL,
    `google_plus` TEXT NOT NULL,
    `linked_in` TEXT NOT NULL,
    `instagram` TEXT NOT NULL,
    `youtube` TEXT NOT NULL,
    `desc` TEXT NOT NULL,
    `status` VARCHAR(250) NOT NULL,
    `biodata_code` VARCHAR(250) NOT NULL,
    `birth` VARCHAR(250) NOT NULL,
    `created_at` VARCHAR(250) NOT NULL,
    `updated_at` VARCHAR(250) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_menu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_permission` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `role_parent` VARCHAR(255) NOT NULL,
    `menu_id` INTEGER NOT NULL,
    `submenu_id` VARCHAR(155) NOT NULL,
    `sort` VARCHAR(255) NOT NULL,
    `access` VARCHAR(255) NOT NULL,
    `add` VARCHAR(255) NOT NULL,
    `edit` VARCHAR(255) NOT NULL,
    `delete` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_role` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    `sort` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `webmin_submenu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `menu_id` INTEGER NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `sort` VARCHAR(255) NOT NULL,
    `status` VARCHAR(155) NOT NULL,
    `created_at` DATETIME(0) NULL,
    `updated_at` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `cart` ADD CONSTRAINT `fk_cart_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cart` ADD CONSTRAINT `fk_cart_mitra` FOREIGN KEY (`mitra_id`) REFERENCES `mitra`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cart_product` ADD CONSTRAINT `fk_cart_prd_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cart_product` ADD CONSTRAINT `fk_cart_prd_prd_id` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `grabfood_modifier` ADD CONSTRAINT `grabfood_modifier_ibfk_1` FOREIGN KEY (`grabfood_product_id`) REFERENCES `grabfood_product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `grabfood_modifier_item` ADD CONSTRAINT `grabfood_modifier_item_ibfk_1` FOREIGN KEY (`grabfood_modifier_id`) REFERENCES `grabfood_modifier`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `mitra_dining_tables` ADD CONSTRAINT `mitra_dining_tables_ibfk_1` FOREIGN KEY (`mitra_store_address_id`) REFERENCES `mitra_store_address`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `mitra_follow` ADD CONSTRAINT `fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `webmin_account`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `mitra_follow` ADD CONSTRAINT `fk_follow_status_id` FOREIGN KEY (`follow_status_id`) REFERENCES `master_follow_status`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `mitra_follow` ADD CONSTRAINT `fk_mitra_id` FOREIGN KEY (`mitra_id`) REFERENCES `mitra`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `mitra_image` ADD CONSTRAINT `fk_mitra_image` FOREIGN KEY (`mitra_id`) REFERENCES `mitra`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_payments` ADD CONSTRAINT `fk_order_payments_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_products` ADD CONSTRAINT `fk_order_products_order_store_id` FOREIGN KEY (`order_store_id`) REFERENCES `order_stores`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_products` ADD CONSTRAINT `fk_order_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_receiver_address` ADD CONSTRAINT `fk_order_receiver_address_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_store_shippings` ADD CONSTRAINT `fk_order_shippings_courier_service_id` FOREIGN KEY (`courier_service_id`) REFERENCES `courier_services`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_store_shippings` ADD CONSTRAINT `fk_order_shippings_order_id` FOREIGN KEY (`order_store_id`) REFERENCES `order_stores`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_stores` ADD CONSTRAINT `fk_order_stores_mitra_id` FOREIGN KEY (`mitra_id`) REFERENCES `mitra`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_stores` ADD CONSTRAINT `fk_order_stores_mitra_store_address_id` FOREIGN KEY (`mitra_store_address_id`) REFERENCES `mitra_store_address`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_stores` ADD CONSTRAINT `fk_order_stores_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `orders` ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_transaction_id`) REFERENCES `order_transaction`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `paxel_shipment_creator_item` ADD CONSTRAINT `fk_psc_id_item` FOREIGN KEY (`paxel_shipment_creator_id`) REFERENCES `paxel_shipment_creator`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `paxel_shipment_creator_item_hvs_criteria` ADD CONSTRAINT `fk_psci_id_hvs_criteria` FOREIGN KEY (`paxel_shipment_creator_item_id`) REFERENCES `paxel_shipment_creator_item`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `payment_mdr` ADD CONSTRAINT `payment_mdr_ibfk_1` FOREIGN KEY (`payment_channel_id`) REFERENCES `master_payment_method`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`product_condition_id`) REFERENCES `product_condition`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`business_id`) REFERENCES `business`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`product_group_id`) REFERENCES `product_group`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_6` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategories`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_ibfk_7` FOREIGN KEY (`brand_id`) REFERENCES `brand`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_images` ADD CONSTRAINT `fk_prd_images_prd_id` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_po` ADD CONSTRAINT `fk_prd_preorder` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_bulk` ADD CONSTRAINT `fk_prd_promotion_customer_group_id` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_bulk` ADD CONSTRAINT `fk_prd_promotion_prd_id` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_discount` ADD CONSTRAINT `product_promotion_discount_ibfk_1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_discount` ADD CONSTRAINT `product_promotion_discount_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_special` ADD CONSTRAINT `product_promotion_special_ibfk_1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_promotion_special` ADD CONSTRAINT `product_promotion_special_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_variant_stock` ADD CONSTRAINT `fk_product_stock` FOREIGN KEY (`product_stock_id`) REFERENCES `product_stock`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_variant_stock_branch` ADD CONSTRAINT `fk_product_stock_branch` FOREIGN KEY (`product_stock_branch_id`) REFERENCES `product_stock_branch`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `service_payments` ADD CONSTRAINT `payment_id_fk` FOREIGN KEY (`payment_id`) REFERENCES `payments`(`id`) ON DELETE SET NULL ON UPDATE SET NULL;

-- AddForeignKey
ALTER TABLE `service_payments` ADD CONSTRAINT `service_id_fk` FOREIGN KEY (`service_id`) REFERENCES `services`(`id`) ON DELETE SET NULL ON UPDATE SET NULL;


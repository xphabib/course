# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_01_184711) do

  create_table "academic_details", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "institution", null: false
    t.string "degree_title", null: false
    t.integer "session_end", null: false
    t.string "subject"
    t.string "website_url"
    t.bigint "country_id", null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "admin_users", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.timestamp "email_verified_at"
    t.string "password", null: false
    t.string "website"
    t.string "contact_no", limit: 15
    t.string "address"
    t.integer "country_id"
    t.integer "city_id"
    t.text "biography"
    t.string "photo"
    t.string "remember_token", limit: 100
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["email"], name: "admin_users_email_unique", unique: true
  end

  create_table "affiliator_course_urls", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.string "course_url", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["course_url"], name: "affiliator_course_urls_course_url_unique", unique: true
  end

  create_table "basic_infos", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "phoneNum1", null: false
    t.string "phoneNum2", null: false
    t.string "address", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "certifications", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "subject", null: false
    t.string "institution", null: false
    t.integer "passing_year"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "cities", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "country_id", null: false, unsigned: true
    t.string "name", null: false
  end

  create_table "contact_us", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", limit: 11, null: false
    t.string "subject", null: false
    t.text "message", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "conversations", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_one", null: false, unsigned: true
    t.bigint "user_two", null: false, unsigned: true
    t.text "last_message", limit: 16777215, null: false
    t.integer "status_one", default: 0, null: false, unsigned: true
    t.integer "status_two", default: 0, null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "countries", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "iso3", null: false
    t.string "code", null: false
    t.string "dialing", null: false
    t.string "flag_img", null: false
  end

  create_table "course_categories", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "category_url", null: false
    t.string "thumbnail"
    t.integer "order_by", null: false
    t.integer "status", limit: 1, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.bigint "serial", default: 1, null: false, unsigned: true
    t.index ["category_url"], name: "course_categories_category_url_unique", unique: true
    t.index ["name"], name: "course_categories_name_unique", unique: true
  end

  create_table "course_coupons", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "offer_page_id", unsigned: true
    t.string "code", null: false
    t.float "percentage", limit: 53, default: 0.0, null: false
    t.date "valid_from", null: false
    t.date "valid_to", null: false
    t.integer "usable_number"
    t.integer "coupon_used", default: 0, null: false
    t.boolean "status", default: false, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["code"], name: "course_coupons_code_unique", unique: true
  end

  create_table "course_course_coupon", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_id", null: false, unsigned: true
    t.bigint "course_coupon_id", null: false, unsigned: true
  end

  create_table "course_course_subcategory", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_subcategory_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
  end

  create_table "course_lesson_notes", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_lesson_id", null: false, unsigned: true
    t.string "subject", null: false
    t.text "note", null: false
    t.integer "video_time", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_lesson_view_details", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.bigint "course_lesson_id", null: false, unsigned: true
    t.integer "video_time", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_lessons", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_id", null: false, unsigned: true
    t.bigint "course_section_id", null: false, unsigned: true
    t.string "title", null: false
    t.text "description", null: false
    t.string "thumbnail"
    t.string "video_url"
    t.integer "privacy", limit: 1, null: false
    t.time "duration"
    t.integer "serial", null: false
    t.integer "approval", limit: 1, default: 0, null: false
    t.boolean "status", default: false, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
  end

  create_table "course_ratings", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.float "star", limit: 53, default: 0.0, null: false
    t.text "comment"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_reject_reasons", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_id", null: false, unsigned: true
    t.text "reason", null: false
    t.bigint "user_id", null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_resources", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.text "description", null: false
    t.string "link"
    t.string "photo"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_sale_details", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_sale_id", null: false, unsigned: true
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.bigint "currency_id", null: false, unsigned: true
    t.float "price", limit: 53, default: 0.0, null: false
    t.bigint "course_coupon_id", unsigned: true
    t.float "discount_percentage", limit: 53, default: 0.0, null: false
    t.float "instructor_income", limit: 53, default: 0.0, null: false
    t.float "ssl_fee", limit: 53, default: 0.0, null: false
    t.float "instructory_income", limit: 53, default: 0.0, null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.integer "instructor_level", default: 1, null: false
    t.float "instructor_percentage", limit: 53, default: 0.425, null: false
  end

  create_table "course_sales", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "store_id", null: false
    t.string "transaction_id", null: false
    t.integer "payment_method", null: false
    t.bigint "currency_id", null: false, unsigned: true
    t.float "subtotal_amount", limit: 53, default: 0.0, null: false
    t.float "discount_amount", limit: 53, default: 0.0, null: false
    t.float "service_charge", limit: 53, default: 0.0, null: false
    t.float "net_amount", limit: 53, default: 0.0, null: false
    t.string "customer_name", null: false
    t.string "customer_email", null: false
    t.string "customer_phone", limit: 15, null: false
    t.json "cart_info"
    t.text "ipn_response"
    t.string "payment_status", limit: 15, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["transaction_id"], name: "course_sales_transaction_id_unique", unique: true
  end

  create_table "course_sections", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_id", null: false, unsigned: true
    t.string "name", null: false
    t.text "details", limit: 4294967295
    t.integer "serial", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
  end

  create_table "course_subcategories", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "course_category_id", null: false, unsigned: true
    t.string "subcategory_url", null: false
    t.string "thumbnail"
    t.integer "order_by", null: false
    t.integer "status", limit: 1, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.index ["subcategory_url"], name: "course_subcategories_subcategory_url_unique", unique: true
  end

  create_table "course_tags", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_id", null: false, unsigned: true
    t.string "tag", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "courses", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_category_id", null: false, unsigned: true
    t.bigint "user_id", null: false, unsigned: true
    t.string "title", null: false
    t.text "description", null: false
    t.float "price", limit: 53, default: 0.0, null: false
    t.string "thumbnail", null: false
    t.integer "privacy", limit: 1, null: false
    t.integer "approval", limit: 1, default: 0, null: false
    t.bigint "currency_id", null: false, unsigned: true
    t.bigint "language_locale_id", null: false, unsigned: true
    t.integer "difficulty_level", limit: 1, null: false
    t.integer "duration"
    t.string "course_url", null: false
    t.text "features", null: false
    t.integer "course_model", limit: 1, null: false
    t.bigint "view_count", default: 0, null: false, unsigned: true
    t.bigint "share_count", default: 0, null: false, unsigned: true
    t.float "avg_rating", limit: 53, default: 0.0, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.float "master_price", limit: 53, default: 0.0, null: false
    t.string "master_thumb"
    t.bigint "total_enrollments", default: 0, null: false, unsigned: true
    t.index ["course_url"], name: "courses_course_url_unique", unique: true
  end

  create_table "currencies", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "iso", limit: 3, null: false
    t.string "title", null: false
    t.string "name", null: false
    t.string "symbol", limit: 25, null: false
    t.string "decimal_name", limit: 35, null: false
    t.integer "status", limit: 1, null: false
  end

  create_table "daily_visitors", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.date "v_date", null: false
    t.integer "visitor", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "events", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "title", null: false
    t.integer "status", default: 1, null: false
    t.text "short_des", null: false
    t.text "description", null: false
    t.string "image_url"
    t.timestamp "date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "exam_questions", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "course_section_id", null: false, unsigned: true
    t.string "question", null: false
    t.integer "serial", default: 0, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "failed_jobs", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", null: false
    t.text "connection", null: false
    t.text "queue", null: false
    t.text "payload", limit: 4294967295, null: false
    t.text "exception", limit: 4294967295, null: false
    t.timestamp "failed_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["uuid"], name: "failed_jobs_uuid_unique", unique: true
  end

  create_table "faqs", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_type", null: false
    t.integer "menu_id", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.integer "serial", null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "language_locales", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "locale", limit: 35, null: false
    t.string "code", limit: 35, null: false
    t.string "language", limit: 35, null: false
    t.string "name", null: false
    t.integer "status", limit: 1, null: false
  end

  create_table "languages", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "name", null: false
    t.string "level", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "messages", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "conversation_id", null: false, unsigned: true
    t.text "message", limit: 16777215, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string "thumbnail"
  end

  create_table "migrations", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "migration", null: false
    t.integer "batch", null: false
  end

  create_table "news_and_events", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "type", limit: 1, null: false
    t.string "headline", null: false
    t.string "title", null: false
    t.date "story_date", null: false
    t.text "description", null: false
    t.string "photo"
    t.integer "serial", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "newsfeed_comments", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "newsfeed_id", null: false, unsigned: true
    t.bigint "newsfeed_comment_id", unsigned: true
    t.text "comment", null: false
    t.string "image"
    t.string "comment_ip", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "newsfeeds", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.integer "course_id", limit: 2, null: false, unsigned: true
    t.text "news_text", null: false
    t.string "image"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
  end

  create_table "oauth_access_tokens", id: :string, limit: 100, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", unsigned: true
    t.bigint "client_id", null: false, unsigned: true
    t.string "name"
    t.text "scopes"
    t.boolean "revoked", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.datetime "expires_at"
    t.index ["user_id"], name: "oauth_access_tokens_user_id_index"
  end

  create_table "oauth_auth_codes", id: :string, limit: 100, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "client_id", null: false, unsigned: true
    t.text "scopes"
    t.boolean "revoked", null: false
    t.datetime "expires_at"
    t.index ["user_id"], name: "oauth_auth_codes_user_id_index"
  end

  create_table "oauth_clients", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", unsigned: true
    t.string "name", null: false
    t.string "secret", limit: 100
    t.string "provider"
    t.text "redirect", null: false
    t.boolean "personal_access_client", null: false
    t.boolean "password_client", null: false
    t.boolean "revoked", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.index ["user_id"], name: "oauth_clients_user_id_index"
  end

  create_table "oauth_personal_access_clients", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "client_id", null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "oauth_refresh_tokens", id: :string, limit: 100, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "access_token_id", limit: 100, null: false
    t.boolean "revoked", null: false
    t.datetime "expires_at"
    t.index ["access_token_id"], name: "oauth_refresh_tokens_access_token_id_index"
  end

  create_table "offer_page_items", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "offer_page_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.string "thumbnail"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "offer_pages", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "admin_user_id", null: false, unsigned: true
    t.string "name", null: false
    t.string "url", null: false
    t.integer "price_type", null: false
    t.date "valid_from", null: false
    t.date "valid_to", null: false
    t.float "fixed", limit: 53, default: 0.0, null: false
    t.float "percentage", limit: 53, default: 0.0, null: false
    t.string "code"
    t.integer "usable_number", default: 0, null: false
    t.integer "course_count", default: 0, null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.index ["code"], name: "offer_pages_code_unique", unique: true
    t.index ["url"], name: "offer_pages_url_unique", unique: true
  end

  create_table "our_stories", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "headline", null: false
    t.string "title", null: false
    t.date "story_date", null: false
    t.text "description", null: false
    t.string "photo"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "password_resets", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.timestamp "created_at"
    t.index ["email"], name: "password_resets_email_index"
  end

  create_table "privacy_policies", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "serial", null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "purchase_withdraw_policies", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "serial", null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "question_options", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "exam_question_id", null: false, unsigned: true
    t.string "option", null: false
    t.boolean "is_answer", default: false, null: false
    t.integer "serial", default: 0, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "recently_views", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "user_id", null: false
    t.json "course_ids", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "refund_lists", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.bigint "course_sale_detail_id", null: false, unsigned: true
    t.float "purchase_price", limit: 53, null: false
    t.date "purchase_date", null: false
    t.string "reason", null: false
    t.string "payment_method", null: false
    t.float "refund_amount", limit: 53, null: false
    t.string "transaction_id", null: false
    t.string "account_number", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "refund_policies", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "serial", null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "skills", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "name", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "terms_and_conditions", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.integer "serial", null: false
    t.boolean "status", default: true, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "user_activities", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.text "activity", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "user_answers", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "exam_question_id", null: false, unsigned: true
    t.bigint "question_option_id", null: false, unsigned: true
    t.boolean "is_correct", default: false, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "user_likes", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "type", null: false
    t.bigint "ref_id", null: false, unsigned: true
    t.string "like_ip", null: false
    t.bigint "user_id", null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "user_notifications", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.text "notification", limit: 16777215, null: false
    t.boolean "status", default: false, null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "user_payment_methods", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.string "payment_method", null: false
    t.string "card_name", null: false
    t.string "card_number", null: false
    t.string "cvv", null: false
    t.string "expire_date", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "contact_no", limit: 15, null: false
    t.string "password", null: false
    t.integer "gender", limit: 1
    t.string "job_title"
    t.text "biography"
    t.integer "country_id"
    t.integer "city_id"
    t.string "website"
    t.string "name"
    t.string "facebook_id"
    t.string "twitter_id"
    t.string "instagram_id"
    t.string "linkedin_id"
    t.string "youtube_id"
    t.string "profile_photo"
    t.float "total_earnings", limit: 53, default: 0.0, null: false
    t.float "current_balance", limit: 53, default: 0.0, null: false
    t.float "total_withdrawal_amount", limit: 53, default: 0.0, null: false
    t.string "security_question"
    t.string "security_answer"
    t.text "notification", limit: 16777215
    t.timestamp "email_verified_at"
    t.integer "instructor_level", limit: 1, default: 1, null: false
    t.float "max_rating", limit: 53, default: 0.0, null: false
    t.integer "user_type", limit: 1, default: 0, null: false
    t.integer "affiliator_status", limit: 1, default: 0, null: false
    t.bigint "total_enrollments", default: 0, null: false, unsigned: true
    t.bigint "total_purchased", default: 0, null: false, unsigned: true
    t.integer "status", limit: 1, default: 1, null: false
    t.string "remember_token", limit: 100
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.timestamp "deleted_at"
    t.index ["email"], name: "users_email_unique", unique: true
    t.index ["user_name"], name: "users_user_name_unique", unique: true
  end

  create_table "websockets_statistics_entries", id: :integer, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "app_id", null: false
    t.integer "peak_connection_count", null: false
    t.integer "websocket_message_count", null: false
    t.integer "api_message_count", null: false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "wish_lists", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.bigint "course_id", null: false, unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "withdraw_requests", id: :bigint, unsigned: true, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, unsigned: true
    t.float "amount", limit: 53, default: 0.0, null: false
    t.bigint "user_payment_method_id", null: false, unsigned: true
    t.text "reject_reason"
    t.integer "status", limit: 1, default: 0, null: false
    t.bigint "approved_by", unsigned: true
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end

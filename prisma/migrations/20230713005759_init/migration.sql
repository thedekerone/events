-- CreateTable
CREATE TABLE "events" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "location" TEXT,
    "bg_type" TEXT,
    "bg_color" TEXT,
    "bg_image_id" INTEGER,
    "description" TEXT NOT NULL,
    "start_date" TIMESTAMP(3) NOT NULL,
    "end_date" TIMESTAMP(3) NOT NULL,
    "on_sale_date" TIMESTAMP(3),
    "user_ids" INTEGER[],
    "currency_id" INTEGER NOT NULL,
    "sales_volume" INTEGER NOT NULL,
    "organiser_fees_volume" INTEGER DEFAULT 0,
    "organiser_fee_fixed" INTEGER DEFAULT 0,
    "organiser_fee_percentage" INTEGER DEFAULT 0,
    "organiser_id" INTEGER NOT NULL,
    "venue_name" TEXT,
    "venue_name_full" TEXT,
    "location_address" TEXT NOT NULL,
    "location_address_line_1" TEXT,
    "location_address_line_2" TEXT,
    "location_country" TEXT,
    "location_country_code" TEXT,
    "location_province" TEXT,
    "location_city" TEXT,
    "location_post_code" TEXT,
    "location_street_number" TEXT,
    "location_lat" TEXT,
    "location_long" TEXT,
    "location_google_place_id" TEXT,
    "pre_order_display_message" TEXT,
    "post_order_display_message" TEXT,
    "social_share_text" TEXT,
    "social_show_facebook" TEXT,
    "social_show_linkedin" TEXT,
    "social_show_twitter" TEXT,
    "social_show_email" TEXT,
    "location_is_manual" BOOLEAN,
    "is_live" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted_at" TIMESTAMP(3),
    "barcode_type" TEXT,
    "ticket_border_color" TEXT,
    "ticket_bg_color" TEXT,
    "ticket_text_color" TEXT,
    "ticket_sub_text_color" TEXT,
    "google_tag_manager_code" TEXT,
    "social_show_whatsapp" BOOLEAN,
    "checkout_timeout_after" TIMESTAMP(3),
    "event_image_position" TEXT,

    CONSTRAINT "events_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "event_images" (
    "id" SERIAL NOT NULL,
    "image_path" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "event_id" INTEGER NOT NULL,

    CONSTRAINT "event_images_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "events" ADD CONSTRAINT "events_bg_image_id_fkey" FOREIGN KEY ("bg_image_id") REFERENCES "event_images"("id") ON DELETE SET NULL ON UPDATE CASCADE;

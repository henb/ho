# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20_140_629_133_901) do

  create_table 'addresses', force: true do |t|
    t.string 'countr'
    t.string 'state'
    t.string 'city'
    t.string 'street'
    t.integer 'hotel_id'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  create_table 'comments', force: true do |t|
    t.integer 'user_id'
    t.text 'description'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer 'hotel_id'
  end

  create_table 'hotels', force: true do |t|
    t.string 'title'
    t.boolean 'breakfast_included'
    t.text 'room_description'
    t.string 'photo'
    t.integer 'price_for_room'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.integer 'star_rating'
  end

  create_table 'rates', force: true do |t|
    t.integer 'rater_id'
    t.integer 'rateable_id'
    t.string 'rateable_type'
    t.float 'stars',         null: false
    t.string 'dimension'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'rates', %w(rateable_id rateable_type), name: 'index_rates_on_rateable_id_and_rateable_type'
  add_index 'rates', ['rater_id'], name: 'index_rates_on_rater_id'

  create_table 'rating_caches', force: true do |t|
    t.integer 'cacheable_id'
    t.string 'cacheable_type'
    t.float 'avg',            null: false
    t.integer 'qty',            null: false
    t.string 'dimension'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'rating_caches', %w(cacheable_id cacheable_type), name: 'index_rating_caches_on_cacheable_id_and_cacheable_type'

  create_table 'users', force: true do |t|
    t.string 'email',                  default: '', null: false
    t.string 'encrypted_password',     default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count',          default: 0,  null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.string 'role'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
  add_index 'users', ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true

end

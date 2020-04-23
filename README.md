# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1p57

<!-- * System dependencies

* Configuration

* Database creation -->

* Database design
## Users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|email|string|null :false|
|encrypted_password|string|null: false|
|reset_password_token|string||
|reset_password_sent_at|string||
|remember_created_at|string||
### Association
 - has_one :profile, dependent: :destroy

## Profiles Table
|Column|Type|Options|
|------|----|-------|
|image|string|null :true|
|profile|text|null :true|
|link|string|null: true|
|age|integer|nnull :true|
|gender|string|null :true|
|user_id|references|null :false|
### Association
 - belongs_to :profile

## Items Table
|Column|Type|Options|
|------|----|-------|
|title|string|null :false|
|image|string|null :false|
|comment|text|null :true|
|user_id|references|null :false|
### Association
 - has_many :equipments
 - belongs_to :user

## Equipments Table
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|comment|text|null :false|
|item_id|references|null :false|
### Association
 - belongs_to :item


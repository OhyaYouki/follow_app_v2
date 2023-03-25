# README

## DB 設計


## posts table

| Column             | Type              | Options                       |
| ------------------ | ----------------- | ----------------------------- |
| content            | string            | null: false                   |
| user               | references        | null: false,foreign_key: true |

### Association

* belongs_to :user


## users table

| Column             | Type              | Options                       |
| ------------------ | ------------------| ----------------------------- |
| nickname           | string            | null: false                   |
| email              | devise のデフォルト | null: false                   |
| encrypted_password | devise のデフォルト | null: false                   |

### Association

* has_many :posts
* has_many :relationships
* has_many :followings       , through: :relationships


## followings table

| Column             | Type              | Options                       |
| ------------------ | ----------------- | ------------------------------|
| nickname           | string            | null: false                   |
| user_id            | integer           | null: false                   | <!--これは必要ないかもしれない -->

### Association

* has_many :relationships
* has_many :users            , through: :relationships


## relationships table

| Column             | Type              | Options                       |
| ------------------ | ----------------- | ------------------------------|
| user               | references        | null: false,foreign_key: true |
| following          | references        | null: false,foreign_key: true |

### Association

* belongs_to :user
* belongs_to :following


## 備考

# README

## users table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| player_name        | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |


### Association

- has_many :librarys


## library table

| Column                     | Type       | Options                        |
| ---------------------------| ---------  | ------------------------------ |
| card_name                  | string     | null: false                    |
| card_text                  | text       | null: false                    |
| manacost                   | string     | null: false                    |
| color                      | string     | null: false                    |
| power                      | integer    | null: false                    |
| toughness                  | integer    | null: false                    |
| user                       | references | null: false, foreign_key: true |
| card_type                  | string     | null: false                    |


### Association

- belongs_to :user
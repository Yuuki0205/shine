# README

## users テーブル

| Column               | Type   | Options                   |
| --------             | ------ | -----------               |  
| nickname             | string | null: false               |
| email                | string | null: false, unique: true |
| encrypted_password   | string | null: false               |



### Association

- has_many :texts
- has_many :likes


# texts テーブル

| Column  | Type       |  Options                       |
| --------| ------     | -----------                    |
| one     | string     |  null: false                   |
| two     | string     |  null: false                   | 
| three   | string     |  null: false                   |
| four    | string     |  null: false                   |
| five    | string     |  null: false                   |
| six     | string     |  null: false                   |
| seven   | string     |  null: false                   |
| eight   | string     |  null: false                   |
| nine    | string     |  null: false                   |
| ten     | string     |  null: false                   |
| user    | references |  null: false, foreign_key: true|
### Association

- belongs_to :user
-has_many :likes


## likes テーブル

| Column        | Type       | Options                        |
| --------      | ------     | -----------                    |  
| user          | references |  null: false, foreign_key: true|
| text          | references |  null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :text



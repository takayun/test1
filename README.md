# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| shop_name          | string  | null: false |
| person_name        | string  | null: false |
| address            | string  | null: false |
| phone_number       | integer | null: false |

### Association

- has_many :prototypes

## prototypes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| price        | integer    | null: false                    |
| car_maker    | string     | null: false                    |
| car_model    | string     | null: false                    |
| car_grade    | string     | null: false                    |
| body_color   | string     | null: false                    |
| vi_number    | string     | null: false                    |
| year         | integer    | null: false                    |
| mileage      | integer    | null: false                    |
| drive_system | string     | null: false                    |
| transmission | string     | null: false                    |
| inspection   | string     | null: false                    |
| comment      | text       |                                |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user

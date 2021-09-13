## usersテーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | --------------------------|
| nickname               | string  | null: false               |
| email                  | string  | null: false, unique: true |
| encrypted_password     | string  | null: false               |
| frist_name             | string  | null: false               |
| last_name              | string  | null: false               |
| reading_frist_name     | string  | null: false               |
| reading_last_name      | string  | null: false               |
| birthday               | date    | null: false               |

### Association
has_many :items
has_many :orders


## itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| item                   | string     | null: false                    |
| text                   | text       | null: false                    |
| category_id            | integer    | null: false                    |
| quality_id             | integer    | null: false                    |
| price                  | integer    | null: false                    |
| delivery_free_id       | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| days_to_id             | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_one_attached :image
has_one :order

## ordersテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| item                   | raferences | null: false, foreign_key: true |
| user                   | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :item
has_one :address


## addressesテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| postal_code            | string     | null: false                    |
| prefecture_id          | integer    | null: false                    |
| city                   | string     | null: false                    |
| house_number           | string     | null: false                    |
| building_name          | string     |                                |
| telephone_number       | string     | null: false                    |
| order                  | references | null: false, foreign_key: true |

### Association
belongs_to :order
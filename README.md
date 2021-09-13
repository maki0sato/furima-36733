## usrsテーブル

| Column                 | Type    | Options     |
| ---------------------- | ------- | ----------- |
| nickname               | string  | null: false |
| email                  | string  | null: false |
| encrypted_password     | string  | null: false |
| frist_name             | string  | null: false |
| last_name              | string  | null: false |
| reading_frist_name     | string  | null: false |
| reading_last_name      | string  | null: false |
| birth_year             | integer | null: false |
| birth_month            | integer | null: false |
| birth_day              | integer | null: false |

### Association
has_many :items


## itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| item                   | string     | null: false                    |
| image                  |            |                                |
| text                   | text       | null: false                    |
| category               | integer    | null: false                    |
| quality                | integer    | null: false                    |
| price                  | integer    | null: false                    |
| delivery_free          | integer    | null: false                    |
| items_prefecture       | integer    | null: false                    |
| days_to                 | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association
belpngs_to :user
has_one_attached :image
has_one :oder

## ordersテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| item                   | raferences | null: false, foreign_key: true |

### Association
belongs_to :item
has_one :address


## addressesテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| postal_code            | string     | null: false                    |
| prefecture             | integer    | null: false                    |
| city                   | string     | null: false                    |
| house_number           | string     | null: false                    |
| building_name          | string     |                                |

### Association
belongs_to :order
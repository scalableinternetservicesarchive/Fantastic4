# Fantastic4

## Project Description
Fantastic visual voting application for events. Create an event-based online polling platform that allow users to share, vote and discover interesting things.

## Members

| ![muxin](https://github.com/scalableinternetservices/Fantastic4/raw/master/res/yuxi.jpg) | ![Tiffanyyny](https://github.com/scalableinternetservices/Fantastic4/raw/master/res/niyan.jpg) | ![autekroy](https://github.com/scalableinternetservices/Fantastic4/raw/master/res/yaoren.jpg) | ![sunnyuny](https://github.com/scalableinternetservices/Fantastic4/raw/master/res/qianyun.jpg) |
| :------------: | :------------: | :------------: | :------------: |
| Yuxi Chen | Niyan Ying | Yao-Jen Chang | Qianyun Zhu |
| [@muxin](https://github.com/muxin) | [@Tiffanyyny](https://github.com/Tiffanyyny) | [@autekroy](https://github.com/autekroy) | [@sunnyuny](https://github.com/sunnyuny) |



## Pivotal Tracker Link
https://www.pivotaltracker.com/n/projects/1321156

## Dev Memo

#### Common rake commands
- `rake db:migrate VERSION=20080906120000`
  - run the required migrations until it has reached the specified version
- `rake db:rollback`
  - rollback the last migration
- `rake db:setup`
  - create the database, load the schema and initialize it with the seed data
- **`rake db:reset`**
  - drop the database and set it up again. equivalent to `rake db:drop db:setup`
- `rake db:migrate`
  - runs the change method for all the migrations that have not yet been run

#### Change an existing table schema
1. Generate new migration file under db/migrate
 - `rails g migration ChangeTableOnSomeAttributes`
2. Modify db/migrate/XXXXXXXX_change_table_on_some_attributes.rb file to include the changes

  ```ruby
  class ChangeTableOnSomeAttributes < ActiveRecord::Migration
    def change
      change_column :posts, :vote_count, :integer
      change_column_null :posts, :vote_count, false
      change_column_default :posts, :vote_count, 0
    end
  end
  ```
3. `rake db:migrate`
4. Check corresponding changes in file db/schema.rb
5. Modify file db/seeds.rb to follow new table schema
6. `rake db:reset`
## As a simple reminder

#### 1. After dealing with data base, you have to rake again. 
  * `gem install bundler` (first time)
  * `bundle install` (first time)
  * `bundle exec rake db:create`

#### 2. your active rake version is not what you need. 
  * Even you have alreay installed the version you need.
  * `gem list rake ` see rake version
  * `gem uninstall rake` remove the version you don't need 
  * `bundle update rake`


### Reference
 1. [Gem guides](http://guides.rubygems.org/command-reference/)
 2. [Rails guides](http://guides.rubyonrails.org/command_line.html)
# encoding: utf-8

require 'capybara/rspec'

#  Capybara.javascript_driver = :selenium
  Capybara.javascript_driver = :webkit
#  Capybara.current_driver = :mechanize
#  Capybara.current_driver = :rack_test

step 'kanrk05サイトにアクセスする' do
  Capybara.app_host = "http://kanrk05.ruby.iijgio.com/"
  Capybara.current_driver = :webkit
end

step 'トップページを表示する' do
  visit '/'
end

step '対象ページを表示する' do
  send 'kanrk05サイトにアクセスする'
  send 'トップページを表示する'
end

step ":hoge が表示されていること" do |hoge|
  expect(page).to have_content hoge
end


# encoding: utf-8

step '郵便番号一覧 をクリックする' do
  #click_link '郵便番号一覧'
  first(:link, '郵便番号一覧').click
end

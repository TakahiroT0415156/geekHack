class Post < ApplicationRecord
  validates :name, presence: { message: "名前の教えてください！" }
  validates :body, presence: { message: "内容を教えてください！" }
  validates :title, presence: { message: "タイトルを教えてください！" }
  validates :word, presence: { message: "使用言語を教えてください！" }
end

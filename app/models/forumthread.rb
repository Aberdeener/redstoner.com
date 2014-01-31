class Forumthread < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user_author, class_name: "User", foreign_key: "user_author_id"
  belongs_to :user_editor, class_name: "User", foreign_key: "user_editor_id"

  attr_accessible :title, :content, :sticky, :locked, :user_author, :user_editor, :forum

  validates_presence_of :title
  validates_presence_of :content

  def to_s
    title
  end
end
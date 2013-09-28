class TopEntry < ActiveRecord::Base
  belongs_to :user

  def to_s # TODO
    @text
  end
end

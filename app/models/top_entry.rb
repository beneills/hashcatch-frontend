class TopEntry < ActiveRecord::Base
  belongs_to :user

  @@null = TopEntry.new(text: "-")

  def to_s # TODO
    @text
  end

  def self.null
    @@null
  end
end

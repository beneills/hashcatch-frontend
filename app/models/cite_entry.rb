class CiteEntry < ActiveRecord::Base
  belongs_to :user

  def archived?
    !archive_url.nil?
  end
end

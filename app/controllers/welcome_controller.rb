class WelcomeController < ApplicationController
  def about
  end

  def index
    recent_limit = 10

    applications = [TopEntry, CiteEntry]
    @recent = applications.map { |app| app.last(recent_limit) }
      .flatten
      .sort_by { |entry| entry.created_at }
      .take(recent_limit)
      .reverse
    # TODO inefficient

#    @recent = TopEntry.last(10)

    # applications = ["top_entries", "cite_entries"]

    # select_clause = applications.map { |app| "SELECT created_at, user_id, tweet FROM #{app}" }.join(" UNION ")
    # sql = "#{select_clause} ORDER BY created_at LIMIT 10;"
    # res = ActiveRecord::Base.connection.execute(sql)
    # puts res

    @right = TopEntry.where.not(amazon_medium_image: nil).last(10)
  end
end

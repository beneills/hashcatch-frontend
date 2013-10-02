class TopEntry < ActiveRecord::Base
  belongs_to :user

  @@null = TopEntry.new(text: "-")
  @@regexp = /(my +)?((no)|#) *(?<number>1|2|3) +(favorite +)?(?<category>(album)|(cd)|(book)|(film)|(movie)) +(is +)?(?<name>[^#]+)/i

  def to_s # TODO
    @text
  end

  def tweet
#    "test"
    tweet = super
    m = @@regexp.match(tweet)
    if m
      m.names.reverse.each do |n|
        tweet.insert(m.end(n), "</span>")
        tweet.insert(m.begin(n), "<span class=\"regexp_match\">")
      end
    end
    tweet
 end

  def self.null
    @@null
  end
end

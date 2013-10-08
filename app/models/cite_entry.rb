class CiteEntry < ActiveRecord::Base
  belongs_to :user

  @@response_regexp = /(?<url>http:\/\/www.webcitation.org\/[^"]+)">\(Archived by WebCite/i


  def archived?
    !archive_url.nil?
  end

  # delayed_job
  def fetch_archive_url
    #logger.info("Performing citation via WebCite")
    escaped = URI.escape(url)
    target = "http://www.webcitation.org/archive?url=#{escaped}&email=webcite@hashcatch.com"
    # HTTP GET
    response = open(target).read
    #logger.debug("Got HTTP response")
    m = @@response_regexp.match(response)

    if m
      #logger.debug("Response correct.  Updating archive_url.")
      update(archive_url: m[:url])
    else
      #logger.error("WebCite request unsuccessful")
    end
  end
end

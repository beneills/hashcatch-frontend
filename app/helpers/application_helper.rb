module ApplicationHelper
  # http://blog.rietta.com/blog/2011/12/26/how-to-automate-copyright-notice/
  def copyright_notice_year_range(start_year)
    # In case the input was not a number (nil.to_i will return a 0)
    start_year = start_year.to_i

    # Get the current year from the system
    current_year = Time.new.year

    # When the current year is more recent than the start year, return a string 
    # of a range (e.g., 2010 - 2012). Alternatively, as long as the start year 
    # is reasonable, return it as a string. Otherwise, return the current year 
    # from the system.
    if current_year > start_year && start_year > 2000
      "#{start_year} - #{current_year}"
    elsif start_year > 2000
      "#{start_year}"
    else
      "#{current_year}"
    end
  end

  def random_tagline
    ["No signing up.  No logging in.  Just tweeting.",
     "Semanticize your tweets."].sample
  end
end

module UsersHelper
end

module Enumerable
  def each_or_message(message=nil, &block)
    if empty?
      message || "no entries yet"
    else
      each(&block)
      nil
    end
  end
end

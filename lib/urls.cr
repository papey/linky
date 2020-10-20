require "http/client"

# Urls module works with urls and url redirects
module Urls
  # get_urls and follow redirect if needed
  def self.get_urls(endpoint : String, max : Int32) : Array({Int32, String})
    # An array of tuples containing code and associated url
    paths = Array({Int32, String}).new

    i = 0
    url = endpoint

    loop do
      # an error here will raise so handle it in the caller
      res = HTTP::Client.get url
      paths << {res.status_code, url}

      break if !is_redirect?(res.status_code) || i == max

      url = res.headers["Location"]
      i += 1
    end

    paths
  end

  # return true if code is a redirection code
  def self.is_redirect?(code : Int32)
    [301, 302, 303, 307, 308].includes? code
  end
end

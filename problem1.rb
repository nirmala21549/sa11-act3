def extract_urls(text)
    url_regex = /(https?:\/\/[\w\-]+(\.[\w\-]+)+(:\d+)?(\/[\w\-\.\/\?\%\&\=]*)?|ftp:\/\/[\w\-]+(\.[\w\-]+)+(:\d+)?(\/[\w\-\.\/\?\%\&\=]*)?)/i

    text.scan(url_regex) do |url|
      puts url[0]
    end
  end
  
  sample_text = "Visit our site at http://www.example.org for more information. 
  Check out our search page at https://example.com/search?q=ruby+regex. 
  Don’t forget to ftp our resources at ftp://example.com/resources."

  extract_urls(sample_text)

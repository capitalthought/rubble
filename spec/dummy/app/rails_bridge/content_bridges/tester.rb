class Tester < RailsBridge::ContentBridge
  # Uncomment the following options to create defaults to be used by all requests
  # self.protocol           = 'https'               # defaults to 'http'
  # self.host               = 'example.com'
  # self.port               = 8080                  # defaults to 80
  # self.path               = '/path/to/resource'   # no default
  # self.params             = {:locale=>'en'}       # no default
  # self.default_content    = "Content unavailable."
  # self.on_success {|content| JSON.parse(content)}
  # self.request_timeout = 1000                  # miliseconds
  # self.cache_timeout   = 3600                  # seconds

  content_request :tester do |request|
    # Uncomment the following options to override defaults set on the class.
    # request.protocol        = 'https'           
    # request.host            = 'example.com'
    # request.port            = 8080                  
    # request.path            = '/path/to/resource'   
    # request.params          = nil
    # request.default_content = "Tester content unavailable."
    # request.on_success nil          
    # request.request_timeout = 500                 # miliseconds
    # request.cache_timeout   = 60                  # seconds
  end

end

module FFMPEG
  class Error < StandardError
  end
  class HTTPTooManyRequests < StandardError
  end
  class FileInputError < Errno::ENOENT
  end

  class UrlInputError < StandardError
    attr_reader :response

    def initialize(message, response)
      @response = response
      super(message)
    end
  end
end

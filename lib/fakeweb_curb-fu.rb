require 'rubygems'
require 'curb-fu'

class FakeWebCurbFu

  VERSION = '0.0.1'

  class << self

    unless defined? @uris
      @uris = nil
    end

    def uris
      @uris
    end

    def register_uri(url, path)
      @uris ||= {}
      if @uris[url]
        @uris[url]
      elsif File.exists?(path)
        @uris[url] = fixture_contents(path)
      end
    end

    def unregister_uri(url)
      @uris ||= {}
      @uris.delete(url)
    end

    def get(url)
      @uris[url]
    end

    private

    def fixture_contents(path)
      File.open(path) do |file|
        return "".tap do |content|
          file.each_line { |line| content.concat(line) }
        end
      end
    end
  end
end

class FakeResponseCurbFu
  attr_reader :body

  def initialize(body)
    @body = body
  end
end

module CurbFu

  class << self

    def get_with_fake_uris(uri)
      if (content = FakeWebCurbFu.get(uri))
        FakeResponseCurbFu.new(content)
      else
        get_without_fake_uris(uri)
      end
    end

    alias_method :get_without_fake_uris, :get
    alias_method :get, :get_with_fake_uris
  end
end

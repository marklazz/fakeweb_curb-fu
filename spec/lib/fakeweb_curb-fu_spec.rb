require File.join( File.dirname(__FILE__), '..', 'spec_helper')

describe FakeWebCurbFu do

  context 'http://marklazz.com is not registered' do

    before do
      FakeWebCurbFu.unregister_uri('http://marklazz.com')
    end

    it 'should return the result of CurbFu' do
      CurbFu.get('http://marklazz.com').body.should =~ /#{Regexp.escape("I'm an IT professional doing freelance Web Development and Consulting work over the Internet. In particular, I'm focusing my work on Ruby On Rails development and Agile Methodologies")}/
    end
  end

  context 'http://marklazz.com is registered to return the contents of result.html' do

    before do
      FakeWebCurbFu.register_uri('http://marklazz.com', File.join(File.dirname(__FILE__), '..', 'fixtures', 'response.html'))
    end

    it 'shuold return the contents of result.html' do
      CurbFu.get('http://marklazz.com').body.should =~ /#{Regexp.escape("RESPONSE BODY!")}/
    end
  end
end

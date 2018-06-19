class ContentsController < ApplicationController
  def contents
    @doc = Nokogiri::XML(open("https://medium.com/feed/parti-xyz-developers"))
    @posts = @doc.xpath("//item//title").take(5)
    @links = @doc.xpath("//item//link").take(5)
    @posts = @posts.zip(@links)
    @contents = @doc.xpath("//content:encoded").take(5)
    @images = []
    @images = @contents.map{ |content| Nokogiri::XML(content.text).css('img').map{ |i| i['src'] }}
    render "contents/contents"
  end
end

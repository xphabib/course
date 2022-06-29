class HomeController < ApplicationController
  def index
    @course = Course.find_by(course_url: params[:course_url])

    # @vimeo_video = VimeoMe2::Video.new('f63ebc4393fa819f79c85eaffff26c26','351337221')
    # @video = JSON.parse(@vimeo_video.video)
    #

    # require "uri"
    # require "net/http"
    #
    # url = URI("https://vimeo.com/api/oembed.json?url=https://vimeo.com/351337221&id=351337221&responsive=true&width=750&autoplay=true")
    #
    # https = Net::HTTP.new(url.host, url.port)
    # https.use_ssl = true
    # request = Net::HTTP::Get.new(url)
    # response = https.request(request)
    # @res = JSON.parse(response.read_body)
    session[:habib] = 'something'

  end
end

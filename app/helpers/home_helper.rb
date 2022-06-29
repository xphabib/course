module HomeHelper
  def html_return(video_id)
    require "uri"
    require "net/http"

    url = URI("https://vimeo.com/api/oembed.json?url=https://vimeo.com/#{video_id}&id=#{video_id}&responsive=true&width=750&autoplay=true")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    @res = JSON.parse(response.read_body)
    @res['html']
  end
end

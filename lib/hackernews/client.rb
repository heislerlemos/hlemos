module Hackernews
  class Client
    def initialize
      @host = 'community-hacker-news-v1.p.rapidapi.com'
      @key = '29c3021e3fmsh4bb90e57a82792dp148dfejsn8e108d9a1eed'
    end

    def item(id)
      get("item/#{id}")
    end


      def topstories(start = 0, per_page = 10, expand = true)
        stories = get('topstories')[start...start + per_page]
        if expand
  return stories.map {|story| item(story) }
else
  return stories
end
    end


    private

    def get(path)
      response = Excon.get(
        'https://' + @host + '/' + path + '.json?print=pretty',
        headers: {
          'x-rapidapi-host' => @host,
          'x-rapidapi-key' => @key,
        }
      )

      return false if response.status != 200

      JSON.parse(response.body)
    end
  end
end

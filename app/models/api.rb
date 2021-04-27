class Api   
  def self.base_url
      "https://kitsu.io/api/edge/anime"
  end

  def self.load_data
    load_anime
  end 

  def self.load_anime
      offset_number = 0

      until offset_number == 200 do         
          response = RestClient.get(base_url + "?page%5Blimit%5D=20&page%5Boffset%5D=#{offset_number}")
          data = JSON.parse(response.body)
          data["data"].each do |anime_data|
              Anime.create_from_api(anime_data) 
          end
          offset_number += 20
      end
  end
end
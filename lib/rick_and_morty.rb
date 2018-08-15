require 'rick_and_morty/engine'
require 'net/http'
require 'open-uri'
require 'json'
require 'fileutils'
require 'pry'

module RickAndMorty
  def get_heroes
    heroes_uri = URI('https://rickandmortyapi.com/api/character/')
    JSON.parse(Net::HTTP.get(heroes_uri), symbolize_names: true)
  end

  def find_hero(hero_name:, download_path:)
    all_heroes = get_heroes
    hero = all_heroes[:results].select { |h| h[:name].include?(hero_name) }.first
    save_image(hero, download_path)
  end

  def save_image(hero, path)
    unless File.exists?(path)
      binding.pry
      puts "Creating directory"
      FileUtils.mkdir_p(path)
    end
    path = "#{path}#{hero[:name].underscore}#{hero[:image][((hero[:image] =~ /.\.(png|jpeg|jpg|gif)$/) + 1)..-1]}"
    File.open(path, 'wb') do |fo|
      puts "Saving image - #{path}"
      fo.write open(hero[:image]).read
    end
  end
end

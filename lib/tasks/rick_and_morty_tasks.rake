include RickAndMorty
desc "Save provided hero picture"
task :rick_and_morty, [:hero_name] do |_t, args|
  puts "Hero name should be passed" unless args.hero_name
  args.with_defaults(download_path: "./public/rick_and_morty/")
  find_hero(hero_name: args.hero_name, download_path: args.download_path)
end

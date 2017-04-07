namespace :breed_collector do
  desc "TODO"
  task collect_breeds: :environment do
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.portalfilhotes.com.br/racas-de-a-z/"))
    breeds = doc.at_css('#HOTWordsTxt > ul:nth-child(4)').children.map(&:inner_text).reject{|e| e == "\n"}
    File.open("/app/lib/breeds.txt", 'w') do |f|
      breeds.each do |breed|
        f.puts breed
      end
    end
  end

end

3.times do |topic|
  Topic.create!(
      title: "#{topic}"
    )
end

10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}",
      body: "Lorem ipsum dolor sit amet, ferri porro ludus ne vel. Mei id convenire splendide, no mel quot lobortis comprehensam. Ad nisl tale doctus ius. Id mutat viderer maluisset mei, dicant nullam persequeris at qui. Probo aliquam te qui, mea neglegentur vituperatoribus ex, omnis falli equidem ut eum. Et duo novum iisque dignissim. Mel tantas ceteros dissentias cu. Perpetua vituperata reformidans sit an, mollis docendi lucilius sit ut. Vidit illum detraxit eu cum. Dicta nostro tincidunt est an, ea est illum iisque insolens. Ut sed utinam ignota invenire. Vel modus alterum at, sumo admodum mea ex. Pri nibh euismod ne, ut eos aliquip tritani. Te equidem accusata similique nam, ex rebum lucilius eam. Eos ea etiam nullam, nec ad zril virtute efficiantur. Eu nihil labitur tincidunt nam, stet erant maiestatis in sed. Sed ad soleat animal. Ei eam illum partem, ne mei illud dolores adipisci, solum ignota quaerendum ius an. Pri te tollit perpetua dissentias, apeirian eloquentiam et ius. Eu luptatum petentium qui. No per exerci eruditi percipit, nusquam interesset ex vix, ne quo platonem consetetur comprehensam. An mandamus constituam usu, mei et eros minim, ea tempor nonumes maiestatis per. Eu vel unum meis tation, qui mutat graece singulis in.",
      topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    ) 
end

puts "5 skills created"

8.times do |portfolio_items| 
  Portfolio.create!(
      title: "Portfolio item #{portfolio_items}",
      subtitle: "Ruby on Rails",
      body: "nusquam interesset ex vix, ne quo platonem consetetur comprehensam. An mandamus constituam usu, mei et eros minim, ea tempor nonumes maiestatis per. Eu vel unum meis tation, qui mutat graece singulis in.",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_items| 
  Portfolio.create!(
      title: "Portfolio item #{portfolio_items}",
      subtitle: "Penetration Testing",
      body: "nusquam interesset ex vix, ne quo platonem consetetur comprehensam. An mandamus constituam usu, mei et eros minim, ea tempor nonumes maiestatis per. Eu vel unum meis tation, qui mutat graece singulis in.",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio created"
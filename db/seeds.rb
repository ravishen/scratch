9.times do |count|

thumbnail = Thumbnail.create!(title: "Title:#{count}" , 
    body:"Cillum incididunt sit ex aliquip.",
    thumb_image:"https://www.placehold.it/300x200",
    main_image:"https://www.placehold.it/600x450"
    )
thumbnail.save()
end 
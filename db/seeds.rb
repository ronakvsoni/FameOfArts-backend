# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

user1 = User.create(username: 'ronak94', name: 'Ronak')
user2 = User.create(username: 'Alec D', name: 'alec')

artgallary1 = Artgallary.create(url: 'https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1', name: 'My First')
artgallary2 = Artgallary.create(url: 'https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1', name: 'My Second')
user_artgallary1 = UserArtgallary.create(user: user1, artgallary: artgallary1)
user_artgallary1 = UserArtgallary.create(user: user1, artgallary: artgallary2)

image1 = Image.create(url: 'https://c4.wallpaperflare.com/wallpaper/327/174/532/nature-paint-texture-art-wallpaper-preview.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Trees are good Friend!!', description: 'lines on a page')
image2 = Image.create(url: 'https://cdn.pixabay.com/photo/2016/12/06/01/26/colour-1885352_1280.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Wow Colors!', description: "This place is cooler than Colton's gaming chair!!")
image3 = Image.create(url: 'https://cdn.pixabay.com/photo/2020/04/03/07/26/eye-4997724_1280.png', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Portrait', description: 'Look at me monkey-ing around lolz.')
image4 = Image.create(url: 'https://secure.img1-fg.wfcdn.com/im/21639509/resize-h800%5Ecompr-r85/3325/33258962/%2527Beautiful+Blue+Iris+Watercolor+Sketch%2527+Painting+Print+on+Wrapped+Canvas.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Abstract', description: 'Maybe 2021 will be better? I hope?')
image5 = Image.create(url: 'https://secure.img1-fg.wfcdn.com/im/22716076/resize-h800%5Ecompr-r85/4438/44387012/%2527Tropical+Sunset%2527+Acrylic+Painting+Print+on+Canvas.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Classic!', description: 'We did so darn good you wouldnt believe omg we are awesome')
image6 = Image.create(url: 'https://media.istockphoto.com/photos/the-child-girl-draws-a-rainbow-with-colored-chalk-on-the-asphalt-picture-id1165196636', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Chrome', description: 'This is so old, like, at least 20 years old. I think it may techinically be an antique. thoughts?')
image7 = Image.create(url: 'https://c4.wallpaperflare.com/wallpaper/823/727/632/boardwalk-footbridge-autumn-bank-rock-bay-wallpaper-preview.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Special', description: 'Look at this small person I found?!?!')
image8 = Image.create(url: 'https://c4.wallpaperflare.com/wallpaper/684/901/240/branch-park-bridge-stone-bridge-wallpaper-preview.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Natural beauty', description: 'Why are my clothes so wet')
image9 = Image.create(url: 'https://c0.wallpaperflare.com/preview/698/176/1024/abstract-expressionism-abstract-painting-acrylic-paint-art.jpg', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Classic', description: 'Im going to be a granny!')
image10 = Image.create(url: 'https://images.unsplash.com/photo-1499781350541-7783f6c6a0c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1415&q=80', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Abstract Form', description: 'Face expression talks everything')
# image11 = Image.create(url: 'https://images.unsplash.com/photo-1551913902-c92207136625?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', image_type: 'image', user: user1, artgallary: artgallary1, name: 'Charcol Painting', description: 'in my eyes i see future')

comment1 = Comment.create(comment_info: 'John: this color combination is so cool and poietic!!', user: user1, image: image1)
comment2 = Comment.create(comment_info: 'Mackenzie: I want these painting', user: user1, image: image1)

puts 'Seeds are awesome'

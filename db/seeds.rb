User.destroy_all
Book.destroy_all
Bookclub.destroy_all
BookclubUser.destroy_all
Comment.destroy_all

senada = User.create(name: "Senada Kadric", username: "senada", password: "123", description: "I'm a barbie girl, in a barbie world", age: 23, favorite_books: "Do no harm, When breath becomes air", location: "NYC", image_url: "https://i.pinimg.com/originals/31/33/ff/3133ff447d39045c7766a2a07e8d36b6.jpg")

bashir = User.create(name: "Bashir", username: "bashir2017", password: "123", description: "I'm a barbie boy, in a barbie world", age: 28, favorite_books: "Ruby Docs, MDN", location: "NYC", image_url: "https://i.redd.it/y57kbzi3tmw41.jpg")

book1 = Book.create(title: "Do no harm", author: "Henry Marsh", image_url: "https://prodimage.images-bn.com/pimages/9781250090133_p0_v2_s1200x630.jpg", description: "This is an amazing book about a neurosurgeon telling stories of his life experiences.")
book2 = Book.create(title: "When breath becomes air", author: "Paul Kalanithi", image_url: "https://thedailynews.cc/wp-content/uploads/2017/07/breath.jpg", description: "When Breath Becomes Air is a non-fiction autobiographical book written by American Neurosurgeon Dr. Paul Kalanithi.")
book3 = Book.create(title: "The 6-Minute Diary", author: "Dominik Spenst", image_url: "https://cdn.shopify.com/s/files/1/0328/5739/1149/products/81c2I6rLreL._AC_SL1500_1024x1024@2x.jpg?v=1586176134", description: "6 Minutes a Day for More Mindfulness, Happiness and Productivity | A Simple and Effective Gratitude Journal and Undated Guided Journal")
book4 = Book.create(title: "The Daily Stoic", author: "Ryan Holiday", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1462161080l/29093292.jpg", description: "The Daily Stoic: 366 Meditations on Wisdom, Perseverance, and the Art of Living is a daily devotional book of stoic philosophy co-authored by Ryan Holiday and Stephen Hanselman.")
book5 = Book.create(title: "The Spirit Catches You and You Fall Down", author: "Anne Fadiman", image_url: "https://images.macmillan.com/folio-assets/macmillan_us_frontbookcovers_1000H/9780374533403.jpg", description: "chronicles the struggles of a Hmong refugee family from Laos, the Lees, and their interactions with the health care system in Merced, California.")
book6 = Book.create(title: "Nineteen Eighty-Four", author: "George Orwell", image_url: "https://d31029zd06w0t6.cloudfront.net/wp-content/uploads/sites/38/2019/12/web1_1984-book-cover-art-book-cover-prints-2_1531c558-4ea7-4a8b-95f4-1fa3534f0ee9_1200x1200.jpg", description: "The book centers on the consequences of government over-reach, totalitarianism, mass surveillance, and repressive regimentation of all persons and behaviours within society.")

book7 = Book.create(title: "Pride and Prejudice", author: "Jane Austen", image_url: "https://hanabooktopia.com/wp-content/uploads/2019/05/pride-and-prejudice-qanita.jpg", description: "A romantic novel providing an honest depiction of manners, education, marriage, and money during the Regency era in Great Britain.")
book8 = Book.create(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image_url: "https://images-na.ssl-images-amazon.com/images/I/41iers+HLSL._SX326_BO1,204,203,200_.jpg", description: "A novel that follows a cast of characters living in the fictional towns of West Egg and East Egg on prosperous Long Island in the summer of 1922")
book9 = Book.create(title: "The Giver", author: "Lois Lowry", image_url: "https://images-na.ssl-images-amazon.com/images/I/51R8AA8QEVL.jpg", description: "A novel set in a society which at first appears to be utopian but is revealed to be dystopian as the story progresses. It follows a 12-year-old boy named Jonas")
book10 = Book.create(title: "The Alchemist", author: "Paulo Coelho", image_url: "https://pictures.abebooks.com/SABRA2015/18269767749.jpg", description: "he magical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure as extravagant as any ever found.")
# book11 = Book.create(title: "Inferno", author: "Dante Alighieri", image_url: "https://images-na.ssl-images-amazon.com/images/I/51h8l9OJWWL._SX315_BO1,204,203,200_.jpg", description: "The first part of Italian writer Dante Alighieri's 14th-century epic poem Divine Comedy. It tells the journey of Dante through Hell, guided by the ancient Roman poet Virgil.")
# book12 = Book.create(title: "Heart of Darkness", author: "Joseph Conrad", image_url: "https://miro.medium.com/max/645/1*t9EGFixZjb05VqzTLsICTw.jpeg", description: "A complex exploration of the attitudes people hold on what constitutes a barbarian versus a civilized society and the attitudes on colonialism and racism that were part and parcel of European imperialism.")



bookclub1 = Bookclub.create(name: "Do no harm club", book_id: book1.id)
bookclub2 = Bookclub.create(name: "When breath becomes air is the best book of them all", book_id: book2.id)
bookclub3 = Bookclub.create(name: "Mindfulness club", book_id: book3.id)
bookclub4 = Bookclub.create(name: "The Stoics", book_id: book4.id)

bookclub_user1= BookclubUser.create(bookclub_id: bookclub1.id, user_id: senada.id)
bookclub_user2 = BookclubUser.create(bookclub_id: bookclub1.id, user_id: bashir.id)
bookclub_user3 = BookclubUser.create(bookclub_id: bookclub2.id, user_id: bashir.id)
bookclub_user4 = BookclubUser.create(bookclub_id: bookclub2.id, user_id: senada.id)
bookclub_user5 = BookclubUser.create(bookclub_id: bookclub3.id, user_id: bashir.id)
bookclub_user6 = BookclubUser.create(bookclub_id: bookclub3.id, user_id: senada.id)
bookclub_user7 = BookclubUser.create(bookclub_id: bookclub4.id, user_id: senada.id)


Comment.create(content: "omg amazing book y'all", user_id: senada.id, bookclub_id: bookclub1.id)
Comment.create(content: "LOOOOVED IT", user_id: bashir.id, bookclub_id: bookclub1.id)
Comment.create(content: "i cried so much", user_id: senada.id, bookclub_id: bookclub2.id)
Comment.create(content: "i cried too :(", user_id: bashir.id, bookclub_id: bookclub2.id)
Comment.create(content: "we gonna be so much happier bc of this", user_id: senada.id, bookclub_id: bookclub3.id)
Comment.create(content: "yesh we will", user_id: bashir.id, bookclub_id: bookclub3.id)
Comment.create(content: "i guess i'm the only stoic", user_id: senada.id, bookclub_id: bookclub4.id)

Message.create(content: "Hey wanna read with me?", sender_id: senada.id, recipient_id: bashir.id)
Message.create(content: "No", sender_id: bashir.id, recipient_id: senada.id)
Message.create(content: "Wow ok", sender_id: senada.id, recipient_id: bashir.id)

puts "~~~~~~~~~~~~~~~~"
puts "~~~~~SEEDED~~~~~"
puts "~~~~~~~~~~~~~~~~"
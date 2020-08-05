User.destroy_all
Book.destroy_all
Bookclub.destroy_all
BookclubUser.destroy_all
Comment.destroy_all

senada = User.create(name: "Senada Kadric", username: "senada", password: "123", description: "I'm a barbie girl, in a barbie world", age: 23, favorite_books: "Do no harm, When breath becomes air", location: "NYC", image_url: "https://i.pinimg.com/originals/31/33/ff/3133ff447d39045c7766a2a07e8d36b6.jpg")

bashir = User.create(name: "Bashir", username: "bashir2017", password: "123", description: "I'm a barbie boy, in a barbie world", age: 28, favorite_books: "Ruby Docs, MDN", location: "NYC", image_url: "https://i.redd.it/y57kbzi3tmw41.jpg")

book1 = Book.create(title: "Do no harm", author: "Henry Marsh", image_url: "https://prodimage.images-bn.com/pimages/9781250090133_p0_v2_s1200x630.jpg", description: "This is an amazing book about a neurosurgeon telling stories of his life experiences.")
book2 = Book.create(title: "When breath becomes air", author: "Paul Kalanithi", image_url: "https://thedailynews.cc/wp-content/uploads/2017/07/breath.jpg", description: "When Breath Becomes Air is a non-fiction autobiographical book written by American Neurosurgeon Dr. Paul Kalanithi. It is a memoir about his life and illness, battling stage IV metastatic lung cancer. It was posthumously published by Random House on January 12, 2016.")
book3 = Book.create(title: "The 6-Minute Diary", author: "Dominik Spenst", image_url: "https://cdn.shopify.com/s/files/1/0328/5739/1149/products/81c2I6rLreL._AC_SL1500_1024x1024@2x.jpg?v=1586176134", description: "6 Minutes a Day for More Mindfulness, Happiness and Productivity | A Simple and Effective Gratitude Journal and Undated Guided Journal")
book4 = Book.create(title: "The Daily Stoic", author: "Ryan Holiday", image_url: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1462161080l/29093292.jpg", description: "The Daily Stoic: 366 Meditations on Wisdom, Perseverance, and the Art of Living is a daily devotional book of stoic philosophy co-authored by Ryan Holiday and Stephen Hanselman.")


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

puts "~~~~~~~~~~~~~~~~"
puts "~~~~~SEEDED~~~~~"
puts "~~~~~~~~~~~~~~~~"
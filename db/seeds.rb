# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Activity.destroy_all
UserActivity.destroy_all

kiyana = User.create(firstname: "Kiyana", lastname: "Dunlock", birthdate: "January 24", email: "k@gmail.com", username: "kdunl2", password: "love", nickname: "kiki", image_url: "", description1: "nice", description2: "hard-working", description3: "focused", goal:"Be More Studious")

george = User.create(firstname: "George", lastname: "Good", birthdate: "MArch", email: "g@gmail.com", username: "geo56", password_digest: "love")
bill = User.create(firstname: "Bill", lastname: "Bad", birthdate: "December", email: "b@gmail.com", username: "bibi67", password_digest: "love")
bob = User.create(firstname: "Bob", lastname: "Big", birthdate: "April", email: "bo@gmail.com", username: "bobob774", password_digest: "love")
jane = User.create(firstname: "Jane", lastname: "Small", birthdate: "May", email: "j@gmail.com", username: "jajane2111", password_digest: "love")
sarah = User.create(firstname: "Sarah", lastname: "Large", birthdate: "December", email: "s@gmail.com", username: "sarbear", password_digest: "love")


read = Activity.create(name: "read", description: "Spend time reading" , time_expected: "1 hour", image_url: "https://www.thelakeviewhusky.com/wp-content/uploads/2018/11/dgdzhbdbnghqvvogxw8biu7o_21-900x541.jpg")
goodday = Activity.create(name: "Get a good start to your day", description: "Wake up before 8" , time_expected: "none", image_url: "https://everyday2-c80f.kxcdn.com/wp-content/uploads/2018/03/Good-Morning-Quotes-to-Start-Your-Day-Off-on-the-Right-Foot.jpg")
medi = Activity.create(name: "Meditate", description: "Spend some time meditating" , time_expected: "30 min - 1 hour", image_url: "https://cdn.tinybuddha.com/wp-content/uploads/2013/07/Meditating-1.jpg")
dinner = Activity.create(name: "Cook dinner", description: "Spend some time cooking a meal" , time_expected: "1 hour", image_url: "http://s1.1zoom.me/big0/718/Knife_Vegetables_Cutting_board_527517_1280x939.jpg")
news = Activity.create(name: "Read news articles", description: "read news" , time_expected: "15 minutes", image_url: "https://hplibrary.org/sites/default/files/news.png.jpg")
family = Activity.create(name: "Spend time with family", description: " be with the fam" , time_expected: "2 hours - 3 hours", image_url: "http://www.stpaulschurchjarrow.com/wp-content/uploads/2018/06/Family-time-3.jpg")

UserActivity.create(user: kiyana, activity: read, status: true)
UserActivity.create(user: kiyana, activity: dinner)

UserActivity.create(user: kiyana, activity: family)
UserActivity.create(user: kiyana, activity: news)
# UserActivity.create(user: george, activity: family)
# UserActivity.create(user: george, activity: news)
# UserActivity.create(user: jane, activity: read)
# UserActivity.create(user: sarah, activity: medi)
# UserActivity.create(user: sarah , activity: goodday)
# UserActivity.create(user: bill, activity: goodday)

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
family = Activity.create(name: "Spend time with family", description: " Spending time with family strengthens family ties. Also, families who enjoy group activities will develop strong relationships and handle stressful situations with ease." , time_expected: "2 hours - 3 hours", image_url: "http://www.stpaulschurchjarrow.com/wp-content/uploads/2018/06/Family-time-3.jpg")
Activity.create(name: "Take the stairs" , description: "If you have stairs at your home or office, take them every chance you get. But don’t stop there. For a strong cardio workout, walk up and down the stairs repeatedly. Start with a limited number of repetitions, then increase them as you feel stronger." , time_expected: "5 minutes", image_url: "https://i.ytimg.com/vi/uoCtRBkuGaI/maxresdefault.jpg")
Activity.create(name: "Drink 1 extra glass of water" , description: "There are health benefits to drinking more water. It helps keep your temperature normal, lubricates and cushions joints, protects your spinal cord and other sensitive  tissues, and gets rid of wastes through urination, sweat, and bowel movements. You can also add flavor to your water to help up your intake." , time_expected: "1 minute", image_url: "https://fitlifepursuits.com/wp-content/uploads/2016/05/Drink-More-Water.jpg")
Activity.create(name: "Take a 10-minute walk" , description: "Walk during your lunch hour or to a store that is a block away to buy a gallon of milk — it’s all good for you. Even if it’s cold outside, you can often walk comfortably by dressing right: Start with a sweat-wicking layer next to your body, add insulating layers for warmth, and top them off with a waterproof shell." , time_expected: "10 minutes", image_url: "http://www.fitnowstephanie.com/wp-content/uploads/2015/02/Take-a-Walk.jpg")
Activity.create(name: "Focus on sitting up straight" , description: "Having good posture can prevent aches and pain and it can also reduce stress on your ligaments. You can try to leave yourself a note to sit up straight, until it becomes an unconscious habit.Walking with your shoulders back and head held high can also make you feel good about yourself." , time_expected: "Throughout Day", image_url: "http://pediatricanswers.com/wp-content/uploads/2016/06/40829013_m.jpg")
Activity.create(name: "Go to bed ½ hour earlier" , description: "Do you sleep a solid seven or eight hours most nights? Many of us don’t but experts say this is a marker of good heart health. Solid sleep doesn’t just give you more energy, it can also help with healthy eating goals. When you’re short on sleep, it reduces your body’s production of hormones that suppress appetite, which can contribute to weight gain." , time_expected: "30 minutes", image_url: "http://2.bp.blogspot.com/-unTo7eqqOZ4/T48BL_G4N8I/AAAAAAAAA4A/7dOkIS2Of9w/s1600/Sleeping-762095.jpg")
Activity.create(name: "Replace 1 can of diet soda with carbonated water" , description: "If you drink diet soda each day, use carbonated mineral water to help wean yourself off of it. Research suggests the brain reacts to artificial sweeteners much like it does to sugary sweets. Ingesting them frequently can increase your desire for high-calorie foods and put you at risk for weight gain." , time_expected: "", image_url: "https://miltonhooper.files.wordpress.com/2018/02/no-soda.png?w=845")
Activity.create(name: "Increase Balance" , description: "Balance on one leg for 10 seconds at a time, then switch to the other leg
This simple exercise is something you can do while brushing your teeth or standing in a line. It’s a part of neuromotor training, which helps you improve your balance, agility and mobility — all things you need in everyday movement and in other forms of exercise." , time_expected: "Throughout Day", image_url: "https://www.mclaren.org/Uploads/Public/Images/Northern/balance%20screening.jpg")
Activity.create(name: "Weigh yourself" , description: "To keep your weight from creeping up on you, set a weekly maintenance or loss goal for yourself, write it down, and check yourself against that goal. Weigh yourself each week on the same day and at the same time – and wearing the same amount of clothing for consistency." , time_expected: "weekly", image_url: "http://walkingoffpounds.com/wp-content/uploads/2017/01/bathroom_scale_concept_black-541x437.png")
Activity.create(name: "Eat a healthy breakfast" , description: "Eat something high in fiber that includes protein to keep you full and energized. If you start the day out right, you tend to eat better overall. Tired of the same bowl of oatmeal? Add different toppings to make it more exciting." , time_expected: "20 minutes", image_url: "http://worldartsme.com/images/healthy-breakfast-clipart-1.jpg")
Activity.create(name: "Include more greens and lettuce in your meals" , description: "Incorporate lettuce into your meals to add nutrients and water to your diet. The fiber in lettuce helps to fill you up, and it does so at just 20 calories per serving. Lettuces that are dark green and reddish in color are the most nutritious and the most flavorful.  But even the popular, pale iceberg lettuce provides water, fiber and folate." , time_expected: "10 minutes", image_url: "https://i.ytimg.com/vi/poE8jWpMPzw/maxresdefault.jpg")
Activity.create(name: "Go Offline" , description: "Checking your email and social media a lot? Sure, your friends' and family's latest updates are just a click away, but do you really need to see pictures of your cousin's latest meal? Let it wait until morning. Set a time to log off and put the phone down. When you cut back on screen time, it frees you to do other things. Take a walk, read a book, or help your cousin chop veggies for her next great dinner" , time_expected: "20 minutes", image_url: "https://fcw.com/~/media/GIG/FCWNow/Topics/Mobility/nophones.jpg")







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

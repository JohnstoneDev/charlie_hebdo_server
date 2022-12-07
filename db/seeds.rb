# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

laura = User.create(username: "Grace Njuguna", password: "laura2022")

article_one = Article.create(
    title: "Ukraine-Russia war - live updates: Putin’s troops turn burnt Russian equipment into mass grave, says Kyiv",                               
    description:"Wreaths are seen outside site full of destroyed equipment in video shared by Ukrainian defence ministry",                                 
    content:"✕ Close Frozen Russian assets could be used to rebuild Ukraine, says EU chief\nFor free real time breaking news alerts sent straight to your inbox sign up to our breaking news emails Sign up to our free breaking news emails Please enter a valid email ... [1561 chars]",                           
    url: "https://www.dawn.com/news/1724796/chinese-cities-relax-testing-rules-as-zero-covid-policy-eases",
    image: "https://i.dawn.com/large/2022/12/05112337d902639.jpg?r=112454",
    source_name: "DAWN.com",
    source_url: "https://www.dawn.com",
    summary: "",
    user_id: laura.id
)


din_djarin = User.create(username: "Din Djarin", password: "thisistheway")

article_two = Article.create(
    title: "Chinese cities relax testing rules as zero-Covid policy eases",                              
    description:"In capital Beijing, commuters are no longer required to show negative virus test taken within 48 hours to use public transport.",                                 
    content:"Businesses reopened and testing requirements were relaxed in Beijing and other Chinese cities on Monday as the country tentatively eases out of a strict zero-Covid policy that sparked nationwide protests.\nLocal authorities across China have begun a s... [3276 chars]",                           
    url: "https://www.dawn.com/news/1724796/chinese-cities-relax-testing-rules-as-zero-covid-policy-eases",
    image: "https://i.dawn.com/large/2022/12/05112337d902639.jpg?r=112454",
    source_name: "DAWN.com",
    source_url: "https://www.dawn.com",
    summary: "",
    user_id: din_djarin.id
)
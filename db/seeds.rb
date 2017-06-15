# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

# ActiveRecord::Base.transaction do
# # (<<-SQL)DROP TABLE users SQL
#   user1 = User.create!(username: "Kevin")
#   user2 = User.create!(username: "Liz")
#   user3 = User.create!(username: "Ravi")
#
#   # (<<-SQL)DROP TABLE polls SQL
#   poll1 = Poll.create!(title: "Life Satisfaction", author_id: user2.id)
#   poll2 = Poll.create!(title: "Personal Representation", author_id: user1.id)
#   poll3 = Poll.create!(title: "App Academy Favs", author_id: user3.id)
#   poll4 = Poll.create!(title: "Hungry Peeples", author_id: user3.id)
#
#   # (<<-SQL)DROP TABLE questions SQL
#   question1 = Question.create!(title: "How much do you enjoy your life?", poll_id: poll1.id)
#   question3 = Question.create!(title: "What would you do if you didn't have to worry about money?", poll_id: poll1.id)
#   question4 = Question.create!(title: "What is your spirit animal?", poll_id: poll2.id)
#   question5 = Question.create!(title: "Who is your favorite TA?", poll_id: poll3.id)
#   question6 = Question.create!(title: "Who has been your favorite pair to work with (only one correct answer!!!!)?", poll_id: poll3.id)
#   question7 = Question.create!(title: "What is your favorite food to eat on Tuesdays?", poll_id: poll3.id)
#
#   # (<<-SQL)DROP TABLE answer_choices SQL
#   answer1 = AnswerChoice.create!(answer_text: "100%", question_id: question1.id)
#   answer2 = AnswerChoice.create!(answer_text: "50%", question_id: question1.id, author_id: user2.id)
#   answer3 = AnswerChoice.create!(answer_text: "0%", question_id: question1.id, author_id: user3.id)
#
#   answer4 = AnswerChoice.create!(answer_text: "Swim with the fishies in Fiji!", question_id: question3.id, author_id: user2.id)
#   answer5 = AnswerChoice.create!(answer_text: "Direct music videos", question_id: question3.id, author_id: user1.id)
#   answer6 = AnswerChoice.create!(answer_text: "Take a bubble bath everyday!", question_id: question3.id, author_id: user3.id)
#
#   answer4 = AnswerChoice.create!(answer_text: "David, Aaron, Hope, Elliot, Jules, Luke, Scott, Kelly, Dallas", question_id: question5.id, author_id: user2.id)
#   answer5 = AnswerChoice.create!(answer_text: "Hippo", question_id: question4.id, author_id: ser1.id)
#   answer6 = AnswerChoice.create!(answer_text: "Lizkeveth", question_id: question6.id, author_id: ser3.id)
#   answer6 = AnswerChoice.create!(answer_text: "STEAK", question_id: question7.id, author_id: user3.id)
#
#   response1 = Response.create!(answer_id: answer1.id, author_id: user2.id)
#   response2 = Response.create!(answer_id: answer2.id, author_id: user1.id)
#   response3 = Response.create!(answer_id: answer3.id, author_id: user3.id)
#
#   response4 = Response.create!(answer_id: answer5.id, author_id: user2.id)
#   response5 = Response.create!(answer_id: answer4.id, author_id: user1.id)
#   response6 = Response.create!(answer_id: answer6.id, author_id: user3.id)
#   response6 = Response.create!(answer_id: answer7.id, author_id: user3.id)
# end

ActiveRecord::Base.transaction do
  u1 = User.create!(username: "Markov")
  u2 = User.create!(username: "Gizmo")

  p1 = Poll.create!(title: "Cats Poll", author_id: u1.id)

  q1 = Question.create!(question: "What Cat Is Cutest?", poll_id: p1.id)
  ac1 = AnswerChoice.create!(answer_text: "Markov", question_id: q1.id)
  ac2 = AnswerChoice.create!(answer_text: "Curie", question_id: q1.id)
  ac3 = AnswerChoice.create!(answer_text: "Sally", question_id: q1.id)

  q2 = Question.create!(question: "Which Toy Is Most Fun?", poll_id: p1.id)
  ac4 = AnswerChoice.create!(answer_text: "String", question_id: q2.id)
  ac5 = AnswerChoice.create!(answer_text: "Ball", question_id: q2.id)
  ac6 = AnswerChoice.create!(answer_text: "Bird", question_id: q2.id)

  r1 = Response.create!(
    response_id: u2.id, answer_id: ac3.id
  )
  r2 = Response.create!(
    response_id: u2.id, answer_id: ac4.id
  )
end

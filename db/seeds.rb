# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

u1 = User.create :name => 'Noviny', :email => 'nov@nov', :password => 'nov', :password_confirmation => 'nov', :admin => true, :mentor => true, :mentee => true

u2 = User.create :name => 'Ben', :email => 'ben@ben', :password => 'ben', :password_confirmation => 'ben', :admin => true, :mentor => true

u3 = User.create :name => 'Kiah', :email => 'kiah@kiah', :password => 'kiah', :password_confirmation => 'kiah', :admin => true, :mentee => true

Question.destroy_all

q1 = Question.create :name => 'BROAD', :asking => 'Broad daylight, broad shoulders, pretty broad. Which is best?', :user_id => u1.id

q2 = Question.create :name => 'The church of excess', :asking => 'I need to know if my commitment to drinking one drink for every hour of the day clashes with my chosen career. Any help?', :user_id => u3.id

q3 = Question.create :name => 'Frugal Fridays', :asking => 'My boss called me a nerd today. Should I be happy or sad about this?', :user_id => u1.id

q4 = Question.create :name => 'QA problem', :asking => 'I just got moved from QA team to QA lead. My first project is running for the next few months and could really use some help making sure it is excellent.', :user_id => u1.id

q5 = Question.create :name => 'Should I hang on?', :asking => 'My boss thinks that "hot chicks" is a bad way to refer to customers. Can I get him fired, or should I just leave?', :user_id => u3.id

a1 = Answer.create :name => 'Oh god', :explaining => 'This is a terrible idea. Please, I do not care what you are doing. Do not drink one drink per hour of the day you will die.', :user_id => u2.id, :question_id => q2.id

a2 = Answer.create :name => 'Maybe', :explaining => 'I have worked jobs where turning up drunk is okay, and pacing it out like this seems like an okay way to avoid problems.', :user_id => u1.id, :question_id => q2.id

a3 = Answer.create :name => 'Oh daylight', :explaining => 'I recommend broad daylight. Jobs that need to be done at night are usually not worth it, and often a bit illicit. Hit me up with the actual role if you need more info', :user_id => u2.id, :question_id => q1.id

a4 = Answer.create :name => 'I can help', :explaining => 'I have been a lead on several long term projects, though not in QA. Let me know if you need help.', :user_id => u2.id, :question_id => q4.id, :more_mentorship => true

Notification.destroy_all

n1 = Notification.create :user_id => u1.id, :question_id => q1.id, :answer_id => a3.id

# Mentorship.destroy_all

# m1 = Mentorship.create :user_a_id => u1.id, :user_b_id => u2.id

# u1 << u2
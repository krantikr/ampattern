class AddCompanyAndQuestionType < ActiveRecord::Migration
  c = Company.new
c.name = "HCL"
c.save

c = Company.new
c.name = "TCS"
c.save

c = Company.new
c.name = "CTS"
c.save

c = Company.new
c.name = "IBM"
c.save

c = Company.new
c.name = "IGate"
c.save

c = Company.new
c.name = "Wipro"
c.save

c = Company.new
c.name = "Infosys"
c.save

c = Company.new
c.name = "Huawei"
c.save

c = Company.new
c.name = "Genpact"
c.save

c = Company.new
c.name = "Hexaware"
c.save


c = Company.new
c.name = "Accenture"
c.save


c = Company.new
c.name = "Capgemini"
c.save


q = QuestionType.new
q.question_type = "Aptitude Questions"
q.save

q = QuestionType.new
q.question_type = "Computer Questions"
q.save

q = QuestionType.new
q.question_type = "English Questions"
q.save

q = QuestionType.new
q.question_type = "Reasoning Questions"
q.save


end

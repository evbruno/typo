Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  Article.create table.hashes
  puts '-' * 10
  pp Article.all
end
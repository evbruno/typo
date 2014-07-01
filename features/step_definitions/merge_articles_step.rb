Given /^the following articles exist$/ do |table|
  #table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    Article.new do |a|
      a.id = hash['id']
      a.title = hash['title']
      a.body = hash['body']
      a.published = true
      a.password = 'foo'
      a.save!
    end
  end
end

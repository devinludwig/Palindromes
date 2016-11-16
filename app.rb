require('sinatra')
require('sinatra/reloader')
require('./lib/check')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:home)
end

get('/input') do
  @input = params.fetch('text')
  result = params.fetch('text').check()
  if result.== true
  @result = ''
  elsif result.== false
  @result = 'not '
  end
  erb(:result)
end

require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combinations')
require('pry')

get('/') do
  erb(:index)
end

get('/coin_combinations') do
  @change = params.fetch('cents').to_i.coin_combinations()
  erb(:coin_combination)
end

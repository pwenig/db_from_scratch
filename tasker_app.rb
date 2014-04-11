require 'sinatra/base'
class TaskerApp < Sinatra::Application


  get '/' do
    #get the table
    task_table = DB[:tasks]
    erb :index, locals: {name: task_table.to_a}
  end

  post '/' do
    task_table = DB[:tasks]
    #insert the data into the table
    task_table.insert(name: params[:task])
    redirect '/'

  end

end

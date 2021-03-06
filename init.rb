Redmine::Plugin.register :timer do
  name 'Timer plugin'
  author 'Okan Binli'
  description 'This is a plugin for display which user works on which issue how many hours by Chart.js pie charts.'
  version '0.0.1'
  url 'https://github.com/peyloride/timer/'
  author_url 'http://peyloride.xyz'

  project_module :timer do
      permission :timer, { :times => [:index, :show] }, :public => true
      menu :project_menu, :timer, { :controller => 'times', :action => 'index' }, :caption => 'Timer', :after => :activity, :param => :project_id
  end
end

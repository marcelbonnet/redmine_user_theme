require 'redmine'


Redmine::Plugin.register :redmine_user_theme do
  name 'Redmine User Theme'
  author 'Marcel Bonnet'
  description 'The user is able to list installed system themes and change to its preferred UI/theme.'
  version '1.0'
  url 'https://github.com/marcelbonnet/redmine_user_theme'
  author_url 'https://github.com/marcelbonnet/'

  requires_redmine :version_or_higher => '3.0.0'

end

require 'patches/redmine_theme_patch'
require 'patches/user_preferences_patch'
require 'hooks/user_preferences_hook'

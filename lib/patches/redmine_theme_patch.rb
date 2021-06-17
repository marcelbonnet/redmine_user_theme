module RedmineUserThemePlugin
	module RedmineThemePatch extend ActiveSupport::Concern
		
		
		included do
		end

		def current_theme
	        @current_theme = Redmine::Themes.theme(User.current.pref[:ui_theme])
	        @current_theme
      	end

	end
end

ApplicationHelper.send :include, RedmineUserThemePlugin::RedmineThemePatch unless ApplicationHelper.included_modules.include?(RedmineUserThemePlugin::RedmineThemePatch)
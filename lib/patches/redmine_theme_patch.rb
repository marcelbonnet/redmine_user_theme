module RedmineUserThemePlugin
	module RedmineThemePatch extend ActiveSupport::Concern
		
		
		included do
			Rails.logger.info "============== TESTE FINAL ==============="
		end

		def current_theme
			Rails.logger.info "============== plugin do tema TESTE 3 ==============="
			Rails.logger.info Redmine::Themes.theme(User.current.pref[:ui_theme]).to_s

	        @current_theme = Redmine::Themes.theme(User.current.pref[:ui_theme])
	        @current_theme
      	end

	end
end

ApplicationHelper.send :include, RedmineUserThemePlugin::RedmineThemePatch unless ApplicationHelper.included_modules.include?(RedmineUserThemePlugin::RedmineThemePatch)
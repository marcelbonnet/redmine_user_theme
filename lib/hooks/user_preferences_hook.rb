module RedmineUserThemePlugin
	module Hooks
		class ViewHooks < Redmine::Hook::ViewListener
			render_on :view_my_account_preferences, partial: 'users/theme_plugin_preferences'
		end
	end
end
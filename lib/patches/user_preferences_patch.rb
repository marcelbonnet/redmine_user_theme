module RedmineUserThemePlugin
	module UserPreferencesPatch extend ActiveSupport::Concern
		
		
		def self.prepended(base)
        base.class_eval do
          if defined? safe_attributes
            safe_attributes :ui_theme
          end
        end

		end

		def ui_theme
			self[:ui_theme]
		end

		def ui_theme=(val)
			self[:ui_theme] = val
		end

		def ui_theme?
			ui_theme.blank?
		end
	end
end

UserPreference.send :prepend, RedmineUserThemePlugin::UserPreferencesPatch unless UserPreference.included_modules.include?(RedmineUserThemePlugin::UserPreferencesPatch)
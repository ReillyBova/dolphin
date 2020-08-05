
				include(BundleUtilities)
				message("Fixing up application bundle: /Users/rbova/GithubProjects/dolphin/Build/Binaries/Dolphin.app")
				message("(Note: This is only necessary to produce a redistributable binary.")
				message("To skip, pass -DSKIP_POSTPROCESS_BUNDLE=1 to cmake.)")
				set(BU_CHMOD_BUNDLE_ITEMS ON)
				fixup_bundle("/Users/rbova/GithubProjects/dolphin/Build/Binaries/Dolphin.app" "" "")
				file(INSTALL "/Users/rbova/GithubProjects/dolphin/Data/Sys"
					DESTINATION "/Users/rbova/GithubProjects/dolphin/Build/Binaries/Dolphin.app/Contents/Resources"
					)
				
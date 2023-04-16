#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList iOS
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyFiles1
					AppliesTo = 1
					Architecture = 0
					Target = 2
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vLi4vLi4vLi4vLi4vLi4vTGlicmFyeS9BcHBsaWNhdGlvbiUyMFN1cHBvcnQvUmV2ZWFsL1JldmVhbFNlcnZlci9SZXZlYWxTZXJ2ZXIueGNmcmFtZXdvcmsvaW9zLWFybTY0X3g4Nl82NC1zaW11bGF0b3IvUmV2ZWFsU2VydmVyLmZyYW1ld29yay8=
				End
				Begin CopyFilesBuildStep Extensions
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Plugins
					FolderItem = Li4vLi4vLi4vLi4vLi4veGNvZGUlMjBzYW1wbGVzL3Rlc3QvRGVyaXZlZERhdGEvQnVpbGQvUHJvZHVjdHMvRGVidWctaXBob25lc2ltdWxhdG9yL3Rlc3QuYXBwL1BsdWdJbnMvRXh0TmFtZUV4dGVuc2lvbi5hcHBleC8=
				End
				Begin CopyFilesBuildStep ExtensionIntents
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = 
					FolderItem = Li4vLi4vLi4vLi4vLi4veGNvZGUlMjBzYW1wbGVzL3Rlc3QvRGVyaXZlZERhdGEvQnVpbGQvUHJvZHVjdHMvRGVidWctaXBob25lc2ltdWxhdG9yL3Rlc3QuYXBwL0V4dE5hbWUuaW50ZW50ZGVmaW5pdGlvbg==
				End
				Begin SignProjectStep Sign
				End
			End
#tag EndBuildAutomation

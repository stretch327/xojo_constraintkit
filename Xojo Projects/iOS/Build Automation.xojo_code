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
					FolderItem = Li4vLi4vLi4vLi4vTGlicmFyeS9BcHBsaWNhdGlvbiUyMFN1cHBvcnQvUmV2ZWFsL1JldmVhbFNlcnZlci9SZXZlYWxTZXJ2ZXIueGNmcmFtZXdvcmsvaW9zLWFybTY0X3g4Nl82NC1zaW11bGF0b3IvUmV2ZWFsU2VydmVyLmZyYW1ld29yay8=
				End
				Begin SignProjectStep Sign
				End
			End
#tag EndBuildAutomation

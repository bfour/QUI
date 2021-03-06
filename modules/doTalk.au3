#cs

   Copyright 2010-2017 Florian Pollak (bfourdev@gmail.com)

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

#ce

#include <_pipe.au3>

Func _doTalk($i)

	If $notificationsOptions[$i][15]<>"" Then

		Local $talk=_commandLineInterpreter($notificationsOptions[$i][15],"string;repeat;pause;shake")

		Local $string=$talk[0][1]
			  $string = StringReplace($string,"%text%",$notificationsOptions[$i][0])
		Local $repeat=$talk[1][1]
		Local $pause=$talk[2][1]
		Local $shake=$talk[3][1]

		;avoid unexpected behaviour
		If $repeat=="" And $pause=="" Then $repeat=1
		If $pause<1000 Then $pause=1000

;backwd compat (string only)
		If $talk[0][1] = "" And $talk[1][1] == "" And $talk[2][1] == "" And $talk[3][1] == "" Then
			Local $string=$notificationsOptions[$i][15]
				  $string = StringReplace($string,"%text%",$notificationsOptions[$i][0])
			Local $repeat=1
			Local $pause=""
			Local $shake=""
		EndIf
;/backwd compat

		Local $talkData=_commandLineInterpreter($notificationsOptionsData[$i][15],"string;timer;repetitions")
		Local $previousString=$talkData[0][1]
		Local $timer=$talkData[1][1]
		Local $repetitions=$talkData[2][1]



		If	($previousString <> $string Or _
			(($timer=="" Or $pause=="" Or TimerDiff($timer)>$pause) _
			And ($repetitions=="" Or $repeat=="" Or $repetitions<$repeat)) _
			) Then

			; try via pipe
			_pipeSend("FP-QUITalk.exe", $string, 0)
			; on error, execute executable
			If @error Then _runEx(@ScriptDir&"\FP-QUITalk.exe "&$string)

			If $shake<>"" Then _shakeNotification($i)

			If $pause<>"" Then $timer=TimerInit() ;only store timer if relevant
			If $repeat<>"" Then $repetitions+=1 ;only store repetitions if relevant
			$notificationsOptionsData[$i][15]="<string>"&$string&"</string><timer>"&$timer&"</timer><repetitions>"&$repetitions&"</repetitions>"

		EndIf

	EndIf

EndFunc
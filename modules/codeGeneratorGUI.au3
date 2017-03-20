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

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=s:\sabox\grid\fp-qui\gui\codegeneratorgui.kxf
$codeGeneratorGUI = GUICreate("FP-QUICodeGeneratorGUI", 701, 481, -1, -1)
$Tab1 = GUICtrlCreateTab(8, 8, 683, 361)
GUICtrlSetResizing(-1, $GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
$TabSheet1 = GUICtrlCreateTabItem("Visuals")
$Label2 = GUICtrlCreateLabel("Text", 16, 48, 30, 20, $SS_CENTERIMAGE)
$textInput = GUICtrlCreateInput("", 72, 48, 449, 24)
$Label4 = GUICtrlCreateLabel("Background Color", 16, 152, 112, 20, $SS_CENTERIMAGE)
$textFontButton = GUICtrlCreateButton("Select Font", 528, 48, 83, 25, 0)
$bkColorSelectButton = GUICtrlCreateButton("Select", 208, 150, 75, 25, 0)
$Label6 = GUICtrlCreateLabel("Width", 16, 232, 38, 20, $SS_CENTERIMAGE)
$Label7 = GUICtrlCreateLabel("Height", 16, 264, 43, 20, $SS_CENTERIMAGE)
$widthInput = GUICtrlCreateInput("", 136, 232, 67, 24)
$heightInput = GUICtrlCreateInput("", 136, 264, 67, 24)
$Label8 = GUICtrlCreateLabel("Icon", 16, 80, 29, 20, $SS_CENTERIMAGE)
$iconInput = GUICtrlCreateInput("", 72, 80, 449, 24)
GUICtrlSetTip(-1, "You may use variables here.")
$iconBrowseButton = GUICtrlCreateButton("Browse", 528, 80, 83, 25, 0)
$Label9 = GUICtrlCreateLabel("X-Coordinate", 16, 296, 82, 20, $SS_CENTERIMAGE)
$xInput = GUICtrlCreateInput("", 136, 296, 67, 24)
$Label10 = GUICtrlCreateLabel("Y-Coordinate", 16, 328, 83, 20, $SS_CENTERIMAGE)
$yInput = GUICtrlCreateInput("", 136, 328, 67, 24)
$Label11 = GUICtrlCreateLabel("AVI", 16, 112, 25, 20)
$AVIInput = GUICtrlCreateInput("", 72, 112, 449, 24)
$AVIBrowseButton = GUICtrlCreateButton("Browse", 528, 112, 83, 25, 0)
$Label12 = GUICtrlCreateLabel("Opacity", 16, 184, 50, 20)
$bkColorDefaultButton = GUICtrlCreateButton("Default", 288, 150, 59, 25, 0)
$transDefaultButton = GUICtrlCreateButton("Default", 288, 184, 59, 25, 0)
$transInput = GUICtrlCreateInput("", 136, 184, 67, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$transPlusButton = GUICtrlCreateButton("+10", 208, 184, 35, 25, 0)
$transMinusButton = GUICtrlCreateButton("-10", 248, 184, 35, 25, 0)
$buttonListView = GUICtrlCreateListView("", 368, 152, 305, 86)
$widthDefaultButton = GUICtrlCreateButton("Default", 288, 232, 59, 25, 0)
$heightDefaultButton = GUICtrlCreateButton("Default", 288, 264, 59, 25, 0)
$xDefaultButton = GUICtrlCreateButton("Default", 288, 296, 59, 25, 0)
$yDefaultButton = GUICtrlCreateButton("Default", 288, 328, 59, 25, 0)
$buttonAddButton = GUICtrlCreateButton("Add Button", 368, 240, 99, 25, 0)
$buttonTextInput = GUICtrlCreateInput("", 368, 272, 153, 24)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonFontButton = GUICtrlCreateButton("Select Font", 528, 272, 83, 25, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonCommandInput = GUICtrlCreateInput("", 368, 304, 217, 24)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonBrowseButton = GUICtrlCreateButton("Browse", 592, 304, 83, 25, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonDeleteButton = GUICtrlCreateButton("Delete Button", 471, 240, 99, 25, 0)
$buttonEditButton = GUICtrlCreateButton("Edit Button", 575, 240, 99, 25, 0)
$textFontDefaultButton = GUICtrlCreateButton("Default", 616, 48, 59, 25, 0)
$iconDefaultButton = GUICtrlCreateButton("Default", 616, 80, 59, 25, 0)
$AVIDefaultButton = GUICtrlCreateButton("Default", 616, 112, 59, 25, 0)
$bkColorCombo = GUICtrlCreateCombo("", 136, 152, 67, 25)
GUICtrlSetData(-1, "blue|green|red|orange|white|black|gray|purple|yellow")
$buttonUpButton = GUICtrlCreateButton("Up", 680, 152, 43, 41, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonDownButton = GUICtrlCreateButton("Down", 680, 197, 43, 41, $BS_MULTILINE)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonFontDefaultButton = GUICtrlCreateButton("Default", 616, 272, 59, 25, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonSaveButton = GUICtrlCreateButton("Save", 592, 336, 83, 25, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonCancelButton = GUICtrlCreateButton("Cancel", 512, 336, 75, 25, 0)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonEditLabel = GUICtrlCreateLabel("Button-ID:", 368, 336, 61, 20, $SS_CENTERIMAGE)
GUICtrlSetState(-1, $GUI_HIDE)
$buttonIDLabel = GUICtrlCreateLabel("new", 432, 336, 28, 20, $SS_CENTERIMAGE)
GUICtrlSetState(-1, $GUI_HIDE)
$TabSheet2 = GUICtrlCreateTabItem("Audio")
$Label14 = GUICtrlCreateLabel("Text", 24, 72, 30, 20, $SS_CENTERIMAGE)
$talkStringInput = GUICtrlCreateInput("", 72, 72, 353, 24)
$talkTextButton = GUICtrlCreateButton("Use <text>", 432, 72, 83, 25, 0)
$talkRepeatInput = GUICtrlCreateInput("", 120, 104, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$talkRepeatDefaultButton = GUICtrlCreateButton("Default", 168, 104, 75, 25, 0)
$talkShakeCheckbox = GUICtrlCreateCheckbox("Shake", 544, 57, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$Label5 = GUICtrlCreateLabel("repeat x times", 24, 104, 87, 20, $SS_CENTERIMAGE)
$Label13 = GUICtrlCreateLabel("repeat after x ms", 280, 104, 102, 20, $SS_CENTERIMAGE)
$talkPauseInput = GUICtrlCreateInput("", 392, 104, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$talkPauseDefaultButton = GUICtrlCreateButton("Default", 440, 104, 75, 25, 0)
$audioInput = GUICtrlCreateInput("", 72, 176, 353, 24)
$Label15 = GUICtrlCreateLabel("Sound", 24, 176, 43, 20, $SS_CENTERIMAGE)
$audioBrowseButton = GUICtrlCreateButton("Browse", 432, 176, 83, 25, 0)
$Label16 = GUICtrlCreateLabel("repeat x times", 24, 208, 87, 20, $SS_CENTERIMAGE)
$audioRepeatInput = GUICtrlCreateInput("", 120, 208, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$audioRepeatDefaultButton = GUICtrlCreateButton("Default", 168, 208, 75, 25, 0)
$Label17 = GUICtrlCreateLabel("repeat after x ms", 280, 208, 102, 20, $SS_CENTERIMAGE)
$audioPauseInput = GUICtrlCreateInput("", 392, 208, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$audioPauseDefaultButton = GUICtrlCreateButton("Default", 440, 208, 75, 25, 0)
$Group1 = GUICtrlCreateGroup("Text To Speech", 16, 40, 665, 105)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Sound", 16, 148, 665, 105)
$audioShakeCheckbox = GUICtrlCreateCheckbox("Shake", 544, 164, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$audioMaxVolCheckbox = GUICtrlCreateCheckbox("Maximize Volume", 544, 192, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$audioOverwriteMuteCheckbox = GUICtrlCreateCheckbox("Force Unmute", 544, 220, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("OnBoard Beep", 16, 256, 665, 105)
$Label18 = GUICtrlCreateLabel("Text", 28, 285, 30, 20, $SS_CENTERIMAGE)
$beepInput = GUICtrlCreateInput("", 76, 285, 353, 24)
$beepHelpButton = GUICtrlCreateButton("Help", 436, 285, 83, 25, 0)
$beepShakeCheckBox = GUICtrlCreateCheckbox("shake", 544, 273, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$beepPauseDefaultButton = GUICtrlCreateButton("Default", 444, 317, 75, 25, 0)
$beepPauseInput = GUICtrlCreateInput("", 396, 317, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Label19 = GUICtrlCreateLabel("repeat after x ms", 284, 317, 102, 20, $SS_CENTERIMAGE)
$beepRepeatDefaultButton = GUICtrlCreateButton("Default", 172, 317, 75, 25, 0)
$beepRepeatInput = GUICtrlCreateInput("", 124, 317, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Label20 = GUICtrlCreateLabel("repeat x times", 28, 317, 87, 20, $SS_CENTERIMAGE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$TabSheet3 = GUICtrlCreateTabItem("Behaviour")
$Label3 = GUICtrlCreateLabel("Disappear after x milliseconds", 24, 50, 184, 20, $SS_CENTERIMAGE)
$delayInput = GUICtrlCreateInput("", 248, 50, 153, 24)
$Label21 = GUICtrlCreateLabel("Disappear when this process exists", 24, 82, 214, 20, $SS_CENTERIMAGE)
$untilProcessExistsInput = GUICtrlCreateInput("", 248, 82, 153, 24)
$delayDefaultButton = GUICtrlCreateButton("Default", 404, 50, 59, 25, 0)
$untilProcessExistsDefaultButton = GUICtrlCreateButton("Default", 404, 82, 59, 25, 0)
$Label22 = GUICtrlCreateLabel("Disappear when this process closes", 24, 114, 220, 20, $SS_CENTERIMAGE)
$untilProcessCloseInput = GUICtrlCreateInput("", 248, 114, 153, 24)
$untilProcessCloseDefaultButton = GUICtrlCreateButton("Default", 404, 114, 59, 25, 0)
$focusCheckbox = GUICtrlCreateCheckbox("grab focus", 532, 213, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$replaceVarCheckbox = GUICtrlCreateCheckbox("replace variables", 532, 237, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$runBrowseButton = GUICtrlCreateButton("Browse", 432, 296, 83, 25, 0)
$runPauseDefaultButton = GUICtrlCreateButton("Default", 440, 328, 59, 25, 0)
$runPauseInput = GUICtrlCreateInput("", 392, 328, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$Label23 = GUICtrlCreateLabel("repeat after x ms", 280, 328, 102, 20, $SS_CENTERIMAGE)
$runInput = GUICtrlCreateInput("", 96, 296, 329, 24)
$Label24 = GUICtrlCreateLabel("Command", 24, 296, 66, 20, $SS_CENTERIMAGE)
$Label25 = GUICtrlCreateLabel("repeat x times", 24, 328, 87, 20, $SS_CENTERIMAGE)
$runRepeatInput = GUICtrlCreateInput("", 120, 328, 43, 24, BitOR($ES_AUTOHSCROLL,$ES_NUMBER))
$runRepeatDefaultButton = GUICtrlCreateButton("Default", 168, 328, 59, 25, 0)
$Group4 = GUICtrlCreateGroup("", 16, 272, 665, 89)
$runShellOpenCheckbox = GUICtrlCreateRadio("Shell Open", 564, 308, 113, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
$runInternalCheckbox = GUICtrlCreateRadio("Internal", 564, 332, 113, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
$runCommandCheckbox = GUICtrlCreateRadio("Command", 564, 284, 113, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$noDoubleCheckbox = GUICtrlCreateCheckbox("force unique", 532, 189, 129, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$untilClickIncludeButtonCheckbox = GUICtrlCreateCheckbox("Include clicks on buttons", 468, 142, 209, 25, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$WS_TABSTOP))
$untilClickPrimRadio = GUICtrlCreateRadio("Disappear on primary click", 468, 46, 209, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
$untilClickSecRadio = GUICtrlCreateRadio("Disappear on secondary click", 468, 70, 209, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
$untilClickAnyRadio = GUICtrlCreateRadio("Disappear on any mouse-click", 468, 94, 209, 25, BitOR($BS_AUTORADIOBUTTON,$BS_PUSHLIKE))
$Label26 = GUICtrlCreateLabel("Execute on primary click", 20, 182, 148, 20, $SS_CENTERIMAGE)
$onClickPrimInput = GUICtrlCreateInput("", 201, 182, 164, 24)
$onClickPrimDefaultButton = GUICtrlCreateButton("Default", 372, 182, 59, 25, 0)
$Label27 = GUICtrlCreateLabel("Execute on secondary click", 20, 213, 167, 20, $SS_CENTERIMAGE)
$onClickSecInput = GUICtrlCreateInput("", 201, 213, 164, 24)
$Label28 = GUICtrlCreateLabel("Execute on any click", 20, 244, 125, 20, $SS_CENTERIMAGE)
$onClickAnyInput = GUICtrlCreateInput("", 201, 244, 164, 24)
$onClickSecDefaultButton = GUICtrlCreateButton("Default", 372, 213, 59, 25, 0)
$onClickAnyDefaultButton = GUICtrlCreateButton("Default", 372, 244, 59, 25, 0)
$onClickIncludeButtonCheckbox = GUICtrlCreateCheckbox("Include clicks on buttons", 434, 182, 69, 87, BitOR($BS_CHECKBOX,$BS_AUTOCHECKBOX,$BS_PUSHLIKE,$BS_MULTILINE,$WS_TABSTOP))
$Group5 = GUICtrlCreateGroup("", 16, 35, 665, 136)
$untilClickDefaultButton = GUICtrlCreateButton("Default", 468, 118, 209, 25, $BS_MULTILINE)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group6 = GUICtrlCreateGroup("", 16, 171, 491, 101)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group7 = GUICtrlCreateGroup("", 512, 171, 169, 101)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
$previewButton = GUICtrlCreateButton("Preview", 600, 416, 91, 57, 0)
$codeEdit = GUICtrlCreateEdit("", 8, 376, 513, 73, BitOR($ES_AUTOVSCROLL,$ES_WANTRETURN,$WS_VSCROLL))
$statusLabel = GUICtrlCreateLabel("status", 8, 456, 513, 20, $SS_CENTERIMAGE)
$copyButton = GUICtrlCreateButton("Copy Code to Clipboard", 528, 376, 163, 33, $BS_MULTILINE)
$deletePreviewButton = GUICtrlCreateButton("Delete Preview", 528, 416, 67, 57, $BS_MULTILINE)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

_GUICtrlListView_AddColumn($buttonListView, "ID", 30)
_GUICtrlListView_AddColumn($buttonListView, "label")
_GUICtrlListView_AddColumn($buttonListView, "command")
_GUICtrlListView_AddColumn($buttonListView, "font")
_GUICtrlListView_AddColumn($buttonListView, "font size")
_GUICtrlListView_AddColumn($buttonListView, "font color")

GUICtrlSetState($runCommandCheckBox, $GUI_CHECKED)
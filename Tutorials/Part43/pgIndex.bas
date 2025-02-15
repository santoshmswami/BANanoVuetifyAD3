﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public BANano As BANano
	Private vappbar As VueElement
	Private menubutton As VueElement
	Private menuicon As VueElement
	Private menulist As VueElement
	Private menulistitem As VueElement
	Private menulistitemtitle As VueElement
	Private menutemplate As VueElement
	Private menutext As VueElement
	Private vmenu As VueElement
	Private vappdrawer As VueElement
	Private vappbarnavicon As VueElement
	Private vapp As VueElement
	Private appsnackbar As VueElement
End Sub

'#if css
'	.border {
'  		border-left: 6px solid #0ba518;
'	}
'	
'	.v-list .v-list-item:hover {
'  		background-color: rgba(96, 125, 139, 0.4);
'	}
'
'	.v-list .v-list-item {
'  		border-radius: 6px;
'  		margin: 3px;
'	}
'#End If

Sub Init
	'initialize the app
	vuetify.Initialize(Me, "inspire")
	
	'initialize the snack bar
	BANano.LoadLayout(vuetify.apptemplatename, "vbaseline")
	'
	'BANano.GetElement("#body").AddClass("md-scrollbar")
	AddRouters
		
	Dim appDialog As VueElement = vuetify.AddDialogAlertPrompt(Me, "vapp", "inspire", True, 400, "primary", "error")
	vuetify.BindVueElement(appDialog)
	
	vuetify.BindVueElement(appsnackbar)
	'initialize the snackbar
	vuetify.SnackBarInitialize
	
	'load the menu to a placeholder
	BANano.LoadLayout(vuetify.PlaceHolderName, "vbuttonmenu")
	'define the menu list
	menulistitem.vfor = "item in links"
	menulistitem.Key = ":item.title"
	menulistitem.To = ":item.to"
	menulistitem.ActiveClass = "border"
	menulistitemtitle.Caption = "{{ item.title }}"
	
	'add the menu to the v-app-bar
	vappbar.AppendPlaceHolder
	'add logout button to v-app-bar
	BANano.LoadLayout(vuetify.PlaceHolderName, "vbuttoniconright")
	vappbar.AppendPlaceholder
	'
	'bind the drawer
	vuetify.BindVueElement(vappdrawer)
	'bind the hamburger
	vuetify.BindVueElement(vappbarnavicon)
	'
	'add the drawer profile
	BANano.LoadLayout(vuetify.PlaceHolderName, "vdrawerprofile")
	vappdrawer.AppendPlaceHolder
	
	'inject a list to the vapp drawer
	Dim drwlist As VueElement = vuetify.AddList(Me, vappdrawer.id, "drwlist", True, False, True, Null)
	'initialize the listview options, we use the default options to source the data
	Dim drwlistOptions As ListViewItemOptions = vuetify.NewListViewItemOptions
	'set the data source of the list items
	drwlistOptions.dataSource = "links"
	'
	'add the group template to the list
	drwlist.AddListViewGroupTemplate(0, drwlistOptions)
	'
	drwlist.ClearItems
	drwlist.AddItemParentChild("", "home", "mdi-home", "", "Home", "/")
	
	drwlist.AddItemParentChild("", "components", "mdi-cog", "", "Components", "")
	drwlist.AddItemParentChild("components", ViewAlert.name, "",  "", "Alert", ViewAlert.path)
	drwlist.AddItemParentChild("components", ViewAvatars.name, "", "", "Avatars", ViewAvatars.path)
	drwlist.AddItemParentChild("components", ViewBadges.name, "", "", "Badges", ViewBadges.path)
	drwlist.AddItemParentChild("components", ViewButtons.name,  "", "", "Buttons", ViewButtons.path)
	drwlist.AddItemParentChild("components", ViewChips.name, "", "", "Chips", ViewChips.path)
	drwlist.AddItemParentChild("components", ViewImage.name, "", "", "Images", ViewImage.path)
	drwlist.AddItemParentChild("components", ViewProgress.name, "", "", "Progress Linear & Circular", ViewProgress.path)
	drwlist.AddItemParentChild("components", ViewTable.name, "", "", "Tables", ViewTable.path)
	
	drwlist.AddItemParentChild("", "nav", "mdi-cog", "", "Navigation", "")
	drwlist.AddItemParentChild("nav", ViewList.name, "", "", "Lists", ViewList.path)
	drwlist.AddItemParentChild("nav", ViewParallax.name, "", "", "Parallax", ViewParallax.path)
	drwlist.AddItemParentChild("nav", ViewStepper.name, "", "", "Stepper", ViewStepper.path)
	drwlist.AddItemParentChild("nav", ViewTabs.name, "", "", "Tabs", ViewTabs.path)
	drwlist.AddItemParentChild("nav", ViewExpansionPanels.name, "", "", "Expansion Panels", ViewExpansionPanels.path)
	
	drwlist.AddItemParentChild("", "grid", "mdi-cog", "", "Grid", "")
	drwlist.AddItemParentChild("grid", ViewGrid.name, "", "", "Grids", ViewGrid.path)
	drwlist.AddItemParentChild("grid", ViewGrid2.name, "", "", "Grids 2", ViewGrid2.path)
	drwlist.AddItemParentChild("grid", ViewManualGrid.name, "", "", "Manual Grid", ViewManualGrid.path)
	'
	drwlist.AddItemParentChild("", "mforms", "mdi-cog", "", "Form Inputs", "")
	drwlist.AddItemParentChild("mforms", ViewDatePicker.name, "", "", "Date Picker", ViewDatePicker.path)
	drwlist.AddItemParentChild("mforms", ViewTextFields.name, "", "", "Text Fields", ViewTextFields.path)
	drwlist.AddItemParentChild("mforms", ViewSelects.name, "", "", "Selects", ViewSelects.path)
	drwlist.AddItemParentChild("mforms", ViewFormControls.name, "", "", "Form Controls", ViewFormControls.path)
	drwlist.AddItemParentChild("mforms", ViewRadioGroup.name, "", "", "Radio Groups", ViewRadioGroup.path)
	drwlist.AddItemParentChild("mforms", ViewSwitches.name, "", "", "Switches", ViewSwitches.path)
	drwlist.AddItemParentChild("mforms", ViewTextArea.name, "", "", "Text Area", ViewTextArea.path)
	drwlist.AddItemParentChild("mforms", ViewCheckBoxes.name, "", "", "Check Boxes", ViewCheckBoxes.path)
	drwlist.AddItemParentChild("mforms", ViewFileInput.name, "", "", "File Inputs", ViewFileInput.path)
	drwlist.AddItemParentChild("mforms", ViewSliders.name, "", "", "Sliders", ViewSliders.path)
	drwlist.AddItemParentChild("mforms", ViewRating.name, "", "", "Rating", ViewRating.path)
	'
	drwlist.AddItemParentChild("", "dialogs", "mdi-database", "", "Dialogs", "")
	drwlist.AddItemParentChild("dialogs", ViewDialog.name, "", "", "Dialogs", ViewDialog.path)
	drwlist.AddItemParentChild("dialogs", ViewPageDialog.name, "", "", "Page Dialogs", ViewPageDialog.path)
	drwlist.AddItemParentChild("dialogs", ViewInputDialog.name, "", "", "Input Dialogs", ViewInputDialog.path)
		
	drwlist.AddItemParentChild("", "database", "mdi-database", "", "Databases", "")
	drwlist.AddItemParentChild("database", ViewPHPSQLite.name, "", "", "SQLite PHP", ViewPHPSQLite.path)
	drwlist.AddItemParentChild("database", ViewMySQL.name, "", "", "MySQL PHP", ViewMySQL.path)
	drwlist.AddItemParentChild("database", ViewMSSQL.name, "", "", "MSSQL PHP (PDO)", ViewMSSQL.path)
	drwlist.AddItemParentChild("database", ViewBANanoSQL.name, "", "", "IndexedDB", ViewBANanoSQL.path)
	'drwlist.AddItemParentChild("database", ViewContacts.name, "", "", "Contacts Example", ViewContacts.path)
	'
	drwlist.AddItemParentChild("", "firebase", "mdi-firebase", "", "FireBase", "")
	drwlist.AddItemParentChild("firebase", ViewFirebase.name, "", "", "Firebase Messaging", ViewFirebase.path)
	
	drwlist.AddItemParentChild("", "help", "mdi-help-circle-outline", "", "Help", "")
	drwlist.AddItemParentChild("help", "about", "mdi-information-outline", "", "About", "/about")
	
	'convert items to a tree structure
	Dim listTree As List = drwlist.ListViewToTree
	drwlist.SetData("links", listTree)
		
	'bind the template
	vuetify.BindVueElement(drwlist)
	'close the drawer
	vuetify.SetData("appdrawer", False)
	'render the ux
	vuetify.Serve
End Sub

'a list item on the drawer is clicked
Sub drwlist_click(item As String)
	'vuetify.ShowSnackBarSuccess(item)
End Sub

Sub AddRouters
	'ViewContacts.Initialize
	'ViewCRUDBuilder.Initialize 
	ViewFirebase.Initialize 
	ViewBANanoSQL.Initialize 
	ViewMSSQL.Initialize 
	ViewMySQL.Initialize 
	ViewPHPSQLite.Initialize 
	ViewInputDialog.Initialize 
	ViewImage.Initialize 
	ViewHome.Initialize 
	ViewAbout.Initialize 
	ViewQuestions.Initialize 
	ViewAvatars.Initialize
	ViewAlert.Initialize  
	ViewDialog.Initialize 
	ViewTextFields.Initialize 
	ViewBadges.Initialize 
	ViewDatePicker.Initialize 
	ViewButtons.Initialize 
	ViewTable.Initialize 
	ViewSelects.Initialize 
	ViewGrid.Initialize 
	ViewGrid2.Initialize 
	ViewFormControls.Initialize
	ViewPageDialog.Initialize 
	ViewRadioGroup.Initialize 
	ViewSwitches.Initialize 
	ViewTextArea.Initialize 
	ViewCheckBoxes.Initialize 
	ViewFileInput.Initialize 
	ViewSliders.Initialize 
	ViewChips.Initialize 
	ViewList.Initialize 
	ViewParallax.Initialize
	ViewRating.Initialize 
	ViewProgress.Initialize 
	ViewManualGrid.Initialize 
	ViewStepper.Initialize 
	ViewTabs.Initialize  
	ViewExpansionPanels.Initialize 
End Sub

Sub vappbarnavicon_ClickStop (e As BANanoEvent)
	'toggle drawer visibility
	vuetify.Toggle("appdrawer")
End Sub

Sub inspireok_Click (e As BANanoEvent)
	'hide the active dialog box
	vuetify.HideDialog
	'get the dialog process being executed
	Dim sconfirm As String = vuetify.Confirm
	'process accordingly
	Select Case sconfirm
	Case "alert"
	Case "dialog_age"
		'get the prompt value
		Dim svalue As String = vuetify.GetPromptValue
		'run a sub on originating code module
		BANano.CallSub(ViewDialog, "GetAge", Array(svalue))	
	Case Else		
		vuetify.ShowSnackBarSuccess(sconfirm & "-ok")
	End Select
End Sub

Sub inspirecancel_Click (e As BANanoEvent)
	vuetify.HideDialog
	Dim sconfirm As String = vuetify.Confirm
	vuetify.ShowSnackBarError(sconfirm & "-cancel")
End Sub
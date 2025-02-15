﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Private BANano As BANano 'ignore
	Public mName As String 'ignore
	Public mCallBack As Object 'ignore
	'
	Public jsString As BANanoObject
	Public jsNumber As BANanoObject
	Public jsBoolean As BANanoObject
	Public jsArray As BANanoObject
	Public jsObject As BANanoObject
	
	Private data As Map
	Private opt As Map
	Private methods As Map
	Private computed As Map
	Private watches As Map
	Private filters As Map
	Private components As Map
	Private mprops As Map
	Private query As Map
	Public Template As VueElement
	Public Path As String = ""
	Public TemplateID As String
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	Public Here As String = "#placeholder"
	Public meta As Map
		'
	Private dialogShow As String 
	Private dialogTitle As String
	Private dialogMessage As String
	Private dialogcanceltitle As String 
	Private dialogoktitle As String 
	Private dialogokshow As String 
	Private dialogcancelshow As String
	Private dialogwidth As String    'ignore
	Private dialogpersistent As String   'ignore
	Private dialogokcolor As String   'ignore
	Private dialogcancelcolor As String  'ignore
	Private dialogpromptlabel As String
	Private dialogpromptvalue As String
	Private dialogprompthint As String
	Private dialogpromptplaceholder As String
	Private dialogpromptshow As String
	Private dialogtexttype As String
	Public vuetify As VuetifyApp
	Public refs As BANanoObject
End Sub

'return ths vue instance
Sub Page As VueElement
	Return GetVueElement(mCallBack, Here)
End Sub

Sub AddContainer(contID As String, bFluid As Boolean) As VueElement
	Dim elx As VueElement = Page.AddContainer(contID, bFluid)
	Return elx
End Sub

'get a tab item
Sub GetTabItem(elID As String) As VueElement
	Dim tabID As String = $"tab${elID}"$
	tabID = tabID.tolowercase
	Dim ti As VueElement
	ti.Initialize(mCallBack, tabID, tabID)
	Return ti
End Sub

'get a tab icon
Sub GetTabIcon(elID As String) As VueElement
	Dim tabID As String = $"${elID}icon"$
	tabID = tabID.tolowercase
	Dim ti As VueElement
	ti.Initialize(mCallBack, tabID, tabID)
	Return ti
End Sub

'click a reference
Sub Click(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'focus on a ref
Sub SetFocus(refID As String)
	Try
		refID = refID.tolowercase
		refs.GetField(refID).RunMethod("focus", Null)
	Catch
		Log(LastException)
	End Try
End Sub

'reset a form
Sub FormReset(formName As String)
	formName = formName.ToLowerCase
	refs.GetField(formName).runmethod("reset", Null)
End Sub

'resetValidation a form
Sub FormResetValidation(formName As String)
	formName = formName.ToLowerCase
	refs.GetField(formName).runmethod("resetValidation", Null)
End Sub

'validate a form
Sub FormValidate(formName As String) As Boolean
	formName = formName.ToLowerCase
	Dim b As Boolean = refs.GetField(formName).runmethod("validate", Null).Result
	Return b
End Sub

Sub DialogValidate(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormValidate(dialogContainerID)
End Sub

Sub DialogResetValidation(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormResetValidation(dialogContainerID)
End Sub

Sub DialogReset(dlgID As String) As Boolean
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return FormReset(dialogContainerID)
End Sub


Public Sub Initialize (CallBack As Object, Name As String) As VueComponent
	mName = Name.tolowercase
	mCallBack = CallBack
	opt.Initialize
	data.Initialize
	mprops.Initialize
	methods.Initialize
	computed.Initialize
	watches.Initialize
	filters.Initialize
	query.Initialize
	components.initialize
	Path = $"/${mName}"$
	'
	jsString.Initialize("String")
	jsNumber.Initialize("Number")
	jsBoolean.Initialize("Boolean")
	jsArray.Initialize("Array")
	jsObject.Initialize("Object")
	meta.Initialize 
	'
	'add the placeholder div to the app
	TemplateID = $"${mName}ph"$
	Template.Initialize(mCallBack, TemplateID, "template")
	'
	dialogShow = $"${mName}show"$
	dialogTitle = $"${mName}caption"$
	dialogMessage = $"${mName}message"$
	dialogcanceltitle = $"${mName}canceltitle"$
	dialogoktitle = $"${mName}oktitle"$
	dialogokshow = $"${mName}okshow"$
	dialogcancelshow = $"${mName}cancelshow"$
	dialogwidth = $"${mName}width"$
	dialogpersistent = $"${mName}persistent"$
	dialogpromptlabel = $"${mName}promptlabel"$
	dialogpromptvalue = $"${mName}promptvalue"$
	dialogprompthint = $"${mName}prompthint"$
	dialogpromptplaceholder = $"${mName}promptplaceholder"$
	dialogpromptshow = $"${mName}promptshow"$
	dialogtexttype = $"${mName}type"$
	
	getPlaceHolderNode.empty
	getAppendHolderNode.empty
	'
	SetMethod(Me, "nicedate", Null)
	SetMethod(Me, "nicetime", Null)
	SetMethod(Me, "nicemoney", Null)
	SetMethod(Me, "nicefilesize", Null)
	SetMethod(Me, "thousands", Null)
	Return Me
End Sub


Sub AddMsgBox(bPersistent As Boolean, width As Int, okColor As String, cancelColor As String) As VueElement
	'**** this page needs to use its own dialog, lets add it
	Dim fbDialog As VueElement = vuetify.AddDialogAlertPrompt(mCallBack, Here, mName, bPersistent, width, okColor, cancelColor)
	BindVueElement(fbDialog)
	Return fbDialog
End Sub

private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub

Sub GetVueElement(Module As Object, elID As String) As VueElement
	elID = CleanID(elID)
	If BANano.Exists(elID) Then
		Dim ve As VueElement
		ve.Initialize(Module, elID, elID)
		Return ve
	Else
		Return Null
	End If
End Sub

Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'update the title of the table
Sub TableSetTitle(tableName As String, Title As String)
	Dim titleX As String = $"${tableName}titletext"$
	SetData(titleX, Title)
End Sub

'return the dialog card title
Sub DialogCardTitle(dlgID As String) As VueElement
	Dim dialogTitleID As String = $"${dlgID}title"$
	Return GetVueElement(mCallBack, dialogTitleID)
End Sub

'return the dialog card container
Sub DialogContainer(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}container"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

'return the dialog card container
Sub DialogForm(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}form"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

Sub DialogUpdateTitle(dlgID As String, title As String)
	Dim dlgTitle As String = $"${dlgID}caption"$
	SetData(dlgTitle, title)
End Sub

Sub DialogCancelShowHide(eliD As String, b As Boolean)
	Dim dialogcancelshow As String = $"${eliD}cancelshow"$
	SetData(dialogcancelshow, b)
End Sub

Sub DialogOkShowHide(elID As String, b As Boolean)
	Dim dialogokshow As String = $"${elID}okshow"$
	SetData(dialogokshow, b)
End Sub

'return the dialog card title
Sub DialogActions(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}actions"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

Sub DialogOK(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}ok"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub

'return the dialog card title
Sub DialogCancel(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}cancel"$
	Return GetVueElement(mCallBack, dialogContainerID)
End Sub



'show confirm dialog
Sub ShowConfirm(process As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, Message)
	SetData(dialogoktitle, ConfirmText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptshow, False)
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

'return a date with day, month year name
Sub NiceDate(sdate As String) As String				'ignoredeadcode
	Return FormatDisplayDate(sdate, "ddd, DD MMM YYYY")
End Sub

Sub NiceTime(stime As String) As String				'ignoredeadcode
	Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm:ss")
End Sub


Sub NiceMoney(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0.00")
End Sub

Sub Thousands(smoney As String) As String				'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0")
End Sub


Sub NiceFileSize(fsx As String) As String				'ignoredeadcode
	Return FormatFileSize(fsx)
End Sub

Sub FormatFileSize(Bytes As Float) As String			'ignoredeadcode		'ignoredeadcode
	If BANano.IsNull(Bytes) Or BANano.IsUndefined(Bytes) Then
		Bytes = 0
	End If
	Bytes = BANano.parsefloat(Bytes)
	Try
		Private Unit() As String = Array As String(" Byte", " KB", " MB", " GB", " TB", " PB", " EB", " ZB", " YB")
		If Bytes = 0 Then
			Return "0 Bytes"
		Else
			Private Po, Si As Double
			Private I As Int
			Bytes = Abs(Bytes)
			I = Floor(Logarithm(Bytes, 1024))
			Po = Power(1024, I)
			Si = Bytes / Po
			Return NumberFormat(Si, 1, 3) & Unit(I)
		End If
	Catch
		Return "0 Bytes"
	End Try
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String			'ignoredeadcode
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

Sub ShowAlert(process As String, title As String, Message As String, OkTitle As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogShow, True)
	SetData(dialogTitle, title)
	SetData(dialogMessage, Message)
	SetData(dialogoktitle, OkTitle)
	SetData(dialogokshow, True)
	SetData(dialogcancelshow, False)
	SetData(dialogpromptshow, False)
End Sub

'remove an item where
Sub SetDataRemoveWhere(dsname As String, prop As String, value As String)
	dsname = dsname.tolowercase
	Dim cl As List = GetData(dsname)
	'
	Dim nflds As List
	nflds.Initialize
	For Each fldm As Map In cl
		Dim ofldname As String = fldm.Get(prop)
		If ofldname.EqualsIgnoreCase(value) Then
		Else
			nflds.Add(fldm)
		End If
	Next
	SetData(dsname, nflds)
End Sub


'get the placeholder node
Sub getPlaceHolderNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#placeholder")
	Return el
End Sub

'get the appendholder node
Sub getAppendHolderNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#appendholder")
	Return el
End Sub


'get the template node
Sub getTemplateNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#apptemplate")
	Return el
End Sub

'show confirm dialog
Sub ShowPrompt(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, "")
	SetData(dialogoktitle, OkText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptlabel, Label)
	SetData(dialogpromptplaceholder, Placeholder)
	SetData(dialogprompthint, Hint)
	SetData(dialogpromptvalue, DefaultValue)
	SetData(dialogpromptshow, True)
	SetData(dialogtexttype, "text")
End Sub

'show confirm dialog
Sub ShowPrompt1(process As String, InputType As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dialogTitle, Title)
	SetData(dialogMessage, "")
	SetData(dialogoktitle, OkText)
	SetData(dialogokshow, True)
	SetData(dialogcanceltitle, CancelText)
	SetData(dialogcancelshow, True)
	SetData(dialogShow, True)
	SetData(dialogpromptlabel, Label)
	SetData(dialogpromptplaceholder, Placeholder)
	SetData(dialogprompthint, Hint)
	SetData(dialogpromptvalue, DefaultValue)
	SetData(dialogpromptshow, True)
	SetData(dialogtexttype, InputType)
End Sub

'get prompt value
Sub getPromptValue As String
	Dim sapppromptvalue As String = GetData(dialogpromptvalue)
	sapppromptvalue = sapppromptvalue.trim
	Return sapppromptvalue
End Sub

'query string for router path
Sub AddQuery(k As String, v As String)
	query.Put(k, v)
End Sub

'add html of component to app and this binds events and states
Sub BindVueElement(el As VueElement)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub


'add html of component to app and this binds events and states
Sub BindVueTable(el As VueTable)
	el.refresh
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

Sub BindVueGMap(el As VueGMap)
	Dim mbindings As Map = el.bindings
	Dim mmethods As Map = el.methods
	'apply the binding for the control
	For Each k As String In mbindings.Keys
		Dim v As Object = mbindings.Get(k)
		Select Case k
		Case "key"
		Case Else
			SetData(k, v)
		End Select
	Next
	'apply the events
	For Each k As String In mmethods.Keys
		Dim cb As BANanoObject = mmethods.Get(k)
		SetCallBack(k, cb)
	Next
End Sub

Sub BindVueGCharts(el As VueGCharts)
	BindVueElement(el.GChart)
End Sub

Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

'import a component, the module should have the Initilize method without parameters
Sub Import(comp As VueComponent)
	Dim compname As String = comp.mName
	compname = compname.tolowercase
	If components.ContainsKey(compname) = True Then Return
	Dim compx As Map = comp.Component
	components.Put(compname, compx)
End Sub

Sub AddElement1(elTag As String, elID As String, elText As String, elprops As Map, mstyles As Map, lclasses As List, loose As List)
	Template.AddElement(elID, elTag, elprops, mstyles, lclasses, loose, elText)
End Sub

Sub AddCustomElement(eltag As String, elid As String, elprops As Map, eltext As String)
	Template.AddElement(elid, eltag, elprops, Null, Null, Null, eltext)
End Sub

'import a bananoobject component
Sub ImportBO(compName As String, comp As BANanoObject)
	If components.ContainsKey(compName) = True Then Return
	components.Put(compName, comp)
End Sub

'add an element inside the placeholder
Sub AddElement(ve As VueElement)
	Template.Append(ve.ToString)
	BindVueElement(ve)
End Sub

'add an element inside the placeholder
Sub AddHTML(html As String)
	Template.Append(html)
End Sub

'set mounted
Sub SetMounted(Module As Object,methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim mounted As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("mounted", mounted)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set updated
Sub SetUpdated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim updated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("updated", updated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set beforemount
Sub SetBeforeMount(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim beforeMount As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeMount", beforeMount)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set beforeupdate
Sub SetBeforeUpdate(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim beforeUpdate As Boolean = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeUpdate", beforeUpdate)
	SetMethod(Module, methodName,args)
	Return Me
End Sub

'set before destroy
Sub SetBeforeDestroy(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim beforeDestroy As Boolean = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeDestroy", beforeDestroy)
	SetMethod(Module, methodName, args)
	Return Me
End Sub


'set before created
Sub SetBeforeCreate(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim beforeCreate As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("beforeCreate", beforeCreate)
	SetMethod(Module, methodName, args)
	Return Me
End Sub


'set created
Sub SetCreated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim created As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("created", created)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set destroyed
Sub SetDestroyed(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim destroyed As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("destroyed", destroyed)
	SetMethod(Module, methodName, args)
	Return Me
End Sub


'set activated
Sub SetActivated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim activated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("activated", activated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

Sub AddProperty1(propName As String, propType As BANanoObject, propDefault As Object, propRequired As Boolean)
	Dim mprop As Map = CreateMap()
	If BANano.IsNull(propType) = False Then mprop.Put("type", propType)
	If BANano.IsNull(propDefault) = False Then mprop.Put("default", propDefault)
	If BANano.IsNull(propRequired) = False Then mprop.Put("required", propRequired)
	mprops.Put(propName, mprop)
End Sub


'set deactivated
Sub SetDeActivated(Module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return Me
	Dim deactivated As BANanoObject = BANano.CallBack(Module, methodName, args)
	opt.Put("deactivated", deactivated)
	SetMethod(Module, methodName, args)
	Return Me
End Sub

'set the path for router
Sub SetPath(sPath As String) As VueComponent
	Path = sPath
	Return Me
End Sub

' returns the tag id
public Sub getID() As String
	Return mName
End Sub

'change the id of the element, ONLY execute this after a manual Initialize
Sub setID(varText As String) As VueComponent
	mName = varText
	Return Me
End Sub

'update the state
Sub SetData(prop As String, value As Object) As VueComponent
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
		prop = ""
	End If
	If prop = "" Then Return Me
	prop = prop.tolowercase
	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
	If dotPos >= 0 Then
		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
		Dim oEL As Map
		If data.ContainsKey(pEL) Then
			oEL = data.Get(pEL)
		Else
			oEL.Initialize
		End If	
		oEL.Put(cEL, value)
		data.Put(pEL, oEL) 
	Else
		data.put(prop, value)
	End If
	Return Me
End Sub

'add item at end of the list
Sub SetDataPush(listName As String, item As Object)
	listName = listName.ToLowerCase
	Dim dat As BANanoObject = data
	dat.GetField(listName).RunMethod("push", item)
End Sub

'splice an array, add item at a position
Sub SetDataSplice(lstname As String, pos As Int, removeHowMany As Int, obj As Object)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany, obj))
End Sub

'splice an array, remove an item at a position
Sub SetDataSpliceRemove(lstname As String, pos As Int, removeHowMany As Int)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany))
End Sub

'slice an array
Sub GetDataSlice(lstname As String, startPos As Int) As List
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	Dim lst As List = dat.GetField(lstname).RunMethod("slice", Array(startPos)).Result
	Return lst
End Sub

'get the data at the position
Sub GetDataAtPosition(lstName As String, pos As Int) As Map
	lstName = lstName.tolowercase
	Dim res As List = data.Get(lstName)
	Dim out As Map = res.Get(pos)
	Return out
End Sub

'return the position of the data with these properties
Sub GetDataPositionWhere(lstName As String, props As Map) As Int
	lstName = lstName.tolowercase
	Dim res As List = data.Get(lstName)
	Dim rCnt As Int = 0
	Dim rTot As Int = res.Size - 1
	Dim pTot As Int = props.size
	For rCnt = 0 To rTot
		Dim iFound As Int = 0
		'get the record at the position
		Dim rec As Map = res.Get(rCnt)
		'loop through each position
		For Each k As String In props.Keys
			Dim v As String = props.GetDefault(k,"")
			'does the field at that position match
			If rec.ContainsKey(k) Then
				Dim recvalue As String = rec.GetDefault(k, "")
				v = BANanoShared.CStr(v)
				recvalue = BANanoShared.CStr(recvalue)
				If recvalue.EqualsIgnoreCase(v) Then
					iFound = iFound + 1
				End If
			End If
		Next
		If iFound = pTot Then
			Return rCnt
		End If
	Next
	Return -1
End Sub

'remove item at beginning of list
Sub SetDataShift(lstname As String)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("shift", Null)
End Sub

'remove an item from the end of the list
Sub SetDataPop(lstname As String)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("pop", Null)
End Sub

'add item at beginning of list
Sub SetDataUnshift(lstname As String, obj As Object)
	lstname = lstname.tolowercase
	Dim dat As BANanoObject = data
	dat.GetField(lstname).RunMethod("unshift", obj)
End Sub

'add a meta tag to the property
Sub AddMeta(prop As String, value As String)
	meta.Put(prop, value)
End Sub

'return the component
Sub Component As Map
	Dim sTemplate As String = Template.ToString
	sTemplate = sTemplate.Replace("v-template", "template")
	Dim cb As BANanoObject = BANano.CallBack(Me, "returndata", Null)
	opt.Put("data", cb.Result)
	opt.Put("methods", methods)
	opt.Put("computed", computed)
	opt.Put("watch", watches)
	opt.Put("props", mprops)
	opt.Put("filters", filters)
	opt.Put("template", sTemplate)
	opt.Put("components", components)
	Return opt
End Sub

'use for components
private Sub returndata As Map			'ignoredeadcode	
	Return data
End Sub

'remove state data
Sub RemoveData(key As String)
	key = key.ToLowerCase
	data.Remove(key)
End Sub

Sub GetData(prop As String) As Object
	prop = prop.tolowercase
	Dim obj As Object = Null
	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
	If dotPos >= 0 Then
		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
		Dim oEL As Map
		If data.ContainsKey(pEL) Then
			oEL = data.Get(pEL)
			If oEL.ContainsKey(cEL) Then
				obj = oEL.Get(cEL)
			End If
		End If
	Else
		If data.ContainsKey(prop) Then
			obj = data.get(prop)
		End If
	End If
	If BANano.IsNull(obj) Or BANano.IsUndefined(obj) Then obj = CStr(obj)
	Return obj
End Sub

'add a string property
Sub AddProperty(propName As String)
	Dim mprop As Map = CreateMap()
	mprop.Put("type", jsString)
	mprops.Put(propName, mprop)
End Sub

'add a property to the component
Sub AddProperties(propsList As List)
	For Each k As String In propsList
		AddProperty(k)
	Next
End Sub

'set direct method
Sub SetFilter(Module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim value As Object
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(value))
		filters.Put(methodName, cb)
	Else
		Log($"SetFilter.${methodName} could not be found!"$)
	End If
End Sub

'set computed
Sub SetComputed(k As String, Module As Object, methodName As String, args As List)
	k = k.tolowercase
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		computed.Put(k, cb.Result)
	End If
End Sub

'set watches 
Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, Module As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	k = k.tolowercase
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		Dim deepit As Map = CreateMap()
		deepit.Put("handler", methodName)
		deepit.Put("deep", bDeep)
		deepit.Put("immediate", bImmediate)
		watches.Put(k, deepit)
		methods.Put(methodName, cb)
	End If
End Sub

'set direct method
Sub SetMethod(Module As Object, methodName As String, args As List)
	methodName = methodName.tolowercase
	methodName = methodName.Replace(":","")
	methodName = methodName.Replace(".","")
	methodName = methodName.Replace("-","")
	If SubExists(Module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, args)
		methods.Put(methodName, cb)
	End If
End Sub

'set a call back
Sub SetCallBack(methodName As String, cb As BANanoObject)
	methodName = methodName.ToLowerCase
	methods.Put(methodName, cb)
End Sub


'set the state
Sub SetState(m As Map)
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		k = k.tolowercase
		SetData(k, v)
	Next
End Sub

'return if state exists
Sub HasState(k As String) As Boolean
	k = k.tolowercase
	Return data.ContainsKey(k)
End Sub

'get the state
Sub GetState(k As String, v As Object) As Object
	k = k.tolowercase
	If data.ContainsKey(k) Then
		Dim out As Object = data.GetDefault(k,v)
		Return out
	Else
		Log("GetState: First set the v-model for " & k)
		Return ""
	End If
End Sub

'toggle a state
Sub ToggleState(stateName As String)
	Dim bcurrent As Boolean = GetState(stateName,"")
	bcurrent = Not(bcurrent)
	Dim optx As Map = CreateMap()
	optx.Put(stateName, bcurrent)
	SetState(optx)
End Sub


Sub Toggle(stateID As String)
	ToggleState(stateID)	
End Sub

'check if we have state
Sub StateExists(stateName As String) As Boolean
	stateName = stateName.tolowercase
	Return data.ContainsKey(stateName)
End Sub

'set state object
Sub SetStateMap(mapKey As String, mapValues As Map)
	mapKey = mapKey.tolowercase
	Dim optm As Map = CreateMap()
	optm.Put(mapKey, mapValues)
	SetState(optm)
End Sub

'set state list
Sub SetStateList(mapKey As String, mapValues As List)
	mapKey = mapKey.tolowercase
	Dim optm As Map = CreateMap()
	optm.Put(mapKey, mapValues)
	SetState(optm)
End Sub

'set multiple states to blank
Sub SetStateListValues(mapValues As List)
	For Each lstValue As String In mapValues
		lstValue = lstValue.tolowercase
		Dim optm As Map = CreateMap()
		optm.Put(lstValue, "")
		SetState(optm)
	Next
End Sub

'get states as a map
Sub GetStates(lst As List) As Map
	Dim smm As Map = CreateMap()
	For Each lstrec As String In lst
		lstrec = lstrec.tolowercase
		Dim state As Object = GetState(lstrec, Null)
		smm.Put(lstrec, state)
	Next
	Return smm
End Sub

'set state to true
Sub SetStateTrue(k As String)
	SetStateSingle(k,True)
End Sub

'set state to false
Sub SetStateFalse(k As String)
	SetStateSingle(k,False)
End Sub

'a single state change
Sub SetStateSingle(k As String, v As Object)
	k = k.tolowercase
	Dim optx As Map = CreateMap()
	optx.Put(k, v)
	SetState(optx)
End Sub

Sub NotState(stateName As String) As Boolean
	Dim bcurrent As Boolean = GetState(stateName,False)
	If bcurrent = Null Then bcurrent = True
	bcurrent = Not(bcurrent)
	Return bcurrent
End Sub

Sub Increment(k As String) As VueComponent
	Dim oldV As String = GetState(k, "0")
	If BANano.IsNull(oldV) Or oldV = "" Then oldV = 0
	oldV = BANano.parseInt(oldV) + 1
	SetStateSingle(k, oldV)
	Return Me
End Sub

Sub Decrement(k As String) As VueComponent
	Dim oldV As String = GetState(k, "0")
	If BANano.IsNull(oldV) Or oldV = "" Then oldV = 0
	oldV = BANano.parseInt(oldV) - 1
	SetStateSingle(k, oldV)
	Return Me
End Sub

Sub Enable(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, False)
End Sub

Sub Disable(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, True)
End Sub

'set an item to enabled
Sub SetEnabled(elID As String, b As Boolean)
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, b)
End Sub

'hide an element using v-show
Sub Hide(elID As String)
	elID = elID.tolowercase
	SetStateSingle($"${elID}show"$, False)
End Sub

'show an element using v-show
Sub Show(elID As String)
	SetStateSingle($"${elID}show"$, True)
End Sub

Sub SetMessage(elID As String, msg As String)
	SetStateSingle($"${elID}message"$, msg)
End Sub

'nullify the file select
Sub NullifyFileSelect(refID As String)
	RefNull(refID)
End Sub

Sub RefNull(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).SetField("value", Null)
End Sub


'click a reference
Sub RefClick(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'show a file select when a button is clicked
Sub ShowFileSelect(fsName As String)
	RefClick(fsName)
End Sub

'refresh the key of the element
Sub RefreshKey(keyName As String) As VueComponent
	keyName = keyName.ToLowerCase
	SetData(keyName, DateTime.now)
	Return Me
End Sub

'add a rule
Sub AddRule(ruleName As String, MethodName As String)
	If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = ""
	ruleName = ruleName.ToLowerCase
	If ruleName = "" Then Return
	MethodName = MethodName.ToLowerCase
	Dim rules As List
	If data.ContainsKey(ruleName) Then
		rules = data.Get(ruleName)
	Else
		rules = NewList
	End If
	'
	Dim v As Object
	Dim cb As BANanoObject = BANano.CallBack(mCallBack, MethodName, Array(v))
	If SubExists(mCallBack, MethodName) Then
		rules.Add(cb.Result)
	End If
	data.put(ruleName, rules)
End Sub

'open an input dialog
Sub OpenDialog(dldID As String)
	Dim dialogShow As String = $"${dldID}show"$
	dialogShow = dialogShow.tolowercase
	SetData(dialogShow, True)
End Sub

'close own dialog
Sub CloseDialog(dldID As String)
	Dim dialogShow As String = $"${dldID}show"$
	dialogShow = dialogShow.tolowercase
	SetData(dialogShow, False)
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTMLAsIs(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	Return xTemplate
End Sub

'get the confirm key
Sub getConfirm As String
	Dim s As String = GetData("confirmkey")
	Return s
End Sub

'get the confirm key
Sub getPromptProcess As String
	Dim s As String = GetData("confirmkey")
	Return s
End Sub

'show a dialog linked to this component
Sub ShowDialog
	SetData(dialogShow, True)
End Sub

'hide a dialog linked to this component
Sub HideDialog
	SetData(dialogShow, False)
End Sub


'get the html part of a bananoelement
Sub BANanoGetHTML(id As String) As String
	id = id.tolowercase
	id = id.Replace("#","")
	Dim be As BANanoElement
	be.Initialize($"#${id}"$)
	Dim xTemplate As String = be.GetHTML
	be.Empty
	'xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub

'add anything from the appendholder
Sub AppendHolder 
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Template.Append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Dim elx As BANanoElement = BANano.GetElement(target)
	elx.append(stemplate)
End Sub

'add anything from the appendholder
Sub AppendPlaceHolder
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Template.Append(stemplate)
End Sub



#End Region

#Region Internal Events

#End Region

'get all the table data
Sub GetTableData(tblName As VueTable) As List
	Dim recs As List = GetData(tblName.itemsname)
	Return recs
End Sub


'get all the table data selected
Sub GetTableDataSelected(tblName As VueTable) As List
	Dim recs As List = GetData(tblName.selected)
	Return recs
End Sub

Sub CallMethod(methodName As String)
	methodName = methodName.tolowercase
	Dim bo As BANanoObject = Component
	bo.GetField("methods").RunMethod(methodName, Null)
End Sub

Sub RunMethod(methodName As String, args As Object)
	methodName = methodName.tolowercase
	Dim bo As BANanoObject = Component
	bo.GetField("methods").RunMethod(methodName, args)
End Sub

Sub getHTML As String
	Return Template.ToString
End Sub


'convert object to string
Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

Sub IsVisible(ve As VueElement, bShow As Boolean)
	Dim vkey As String = ve.VShow
	SetData(vkey, bShow)
End Sub


'reset the validation and perform validation
Sub FormValidate1(formName As String) As Boolean
	FormResetValidation(formName)
	Return FormValidate(formName)
End Sub

Sub SetInterval(methodname As String, ms As Int, args As List) As Object
	methodname = methodname.tolowercase
	Dim cb As BANanoObject = BANano.callback(mCallBack, methodname, args)
	Dim res As Object = BANano.Window.SetInterval(cb, ms)
	Return res
End Sub

Sub ClearInterval(interval As Object)
	BANano.Window.ClearInterval(interval)
End Sub

Sub UpdateSRC(elID As String, src As String)
	Dim key As String = $"${elID}src"$
	SetData(key, src)
End Sub


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
	Private refs As BANanoObject
	'
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
		'
	Private dialogShow As String 
	Private dialogTitle As String
	Private dialogMessage As String
	Private dialogcanceltitle As String 
	Private dialogoktitle As String 
	Private dialogokshow As String 
	Private dialogcancelshow As String
	Private dialogwidth As String
	Private dialogpersistent As String 
	Private dialogokcolor As String
	Private dialogcancelcolor As String
	Private dialogpromptlabel As String
	Private dialogpromptvalue As String
	Private dialogprompthint As String
	Private dialogpromptplaceholder As String
	Private dialogpromptshow As String
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
	'
	'add the placeholder div to the app
	TemplateID = $"${mName}ph"$
	Template.Initialize(mCallBack, TemplateID, "template")
	'
	dialogShow = $"${mName}show"$
	dialogTitle = $"${mName}title"$
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
	
	getPlaceHolderNode.empty
	getAppendHolderNode.empty
	Return Me
End Sub

'return ths vue instance
Sub This As BANanoObject
	Return Component
End Sub

Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'return the dialog card title
Sub DialogCardTitle(dlgID As String) As VueElement
	Dim dialogTitleID As String = $"${dlgID}titleid"$
	dialogTitleID = dialogTitleID.ToLowerCase
	'
	Dim elx As VueElement
	elx.Initialize(mCallBack, dialogTitleID, dialogTitleID)
	Return elx
End Sub

'return the dialog card container
Sub DialogContainer(dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}container"$
	dialogContainerID = dialogContainerID.ToLowerCase
	'
	Dim elx As VueElement
	elx.Initialize(mCallBack, dialogContainerID, dialogContainerID)
	Return elx
End Sub

Sub DialogUpdateTitle(dlgID As String, title As String)
	Dim dialogTitle As String = $"${dlgID}title"$
	SetData(dialogTitle, title)
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
End Sub



'get prompt value
Sub GetPromptValue As String
	Dim sapppromptvalue As String = GetData(dialogpromptvalue)
	sapppromptvalue = sapppromptvalue.trim
	Return sapppromptvalue
End Sub


'query string for router path
Sub SetQueryString(k As String, v As String)
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
		Case ":rules", ":items"
			SetData(v, NewList)
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
		Case ":rules", ":items"
			SetData(v, NewList)
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
Sub SetMounted(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim mounted As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("mounted", mounted)
	SetMethod(module, methodName, args)
	Return Me
End Sub

'set updated
Sub SetUpdated(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim updated As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("updated", updated)
	SetMethod(module, methodName, args)
	Return Me
End Sub

'set beforemount
Sub SetBeforeMount(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim beforeMount As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("beforeMount", beforeMount)
	SetMethod(module, methodName, args)
	Return Me
End Sub

'set beforeupdate
Sub SetBeforeUpdate(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim beforeUpdate As Boolean = BANano.CallBack(module, methodName, args)
	opt.Put("beforeUpdate", beforeUpdate)
	SetMethod(module, methodName,args)
	Return Me
End Sub

'set before destroy
Sub SetBeforeDestroy(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim beforeDestroy As Boolean = BANano.CallBack(module, methodName, args)
	opt.Put("beforeDestroy", beforeDestroy)
	SetMethod(module, methodName, args)
	Return Me
End Sub


'set before created
Sub SetBeforeCreate(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim beforeCreate As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("beforeCreate", beforeCreate)
	SetMethod(module, methodName, args)
	Return Me
End Sub


'set created
Sub SetCreated(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim created As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("created", created)
	SetMethod(module, methodName, args)
	Return Me
End Sub

'set destroyed
Sub SetDestroyed(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim destroyed As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("destroyed", destroyed)
	SetMethod(module, methodName, args)
	Return Me
End Sub


'set activated
Sub SetActivated(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim activated As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("activated", activated)
	SetMethod(module, methodName, args)
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
Sub SetDeActivated(module As Object, methodName As String, args As List) As VueComponent
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) = False Then Return Me
	Dim deactivated As BANanoObject = BANano.CallBack(module, methodName, args)
	opt.Put("deactivated", deactivated)
	SetMethod(module, methodName, args)
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
	data.put(prop, value)
	Return Me
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
	Dim obj As Object = data.GetDefault(prop, "")
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
Sub SetFilter(module As Object, methodName As String)
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) Then
		Dim value As Object
		Dim cb As BANanoObject = BANano.CallBack(module, methodName, Array(value))
		filters.Put(methodName, cb)
	Else
		Log($"SetFilter.${methodName} could not be found!"$)
	End If
End Sub

'set computed
Sub SetComputed(k As String, module As Object, methodName As String, args As List)
	k = k.tolowercase
	methodName = methodName.ToLowerCase
	If SubExists(module, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(module, methodName, args)
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
	methodName = methodName.tolowercase
	methodName = methodName.ToLowerCase
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
		data.Put(k, v)
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

'focus on a ref
Sub SetFocus(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("focus", Null)
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
Sub AddRule(Module As Object, ruleName As String, MethodName As String)
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
	Dim cb As BANanoObject = BANano.CallBack(Module, MethodName, Array(v))
	If SubExists(Module, MethodName) Then
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
	xTemplate = xTemplate.Replace("v-template", "template")
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

﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.3
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public VueRouter As BANanoObject
	Public Emit As BANanoObject
	Private Modules As Map
	Private BANano As BANano   'ignore
	Private methods As Map
	Private computed As Map
	Private watches As Map
	Private filters As Map
	Private opt As Map
	Public Path As String
	Public Name As String
	Public Query As Map
	Public EventHandler As Object   'ignore
	Private routes As List
	Private components As Map
	Private Options As Map
	Public Vue As BANanoObject
	Public Themes As Map
	Private ColorMap As Map
	Public Vuetify As BANanoObject
	Private data As BANanoObject
	Public AppName As String
	Public Root As BANanoObject
	Public Route As BANanoObject
	Public refs As BANanoObject
	Public RouterView As BANanoObject
	Public GoogleMapKey As String
	Public Body As BANanoElement
	'
	Public const BORDER_DEFAULT As String = ""
	Public const BORDER_DASHED As String = "dashed"
	Public const BORDER_DOTTED As String = "dotted"
	Public const BORDER_DOUBLE As String = "double"
	Public const BORDER_GROOVE As String = "groove"
	Public const BORDER_HIDDEN As String = "hidden"
	Public const BORDER_INSET As String = "inset"
	Public const BORDER_NONE As String = "none"
	Public const BORDER_OUTSET As String = "outset"
	Public const BORDER_RIDGE As String = "ridge"
	Public const BORDER_SOLID As String = "solid"
	'
	Public const COLOR_AMBER As String = "amber"
	Public const COLOR_BLACK As String = "black"
	Public const COLOR_BLUE As String = "blue"
	Public const COLOR_BLUEGREY As String = "blue-grey"
	Public const COLOR_BROWN As String = "brown"
	Public const COLOR_CYAN As String = "cyan"
	Public const COLOR_DEEPORANGE As String = "deep-orange"
	Public const COLOR_DEEPPURPLE As String = "deep-purple"
	Public const COLOR_GREEN As String = "green"
	Public const COLOR_GREY As String = "grey"
	Public const COLOR_INDIGO As String = "indigo"
	Public const COLOR_LIGHTBLUE As String = "light-blue"
	Public const COLOR_LIGHTGREEN As String = "light-green"
	Public const COLOR_LIME As String = "lime"
	Public const COLOR_ORANGE As String = "orange"
	Public const COLOR_PINK As String = "pink"
	Public const COLOR_PURPLE As String = "purple"
	Public const COLOR_RED As String = "red"
	Public const COLOR_TEAL As String = "teal"
	Public const COLOR_TRANSPARENT As String = "transparent"
	Public const COLOR_WHITE As String = "white"
	Public const COLOR_YELLOW As String = "yellow"
	Public const COLOR_NONE As String = ""
	Public const COLOR_PRIMARY As String = "primary"
	Public const COLOR_SECONDARY As String = "secondary"
	Public const COLOR_ACCENT As String = "accent"
	Public const COLOR_ERROR As String = "error"
	Public const COLOR_INFO As String = "info"
	Public const COLOR_SUCCESS As String = "success"
	Public const COLOR_WARNING As String = "warning"
	
	'
	Public const COLOR_AMBER_TEXT As String = "amber--text"
	Public const COLOR_BLACK_TEXT As String = "black--text"
	Public const COLOR_BLUE_TEXT As String = "blue--text"
	Public const COLOR_BLUEGREY_TEXT As String = "blue-grey--text"
	Public const COLOR_BROWN_TEXT As String = "brown--text"
	Public const COLOR_CYAN_TEXT As String = "cyan--text"
	Public const COLOR_DEEPORANGE_TEXT As String = "deep-orange--text"
	Public const COLOR_DEEPPURPLE_TEXT As String = "deep-purple--text"
	Public const COLOR_GREEN_TEXT As String = "green--text"
	Public const COLOR_GREY_TEXT As String = "grey--text"
	Public const COLOR_INDIGO_TEXT As String = "indigo--text"
	Public const COLOR_LIGHTBLUE_TEXT As String = "light-blue--text"
	Public const COLOR_LIGHTGREEN_TEXT As String = "light-green--text"
	Public const COLOR_LIME_TEXT As String = "lime--text"
	Public const COLOR_ORANGE_TEXT As String = "orange--text"
	Public const COLOR_PINK_TEXT As String = "pink--text"
	Public const COLOR_PURPLE_TEXT As String = "purple--text"
	Public const COLOR_RED_TEXT As String = "red--text"
	Public const COLOR_TEAL_TEXT As String = "teal--text"
	Public const COLOR_TRANSPARENT_TEXT As String = "transparent--text"
	Public const COLOR_WHITE_TEXT As String = "white--text"
	Public const COLOR_YELLOW_TEXT As String = "yellow--text"
	Public const COLOR_PRIMARY_TEXT As String = "primary--text"
	Public const COLOR_SECONDARY_TEXT As String = "secondary--text"
	Public const COLOR_ACCENT_TEXT As String = "accent--text"
	Public const COLOR_ERROR_TEXT As String = "error--text"
	Public const COLOR_INFO_TEXT As String = "info--text"
	Public const COLOR_SUCCESS_TEXT As String = "success--text"
	Public const COLOR_WARNING_TEXT As String = "warning--text"
	
	'
'	Public CONST BREAKPOINT_XS As String = "xs"
'	Public CONST BREAKPOINT_SM As String = "sm"
'	Public CONST BREAKPOINT_MD As String = "md"
'	Public CONST BREAKPOINT_LG As String = "lg"
'	Public CONST BREAKPOINT_XL As String = "xl"
'	
'	Public CONST BREAKPOINT_xsOnly As String = "xsOnly"
'	Public CONST BREAKPOINT_smOnly As String = "smOnly"
'	Public CONST BREAKPOINT_smAndDown As String = "smAndDown"
'	Public CONST BREAKPOINT_smAndUp As String = "smAndUp"
'	Public CONST BREAKPOINT_mdOnly As String = "mdOnly"
'	Public CONST BREAKPOINT_mdAndDown As String = "mdAndDown"
'	Public CONST BREAKPOINT_mdAndUp As String = "mdAndUp"
'	Public CONST BREAKPOINT_lgOnly As String = "lgOnly"
'	Public CONST BREAKPOINT_lgAndDown As String = "lgAndDown"
'	Public CONST BREAKPOINT_lgAndUp As String = "lgAndUp"
'	Public CONST BREAKPOINT_xlOnly As String = "xlOnly"
	
	Public const INTENSITY_NORMAL As String = ""
	Public const INTENSITY_LIGHTEN5 As String = "lighten-5"
	Public const INTENSITY_LIGHTEN4 As String = "lighten-4"
	Public const INTENSITY_LIGHTEN3 As String = "lighten-3"
	Public const INTENSITY_LIGHTEN2 As String = "lighten-2"
	Public const INTENSITY_LIGHTEN1 As String = "lighten-1"
	Public const INTENSITY_DARKEN1 As String = "darken-1"
	Public const INTENSITY_DARKEN2 As String = "darken-2"
	Public const INTENSITY_DARKEN3 As String = "darken-3"
	Public const INTENSITY_DARKEN4 As String = "darken-4"
	Public const INTENSITY_ACCENT1 As String = "accent-1"
	Public const INTENSITY_ACCENT2 As String = "accent-2"
	Public const INTENSITY_ACCENT3 As String = "accent-3"
	Public const INTENSITY_ACCENT4 As String = "accent-4"
	'
	Public const JUSTIFY_CENTER As String = "center"
	Public const JUSTIFY_START As String = "start"
	Public const JUSTIFY_END As String = "end"
	'
	Public const ALIGN_CENTER As String = "center"
	Public const ALIGN_START As String = "start"
	Public const ALIGN_END As String = "end"
	Public const ALIGN_STRETCH As String = "stretch"
	'
	Public const ICONPOS_LEFT As String = "left"
	Public const ICONPOS_RIGHT As String = "right"
	'
	Public store As BANanoObject
	Public state As Map
	Public Template As String
	'
	Public const SIZE_H1 As String = "h1"
	Public const SIZE_H2 As String = "h2"
	Public const SIZE_H3 As String = "h3"
	Public const SIZE_H4 As String = "h4"
	Public const SIZE_H5 As String = "h5"
	Public const SIZE_H6 As String = "h6"
	Public const SIZE_P As String = "p"
	Public const SIZE_SPAN As String = "span"
	Public const SIZE_BLOCKQUOTE As String = "blockquote"
	Public const SIZE_DIV As String = "div"
	'
	Public const ICON_SMALL As String = "small"
	Public const ICON_LARGE As String = "large"
	Public const ICON_XSMALL As String = "x-small"
	Public const ICON_XLARGE As String = "x-large"
	'
	Public const BUTTON_SMALL As String = "small"
	Public const BUTTON_LARGE As String = "large"
	Public const BUTTON_XSMALL As String = "x-small"
	Public const BUTTON_XLARGE As String = "x-large"
	
	Public const TRANSITION_SLIDE_X As String = "slide-x-transition"
	Public const TRANSITION_SLIDE_X_REVERSE As String = "slide-x-reverse-transition"
	Public const TRANSITION_SLIDE_Y As String = "slide-y-transition"
	Public const TRANSITION_SLIDE_Y_REVERSE As String = "slide-y-reverse-transition"
	Public const TRANSITION_SCROLL_X As String = "scroll-x-transition"
	Public const TRANSITION_SCROLL_X_REVERSE As String = "scroll-x-reverse-transition"
	Public const TRANSITION_SCROLL_Y As String = "scroll-y-transition"
	Public const TRANSITION_SCROLL_Y_REVERSE As String = "scroll-y-reverse-transition"
	Public const TRANSITION_SCALE As String = "scale-transition"
	Public const TRANSITION_FADE As String = "fade-transition"
	Public const TRANSITION_FAB As String = "fab-transition"
	'
	Public const JUSTIFY_CENTER As String = "center"
	Public const JUSTIFY_START As String = "start"
	Public const JUSTIFY_END As String = "end"
	'
	Public const ALIGN_CENTER As String = "center"
	Public const ALIGN_START As String = "start"
	Public const ALIGN_END As String = "end"
	Public const ALIGN_STRETCH As String = "stretch"
	'
	Public const FLEX_GROW_0 As String = "flex-grow-0"
	Public const FLEX_GROW_1 As String = "flex-grow-1"
	Public const FLEX_SHRINK_0 As String = "flex-shrink-0"
	Public const FLEX_SHRINK_1 As String = "flex-shrink-1"
	'
	Public const TEXT_LEFT As String = "text-left"
	Public const TEXT_CENTER As String = "text-center"
	Public const TEXT_RIGHT As String = "text-right"
	Public const TEXT_NO_WRAP As String = "text-no-wrap"
	Public const TEXT_TRUNCATE As String = "text-truncate"
	Public const TEXT_LOWERCASE As String = "text-lowercase"
	Public const TEXT_UPPERCASE As String = "text-uppercase"
	Public const TEXT_CAPITALIZE As String = "text-capitalize"
	'
	Public const LOCALE_Afrikaans As String = "af"
	Public const LOCALE_Arabic As String = "ar"
	Public const LOCALE_Catalan As String = "ca"
	Public const LOCALE_Czech As String = "cs"
	Public const LOCALE_German As String = "de"
	Public const LOCALE_Greek As String = "el"
	Public const LOCALE_English	As String = "en"
	Public const LOCALE_Spanish As String = "es"
	Public const LOCALE_Estonian As String = "et"
	Public const LOCALE_Persian As String = "fa"
	Public const LOCALE_Finnish	As String = "fi"
	Public const LOCALE_French 	As String = "fr"
	Public const LOCALE_Hebrew 	As String = "he"
	Public const LOCALE_Croatian As String = "hr"
	Public const LOCALE_Hungarian As String = "hu"
	Public const LOCALE_Indonesian As String = "id"
	Public const LOCALE_Italian As String = "it"
	Public const LOCALE_Japanese As String = "ja"
	Public const LOCALE_Korean As String = "ko"
	Public const LOCALE_Lithuanian As String = "lt"
	Public const LOCALE_Latvian As String = "lv"
	Public const LOCALE_Dutch As String = "nl"
	Public const LOCALE_Norwegian As String = "no"
	Public const LOCALE_Polish As String = "pl"
	Public const LOCALE_Portuguese As String = "pt"
	Public const LOCALE_Romanian As String = "ro"
	Public const LOCALE_Russian As String = "ru"
	Public const LOCALE_Slovak As String = "sk"
	Public const LOCALE_Slovene As String = "sl"
	Public const LOCALE_Serbian As String = "srCyrl"
	Public const LOCALE_Swedish As String = "sv"
	Public const LOCALE_Thai As String = "th"
	Public const LOCALE_Turkish As String = "tr"
	Public const LOCALE_Ukrainian As String = "uk"
	Public const LOCALE_Chinese As String = "zhHans"
	Public const LOCALE_Chinese1 As String = "zhHant"
	'
	Public const VISIBILITY_PrintOnly As String = "print-only"
	Public const VISIBILITY_ScreenOnly As String = "screen-only"
	Public const VISIBILITY_XsOnly As String = "xs-only"
	Public const VISIBILITY_SmOnly As String = "sm-only"
	Public const VISIBILITY_SmAndDown As String = "sm-and-down"
	Public const VISIBILITY_SmAndUp As String = "sm-and-up"
	Public const VISIBILITY_MdOnly As String = "md-only"
	Public const VISIBILITY_MdAndDown As String = "md-and-down"
	Public const VISIBILITY_MdAndUp As String = "md-and-up"
	Public const VISIBILITY_LgOnly As String = "lg-only"
	Public const VISIBILITY_LgAndDown As String = "lg-and-down"
	Public const VISIBILITY_LgAndUp As String = "lg-and-up"
	Public const VISIBILITY_XlOnly As String = "xl-only"
	Public const VISIBILITY_ALL As String = ""
	'
	Public POSITION_STATIC As String = "static"
	Public POSITION_RELATIVE As String = "relative"
	Public POSITION_FIXED As String = "fixed"
	Public POSITION_ABSOLUTE As String = "absolute"
	Public POSITION_STICKY As String = "sticky"
		
	Public Breakpoint As Object
	Public BreakpointName As String
	
	Public const VISIBILITY_HIDDEN_MD_AND_UP As String = "hidden-md-and-up"
	Public const VISIBILITY_HIDDEN_SM_AND_DOWN As String = "hidden-sm-and-down"
	Public const VISIBILITY_HIDDEN_MD_AND_DOWN As String = "hidden-md-and-down"
	Public const VISIBILITY_HIDDEN_XL_AND_DOWN As String = "hidden-xl-and-down"
	Public const VISIBILITY_HIDDEN_SM_AND_UP As String = "hidden-sm-and-up"
	Public const VISIBILITY_HIDDEN_XL_AND_UP As String = "hidden-xl-and-up"
	Public const VISIBILITY_HIDDEN_XS_ONLY As String = "hidden-xs-only"
	Public const VISIBILITY_HIDDEN_XL_ONLY As String = "hidden-xl-only"
	
	Public const ALERT_BORDER_LEFT As String = "left"
	Public const ALERT_BORDER_RIGHT As String = "right"
	Public const ALERT_BORDER_BOTTOM As String = "bottom"
	Public const ALERT_BORDER_TOP As String = "top"
	Public const ALERT_BORDER_NONE As String = ""
	'
	Public const ALERT_TYPE_SUCCESS As String = "success"
	Public const ALERT_TYPE_INFO As String = "info"
	Public const ALERT_TYPE_WARNING As String = "warning"
	Public const ALERT_TYPE_ERROR As String = "error"
	Public const ALERT_TYPE_NONE As String = ""
	
	Public const EVENT_Click As String = "click"
	Public const EVENT_Change As String = "change"
	Public const EVENT_ClickStop As String = "click.stop"
	Public const EVENT_DblClick As String = "dblclick"
	Public const EVENT_MouseMove As String = "MouseMove"
	Public const EVENT_MouseOut As String = "MouseOut"
	Public const EVENT_KeyUp As String = "KeyUp"
	Public const EVENT_KeyPress As String = "KeyPress"
	Public const EVENT_ClickAlt As String = "Click.Alt"
	Public const EVENT_ClickShift As String = "Click.Shift"
	Public const EVENT_ClickPrevent As String = "Click.Prevent"
		
	Public RTL As Boolean
	Public Dark As Boolean
	Private VuetifyOptions As Map
	Private lang As String
	Public BasePath As String = "/"
	Public AppTemplateName As String = "#apptemplate"
	Public AppendHolderName As String = "#appendholder"
	Public PlaceHolderName As String = "#placeholder"
	Public Here As String = "#apptemplate"
	'
	Private dlgShow As String
	Private dlgTitle As String
	Private dlgMessage As String
	Private dlgcanceltitle As String
	Private dlgoktitle As String
	Private dlgokshow As String
	Private dlgcancelshow As String
	Private dlgwidth As String
	Private dlgpersistent As String
	Private dlgokcolor As String
	Private dlgcancelcolor As String
	Private dlgpromptlabel As String
	Private dlgpromptvalue As String
	Private dlgprompthint As String
	Private dlgpromptplaceholder As String
	Private dlgpromptshow As String
	Private dlgtexttype As String
	Public BreakPointLGAndUp As String = "$vuetify.breakpoint.lgAndUp"
	Public BreakPointLGAndUpNot As String = "!$vuetify.breakpoint.lgAndUp"
	
	Public CONST BREAKPOINT_XS As String = "$vuetify.breakpoint.xs"
	Public CONST BREAKPOINT_SM As String = "$vuetify.breakpoint.sm"
	Public CONST BREAKPOINT_MD As String = "$vuetify.breakpoint.md"
	Public CONST BREAKPOINT_LG As String = "$vuetify.breakpoint.lg"
	Public CONST BREAKPOINT_XL As String = "$vuetify.breakpoint.xl"
	Public CONST BREAKPOINT_xsOnly As String = "$vuetify.breakpoint.xsOnly"
	Public CONST BREAKPOINT_smOnly As String = "$vuetify.breakpoint.smOnly"
	Public CONST BREAKPOINT_smAndDown As String = "$vuetify.breakpoint.smAndDown"
	Public CONST BREAKPOINT_smAndUp As String = "$vuetify.breakpoint.smAndUp"
	Public CONST BREAKPOINT_mdOnly As String = "$vuetify.breakpoint.mdOnly"
	Public CONST BREAKPOINT_mdAndDown As String = "$vuetify.breakpoint.mdAndDown"
	Public CONST BREAKPOINT_mdAndUp As String = "$vuetify.breakpoint.mdAndUp"
	Public CONST BREAKPOINT_lgOnly As String = "$vuetify.breakpoint.lgOnly"
	Public CONST BREAKPOINT_lgAndDown As String = "$vuetify.breakpoint.lgAndDown"
	Public CONST BREAKPOINT_lgAndUp As String = "$vuetify.breakpoint.lgAndUp"
	Public CONST BREAKPOINT_xlOnly As String = "$vuetify.breakpoint.xlOnly"
	'
	Public const LIST_STYLE_CIRCLE As String = "circle"
	Public const LIST_STYLE_SQUARE As String = "square"
	Public const LIST_STYLE_DECIMAL As String = "decimal"
	Public const LIST_STYLE_LOWER_ALPHA As String = "lower-alpha"
	Public const LIST_STYLE_LOWER_ROMAN As String = "lower-roman"
	'
	Public const LIST_STYLE_POSITION_NONE As String = "none"
	Public const LIST_STYLE_POSITION_INSIDE As String = "inside"
	Public const LIST_STYLE_POSITION_OUTSIDE As String = "outside"
	'
	Public const POSITION_ABSOLUTE As String = "absolute"
	Public const POSITION_RELAVIVE As String = "relative"
	Public const POSITION_FIXED As String = "fixed"
	Public const POSITION_STATIC As String = "static"
	Public const POSITION_INHERIT As String = "inherit"
	'
	Public const HORIZONTAL_ALIGN_LEFT As String = "left"
	Public const HORIZONTAL_ALIGN_CENTER As String = "center"
	Public const HORIZONTAL_ALIGN_RIGHT As String  = "right"
	'
	Public const VERTICAL_ALIGN_TOP As String = "top"
	Public const VERTICAL_ALIGN_CENTER As String = "center"
	Public const VERTICAL_ALIGN_BOTTOM As String = "bottom"
	'
	Public const ORIENTATION_TOP_BOTTOM As String = "to bottom"
	Public const ORIENTATION_RIGHT_LEFT As String = "to left"
	Public const ORIENTATION_BOTTOM_TOP As String = "to top"
	Public const ORIENTATION_LEFT_RIGHT As String = "to right"
	Public const ORIENTATION_TL_BR As String = "to bottom right"
	Public const ORIENTATION_BL_TR As String = "to top right"
	Public const ORIENTATION_TR_BL As String = "to bottom left"
	Public const ORIENTATION_BR_TL As String = "to top left"
	'
	Public const BACKGROUND_POSITION_LEFT_TOP As String = "left top"
	Public const BACKGROUND_POSITION_LEFT_CENTER As String = "left center"
	Public const BACKGROUND_POSITION_LEFT_BOTTOM As String = "left bottom"
	'
	Public const BACKGROUND_POSITION_CENTER_TOP As String = "center top"
	Public const BACKGROUND_POSITION_CENTER_CENTER As String = "center center"
	Public const BACKGROUND_POSITION_CENTER_BOTTOM As String = "center bottom"
	'
	Public const BACKGROUND_POSITION_RIGHT_TOP As String = "right top"
	Public const BACKGROUND_POSITION_RIGHT_CENTER As String = "right center"
	Public const BACKGROUND_POSITION_RIGHT_BOTTOM As String = "right bottom"	
	
	Type ListViewItemOptions(url As String, lefticon As String, lefticoncolor As String, _
	lefticonclass As String, avatar As String, avatarclass As String, avataricon As String, _
	avatariconcolor As String, avatariconclass As String, icon As String, iconclass As String, _
	iconcolor As String, title As String, subtitle As String, _
	subtitle1 As String, righticon As String, righticonclass As String, righttext As String, _
	righticoncolor As String, key As String, dataSource As String, activeclass As String, _
	rightcheckbox As String, leftcheckbox As String, showleftcheckboxes As Boolean, showrightcheckboxes As Boolean, _
	rightrating As String, rightratingcolor As String, showrightrating As Boolean, _
	leftswitch As String, showleftswitches As Boolean, _
	rightswitch As String, showrightswitches As Boolean, switchinset As Boolean, itemavatarclass As String, _
	rightchip As String, rightchipcolor As String, _
	lefticonattr As String, avatarattr As String, avatariconattr As String, _
	righticonattr As String, righttextattr As String, rightcheckboxattr As String, _
	leftcheckboxattr As String, rightratingattr As String, leftswitchattr As String, _
	rightswitchattr As String, rightchipattr As String, iconattr As String, hasdivider As Boolean, insetdivider As Boolean, _
	rightavatar As String, rightavatarclass As String, rightavataricon As String, _
	rightavatariconcolor As String, rightavatariconclass As String, rightavatarattr As String, rightavatariconattr As String, _
	rightitemavatarclass As String, avatartext As String, rightavatartext As String, avatartextcolor As String, rightavatartextcolor As String, avatartextclass As String, rightavatartextclass As String)
	'
	Public RouterViewName As String
	Public DatabaseName As String
	Public ProgressLoaderName As String
End Sub

Sub ShowProgressLoader
	SetData(ProgressLoaderName, True)
End Sub

Sub HideProgressLoader
	SetData(ProgressLoaderName, False)
End Sub

'new listviewitemoptions
Sub NewListViewItemOptions() As ListViewItemOptions
	Dim lvio As ListViewItemOptions
	lvio.Initialize
	lvio.datasource = ""
	lvio.key = "id"
	lvio.url  = "to"
	lvio.lefticon  = "lefticon"
	lvio.lefticoncolor  = "lefticoncolor"
	lvio.lefticonclass  = ""
	'
	lvio.avatar  = "avatar"
	lvio.avatarclass  = ""
	
	lvio.avataricon  = "avataricon"
	lvio.avatariconcolor  = "avatariconcolor"
	lvio.avatariconclass  = ""
	
	lvio.icon  = "icon"
	lvio.iconclass  = ""
	lvio.iconcolor  = "iconcolor"
	
	lvio.title  = "title"
	lvio.subtitle  = "subtitle"
	lvio.subtitle1  = "subtitle1"
	'
	lvio.righticon  = "righticon"
	lvio.righticonclass  = ""
	lvio.righttext  = "righttext"
	lvio.righticoncolor  = "righticoncolor"
	lvio.activeclass = ""
	'
	lvio.rightcheckbox = "rightcheckbox"
	lvio.leftcheckbox = "leftcheckbox"
	lvio.showleftcheckboxes = False
	lvio.showrightcheckboxes = False
	'
	lvio.rightrating = "rightrating"
	lvio.rightratingcolor = "rightratingcolor"
	lvio.showrightrating = False
	'
	lvio.leftswitch = "leftswitch"
	lvio.showleftswitches = False
	'
	lvio.rightswitch = "rightswitch"
	lvio.showrightswitches = False
	lvio.switchinset = False
	lvio.itemavatarclass = ""
	'
	lvio.rightchip = "rightchip"
	lvio.rightchipcolor = "rightchipcolor"
	'
	lvio.lefticonattr = ""
	lvio.avatarattr = ""
	lvio.avatariconattr = ""
	lvio.righticonattr = ""
	lvio.righttextattr = ""
	lvio.rightcheckboxattr = ""
	lvio.leftcheckboxattr = ""
	lvio.rightratingattr = ""
	lvio.leftswitchattr = ""
	lvio.rightswitchattr = ""
	lvio.rightchipattr = ""
	lvio.iconattr = ""
	'
	lvio.hasdivider = False
	lvio.insetdivider = False
	'
	lvio.rightavatar = "rightavatar"
	lvio.rightavatarclass = ""
	lvio.rightavataricon = "rightavataricon"
	lvio.rightavatariconcolor = "rightavatariconcolor"
	lvio.rightavatariconclass = ""
	lvio.rightavatarattr = ""
	lvio.rightavatariconattr = ""
	lvio.rightitemavatarclass = ""
	'
	lvio.avatartext = "avatartext"
	lvio.rightavatartext = "rightavatartext"
	lvio.avatartextcolor = "avatartextcolor"
	lvio.rightavatartextcolor = "rightavatartextcolor"
	lvio.avatartextclass = ""
	lvio.rightavatartextclass = ""
	Return lvio
End Sub

#if javascript
	Number.prototype.toRad = function() {
      return this * Math.PI / 180;
    };

	function calculateDistance(lat1, lon1, lat2, lon2) {
      var R = 6371; // km
      var dLat = (lat2 - lat1).toRad();
      var dLon = (lon2 - lon1).toRad(); 
      var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
      Math.cos(lat1.toRad()) * Math.cos(lat2.toRad()) * 
      Math.sin(dLon / 2) * Math.sin(dLon / 2); 
      var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a)); 
      var d = R * c;
      return d;
    };
#End If


Sub CalculateDistance(lat1 As Double, lon1 As Double, lat2 As Double, lon2 As Double) As Int
	Dim res As Int = BANano.RunJavascriptMethod("calculateDistance", Array(lat1, lon1, lat2, lon2))
	res = BANano.parseInt(res)
	Return res
End Sub

Sub TrimIt(v As String) As String
	If BANano.IsNull(v) Or BANano.IsUndefined(v) Then v = ""
	v = CStr(v)
	v = v.Trim
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

'return ths vue instance
Sub This As BANanoObject
	Return Vue
End Sub

'import a component, the module should have the Initilize method without parameters
Sub Import(comp As VueComponent)
	Dim compname As String = comp.mName
	compname = compname.tolowercase
	If components.ContainsKey(compname) = True Then Return
	Dim compx As Map = comp.Component
	components.Put(compname, compx)
End Sub

'add anything from the appendholder
Sub AppendHolderTo(target As String)
	target = target.ToLowerCase
	target = target.Replace("#","")
	Dim stemplate As String = BANanoGetHTMLAsIs("appendholder")
	Dim elx As BANanoElement
	elx.Initialize($"#${target}"$)
	elx.append(stemplate)
End Sub

'return a date with day, month year name
Sub NiceDate(sdate As String) As String			'ignoredeadcode
	Return FormatDisplayDate(sdate, "ddd, DD MMM YYYY")
End Sub

Sub NiceTime(stime As String) As String			'ignoredeadcode
	Return FormatDisplayDate(stime, "ddd, DD MMM YYYY @ HH:mm:ss")
End Sub

Sub NiceMoney(smoney As String) As String		'ignoredeadcode
	Return FormatDisplayNumber(smoney, "0,0.00")
End Sub


Sub nicefilesize(fsx As String) As String		'ignoredeadcode
	Return FormatFileSize(fsx)
End Sub

Sub FormatFileSize(Bytes As Float) As String	'ignoredeadcode				'ignoredeadcode
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

'initialize the snackbar
Sub SnackBarInitialize
	SetData("appsnackmessage", "")
	SetData("appsnackshow", False)
	SetData("appsnackright", True)
	SetData("appsnacktop", True)
	SetData("appsnackcolor","")
	SetData("appsnackbottom", False)
	SetData("appsnackcentered", False)
	SetData("appsnackoutlined", False)
	SetData("appsnackleft", False)
	SetData("appsnackshaped", True)
	SetData("appsnackrounded", False)
End Sub

'add a master snack bar for the app
Sub AddAppSnackBar As VueElement
	Dim elx As VueElement = AddVueElement(EventHandler, $"${AppName}app"$, "appsnack", "v-snackbar", "appsnackshow", "", "", Null)
	elx.Bind("app", True)
	elx.Caption = "{{ appsnackmessage }}"
	elx.Bind("right", "appsnackright")
	elx.Bind("top", "appsnacktop")
	elx.Bind("color", "appsnackcolor")
	elx.Bind("bottom", "appsnackbottom")
	elx.Bind("centered", "appsnackcentered")
	elx.Bind("outlined", "appsnackoutlined")
	elx.Bind("left", "appsnackleft")
	elx.Bind("shaped", "appsnackshaped")
	elx.Bind("rounded", "appsnackrounded")
	BindVueElement(elx)
	SnackBarInitialize
	Return elx
End Sub

Sub SnackBarColor(s As String) As VuetifyApp
	SetData("appsnackcolor",s)
	Return Me
End Sub

Sub SnackBarRounded(b As Boolean) As VuetifyApp
	SetData("appsnackrounded",b)
	Return Me
End Sub

Sub SnackBarShaped(b As Boolean) As VuetifyApp
	SetData("appsnackshaped",b)
	Return Me
End Sub

Sub SnackBarOutlined(b As Boolean) As VuetifyApp
	SetData("appsnackoutlined",b)
	Return Me
End Sub

Sub SnackBarTopLeft As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", True)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarTopCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",True)
	Return Me
End Sub


Sub SnackBarBottomCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",True)
	Return Me
End Sub

Sub SnackBarTopRight As VuetifyApp
	SetData("appsnackright", True)
	SetData("appsnackleft", False)
	SetData("appsnacktop", True)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarBottomLeft As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", True)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarBottomRight As VuetifyApp
	SetData("appsnackright", True)
	SetData("appsnackleft", False)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",True)
	SetData("appsnackcentered",False)
	Return Me
End Sub

Sub SnackBarCentered As VuetifyApp
	SetData("appsnackright", False)
	SetData("appsnackleft", False)
	SetData("appsnacktop", False)
	SetData("appsnackbottom",False)
	SetData("appsnackcentered",True)
	Return Me
End Sub

Sub ShowDialog(b As Boolean)
	SetData(dlgShow, b)
End Sub


Sub ShowDialog1
	SetData(dlgShow, True)
End Sub


Sub HideDialog
	SetData(dlgShow, False)
End Sub

'get prompt value
Sub GetPromptValue As String
	Dim sapppromptvalue As String = GetData(dlgpromptvalue)
	sapppromptvalue = sapppromptvalue.trim
	Return sapppromptvalue
End Sub


'show confirm dialog
Sub ShowConfirm(process As String, Title As String, Message As String, ConfirmText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	InitDialog
	SetData(dlgTitle, Title)
	SetData(dlgMessage, Message)
	SetData(dlgoktitle, ConfirmText)
	SetData(dlgokshow, True)
	SetData(dlgcanceltitle, CancelText)
	SetData(dlgcancelshow, True)
	SetData(dlgShow, True)
	SetData(dlgpromptshow, False)
End Sub

'show confirm dialog
Sub ShowPrompt(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	InitDialog
	SetData(dlgTitle, Title)
	SetData(dlgMessage, "")
	SetData(dlgoktitle, OkText)
	SetData(dlgokshow, True)
	SetData(dlgcanceltitle, CancelText)
	SetData(dlgcancelshow, True)
	SetData(dlgShow, True)
	SetData(dlgpromptlabel, Label)
	SetData(dlgpromptplaceholder, Placeholder)
	SetData(dlgprompthint, Hint)
	SetData(dlgpromptvalue, DefaultValue)
	SetData(dlgpromptshow, True)
	SetData(dlgtexttype, "text")
End Sub


'show prompt for dialog for tel specifying an input type
Sub ShowPrompt1(process As String, Title As String, Label As String, Placeholder As String, Hint As String, DefaultValue As String, OkText As String, CancelText As String, InputType As String)
	InitDialog
	process = process.tolowercase
	SetData("confirmkey", process)
	SetData(dlgTitle, Title)
	SetData(dlgMessage, "")
	SetData(dlgoktitle, OkText)
	SetData(dlgokshow, True)
	SetData(dlgcanceltitle, CancelText)
	SetData(dlgcancelshow, True)
	SetData(dlgShow, True)
	SetData(dlgpromptlabel, Label)
	SetData(dlgpromptplaceholder, Placeholder)
	SetData(dlgprompthint, Hint)
	SetData(dlgpromptvalue, DefaultValue)
	SetData(dlgpromptshow, True)
	SetData(dlgtexttype, InputType)
End Sub


Sub ShowAlert(process As String, title As String, Message As String, OkTitle As String)
	process = process.tolowercase
	SetData("confirmkey", process)
	InitDialog
	SetData(dlgShow, True)
	SetData(dlgTitle, title)
	SetData(dlgMessage, Message)
	SetData(dlgoktitle, OkTitle)
	SetData(dlgokshow, True)
	SetData(dlgcancelshow, False)
	SetData(dlgpromptshow, False)
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


Sub ShowSnackBarError(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "error")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarSuccess(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "success")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarPrimary(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "primary")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarSecondary(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "secondary")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBarInfo(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "info")
	SetData("appsnackshow", True)
	Return Me
End Sub


Sub ShowSnackBarWarning(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "warning")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub ShowSnackBar(Message As String) As VuetifyApp
	If BANano.IsNull(Message) Then Return Me
	SetData("appsnackmessage", Message)
	SetData("appsnackcolor", "")
	SetData("appsnackshow", True)
	Return Me
End Sub

Sub HideSnackBar As VuetifyApp
	SetData("appsnackshow", False)
	Return Me
End Sub


'add anything from the appendholder
Sub AppendPlaceHolderTo(target As String)
	target = target.ToLowerCase
	target = target.Replace("#","")
	Dim stemplate As String = BANanoGetHTMLAsIs("placeholder")
	Dim elx As BANanoElement
	elx.Initialize($"#${target}"$)
	elx.append(stemplate)
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


'add html of component to app and this binds events and states
Sub BindVueElement(elx As VueElement)
	Dim mtag As String = elx.TagName
	If mtag = "router-view" Then
		RouterViewName = elx.ID
	End If
	Dim mbindings As Map = elx.bindings
	Dim mmethods As Map = elx.methods
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

'get the name of the breakpoint
Sub GetBreakPointName As String
	Dim bp As BANanoObject = Vuetify.GetField("breakpoint")
	Dim res As String = bp.GetField("name").Result
	Return res
End Sub

'get the appnode
Sub getAppNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#app")
	Return el
End Sub

'get the template node
Sub getTemplateNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#apptemplate")
	Return el
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

'get the appendholder node
Sub getMainNode As BANanoElement
	Dim el As BANanoElement = BANano.GetElement("#main")
	Return el
End Sub

'initialize the app with where to render and where to .GetHTML
Sub Initialize(Module As Object, myapp As String) 
	AppName = myapp.ToLowerCase
	'get the body of the page
	Body = BANano.GetElement("#body")
	Body.Append($"<div ref="app" id="app"><div id="placeholder" v-show="placeholder"></div><div id="appendholder" v-show="appendholder"></div><v-template id="apptemplate" v-show="apptemplate"></v-template></div>"$)
	'
	Vue.Initialize("Vue")
	'
	'***use a global prototype
	state.Initialize
	Modules.Initialize
	methods.Initialize
	computed.Initialize
	watches.Initialize
	filters.Initialize
	opt.Initialize
	Query.Initialize
	EventHandler = Module
	routes.Initialize
	components.Initialize
	Options.Initialize
	Themes.Initialize
	data.Initialize5 
	InitColors
	
	'
	SetData("placeholder", False)
	SetData("appendholder", False)
	SetData("apptemplate", False)
	'
	RTL = False
	Dark = False
	lang = "en"
	VuetifyOptions.Initialize
	RouterViewName = "routerview"
	InitDialog
	SetMethod(Me, "nicedate", Null)
	SetMethod(Me, "nicetime", Null)
	SetMethod(Me, "nicemoney", Null)
	SetMethod(Me, "nicefilesize", Null)
	SetMethod(Me, "thousands", Null)
	UseVBlur
End Sub

private Sub InitDialog
	dlgShow = $"${AppName}show"$
	dlgTitle = $"${AppName}title"$
	dlgMessage = $"${AppName}message"$
	dlgcanceltitle = $"${AppName}canceltitle"$
	dlgoktitle = $"${AppName}oktitle"$
	dlgokshow = $"${AppName}okshow"$
	dlgcancelshow = $"${AppName}cancelshow"$
	dlgwidth = $"${AppName}width"$
	dlgpersistent = $"${AppName}persistent"$
	dlgpromptlabel = $"${AppName}promptlabel"$
	dlgpromptvalue = $"${AppName}promptvalue"$
	dlgprompthint = $"${AppName}prompthint"$
	dlgpromptplaceholder = $"${AppName}promptplaceholder"$
	dlgpromptshow = $"${AppName}promptshow"$
	dlgtexttype = $"${AppName}type"$
End Sub


private Sub InitColors
	ColorMap.Initialize
	ColorMap.put("red lighten-5", "#ffebee")
	ColorMap.put("red lighten-4", "#ffcdd2")
	ColorMap.put("red lighten-3", "#ef9a9a")
	ColorMap.put("red lighten-2", "#e57373")
	ColorMap.put("red lighten-1", "#ef5350")
	ColorMap.put("red", "#f44336")
	ColorMap.put("red darken-1", "#e53935")
	ColorMap.put("red darken-2", "#d32f2f")
	ColorMap.put("red darken-3", "#c62828")
	ColorMap.put("red darken-4", "#b71c1c")
	ColorMap.put("red accent-1", "#ff8a80")
	ColorMap.put("red accent-2", "#ff5252")
	ColorMap.put("red accent-3", "#ff1744")
	ColorMap.put("red accent-4", "#d50000")
	ColorMap.put("pink lighten-5", "#fce4ec")
	ColorMap.put("pink lighten-4", "#f8bbd0")
	ColorMap.put("pink lighten-3", "#f48fb1")
	ColorMap.put("pink lighten-2", "#f06292")
	ColorMap.put("pink lighten-1", "#ec407a")
	ColorMap.put("pink", "#e91e63")
	ColorMap.put("pink darken-1", "#d81b60")
	ColorMap.put("pink darken-2", "#c2185b")
	ColorMap.put("pink darken-3", "#ad1457")
	ColorMap.put("pink darken-4", "#880e4f")
	ColorMap.put("pink accent-1", "#ff80ab")
	ColorMap.put("pink accent-2", "#ff4081")
	ColorMap.put("pink accent-3", "#f50057")
	ColorMap.put("pink accent-4", "#c51162")
	ColorMap.put("purple lighten-5", "#f3e5f5")
	ColorMap.put("purple lighten-4", "#e1bee7")
	ColorMap.put("purple lighten-3", "#ce93d8")
	ColorMap.put("purple lighten-2", "#ba68c8")
	ColorMap.put("purple lighten-1", "#ab47bc")
	ColorMap.put("purple", "#9c27b0")
	ColorMap.put("purple darken-1", "#8e24aa")
	ColorMap.put("purple darken-2", "#7b1fa2")
	ColorMap.put("purple darken-3", "#6a1b9a")
	ColorMap.put("purple darken-4", "#4a148c")
	ColorMap.put("purple accent-1", "#ea80fc")
	ColorMap.put("purple accent-2", "#e040fb")
	ColorMap.put("purple accent-3", "#d500f9")
	ColorMap.put("purple accent-4", "#aa00ff")
	ColorMap.put("deep-purple lighten-5", "#ede7f6")
	ColorMap.put("deep-purple lighten-4", "#d1c4e9")
	ColorMap.put("deep-purple lighten-3", "#b39ddb")
	ColorMap.put("deep-purple lighten-2", "#9575cd")
	ColorMap.put("deep-purple lighten-1", "#7e57c2")
	ColorMap.put("deep-purple", "#673ab7")
	ColorMap.put("deep-purple darken-1", "#5e35b1")
	ColorMap.put("deep-purple darken-2", "#512da8")
	ColorMap.put("deep-purple darken-3", "#4527a0")
	ColorMap.put("deep-purple darken-4", "#311b92")
	ColorMap.put("deep-purple accent-1", "#b388ff")
	ColorMap.put("deep-purple accent-2", "#7c4dff")
	ColorMap.put("deep-purple accent-3", "#651fff")
	ColorMap.put("deep-purple accent-4", "#6200ea")
	ColorMap.put("indigo lighten-5", "#e8eaf6")
	ColorMap.put("indigo lighten-4", "#c5cae9")
	ColorMap.put("indigo lighten-3", "#9fa8da")
	ColorMap.put("indigo lighten-2", "#7986cb")
	ColorMap.put("indigo lighten-1", "#5c6bc0")
	ColorMap.put("indigo", "#3f51b5")
	ColorMap.put("indigo darken-1", "#3949ab")
	ColorMap.put("indigo darken-2", "#303f9f")
	ColorMap.put("indigo darken-3", "#283593")
	ColorMap.put("indigo darken-4", "#1a237e")
	ColorMap.put("indigo accent-1", "#8c9eff")
	ColorMap.put("indigo accent-2", "#536dfe")
	ColorMap.put("indigo accent-3", "#3d5afe")
	ColorMap.put("indigo accent-4", "#304ffe")
	ColorMap.put("blue lighten-5", "#e3f2fd")
	ColorMap.put("blue lighten-4", "#bbdefb")
	ColorMap.put("blue lighten-3", "#90caf9")
	ColorMap.put("blue lighten-2", "#64b5f6")
	ColorMap.put("blue lighten-1", "#42a5f5")
	ColorMap.put("blue", "#2196f3")
	ColorMap.put("blue darken-1", "#1e88e5")
	ColorMap.put("blue darken-2", "#1976d2")
	ColorMap.put("blue darken-3", "#1565c0")
	ColorMap.put("blue darken-4", "#0d47a1")
	ColorMap.put("blue accent-1", "#82b1ff")
	ColorMap.put("blue accent-2", "#448aff")
	ColorMap.put("blue accent-3", "#2979ff")
	ColorMap.put("blue accent-4", "#2962ff")
	ColorMap.put("light-blue lighten-5", "#e1f5fe")
	ColorMap.put("light-blue lighten-4", "#b3e5fc")
	ColorMap.put("light-blue lighten-3", "#81d4fa")
	ColorMap.put("light-blue lighten-2", "#4fc3f7")
	ColorMap.put("light-blue lighten-1", "#29b6f6")
	ColorMap.put("light-blue", "#03a9f4")
	ColorMap.put("light-blue darken-1", "#039be5")
	ColorMap.put("light-blue darken-2", "#0288d1")
	ColorMap.put("light-blue darken-3", "#0277bd")
	ColorMap.put("light-blue darken-4", "#01579b")
	ColorMap.put("light-blue accent-1", "#80d8ff")
	ColorMap.put("light-blue accent-2", "#40c4ff")
	ColorMap.put("light-blue accent-3", "#00b0ff")
	ColorMap.put("light-blue accent-4", "#0091ea")
	ColorMap.put("cyan lighten-5", "#e0f7fa")
	ColorMap.put("cyan lighten-4", "#b2ebf2")
	ColorMap.put("cyan lighten-3", "#80deea")
	ColorMap.put("cyan lighten-2", "#4dd0e1")
	ColorMap.put("cyan lighten-1", "#26c6da")
	ColorMap.put("cyan", "#00bcd4")
	ColorMap.put("cyan darken-1", "#00acc1")
	ColorMap.put("cyan darken-2", "#0097a7")
	ColorMap.put("cyan darken-3", "#00838f")
	ColorMap.put("cyan darken-4", "#006064")
	ColorMap.put("cyan accent-1", "#84ffff")
	ColorMap.put("cyan accent-2", "#18ffff")
	ColorMap.put("cyan accent-3", "#00e5ff")
	ColorMap.put("cyan accent-4", "#00b8d4")
	ColorMap.put("teal lighten-5", "#e0f2f1")
	ColorMap.put("teal lighten-4", "#b2dfdb")
	ColorMap.put("teal lighten-3", "#80cbc4")
	ColorMap.put("teal lighten-2", "#4db6ac")
	ColorMap.put("teal lighten-1", "#26a69a")
	ColorMap.put("teal", "#009688")
	ColorMap.put("teal darken-1", "#00897b")
	ColorMap.put("teal darken-2", "#00796b")
	ColorMap.put("teal darken-3", "#00695c")
	ColorMap.put("teal darken-4", "#004d40")
	ColorMap.put("teal accent-1", "#a7ffeb")
	ColorMap.put("teal accent-2", "#64ffda")
	ColorMap.put("teal accent-3", "#1de9b6")
	ColorMap.put("teal accent-4", "#00bfa5")
	ColorMap.put("green lighten-5", "#e8f5e9")
	ColorMap.put("green lighten-4", "#c8e6c9")
	ColorMap.put("green lighten-3", "#a5d6a7")
	ColorMap.put("green lighten-2", "#81c784")
	ColorMap.put("green lighten-1", "#66bb6a")
	ColorMap.put("green", "#4caf50")
	ColorMap.put("green darken-1", "#43a047")
	ColorMap.put("green darken-2", "#388e3c")
	ColorMap.put("green darken-3", "#2e7d32")
	ColorMap.put("green darken-4", "#1b5e20")
	ColorMap.put("green accent-1", "#b9f6ca")
	ColorMap.put("green accent-2", "#69f0ae")
	ColorMap.put("green accent-3", "#00e676")
	ColorMap.put("green accent-4", "#00c853")
	ColorMap.put("light-green lighten-5", "#f1f8e9")
	ColorMap.put("light-green lighten-4", "#dcedc8")
	ColorMap.put("light-green lighten-3", "#c5e1a5")
	ColorMap.put("light-green lighten-2", "#aed581")
	ColorMap.put("light-green lighten-1", "#9ccc65")
	ColorMap.put("light-green", "#8bc34a")
	ColorMap.put("light-green darken-1", "#7cb342")
	ColorMap.put("light-green darken-2", "#689f38")
	ColorMap.put("light-green darken-3", "#558b2f")
	ColorMap.put("light-green darken-4", "#33691e")
	ColorMap.put("light-green accent-1", "#ccff90")
	ColorMap.put("light-green accent-2", "#b2ff59")
	ColorMap.put("light-green accent-3", "#76ff03")
	ColorMap.put("light-green accent-4", "#64dd17")
	ColorMap.put("lime lighten-5", "#f9fbe7")
	ColorMap.put("lime lighten-4", "#f0f4c3")
	ColorMap.put("lime lighten-3", "#e6ee9c")
	ColorMap.put("lime lighten-2", "#dce775")
	ColorMap.put("lime lighten-1", "#d4e157")
	ColorMap.put("lime", "#cddc39")
	ColorMap.put("lime darken-1", "#c0ca33")
	ColorMap.put("lime darken-2", "#afb42b")
	ColorMap.put("lime darken-3", "#9e9d24")
	ColorMap.put("lime darken-4", "#827717")
	ColorMap.put("lime accent-1", "#f4ff81")
	ColorMap.put("lime accent-2", "#eeff41")
	ColorMap.put("lime accent-3", "#c6ff00")
	ColorMap.put("lime accent-4", "#aeea00")
	ColorMap.put("yellow lighten-5", "#fffde7")
	ColorMap.put("yellow lighten-4", "#fff9c4")
	ColorMap.put("yellow lighten-3", "#fff59d")
	ColorMap.put("yellow lighten-2", "#fff176")
	ColorMap.put("yellow lighten-1", "#ffee58")
	ColorMap.put("yellow", "#ffeb3b")
	ColorMap.put("yellow darken-1", "#fdd835")
	ColorMap.put("yellow darken-2", "#fbc02d")
	ColorMap.put("yellow darken-3", "#f9a825")
	ColorMap.put("yellow darken-4", "#f57f17")
	ColorMap.put("yellow accent-1", "#ffff8d")
	ColorMap.put("yellow accent-2", "#ffff00")
	ColorMap.put("yellow accent-3", "#ffea00")
	ColorMap.put("yellow accent-4", "#ffd600")
	ColorMap.put("amber lighten-5", "#fff8e1")
	ColorMap.put("amber lighten-4", "#ffecb3")
	ColorMap.put("amber lighten-3", "#ffe082")
	ColorMap.put("amber lighten-2", "#ffd54f")
	ColorMap.put("amber lighten-1", "#ffca28")
	ColorMap.put("amber", "#ffc107")
	ColorMap.put("amber darken-1", "#ffb300")
	ColorMap.put("amber darken-2", "#ffa000")
	ColorMap.put("amber darken-3", "#ff8f00")
	ColorMap.put("amber darken-4", "#ff6f00")
	ColorMap.put("amber accent-1", "#ffe57f")
	ColorMap.put("amber accent-2", "#ffd740")
	ColorMap.put("amber accent-3", "#ffc400")
	ColorMap.put("amber accent-4", "#ffab00")
	ColorMap.put("orange lighten-5", "#fff3e0")
	ColorMap.put("orange lighten-4", "#ffe0b2")
	ColorMap.put("orange lighten-3", "#ffcc80")
	ColorMap.put("orange lighten-2", "#ffb74d")
	ColorMap.put("orange lighten-1", "#ffa726")
	ColorMap.put("orange", "#ff9800")
	ColorMap.put("orange darken-1", "#fb8c00")
	ColorMap.put("orange darken-2", "#f57c00")
	ColorMap.put("orange darken-3", "#ef6c00")
	ColorMap.put("orange darken-4", "#e65100")
	ColorMap.put("orange accent-1", "#ffd180")
	ColorMap.put("orange accent-2", "#ffab40")
	ColorMap.put("orange accent-3", "#ff9100")
	ColorMap.put("orange accent-4", "#ff6d00")
	ColorMap.put("deep-orange lighten-5", "#fbe9e7")
	ColorMap.put("deep-orange lighten-4", "#ffccbc")
	ColorMap.put("deep-orange lighten-3", "#ffab91")
	ColorMap.put("deep-orange lighten-2", "#ff8a65")
	ColorMap.put("deep-orange lighten-1", "#ff7043")
	ColorMap.put("deep-orange", "#ff5722")
	ColorMap.put("deep-orange darken-1", "#f4511e")
	ColorMap.put("deep-orange darken-2", "#e64a19")
	ColorMap.put("deep-orange darken-3", "#d84315")
	ColorMap.put("deep-orange darken-4", "#bf360c")
	ColorMap.put("deep-orange accent-1", "#ff9e80")
	ColorMap.put("deep-orange accent-2", "#ff6e40")
	ColorMap.put("deep-orange accent-3", "#ff3d00")
	ColorMap.put("deep-orange accent-4", "#dd2c00")
	ColorMap.put("brown lighten-5", "#efebe9")
	ColorMap.put("brown lighten-4", "#d7ccc8")
	ColorMap.put("brown lighten-3", "#bcaaa4")
	ColorMap.put("brown lighten-2", "#a1887f")
	ColorMap.put("brown lighten-1", "#8d6e63")
	ColorMap.put("brown", "#795548")
	ColorMap.put("brown darken-1", "#6d4c41")
	ColorMap.put("brown darken-2", "#5d4037")
	ColorMap.put("brown darken-3", "#4e342e")
	ColorMap.put("brown darken-4", "#3e2723")
	ColorMap.put("grey lighten-5", "#fafafa")
	ColorMap.put("grey lighten-4", "#f5f5f5")
	ColorMap.put("grey lighten-3", "#eeeeee")
	ColorMap.put("grey lighten-2", "#e0e0e0")
	ColorMap.put("grey lighten-1", "#bdbdbd")
	ColorMap.put("grey", "#9e9e9e")
	ColorMap.put("grey darken-1", "#757575")
	ColorMap.put("grey darken-2", "#616161")
	ColorMap.put("grey darken-3", "#424242")
	ColorMap.put("grey darken-4", "#212121")
	ColorMap.put("blue-grey lighten-5", "#eceff1")
	ColorMap.put("blue-grey lighten-4", "#cfd8dc")
	ColorMap.put("blue-grey lighten-3", "#b0bec5")
	ColorMap.put("blue-grey lighten-2", "#90a4ae")
	ColorMap.put("blue-grey lighten-1", "#78909c")
	ColorMap.put("blue-grey", "#607d8b")
	ColorMap.put("blue-grey darken-1", "#546e7a")
	ColorMap.put("blue-grey darken-2", "#455a64")
	ColorMap.put("blue-grey darken-3", "#37474f")
	ColorMap.put("blue-grey darken-4", "#263238")
	ColorMap.put("black", "#000000")
	ColorMap.put("white", "#ffffff")
	ColorMap.put("transparent", "transparent")
End Sub

'add a theme to use in the app
Sub AddTheme(themeName As String, ForeColor As String, ForeColorIntensity As String, BackColor As String, BackColorIntensity As String) 
	themeName = themeName.ToLowerCase
	'
	Dim fc As String = $"${ForeColor}--text"$
	Dim fci As String = $"text--${ForeColorIntensity}"$
	Dim bc As String = $"${BackColor} ${BackColorIntensity}"$
	'
	fc = fc.trim
	fci = fci.Trim
	'
	If fc = "--text" Then fc = ""
	If fci = "text--" Then fci = ""
	'
	Dim classLine As String = $"${fc} ${fci} ${bc}"$
	classLine = classLine.Trim
	classLine = classLine.Replace("  "," ")
	classLine = classLine.Trim
	Themes.Put(themeName, classLine)
End Sub

'get element by data
Sub GetElementByData(dataattr As String, value As String) As BANanoElement
	dataattr = dataattr.tolowercase
	Dim skey As String = $"[data-${dataattr}='${value}']"$
	Dim dataId As BANanoElement
	dataId.Initialize(skey)
	Return dataId
End Sub

'create an element with a 'component' tag
Sub CreateOwnComponent(id As String, compName As String) As VueElement
	Dim elx As VueElement
	elx.Initialize(Me, id, compName)
	Return elx
End Sub

'create a dynamic component
Sub CreateDynamicComponent(id As String, viewID As String, compID As String) As VueElement
	Dim elx As VueElement
	elx.Initialize(Me, id, "component")
	elx.BindDynamicComponent(viewID, compID)
	Return elx
End Sub

Sub GetHexColor(Color As String, Intensity As String) As String
	Dim sCode As String = $"${Color} ${Intensity}"$
	sCode = sCode.Trim
	'
	Dim hexColor As String = ""
	If ColorMap.ContainsKey(sCode) Then
		hexColor = ColorMap.Get(sCode)
	End If
	Return hexColor	
End Sub

'get a hex color from provided colors
Sub GetColorHex(sColor As String) As String
	sColor = sColor.tolowercase
	If ColorMap.ContainsKey(sColor) Then
		Dim xColor As String = ColorMap.Get(sColor)
		Return xColor
	End If
	Return ""
End Sub

Sub ModuleExist(tagName As String) As Boolean
	tagName = tagName.tolowercase
	Dim b As Boolean = Modules.ContainsKey(tagName)
	Return b
End Sub

'add a module from external parties
Sub AddModule(tagName As String)
	tagName = tagName.tolowercase
	Modules.Put(tagName, tagName)
End Sub

'add a component from 3rd party
Sub ImportComponentBO(compName As String, comp As BANanoObject)
	If components.ContainsKey(compName) = True Then Return
	components.Put(compName, comp)
End Sub

Sub NewList As List
	Dim elx As List
	elx.Initialize
	Return elx
End Sub

Sub NewMap As Map
	Dim nm As Map
	nm.Initialize
	Return nm
End Sub

'add a router component
Sub AddRoute(comp As VueComponent) 
	If comp.mname = "" Then
		Log("AddRoute: Please specify the name of the Route!")
	End If
	'ensure content in the placeholder is added
	comp.AppendPlaceHolder
	
	Dim compx As BANanoObject = Vue.RunMethod("component", Array(comp.mname, comp.component))
	Dim eachroute As Map = CreateMap()
	eachroute.Put("path", comp.path)
	eachroute.Put("name", comp.mname)
	eachroute.Put("component", compx)
	eachroute.Put("props", True)
	eachroute.Put("meta", comp.meta)
	routes.Add(eachroute)
End Sub


'register a component with options
Sub RegisterComponent(compName As String, compOptions As Map) 
	compName = compName.tolowercase
	Vue.RunMethod("component", Array(compName, compOptions))
End Sub

'empty the banano element
Sub Empty(elID As String) 
	elID = elID.tolowercase
	Dim ph As BANanoElement
	ph.Initialize(elID)
	ph.empty	
End Sub

''force the update of the ux
'Sub ForceUpdate
'	Dim fu As String = "$forceUpdate"
'	vap.RunMethod(fu, Null)
'	'get the state
'	Dim dKey As String = "$data"
'	data = vap.GetField(dKey).Result
'	'get the refs
'	Dim rKey As String = "$refs"
'	refs = vap.GetField(rKey)
'End Sub

Sub SetMounted(Module As Object, methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim mounted As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("mounted", mounted)
	SetMethod(Module, methodName, args)
End Sub

Sub SetDestroyed(Module As Object, methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim destroyed As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("destroyed", destroyed)
	SetMethod(Module, methodName, args)
End Sub

Sub Thousands(smoney As String) As String   'ignoreDeadCode
	Return FormatDisplayNumber(smoney, "0,0")
End Sub

Sub SetActivated(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim activated As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("activated", activated)
	SetMethod(Module, methodName, args)
End Sub

Sub SetDeActivated(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim deactivated As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("deactivated", deactivated)
	SetMethod(Module, methodName, args)
End Sub

Sub SetUpdated(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim updated As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("updated", updated)
	SetMethod(Module, methodName, args)
End Sub

Sub SetBeforeMount(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim beforeMount As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("beforeMount", beforeMount)
	SetMethod(Module,methodName, args)
End Sub

Sub SetBeforeUpdate(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim beforeUpdate As Boolean = BANano.CallBack(Module, methodName, args)
	Options.Put("beforeUpdate", beforeUpdate)
	SetMethod(Module,methodName, args)
End Sub

Sub SetBeforeDestroy(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim beforeDestroy As Boolean = BANano.CallBack(Module, methodName, args)
	Options.Put("beforeDestroy", beforeDestroy)
	SetMethod(Module, methodName, args)
End Sub

Sub SetBeforeCreate(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim beforeCreate As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("beforeCreate", beforeCreate)
	SetMethod(Module,methodName, args)
End Sub

Sub SetCreated(Module As Object,methodName As String, args As List)
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) = False Then Return
	Dim created As BANanoObject = BANano.CallBack(Module, methodName, args)
	Options.Put("created", created)
	SetMethod(Module,methodName, args)
End Sub

'copy a state from one to another
Sub State2Another(source As String, target As String, defaultValue As Object) 
	Dim readObj As Object = GetData(source)
	If readObj = Null Then readObj = defaultValue
	SetStateSingle(target, readObj)
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

'nullify the file select
Sub NullifyFileSelect(refID As String)
	RefNull(refID)
End Sub

Sub RefNull(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).SetField("value", Null)
End Sub


'click a reference
Sub Click(refID As String)
	refID = refID.tolowercase
	refs.GetField(refID).RunMethod("click", Null)
End Sub

'show the file select
Sub ShowFileSelect(fsName As String)
	Click(fsName)
End Sub

'refresh an element using the key
Sub RefreshKey(keyName As String) 
	keyName = keyName.ToLowerCase
	SetData(keyName, DateTime.now)
End Sub


'set global state data
Sub SetStore(prop As String, value As Object) 
	prop = prop.ToLowerCase
	state.Put(prop, value)
	'
	Try
		Dim bo As BANanoObject = store.GetField(prop)
		If BANano.IsNull(bo) Then Return
		If BANano.IsUndefined(bo) Then Return
		'update the store
		store.GetField(prop).SetField(prop, value)
	Catch
		
	End Try  'ignore
	'
	'computed is not set
	If computed.ContainsKey(prop) = False Then
		Dim cb As BANanoObject = BANano.CallBackExtra(Me, "getstore", Null, Array(prop))
		computed.Put(prop, cb.Result)
	End If
	
End Sub

'remove list last item
Sub SetStorePop(lstname As String)
	lstname = lstname.tolowercase
	store.GetField(lstname).RunMethod("pop", Null)
End Sub

'get the first list item
Sub GetStoreFirst(lstName As String) As Object
	lstName = lstName.tolowercase
	Dim lst As List = store.GetField(lstName).result
	Dim obj As Object = lst.Get(0)
	Return obj
End Sub

'add item at end of the list
Sub SetStorePush(listName As String, item As Object)
	listName = listName.ToLowerCase
	store.GetField(listName).RunMethod("push", item)
End Sub

'add item at end of the list
Sub SetDataPush(listName As String, item As Object)
	listName = listName.ToLowerCase
	data.GetField(listName).RunMethod("push", item)
End Sub

'add item at beginning of list
Sub SetStoreUnshift(lstname As String, obj As Object)
	lstname = lstname.tolowercase
	store.GetField(lstname).RunMethod("unshift", obj)
End Sub

'add item at beginning of list
Sub SetDataUnshift(lstname As String, obj As Object)
	lstname = lstname.tolowercase
	data.GetField(lstname).RunMethod("unshift", obj)
End Sub

'remove item at beginning of list
Sub SetStoreShift(lstname As String)
	lstname = lstname.tolowercase
	store.GetField(lstname).RunMethod("shift", Null)
End Sub

'remove item at beginning of list
Sub SetDataShift(lstname As String)
	lstname = lstname.tolowercase
	data.GetField(lstname).RunMethod("shift", Null)
End Sub


'remove an item from the end of the list
Sub SetDataPop(lstname As String)
	lstname = lstname.tolowercase
	data.GetField(lstname).RunMethod("pop", Null)
End Sub

'get the first item from a list
Sub GetDataFirst(lstName As String) As Object
	lstName = lstName.tolowercase
	Dim lst As List = data.GetField(lstName).result
	Dim obj As Object = lst.Get(0)
	Return obj
End Sub

'splice an array, add item at a position
Sub SetDataSplice(lstname As String, pos As Int, removeHowMany As Int, obj As Object)
	lstname = lstname.tolowercase
	data.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany, obj))
End Sub

'splice an array, remove an item at a position
Sub SetDataSpliceRemove(lstname As String, pos As Int, removeHowMany As Int)
	lstname = lstname.tolowercase
	data.GetField(lstname).RunMethod("splice", Array(pos, removeHowMany))
End Sub

'slice an array
Sub GetDataSlice(lstname As String, startPos As Int) As List
	lstname = lstname.tolowercase
	Dim lst As List = data.GetField(lstname).RunMethod("slice", Array(startPos)).Result
	Return lst
End Sub

'toString an array
Sub GetDataToString(lstname As String) As String
	lstname = lstname.tolowercase
	Dim lst As String = data.GetField(lstname).RunMethod("toString", Null).Result
	Return lst
End Sub


''update list item at position
'Sub SetDataUpdate(lstname As String, pos As Int, obj As Object)
'	lstname = lstname.tolowercase
'	Dim lst As List = data.GetField(lstname).result
'	lst.Set(pos, obj)
'	data.GetField(lstname).RunMethod("shift", Null)
'End Sub


'get global state data
Sub GetStore(prop As String) As Object    'IgnoreDeadCode
	prop = prop.tolowercase
	Dim rslt As Object
	rslt = state.GetDefault(prop, Null)
	Try
		Dim bo As BANanoObject = store.GetField(prop)
		If BANano.IsNull(bo) Then Return ""
		If BANano.IsUndefined(bo) Then Return ""
		rslt = store.GetField(prop).Result
	Catch
		
	End Try  'ignore
	Return rslt
End Sub

'increment state
Sub Increment(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'increment by 1
	cc = cc + addVal
	'save back to state
	SetData(prop, cc)
End Sub

'decremenent state
Sub Decrement(prop As String, addVal As Int)
	prop = prop.tolowercase
	'get the value of the coun
	Dim cc As Int = GetData(prop)
	If BANano.IsNull(cc) Or cc = "" Then cc = 0
	cc = BANano.parseInt(cc)
	'decrement by 1
	cc = cc - addVal
	'save back to state
	SetData(prop, cc)
End Sub

'set direct method
Sub SetFilter(methodName As String, args As List) 
	methodName = methodName.ToLowerCase
	If SubExists(EventHandler, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(EventHandler, methodName, args)
		filters.Put(methodName, cb)
	Else
		'Log($"SetFilter.${methodName} could not be found!"$)
	End If   'ignore
End Sub


'change the locale
Sub SetLocale(slang As String)
	lang = slang
	Try
		Vuetify.GetField("lang").SetField("current", slang)
	Catch
		Log(LastException)
	End Try
End Sub

'set computed
Sub SetComputed(k As String, methodName As String, args As List) 
	k = k.tolowercase
	methodName = methodName.ToLowerCase
	If SubExists(EventHandler, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(EventHandler, methodName, args)
		computed.Put(k, cb.Result)
		methods.Put(methodName, cb)
	End If
End Sub

'set watches 
Sub SetWatch(k As String, bImmediate As Boolean, bDeep As Boolean, methodName As String, args As List) 
	methodName = methodName.tolowercase
	k = k.tolowercase
	If SubExists(EventHandler, methodName) Then
		Dim cb As BANanoObject = BANano.CallBack(EventHandler, methodName, args)
		Dim deepit As Map = CreateMap()
		deepit.Put("handler", methodName)
		deepit.Put("deep", bDeep)
		deepit.Put("immediate", bImmediate)
		watches.Put(k, deepit)
		methods.Put(methodName, cb)
	End If
End Sub


Sub RunMethod(methodName As String, params As Object) As BANanoObject
	methodName = methodName.tolowercase
	Return Vue.RunMethod(methodName, params)
End Sub

Sub CallMethod(methodName As String)
	methodName = methodName.tolowercase
	Vue.RunMethod(methodName, Null)
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


Sub SetCallBack(methodName As String, cb As BANanoObject) 
	methodName = methodName.tolowercase
	methods.Put(methodName, cb)
End Sub

'set the state
Sub SetState(m As Map) 
	For Each k As String In m.Keys
		Dim v As Object = m.Get(k)
		SetData(k, v)
	Next
End Sub

'return if state exists
Sub HasState(k As String) As Boolean
	k = k.tolowercase
	Dim b As Boolean = data.RunMethod("hasOwnProperty", Array(k))
	Return b
End Sub

'toggle the visibility of an item using vshow
Sub ToggleItem(elID As String) 
	elID = elID.ToLowerCase
	Dim sstate As String = $"${elID}show"$
	Toggle(sstate)	
End Sub


'toggle the state value
Sub Toggle(stateName As String) 
	Dim bcurrent As Boolean = GetData(stateName)
	bcurrent = Not(bcurrent)
	Dim optx As Map = CreateMap()
	optx.Put(stateName, bcurrent)
	SetState(optx)	
End Sub

'check if we have state
Sub StateExists(stateName As String) As Boolean
	Return HasState(stateName)
End Sub

'set state object
Sub SetStateMap(mapKey As String, mapValues As Map) 
	mapKey = mapKey.tolowercase
	Dim opt As Map = CreateMap()
	opt.Put(mapKey, mapValues)
	SetState(opt)
	
End Sub

'set state list
Sub SetStateList(mapKey As String, mapValues As List) 
	mapKey = mapKey.tolowercase
	Dim opt As Map = CreateMap()
	opt.Put(mapKey, mapValues)
	SetState(opt)
	
End Sub

Sub SetStateListValues(mapValues As List)  
	For Each lstValue As String In mapValues
		lstValue = lstValue.tolowercase
		Dim opt As Map = CreateMap()
		opt.Put(lstValue, "")
		SetState(opt)
	Next
End Sub

Sub GetStates(lst As List) As Map
	Dim smm As Map = CreateMap()
	For Each lstrec As String In lst
		lstrec = lstrec.tolowercase
		Dim ostate As Object = GetData(lstrec)
		smm.Put(lstrec, ostate)
	Next
	Return smm
End Sub

Sub SetStateTrue(k As String) 
	SetStateSingle(k,True)
End Sub

Sub SetStateFalse(k As String) 
	SetStateSingle(k,False)
End Sub

Sub CStr(o As Object) As String
	If BANano.isnull(o) Or BANano.IsUndefined(o) Then o = ""
	Return "" & o
End Sub

'a single state change
Sub SetStateSingle(k As String, v As Object) 
	k = k.tolowercase
	Dim optx As Map = CreateMap()
	optx.Put(k, v)
	SetState(optx)
End Sub

'get an element
Sub GetElementByID(elID As String) As BANanoElement
	elID = elID.ToLowerCase
	elID = elID.Replace("#","")
	Dim elx As BANanoElement
	elx.Initialize($"#${elID}"$)
	Return elx 
End Sub

'render the ux, load from layout
Sub Serve
	'get the content in the template
	Template = BANanoGetHTML("apptemplate")
	Template = Template.Replace("v-template", "template")
	'
	Dim mlang As Map = CreateMap()
	mlang.Put("current", lang)
	'
	Dim theme As Map = CreateMap()
	theme.Put("dark", Dark)
	VuetifyOptions.Put("rtl", RTL)
	VuetifyOptions.Put("theme", theme)
	VuetifyOptions.Put("lang", mlang)
	VuetifyOptions.Put("breakpoint", CreateMap("scrollBarWidth": 6))
	
	'add the app div
	store = Vue.RunMethod("observable", Array(state))
	Vue.GetField("prototype").SetField("$store", store)
	'set where we should render the app to
	Options.Put("el", "#app")
	Options.Put("store", store)
	'
	If routes.Size > 0 Then
		Dim ropt As Map = CreateMap()
		'ropt.Put("mode", "history")
		ropt.Put("routes", routes)
		ropt.Put("base", BasePath)
		ropt.Put("path", "*")
		ropt.Put("redirect", BasePath)
		'Dim vrouter As BANanoObject
		VueRouter.Initialize2("VueRouter", Array(ropt))
		Options.Put("router", VueRouter)
	End If
	'set vuetify
	Vuetify.Initialize2("Vuetify", VuetifyOptions)
	Options.Put("vuetify", Vuetify)
	'
	Dim cb As BANanoObject = BANano.CallBack(Me, "returndata", Null)
	Options.Put("data", cb.Result)
	Options.Put("components", components)
	Options.Put("methods", methods)
	Options.Put("filters", filters)
	Options.Put("computed", computed)
	Options.Put("watch", watches)
	Options.Put("template", Template)
	Options.Put("name", AppName)
	Vue.Initialize2("Vue", Array(Options))
	
	Dim sstore As String = "$store"
	store = Vue.GetField(sstore)
	Dim emitKey As String = "$emit"
	Emit = Vue.GetField(emitKey)
	Dim srouter As String = "$router"
	VueRouter = Vue.GetField(srouter)
	Dim sdata As String = "$data"
	data = Vue.GetField(sdata)
	Dim sroot As String= "$root"
	Root = Vue.GetField(sroot)
	Dim sroute As String = "$route"
	Route = Vue.GetField(sroute)
	Dim rKey As String = "$refs"
	refs = Vue.GetField(rKey)
	RouterView = refs.GetField(RouterViewName)
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

'reset the validation and perform validation
Sub FormValidate1(formName As String) As Boolean
	FormResetValidation(formName)
	Return FormValidate(formName)
End Sub


'get the active component refs
Sub GetRefs As BANanoObject
	'get the router view
	RouterView = refs.GetField(RouterViewName)
	Dim rKey As String = "$refs"
	Dim refsx As BANanoObject = RouterView.GetField(rKey)
	Return refsx
End Sub

'get the active component slots
Sub GetSlots As BANanoObject
	RouterView = refs.GetField(RouterViewName)
	Dim rKey As String = "$slots"
	Dim refsx As BANanoObject = RouterView.GetField(rKey)
	Return refsx
End Sub

'use for components
private Sub returndata As BANanoObject			'ignoredeadcode
	Return data
End Sub

'get the current path
Sub getCurrentPath As String
	Dim sroute As String = "$route"
	Route = Vue.GetField(sroute)
	Dim cr As String = Route.GetField("path").result
	Return cr
End Sub

'Use router To navigate
Sub NavigateTo(sPath As String)
	'get the current path
	sPath = sPath.tolowercase
	Dim sprev As String = getCurrentPath
	If sPath.EqualsIgnoreCase(sprev) = False Then
		Dim namem As Map = CreateMap()
		namem.put("path", sPath)
		VueRouter.RunMethod("push", Array(namem))
	End If
End Sub

'Use router To navigate
Sub RouterReplace(sPath As String)
	'get the current path
	sPath = sPath.tolowercase
	Dim sprev As String = getCurrentPath
	If sPath.EqualsIgnoreCase(sprev) = False Then
		Dim namem As Map = CreateMap()
		namem.put("path", sPath)
		VueRouter.RunMethod("replace", Array(namem))
	End If
End Sub

'navigate back
Sub GoBack() 
	VueRouter.RunMethod("push", Array(-1))
End Sub

'navigate forward
Sub GoForward() 
	VueRouter.RunMethod("push", Array(1))
End Sub


'use a component module
Sub Use(bo As BANanoObject) 
	Vue.RunMethod("use", bo)
End Sub

'use a component module
Sub Use1(bo As BANanoObject, uopt As Map) 
	Vue.RunMethod("use", Array(bo, uopt))
End Sub

Sub NotState(stateName As String) As Boolean
	Dim bcurrent As Boolean = GetData(stateName)
	If bcurrent = Null Then bcurrent = True
	bcurrent = Not(bcurrent)
	Return bcurrent
End Sub

Sub SetRequired(elID As String, b As Boolean) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}required"$, b)
End Sub

Sub Enable(elID As String) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, False)
End Sub

Sub Disable(elID As String) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, True)
End Sub

Sub SetEnabled(elID As String, b As Boolean) 
	elID = elID.tolowercase
	SetStateSingle($"${elID}disabled"$, b)
End Sub

'hide an item using vshow
Sub Hide(elID As String)  
	elID = elID.tolowercase
	SetStateSingle($"${elID}show"$, False)
End Sub

'show an item using vshow
Sub Show(elID As String) 
	SetStateSingle($"${elID}show"$, True)
End Sub

'get the html part of a bananoelement
Sub GetPlaceholderHTML As String
	Dim be As BANanoElement
	be.Initialize("#placeholder")
	Dim xTemplate As String = be.GetHTML
	be.Empty
	'xTemplate = xTemplate.Replace("v-template", "template")
	Return xTemplate
End Sub

'get the html part of a bananoelement
Sub GetPlaceholder As String
	Dim be As BANanoElement
	be.Initialize("#placeholder")
	Dim xTemplate As String = be.GetHTML
	Return xTemplate
End Sub

'set on click method
Sub SetClick(methodName As String)
	methodName = methodName.tolowercase
	If SubExists(EventHandler, methodName) = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.CallBack(EventHandler, methodName, Array(e))
	'add to methods
	SetCallBack(methodName, cb)
End Sub

'set right to left
Sub SetRTL(b As Boolean)
	Vuetify.SetField("rtl", b)
End Sub

'scroll to, 300, 0, easeInOutCubic
Sub ScrollTo(elID As String, duration As Int, offset As Int, easing As String)
	Try
		elID = elID.tolowercase
		Dim el As BANanoObject = refs.GetField(elID)
		If duration = Null Then duration = 300
		If offset = Null Then offset = 0
		If easing = "" Then easing = "easeInOutCubic"
		Dim opt As Map = CreateMap()
		opt.Put("duration", duration)
		opt.Put("offset", offset)
		opt.Put("easing", easing)
		Vuetify.RunMethod("goTo", Array(el, opt))
	Catch
		Log("ScrollTo Error")
	End Try
End Sub


'scroll to a particular item
Sub Goto(elID As String)
	elID = elID.tolowercase
	Vuetify.RunMethod("goTo", Array(elID))
End Sub

'add a rule
Sub AddRule(ruleName As String, MethodName As String)
	If BANano.IsNull(ruleName) Or BANano.IsUndefined(ruleName) Then ruleName = ""
	ruleName = ruleName.ToLowerCase
	If ruleName = "" Then Return
	MethodName = MethodName.ToLowerCase
	Dim rules As List
	Dim b As Boolean = data.RunMethod("hasOwnProperty", Array(ruleName))
	If b Then	
		rules = data.GetField(ruleName).result
	Else
		rules = NewList
	End If
	'
	Dim v As Object
	Dim cb As BANanoObject = BANano.CallBack(EventHandler, MethodName, Array(v))
	If SubExists(EventHandler, MethodName) Then
		rules.Add(cb.Result)
	End If
	data.SetField(ruleName, rules)
End Sub

'get document ready state
Sub GetReadyState As String
	Dim rs As String = BANano.Window.GetField("document").GetField("readyState").Result
	Return rs
End Sub

'set ready change event
Sub SetReadyChange()
	If SubExists(EventHandler, "ReadyChange") = False Then Return
	Dim e As BANanoEvent
	Dim cb As BANanoObject = BANano.callback(EventHandler, "ReadyChange", Array(e))
	BANano.Window.GetField("document").AddEventListener("readystatechange", cb, True)
End Sub
'
private Sub HideBody 
	Dim stylem As Map = CreateMap("visibility":"hidden")
	Body.SetStyle(BANano.ToJson(stylem))
End Sub

private Sub ShowBody
	Dim stylem As Map = CreateMap("visibility":"visible")
	Body.SetStyle(BANano.ToJson(stylem))
End Sub


Sub DateDiff(currentDate As String, otherDate As String) As Int
	If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
	If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
	
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
	Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
	'
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "day")).Result
	Return rslt
End Sub

Sub MinuteDiff(currentDate As String, otherDate As String) As Int
	If BANano.IsNull(currentDate) Or BANano.IsUndefined(currentDate) Then Return 0
	If BANano.IsNull(otherDate) Or BANano.IsUndefined(otherDate) Then Return 0
	
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(currentDate))
	Dim bo1 As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(otherDate))
	'
	Dim rslt As String = bo.RunMethod("diff", Array(bo1, "minute")).Result
	Return rslt
End Sub


Sub RemoveDataItems(items As List)
	For Each k As String In items
		RemoveData(k)
	Next
End Sub

Sub RemoveData(key As String)
	key = key.ToLowerCase
	data.Delete(key)
End Sub

'update the state
Sub SetData(prop As String, value As Object)
	If BANano.IsNull(prop) Or BANano.IsUndefined(prop) Then
		prop = ""
	End If
	If prop = "" Then Return
	prop = prop.tolowercase
	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
	If dotPos >= 0 Then
		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
		Dim oEL As Map
		Dim b As Boolean = data.RunMethod("hasOwnProperty", Array(pEL)).Result
		If b Then
			oEL = data.GetField(pEL).Result
		Else
			oEL.Initialize
		End If
		oEL.Put(cEL, value)
		data.SetField(pEL, oEL)
	Else
		data.SetField(prop, value)
	End If
End Sub

Sub GetData(prop As String) As Object
	prop = prop.ToLowerCase
	Dim obj As Object = Null
	Dim dotPos As Int = BANanoShared.InStr(prop, ".")
	If dotPos >= 0 Then
		Dim pEL As String = BANanoShared.MvField(prop,1, ".")
		Dim cEL As String = BANanoShared.MvField(prop,2, ".")
		Dim oEL As Map
		Dim b As Boolean = data.RunMethod("hasOwnProperty", Array(pEL)).Result
		If b Then
			oEL = data.GetField(pEL).Result
			If oEL.ContainsKey(cEL) Then 
				obj = oEL.Get(cEL)
			End If
		End If
	Else
		Dim b As Boolean = data.RunMethod("hasOwnProperty", Array(prop)).Result
		If b Then
			obj = data.GetField(prop).result
		End If
	End If
	If BANano.IsNull(obj) Or BANano.IsUndefined(obj) Then obj = CStr(obj)
	Return obj
End Sub

'format date to meet your needs
Sub FormatDisplayDate(item As String, sFormat As String) As String
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("dayjs", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
End Sub

'format numeric display
Sub FormatDisplayNumber(item As String, sFormat As String) As String
	item = "" & item
	If item = "" Then Return ""
	If BANano.isnull(item) Or BANano.IsUndefined(item) Then Return ""
	Dim bo As BANanoObject = BANano.RunJavascriptMethod("numeral", Array(item))
	Dim sDate As String = bo.RunMethod("format", Array(sFormat)).Result
	Return sDate
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

'convert a list to a map
Sub ListToMap(lst As List) As Map
	Dim nm As Map = CreateMap()
	For Each item As String In lst
		nm.Put(item, item)
	Next
	Return nm
End Sub


'convert a list to a data source
Sub ListToDataSource(keyName As String, valueName As String, lst As List) As List
	Dim nl As List
	nl.Initialize
	For Each item As String In lst
		Dim nm As Map = CreateMap()
		nm.Put(keyName, item)
		nm.Put(valueName, item)
		nl.Add(nm)
	Next
	Return nl
End Sub

'<code>
'Dim dt1 As VueDataTable = vuetify.AddDataTable(Me, "r1c1", "dt1")
'dt1.Title = "DataTable"
'dt1.AddSpacer
'dt1.AddNew(vc)
'dt1.AddDivider
'dt1.AddClearSort(vc)
'dt1.AddDivider
'dt1.AddFilter(vc, "primary--text")
'dt1.AddDivider
'dt1.AddClearFilter(vc)
''add columns 
'dt1.AddColumn("col1", "Column1")
'dt1.SetFilterable(Array("col1", "col2"))
'dt1.AddAvatarImg("avatar", "Profile")
'dt1.AddSwitch("active", "Active")
'dt1.AddRating("rating", "Performance")
'dt1.AddProgressLinear("projects", "Projects")
'dt1.SetProgressLinearDimensions("projects", "orange", "25", True)
'dt1.AddProgressCircular("tasks", "Completed")
'dt1.SetProgressCircularDimensions("tasks", "green", "-90", "46", "8")
'dt1.AddImage("image", "Image")
'dt1.SetImageDimensions("image", "80px", "80px")
'dt1.AddLink("sendto", "Email To", "_blank")
'dt1.AddIconView("icon", "Icon", "item.color")
'dt1.SetColumnPrefix("sendto", "mailto:")
'dt1.AddColumn("datetaken", "Date Taken")
'dt1.SetColumnType("datetaken", dt1.COLUMN_DATE)
'dt1.SetColumnDateFormat("datetaken", "ddd, DD MMM YYYY")
'dt1.AddColumn("lat", "Latitude")
'dt1.AddColumn("lng", "Longitude")
'dt1.SetColumnNumberFormat("lat", "0.00")
'dt1.SetColumnNumberFormat("lng", "0.00")
''add actions
'dt1.AddEdit
'dt1.AddDelete
'dt1.AddClone
'dt1.AddPrint
'dt1.AddSave
'dt1.AddCancel
'dt1.AddDownload
'dt1.AddMenuV
'dt1.SetIconDimensions("edit", "", Vuetify.COLOR_GREEN)
'dt1.SetIconDimensions("delete", "", Vuetify.COLOR_RED)
'dt1.SetIconDimensions("clone", "", Vuetify.COLOR_AMBER)
'dt1.SetIconDimensions("print", "", Vuetify.COLOR_BLUE)
'dt1.SetIconDimensions("save", "", Vuetify.COLOR_BLUEGREY)
'dt1.SetIconDimensions("cancel", "", Vuetify.COLOR_BROWN)
'dt1.SetIconDimensions("download", "", Vuetify.COLOR_CYAN)
'dt1.SetIconDimensions("menu", "", Vuetify.COLOR_INDIGO)		
'vc.BindVueTable(dt1)
''add subs
'
'Sub dt1_filter_click(e As BANanoEvent)
'	dt1.ApplyFilter(vc)
'End Sub
'
'Private Sub dt1_add_Click (e As BANanoEvent)
'End Sub
'
'Private Sub dt1_clearsort_click (e As BANanoEvent)
'	dt1.ClearSort(vc)
'End Sub
'
'Private Sub dt1_clearfilter_click (e As BANanoEvent)
'	dt1.ClearFilter(vc)
'End Sub
'
'Sub dt1_itemselected (item As Map)
'End Sub
'
'Sub dt1_Save (item As Map)
'End Sub
'
'Sub dt1_Edit (item As Map)
'End Sub
'
'Sub dt1_Delete (item As Map)
'End Sub
'
'Sub dt1_Print (item As Map)
'End Sub
'
'Sub dt1_Cancel (item As Map)
'End Sub
'
'Sub dt1_Change (item As Map)
'End Sub
'
'Sub dt1_Download (item As Map)
'End Sub
'
'Sub dt1_Menu (item As Map)
'End Sub
'
'Sub dt1_Clone (item As Map)
'End Sub
'</code>
Sub AddDataTable(Module As Object, parentID As String, elID As String) As VueTable
	Dim elx As VueTable
	elx.Initialize(Module, elID, elID)
	elx.AddToParent(parentID)
	Return elx
End Sub

Sub AddContainer(Module As Object, parentID As String, elID As String, bFluid As Boolean) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-container", "", "", "", CreateMap(":fluid":bFluid))
End Sub

Sub AddSheet(Module As Object, parentID As String, elID As String, Height As String, Color As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-sheet", "", "", Color, props)
	elx.Height = Height
	Return elx
End Sub

'<code>
'Dim drw as VueElement = vuetify.AddDrawer(Me, "vapp", "drw1", "drw1show", False, "", False, null)
'drw.App = True
'drw.Width = 300
'vuetify.BindVueElement(drw)
'</code>
Sub AddDrawer(Module As Object, parentID As String, elID As String, vmodel As String, bVisible As Boolean, Color As String, bRight As Boolean, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-navigation-drawer", vmodel, "", Color, props)
	elx.Right = bRight
	elx.SetData(vmodel, bVisible)
	Return elx
End Sub

'<code>
'Dim drw as VueElement = vuetify.AddAppDrawer(Me, "vapp", "drw1", "drw1show", False, "", False, null)
'drw.App = True
'drw.Width = 300
'vuetify.BindVueElement(drw)
'</code>
Sub AddAppDrawer(Module As Object, elID As String, vmodel As String, bVisible As Boolean, Color As String, bRight As Boolean, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, $"${AppName}app"$, elID, "v-navigation-drawer", vmodel, "", Color, props)
	elx.Right = bRight
	elx.SetData(vmodel, bVisible)
	Return elx
End Sub

Sub AddBtn(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-btn", "", "", "", Null)
End Sub

Sub AddSparkLine(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-sparkline", "", "", "", Null)
End Sub

Sub AddBtnToggle(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-btn-toggle", "", "", "", Null)
End Sub


Sub AddNavigationDrawer(Module As Object, parentID As String, elID As String, vmodel As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-navigation-drawer", vmodel, "", "", Null)
End Sub

Sub AddOverlay(Module As Object, parentID As String, elID As String, vmodel As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-overlay", vmodel, "", "", props)
End Sub

Sub AddNav(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "nav", "", "", "", Null)
End Sub

Sub AddToolbarTitle(Module As Object, parentID As String, elID As String, Caption As String, Color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-toolbar-title", "", Caption, Color, props)
End Sub

'add the vapp
Sub AddApp As VueElement
	Return AddVueElement(EventHandler, "apptemplate", $"${AppName}app"$, "v-app", "", "", "", Null)
End Sub

'add the main container
Sub AddMain As VueElement
	Return AddVueElement(EventHandler, AppName, $"${AppName}main"$, "v-main", "", "", "", Null)
End Sub

Sub AddStepper(Module As Object, parentID As String, elID As String, vmodel As String, altLabels As Boolean, nonLinear As Boolean, bVertical As Boolean, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-stepper", vmodel, "", "", props)
	elx.AddAttr(":alt-labels", altLabels)
	elx.AddAttr(":non-linear", nonLinear)
	elx.AddAttr(":vertical", bVertical)
	Return elx
End Sub

Sub AddStepperStep(Module As Object, parentID As String, elID As String, color As String, complete As String, editable As Boolean, iStep As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-stepper-step", "", "", color, props)
	elx.AddAttr("complete", complete)
	elx.AddAttr("editable", editable)
	elx.AddAttr("step", iStep)
	Return elx
End Sub


Sub AddStepperContent(Module As Object, parentID As String, elID As String, iStep As String, Caption As String,props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-stepper-content", "", Caption, "", props)
	elx.AddAttr("step", iStep)
	Return elx
End Sub

Sub AddStepperHeader(Module As Object, parentID As String, elID As String, Caption As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-stepper-header", "", Caption, "", props)
	Return elx
End Sub

Sub AddStepperItems(Module As Object, parentID As String, elID As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-stepper-items", "", "", "", props)
	Return elx
End Sub

'<code>
'Dim frm As VueElement = vuetify.AddForm(Me, "r1c1", "frm", "frmvalid", True, Null)
'vuetify.BindVueElement(frm)
'Dim bValid As Boolean = vuetify.FormValidate(
'</code>
Sub AddForm(Module As Object, parentID As String, elID As String, vmodel As String, bLazyValidation As Boolean, props As Map) As VueElement
	elID = elID.tolowercase
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-form", vmodel, "", "", props)
	elx.Ref = elID
	elx.SetAttr(":lazy-validation", bLazyValidation)
	If vmodel <> "" Then 
		elx.setdata(vmodel, False)
	End If
	Return elx
End Sub


Sub AddTemplate(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-template", "", "", "", Null)
End Sub

Sub AddListItemAction(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-action", "", "", "", Null)
End Sub


Sub AddListItemContent(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-content", "", "", "", Null)
End Sub



Sub AddListItemIcon(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-icon", "", "", "", Null)
End Sub


Sub AddListItemAvatar(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-avatar", "", "", "", Null)
End Sub

Sub AddListItemTitle(Module As Object, parentID As String, elID As String, caption As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-title", "", caption, "", Null)
End Sub

Sub AddListItemSubTitle(Module As Object, parentID As String, elID As String, caption As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-subtitle", "", caption, "", Null)
End Sub


Sub AddListItemGroup(Module As Object, parentID As String, elID As String, color As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-group", "", "", color, Null)
End Sub

Sub AddListItemActionText(Module As Object, parentID As String, elID As String, caption As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-list-item-action-text", "", caption, "", Null)
End Sub

Sub AddHamburger(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-app-bar-nav-icon", "", "", color, props)
End Sub

Sub AddAppBarNavIcon(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-app-bar-nav-icon", "", "", "", Null)
End Sub

Sub AddToolbar(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-toolbar", "", "", color, props)
End Sub

Sub AddAppBar(Module As Object, elID As String, color As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, $"${AppName}app"$, elID, "v-app-bar", "", "", color, props)
	elx.Bind("app", True)
	Return elx
End Sub


Sub AddSlotAppend(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-template", "", "", "", Null)
	elx.VSlotAppend = True
	Return elx
End Sub

Sub AddSlotExtension(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-template", "", "", "", Null)
	elx.VSlotExtension = True
	Return elx
End Sub

Sub AddSlideXReverseTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-slide-x-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddFabTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-fab-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddFadeTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-fade-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddExpandTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-expand-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScaleTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-scale-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScrollXTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-scroll-x-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScrollXReverseTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-scroll-x-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScrollYReverseTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-scroll-y-reverse-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddScrollYTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-scroll-y-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddSlideYTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-slide-y-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddSlideXTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-slide-x-transition", "", "", "", Null)
	Return elx
End Sub

Sub AddSlideYReverseTransition(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-slide-y-reverse-transition", "", "", "", Null)
	Return elx
End Sub


Sub AddTimeLine(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-timeline", "", "", "", Null)
	Return elx
End Sub

Sub AddTimeLineItem(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-timeline-item", "", "", "", Null)
	Return elx
End Sub

Sub AddSnackBar(Module As Object, parentID As String, elID As String, vmodel As String, Caption As String, color As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-snackbar", vmodel, Caption, color, props)
	Return elx
End Sub

Sub AddAppendSlot(Module As Object, parentID As String, elID As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-template", "", "", "", props)
	elx.VSlotAppend = True
	Return elx
End Sub

'<code>
'dim prg1 As VueElement = vuetify.AddProgressLinear(Me, "r1c1", "prg1", "prg1v", vuetify.COLOR_GREEN, null)
'vuetify.BindVueElement(prg1)
'</code>
Sub AddProgressLinear(Module As Object, parentID As String, elID As String, vmodel As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-progress-linear", vmodel, "", color, props)
End Sub

'<code>
'dim prg1 As VueElement = vuetify.AddProgressCircular(Me, "r1c1", "prg1", "prg1v", "", vuetify.COLOR_GREEN, null)
'vuetify.BindVueElement(prg1)
'</code>
Sub AddProgressCircular(Module As Object, parentID As String, elID As String, vmodel As String, caption As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-progress-circular", vmodel, caption, color, props)
End Sub


'<code>
'dim slot1 As VueElement = vuetify.AddSlot(Me, "r1c1", "slot1")
'</code>
Sub AddSlot(Module As Object, parentID As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "slot", "", "", "", Null)
	Return elx
End Sub

Sub AddAnchor(Module As Object, parentID As String, elID As String, href As String, caption As String, target As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "a", "", caption, "", Null)
	elx.href = href
	elx.target = target
	Return elx
End Sub


'add custom component
Sub AddComponent(Module As Object, parentID As String, eTag As String, elID As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, eTag, "", "", "", Null)
	Return elx
End Sub

Sub AddCard(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-card", "", "", color, props)
End Sub

Sub AddWindow(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-window", "", "", "", Null)
End Sub

Sub AddWindowItem(Module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-window-item", "", "", "", Null)
End Sub

Sub AddCardTitle(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-card-title", "", "", color, props)
End Sub

Sub AddCardSubTitle(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-card-subtitle", "", "", color, props)
End Sub

Sub AddCardText(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-card-text", "", "", color, props)
End Sub

Sub AddCardActions(Module As Object, parentID As String, elID As String, color As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elID, "v-card-actions", "", "", color, props)
End Sub

'add a vue element on parent
Sub AddVueElement(Module As Object, parentID As String, elID As String, tag As String, vModel As String, Caption As String, color As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.tolowercase
	elID = elID.Replace("#", "")
	'
	If BANano.Exists(parentID) = False Then
		Log($"AddVueElement.${elID} could not be added to ${parentID}"$)
		Return Null
	End If
		
	'check if the element exists
	If BANano.Exists($"#${elID}"$) = False Then
		Dim parELE As BANanoElement
		parELE.Initialize(parentID)
		parELE.Append($"<${tag} id="${elID}"></${tag}>"$)
	End If
	'get the element
	Dim ve As VueElement
	ve.Initialize(Module, elID, elID)
	If Caption <> "" Then ve.Caption = Caption
	ve.VModel = vModel
	ve.SetData(vModel, "")
	If color <> "" Then ve.Color = color
	ve.AssignProps(props)
	ve.BindAllEvents
	Return ve
End Sub

'update any vue element
Sub UpdateVueElement(Module As Object, elID As String, vModel As String, Caption As String, props As Map) As VueElement
	elID = elID.tolowercase
	elID = elID.Replace("#","")
	'get access to the element
	Dim ve As VueElement
	ve.Initialize(Module, elID, elID)
	If Caption <> "" Then ve.Caption = Caption
	ve.VModel = vModel
	ve.SetData(vModel, "")
	ve.AssignProps(props)
	ve.BindAllEvents
	Return ve
End Sub


private Sub CleanID(v As String) As String
	v = v.Replace("#","")
	v = $"#${v}"$
	v = v.tolowercase
	Return v
End Sub


Sub AddStepperHorizontal(Module As Object, parentID As String, elID As String, vmodel As String, altLabels As Boolean, nonLinear As Boolean, props As Map) As VueElement
	elID = elID.tolowercase
	parentID = CleanID(parentID)
	'
	Dim stepperHeader As String = $"${elID}headers"$
	Dim stepperItems As String = $"${elID}items"$
	'
	Dim sTemplate As StringBuilder
	sTemplate.Initialize 
	sTemplate.Append($"<v-stepper id="${elID}">"$)
	sTemplate.Append($"<v-stepper-header id="${stepperHeader}"></v-stepper-header>"$)
	sTemplate.Append($"<v-stepper-items id="${stepperItems}"></v-stepper-items>"$)
	sTemplate.Append($"</v-stepper>"$)
	
	BANano.GetElement(parentID).Append(sTemplate.tostring)
		
	'
	Dim vstepper As VueElement
	vstepper.Initialize(Module, elID, elID)
	vstepper.VModel = vmodel
	vstepper.SetData(vmodel, "")
	vstepper.AddAttr(":alt-labels", altLabels)
	vstepper.AddAttr(":non-linear", nonLinear)
	vstepper.BindAllEvents
	vstepper.AssignProps(props)
	
	'open the first item
	vstepper.SetData(vmodel, 1)
	Return vstepper
End Sub


Sub AddChipGroup(Module As Object, parentID As String, elID As String, vModel As String,  activeClass As String, bMultiple As Boolean, bShowArrows As Boolean, bFilter As Boolean, DataSource As String, Key As String, Value As String, chipgroupprops As Map, chipprops As Map) As VueElement
	elID = elID.tolowercase
	DataSource = DataSource.tolowercase
	parentID = CleanID(parentID)
	'
	BANano.GetElement(parentID).Append($"<v-chip-group id="${elID}"><v-chip id="${elID}chip"></v-chip></v-chip-group>"$)
	Dim chipid As String = $"${elID}chip"$
	
	'get the text field, there is only 1 element on the layout
	Dim vchipgroup As VueElement
	vchipgroup.Initialize(Module, elID, elID) 
	vchipgroup.Bind("show-arrows", bShowArrows)
	vchipgroup.VModel = vModel
	vchipgroup.Multiple = bMultiple
	vchipgroup.AddAttr("active-class", activeClass)
	vchipgroup.AssignProps(chipgroupprops)
	vchipgroup.BindAllEvents
	
	If bMultiple Then
		vchipgroup.SetData(vModel, NewList)
	Else
		vchipgroup.SetData(vModel, "")
	End If
	vchipgroup.SetData(DataSource, NewList)
	'
	'get the text field, there is only 1 element on the layout
	Dim vchip As VueElement
	vchip.Initialize(Module, chipid, chipid)
	vchip.VFor = $"item in ${DataSource}"$
	vchip.BindKey($"item.${Key}"$)
	vchip.Caption = vchip.ItemInMoustache(Value)
	vchip.AddAttr(":filter", bFilter)
	vchip.AddAttr(":value", "item.value")
	vchip.Outlined = True
	vchip.AssignProps(chipprops)
	
	vchipgroup.BindVueElement(vchip)
	Return vchipgroup
End Sub

Sub AddComboBox1(Module As Object, parentID As String, fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean, ReturnObject As Boolean) As VueElement
	Return AddComboBox(Module, parentID, fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddSelect1(Module As Object, parentID As String, fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean, ReturnObject As Boolean) As VueElement
	Return AddSelect(Module, parentID, fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddAutoComplete1(Module As Object, parentID As String, fldName As String, vmodel As String, Title As String, DataSource As String, Key As String, Value As String, bMultiple As Boolean , ReturnObject As Boolean) As VueElement
	Return AddAutoComplete(Module, parentID, fldName, vmodel, Title, False, bMultiple, "", DataSource, Key, Value, ReturnObject, "", Null)
End Sub

Sub AddAutoComplete(Module As Object, parentID As String, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	'
	BANano.GetElement(parentID).Append($"<v-autocomplete id="${elID}"></v-autocomplete>"$)
	Dim vselect As VueElement
	vselect.Initialize(Module, elID, elID)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.Bind("return-object", returnObject)
	vselect.AssignProps(props)
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	Dim lst As List = NewList
	vselect.SetData(sourceTable, lst)
	vselect.BindAllEvents
	Return vselect
End Sub


Sub AddComboBox(Module As Object, parentID As String, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	
	'
	BANano.GetElement(parentID).Append($"<v-combobox id="${elID}"></v-combobox>"$)
	Dim vselect As VueElement
	vselect.Initialize(Module, elID, elID)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.Bind("return-object", returnObject)
	vselect.AssignProps(props)
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	Dim lst As List = NewList
	vselect.SetData(sourceTable, lst)
	vselect.BindAllEvents
	Return vselect
End Sub

'a button with an icon on the right
'<code>
'Dim btn1 As VueElement = vuetify.AddButtonWithRightIcon(Me, "r2c1", "btn1", "Button 1", "mdi-heart", "primary", True, Null, null)
'vuetify.BindVueElement(btn1)
'
'Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButtonWithRightIcon(Module As Object, parentID As String, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim siconright As String = $"${elID}icon"$
	Dim sspanright As String = $"${elID}span"$
	'
	BANano.GetElement(parentID).Append($"<v-btn id="${elID}"><span id="${elID}span"></span><v-icon id="${elID}icon"></v-icon></v-btn>"$)
	
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	'
	Dim viconright As VueElement
	viconright.Initialize(Module, siconright, siconright)
	'
	Dim vspanleft As VueElement
	vspanleft.Initialize(Module, sspanright, sspanright)
	
	vspanleft.Caption = eLabel
	viconright.Caption = eIcon
	viconright.Dark = True
	viconright.AddAttr(":right", True)
	'
	If eColor <> "" Then vbtnright.Color = eColor
	If bOutlined Then vbtnright.Outlined = True
	'
	vbtnright.AssignProps(btnprops)
	viconright.AssignProps(iconprops)
	'
	vbtnright.BindAllEvents
	'
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(vspanleft)
	'
	Return vbtnright
End Sub

'a button with an icon on the left
'<code>
'Dim btn1 As VueElement = vuetify.AddButtonWithLeftIcon(Me, "r2c1", "btn1", "Button 1", "mdi-heart", "primary", True, Null, null)
'vuetify.BindVueElement(btn1)
'
''btn1 event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButtonWithLeftIcon(Module As Object, parentID As String, elID As String, eLabel As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim siconright As String = $"${elID}icon"$
	Dim sspanright As String = $"${elID}span"$
	'
	BANano.GetElement(parentID).Append($"<v-btn id="${elID}"><v-icon id="${elID}icon"></v-icon><span id="${elID}span"></span></v-btn>"$)
	
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	'
	Dim viconright As VueElement
	viconright.Initialize(Module, siconright, siconright)
	'
	Dim vspanleft As VueElement
	vspanleft.Initialize(Module, sspanright, sspanright)
	
	vspanleft.Caption = eLabel
	viconright.Caption = eIcon
	viconright.Dark = True
	viconright.AddAttr(":left", True)
	'
	If eColor <> "" Then vbtnright.Color = eColor
	If bOutlined Then vbtnright.Outlined = True
	'
	vbtnright.AssignProps(btnprops)
	viconright.AssignProps(iconprops)
	'
	vbtnright.BindAllEvents
	'
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(vspanleft)
	'
	Return vbtnright
End Sub


'a button with an icon on the right
'<code>
'Dim avatar1 As VueElement = vuetify.AddAvatarWithBadge(Me, "r2c1", "btn1", "./assets/sponge.png", "64", "avatar1", "red", Null, Null)
'vuetify.BindVueElement(avatar1)
'
'Event
'Sub avatar1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddAvatarWithBadge(Module As Object, parentID As String, elID As String, imgURL As String, avatarSize As Int, vmodel As String, badgeColor As String, avatarprops As Map, badgeprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim avatarid As String = $"${elID}avatar"$
	Dim imageid As String = $"${elID}image"$
	'
	BANano.GetElement(parentID).Append($"<v-badge id="${elID}"><v-avatar id="${avatarid}"><v-img id="${imageid}"></v-img></v-avatar></v-badge>"$)
	'
	Dim vbadge As VueElement
	vbadge.Initialize(Module, elID, elID)
	If badgeColor <> "" Then vbadge.Color = badgeColor
	If vmodel <> "" Then vbadge.Bind("content", vmodel)
	If vmodel <> "" Then vbadge.Bind("value", vmodel)
	vbadge.AssignProps(badgeprops)
	'
	Dim img As VueElement
	img.Initialize(Module, imageid, imageid)
	img.Src = imgURL
	img.Alt = ""
	'
	Dim avatar As VueElement
	avatar.Initialize(Module, avatarid, avatarid)
	If avatarSize <> 0 Then avatar.AddAttr("size", avatarSize)
	avatar.AssignProps(avatarprops)
	img.BindAllEvents
	'
	vbadge.BindVueElement(img)
	vbadge.BindVueElement(avatar)
	Return vbadge
End Sub

Sub AddAvatar1(Module As Object, parentID As String, elID As String, vmodel As String, avatarSize As Int, avatarprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim imageid As String = $"${elID}image"$
	'
	BANano.GetElement(parentID).Append($"<v-avatar id="${elID}"><v-img id="${imageid}"></v-img></v-avatar>"$)
	
	Dim img As VueElement
	img.Initialize(Module, imageid, imageid)
	img.AddAttr(":src", vmodel)
	img.AddAttr(":lazy-src", vmodel)
	img.Alt = ""
	'
	Dim avatar As VueElement
	avatar.Initialize(Module, elID, elID)
	If avatarSize > 0 Then avatar.AddAttr("size", avatarSize)
	avatar.AssignProps(avatarprops)
	img.BindAllEvents
	'
	avatar.BindVueElement(img)
	Return avatar
End Sub


Sub AddUnorderedList(Module As Object, parentID As String, id As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, id, "ul", "", "", "", Null)
	Return elx
End Sub

Sub AddOrderedList(Module As Object, parentID As String, id As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, id, "ol", "", "", "", Null)
	Return elx
End Sub

Sub AddLI(Module As Object, parentID As String, id As String, text As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, id, "li", "", text, "", Null)
	Return elx
End Sub

Sub AddLink(Module As Object, parentID As String, id As String, href As String, text As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, id, "a", "", text, "", Null)
	elx.href = href
	Return elx
End Sub


Sub AddAvatar(Module As Object, parentID As String, elID As String, imgURL As String, avatarSize As Int, avatarprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim imageid As String = $"${elID}image"$
	'
	BANano.GetElement(parentID).Append($"<v-avatar id="${elID}"><v-img id="${imageid}"></v-img></v-avatar>"$)
	
	Dim img As VueElement
	img.Initialize(Module, imageid, imageid)
	img.Src = imgURL
	img.Alt = ""
	'
	Dim avatar As VueElement
	avatar.Initialize(Module, elID, elID)
	If avatarSize > 0 Then avatar.AddAttr("size", avatarSize)
	avatar.AssignProps(avatarprops)
	img.BindAllEvents
	'
	avatar.BindVueElement(img)
	Return avatar
End Sub


Sub AddAvatarWithText(Module As Object, parentID As String, elID As String, Caption As String, Color As String, avatarSize As Int, TextColor As String, TextColorIntensity As String, avatarprops As Map, textProps As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim spaniD As String = $"${elID}span"$
	'
	BANano.GetElement(parentID).Append($"<v-avatar id="${elID}"><span id="${spaniD}"></span></v-avatar>"$)
	'
	Dim avatar As VueElement
	avatar.Initialize(Module, elID, elID)
	If avatarSize <> 0 Then avatar.AddAttr("size", avatarSize)
	If Color <> "" Then avatar.Color = Color
	avatar.AssignProps(avatarprops)
	'
	Dim txt As VueElement
	txt.Initialize(Module, spaniD, spaniD)
	txt.Caption = Caption
	If TextColor <> "" Then txt.TextColor = TextColor
	If TextColorIntensity <> "" Then txt.TextColorIntensity = TextColorIntensity
	txt.AssignProps(textProps)
	avatar.BindAllEvents
	'
	avatar.BindVueElement(txt)
	Return avatar
End Sub


Sub AddSelect(Module As Object, parentID As String, elID As String, vmodel As String, sLabel As String, bRequired As Boolean, bMultiple As Boolean, sPlaceHolder As String, sourceTable As String, sourceField As String, displayField As String, returnObject As Boolean, sHelperText As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	sourceTable = sourceTable.ToLowerCase
	sourceField = sourceField.ToLowerCase
	displayField = displayField.tolowercase
	
	'
	BANano.GetElement(parentID).Append($"<v-select id="${elID}"></v-select>"$)
	Dim vselect As VueElement
	vselect.Initialize(Module, elID, elID)
	vselect.label = sLabel
	vselect.Required = bRequired
	vselect.Placeholder = sPlaceHolder
	vselect.Hint = sHelperText
	vselect.Multiple = bMultiple
	vselect.Items = $":${sourceTable}"$
	If displayField <> "" Then vselect.ItemText = displayField
	If sourceField <> "" Then vselect.ItemValue = sourceField
	vselect.VModel = vmodel
	vselect.ReturnObject = returnObject
	'
	If bMultiple Then
		Dim lst As List = NewList
		vselect.SetData(vmodel, lst)
	Else
		vselect.SetData(vmodel, Null)
	End If
	If returnObject = False Then
		vselect.SetData(vmodel, "")
	End If
	'
	vselect.AssignProps(props)
	'
	vselect.SetData(sourceTable, NewList)
	vselect.BindAllEvents
	Return vselect
End Sub

Sub AddRouterView(Module As Object, parentID As String, elID As String) As VueElement
	elID = elID.tolowercase
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "router-view", "", "", "", Null)
	elx.Ref = elID
	Return elx
End Sub

'add span
'<code>
'dim lbl1 As VueElement = vuetify.AddSpan(Me, "r1c2", "lbl1", "Span", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddSpan(Module As Object, parentID As String, elID As String, Caption As String,  TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "span", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h6
'<code>
'dim lbl1 As VueElement = vuetify.AddH6(Me, "r1c2", "lbl1", "h6", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH6(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h6", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h5
'<code>
'dim lbl1 As VueElement = vuetify.AddH5(Me, "r1c2", "lbl1", "h5", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH5(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h5", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h4
'<code>
'dim lbl1 As VueElement = vuetify.AddH4(Me, "r1c2", "lbl1", "h4", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH4(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h4", Caption , False, TextColor, TextColorIntensity, Null)
End Sub

'add h3
'<code>
'dim lbl1 As VueElement = vuetify.AddH3(Me, "r1c2", "lbl1", "h3", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH3(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h3", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h2
'<code>
'dim lbl1 As VueElement = vuetify.AddH2(Me, "r1c2", "lbl1", "h2", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH2(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h2", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add paragraph
'<code>
'dim lbl1 As VueElement = vuetify.AddParagraph(Me, "r1c2", "lbl1", "h1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddParagraph(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "p", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add h1
'<code>
'dim lbl1 As VueElement = vuetify.AddH1(Me, "r1c2", "lbl1", "h1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddH1(Module As Object, parentID As String, elID As String, Caption As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "h1", Caption, False, TextColor, TextColorIntensity, Null)
End Sub

'add lorem ipsum
'<code>
'dim lbl1 As VueElement = vuetify.AddLoremIpsum(Me, "r1c2", "lbl1", "", "")
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddLoremIpsum(Module As Object, parentID As String, elID As String, TextColor As String, TextColorIntensity As String) As VueElement
	Return AddLabel(Module, parentID, elID, "p", "", True, TextColor, TextColorIntensity, Null)
End Sub

'<code>
'dim lbl1 As VueElement = vuetify.AddLabel(Me, "r1c2", "lbl1", "h1", "This is h1", false, "", "", null)
'vuetify.BindVueElement(lbl1)
'</code>
Sub AddLabel(Module As Object, parentID As String, elID As String, Size As String, Caption As String, bLoremIpsum As Boolean, TextColor As String, TextColorIntensity As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, Size, "", Caption, "", props)
	elx.LoremIpsum = bLoremIpsum
	elx.TextColor = TextColor
	elx.TextColorIntensity = TextColorIntensity
	Return elx
End Sub

Sub AddDiv(module As Object, parentID As String, elID As String) As VueElement
	Return AddVueElement(module, parentID, elID, "div","", "", "", Null)
End Sub

'<code>
'Dim avue as VueElement = Vuetify.AddAlert(Me, "r1c1", "avue", False, "This is my alert", False, True, Vuetify.ALERT_TYPE_SUCCESS, Vuetify.ALERT_BORDER_LEFT, Null)
'vuetify.BindVueElement(avue)
'</code>
Sub AddAlert(Module As Object, parentID As String, elID As String, vmodel As String, bVisible As Boolean, Caption As String, bLoremIpsum As Boolean, bDismissible As Boolean, aType As String,  BorderPosition As String, props As Map) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-alert", vmodel, Caption, "", props)
	elx.LoremIpsum = bLoremIpsum
	elx.Bind("dismissible", bDismissible)
	elx.SetData(vmodel, bVisible)
	elx.AlertType = aType
	elx.Border = BorderPosition
	Return elx
End Sub

'<code>
'Dim btn1 As VueElement = vuetify.AddButton1(Me, "r2c1", "btn1", "Button 1", Null)
'vuetify.BindVueElement(btn1)
'
''Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButton1(Module As Object, parentID As String, elID As String, sLabel As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	If BANano.Exists(parentID) Then
		BANano.GetElement(parentID).Append($"<v-btn id="${elID}"></v-btn>"$)
		Dim mbutton As VueElement
		mbutton.Initialize(Module, elID, elID)
		mbutton.Caption = sLabel
		'
		mbutton.AssignProps(props)
		mbutton.BindAllEvents
		Return mbutton
	Else
		Log($"AddButton1.${elID} could not be added to ${parentID}"$)
		'ignore
	End If
End Sub

'<code>
'Dim btn1 As VueElement = vuetify.AddButton(Me, "r2c1", "btn1", "Button 1", "primary", True, Null)
'vuetify.BindVueElement(btn1)
'
''Event
'Sub btn1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddButton(Module As Object, parentID As String, elID As String, sLabel As String, eColor As String, bOutlined As Boolean,  props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	If BANano.Exists(parentID) Then
		BANano.GetElement(parentID).Append($"<v-btn id="${elID}"></v-btn>"$)
		Dim mbutton As VueElement
		mbutton.Initialize(Module, elID, elID)
		mbutton.Caption = sLabel
		If bOutlined Then mbutton.Outlined = True
		If eColor <> "" Then mbutton.color = eColor
		
		mbutton.AssignProps(props)
		mbutton.BindAllEvents
		Return mbutton
	Else
		Log($"AddButton.${elID} could not be added to ${parentID}"$)
		'ignore
	End If	
End Sub

Sub AddSubHeader(Module As Object, parentID As String, elID As String, Caption As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-subheader", "", Caption, "", Null)
	Return elx
End Sub

Sub AddCarousel(Module As Object, parentID As String, elID As String, vmodel As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-carousel", vmodel, "", "", Null)
	Return elx
End Sub

Sub AddCarouselItem(Module As Object, parentID As String, elID As String, cContent As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-carousel-item", "" ,cContent, "", Null)
	Return elx
End Sub

'<code>
'dim exp As VueElement = vuetify.AddExpansionPanel(Me, "r1c1", "exp1", "exp1value")
'vuetify.BindVueElement(exp)
'</code>
Sub AddExpansionPanels(Module As Object, parentID As String, elID As String, vModel As String) As VueElement
	Dim elx As VueElement = AddVueElement(Module, parentID, elID, "v-expansion-panels", vModel ,"", "", Null)
	Return elx
End Sub


'Add a row to the parent
'<code>
'AddRow(Me, "parent", 1)
'</code>
Sub AddRow(Module As Object, parentID As String, rowpos As Int) As VueElement
	parentID = CleanID(parentID)
	'
	Dim rowkey As String = $"${parentID}r${rowpos}"$
	BANano.GetElement(parentID).Append($"<v-row id="${rowkey}"></v-row>"$)
	Dim mbutton As VueElement
	mbutton.Initialize(Module, rowkey, rowkey)
	mbutton.BindAllEvents
	Return mbutton
End Sub

'Add a column to the parent with sizes
'<code>
'AddCol(Me, "parent", 1, "12", "6", "6", "6")
'</code>
Sub AddCol(Module As Object, parentID As String, colpos As Int, xs As String, sm As String, md As String, lg As String, xl As String) As VueElement
	parentID = CleanID(parentID)
	'
	Dim colKey As String = $"${parentID}c${colpos}"$
	BANano.GetElement(parentID).Append($"<v-col id="${colKey}"></v-col>"$)
	Dim mbutton As VueElement
	mbutton.Initialize(Module, colKey, colKey)
	mbutton.AddSizes(xs, sm, md, lg, xl)
	mbutton.BindAllEvents
	Return mbutton
End Sub

Sub getMatrixID(prefix As String, r As Int, c As Int) As String
	Dim svalue As String = $"${prefix}r${r}c${c}"$
	Return svalue
End Sub

'a button with a badge
Sub AddButtonWithBadge(Module As Object, parentID As String, elID As String, elLabel As String, btnColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnproperties As Map, badgeproperties As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim badgeID As String = $"${elID}badge"$
	'
	BANano.GetElement(parentID).Append($"<v-badge id="${badgeID}"><v-btn id="${elID}"></v-btn></v-badge>"$)
	Dim mbadgebtn As VueElement
	mbadgebtn.Initialize(Module, elID, elID)
	mbadgebtn.Caption = elLabel
	If btnColor <> "" Then mbadgebtn.Color = btnColor
	mbadgebtn.BindAllEvents
	'
	mbadgebtn.AssignProps(btnproperties)
	'
	Dim badgex As VueElement
	badgex.Initialize(Module, badgeID, badgeID)
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	
	badgex.AssignProps(badgeproperties)
	mbadgebtn.BindVueElement(badgex)
	Return mbadgebtn
End Sub



'<code>
'Dim panel1 As VueElement = Vuetify.AddExpansionPanel(Me, "exp", "panel1", "Panel 1")
'vuetify.BindVueElement(panel1)
'
''trap panel change event
'Sub panel1_change(e As BANanoEvent)
'End Sub
'
''trap panel click event
'Sub panel1_click(e As BANanoEvent)
'End Sub
'</code>
Sub AddExpansionPanel(Module As Object, parentID As String, elID As String, HeaderCaption As String) As VueElement
	parentID = parentID.Replace("#","")
	parentID = parentID.tolowercase
	elID = elID.Replace("#","")
	elID = elID.ToLowerCase
	'
	Dim panelKey As String = $"${parentID}${elID}"$
	Dim panelHdr As String = $"${parentID}${elID}header"$
	Dim panelCnt As String = $"${parentID}${elID}content"$
	'
	parentID = CleanID(parentID)
	
	BANano.GetElement(parentID).Append($"<v-expansion-panel id="${panelKey}"><v-expansion-panel-header id="${panelHdr}"></v-expansion-panel-header><v-expansion-panel-content id="${panelCnt}"></v-expansion-panel-content></v-expansion-panel>"$)
	
	Dim pnl As VueElement
	pnl.Initialize(Module, panelKey, panelKey)
	pnl.BindAllEvents
	'
	Dim hdr As VueElement
	hdr.Initialize(Module, panelHdr, panelHdr)
	hdr.caption = HeaderCaption
	'
	Dim cnt As VueElement
	cnt.Initialize(Module, panelCnt, panelCnt)
	'
	pnl.BindVueElement(cnt)
	pnl.BindVueElement(hdr)
	Return pnl
End Sub

Sub AddButtonWithIconWithBadge(Module As Object, parentID As String, elID As String, eIcon As String, btnColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnprops As Map, iconprops As Map, badgeProperties As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim sicon As String = $"${elID}icon"$
	Dim badgeID As String = $"${elID}badge"$
	BANano.GetElement(parentID).Append($"<v-badge id="${badgeID}"><v-btn id="${elID}"><v-icon id="${sicon}"></v-icon></v-btn></v-badge>"$)
	
	Dim badgex As VueElement
	badgex.Initialize(Module, badgeID, badgeID)
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	badgex.Overlap = True
	badgex.AssignProps(badgeProperties)
		
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	vbtnright.BindAllEvents
	vbtnright.AssignProps(btnprops)
	
	Dim viconright As VueElement
	viconright.Initialize(Module, sicon, sicon)
	viconright.Caption = eIcon
	viconright.Dark = True
	If btnColor <> "" Then vbtnright.Color = btnColor
	vbtnright.AssignProps(iconprops)
	vbtnright.BindVueElement(viconright)
	vbtnright.BindVueElement(badgex)
	Return vbtnright
End Sub


Sub AddIconWithBadge(Module As Object, parentID As String, elID As String, eIcon As String, eColor As String, vmodel As String, badgeIcon As String, badgeColor As String, btnproperties As Map, badgeproperties As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim badgeID As String = $"${elID}badge"$
	'
	BANano.GetElement(parentID).Append($"<v-badge id="${badgeID}"><v-icon id="${elID}"></v-icon></v-badge>"$)
	Dim mbadgebtn As VueElement
	mbadgebtn.Initialize(Module, elID, elID)
	mbadgebtn.Caption = eIcon
	If eColor <> "" Then mbadgebtn.Color = eColor
	mbadgebtn.BindAllEvents
	'
	mbadgebtn.AssignProps(btnproperties)
	'
	Dim badgex As VueElement
	badgex.Initialize(Module, badgeID, badgeID)
	If vmodel <> "" Then badgex.Bind("content", vmodel)
	If vmodel <> "" Then badgex.Bind("value", vmodel)
	If badgeIcon <> "" Then badgex.SetAttr("icon", badgeIcon)
	If badgeColor <> "" Then badgex.Color = badgeColor
	badgex.Overlap = True
	badgex.AssignProps(badgeproperties)
	badgex.BindVueElement(mbadgebtn)
	Return badgex
End Sub

'a button with an icon on the left
Sub AddButtonWithIcon(Module As Object, parentID As String, elID As String, eIcon As String, btnColor As String, btnprops As Map, iconprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim siconright As String = $"${elID}icon"$
	BANano.GetElement(parentID).Append($"<v-btn icon id="${elID}"><v-icon id="${elID}icon"></v-icon></v-btn>"$)
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	vbtnright.AssignProps(btnprops)
	'
	Dim viconright As VueElement
	viconright.Initialize(Module, siconright, siconright)
	viconright.Caption = eIcon
	viconright.Dark = True
	If btnColor <> "" Then vbtnright.Color = btnColor
	vbtnright.AssignProps(iconprops)
	vbtnright.BindAllEvents
	vbtnright.BindVueElement(viconright)
	Return vbtnright
End Sub


Sub AddMsgBox(Module As Object, bPersistent As Boolean, width As Int, okColor As String, cancelColor As String) As VueElement
	'**** this page needs to use its own dialog, lets add it
	Dim fbDialog As VueElement = AddDialogAlertPrompt(Module, Here, AppName, bPersistent, width, okColor, cancelColor)
	BindVueElement(fbDialog)
	Return fbDialog
End Sub

'add alert dialog
Sub AddDialogAlertPrompt(Module As Object, parentID As String, elID As String, bPersistent As Boolean, dWidth As String, OkColor As String, CancelColor As String) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim dialogShow As String = $"${elID}show"$
	Dim xDialogTitle As String = $"${elID}caption"$
	Dim dialogMessage As String = $"${elID}message"$
	Dim dialogcanceltitle As String = $"${elID}canceltitle"$
	Dim dialogoktitle As String = $"${elID}oktitle"$
	Dim dialogokcolor As String = $"${elID}okcolor"$
	Dim dialogcancelcolor As String = $"${elID}cancelcolor"$
	Dim dialogokshow As String = $"${elID}okshow"$
	Dim dialogcancelshow As String = $"${elID}cancelshow"$
	Dim dialogpersistent As String = $"${elID}persistent"$
	Dim dialogpromptshow As String = $"${elID}promptshow"$
	Dim dialogwidth As String = $"${elID}width"$
	Dim dialogCardID As String = $"${elID}cardid"$
	Dim dialogTitleID As String = $"${elID}title"$
	Dim dialogtextID As String = $"${elID}text"$
	Dim dialogpromptID As String = $"${elID}promptid"$
	Dim dialogpromptlabel As String = $"${elID}promptlabel"$
	Dim dialogpromptvalue As String = $"${elID}promptvalue"$
	Dim dialogprompthint As String = $"${elID}prompthint"$
	Dim dialogpromptplaceholder As String = $"${elID}promptplaceholder"$
	Dim divider As String = $"${elID}divider"$
	Dim cardactionsid As String = $"${elID}actions"$
	Dim cardspacer As String = $"${elID}spacer"$
	Dim cancelid As String = $"${elID}cancel"$
	Dim okid As String = $"${elID}ok"$
	Dim texttype As String = $"${elID}type"$
	'
	Dim sbTemplate As StringBuilder
	sbTemplate.Initialize
	sbTemplate.Append($"<v-dialog id="${elID}" v-model="${dialogShow}" :width="${dialogwidth}" :persistent="${dialogpersistent}">"$)
	sbTemplate.Append($"<v-card id="${dialogCardID}">"$)
	sbTemplate.Append($"<v-card-title id="${dialogTitleID}" v-html="${xDialogTitle}"></v-card-title>"$)
	sbTemplate.Append($"<v-card-text id="${dialogtextID}">"$)
	sbTemplate.Append($"<p v-html="${dialogMessage}"></p>"$)
	sbTemplate.Append($"<v-text-field id="${dialogpromptID}" v-if="${dialogpromptshow}" "$)
	sbTemplate.Append($":label="${dialogpromptlabel}" v-model="${dialogpromptvalue}" :hint="${dialogprompthint}" "$)
	sbTemplate.Append($":placeholder="${dialogpromptplaceholder}" :persistent-hint="true" :type="${texttype}">"$)
	sbTemplate.Append($"</v-text-field>"$)
	sbTemplate.Append($"</v-card-text>"$)
	sbTemplate.Append($"<v-divider id="${divider}" class="mx-2"></v-divider>"$)
	sbTemplate.Append($"<v-card-actions id="${cardactionsid}">"$)
	sbTemplate.Append($"<v-spacer id="${cardspacer}"></v-spacer>"$)
	sbTemplate.Append($"<v-btn id="${cancelid}" v-show="${dialogcancelshow}" :color="${dialogcancelcolor}" "$)
	sbTemplate.Append($"class="mx-2">{{ ${dialogcanceltitle} }}</v-btn>"$)
	sbTemplate.Append($"<v-btn id="${okid}" v-show="${dialogokshow}" :color="${dialogokcolor}" v-on:click="${okid}_click" class="mx-2">"$)
	sbTemplate.Append($"{{ ${dialogoktitle} }}</v-btn>"$)
	sbTemplate.Append($"</v-card-actions>"$)
	sbTemplate.Append($"</v-card>"$)
	sbTemplate.Append("</v-dialog>")
	
	BANano.GetElement(parentID).Append(sbTemplate.tostring)
	'
	Dim vdialog As VueElement
	vdialog.Initialize(Module, elID, elID)
	'
	Dim vbtnc As VueElement
	vbtnc.Initialize(Module, cancelid, cancelid)
	vbtnc.BindAllEvents
	'
	Dim vbtno As VueElement
	vbtno.Initialize(Module, okid, okid)
	vbtno.BindAllEvents
	
	vdialog.BindVueElement(vbtnc)
	vdialog.BindVueElement(vbtno)
	
	'set states
	vdialog.SetData(dialogwidth, dWidth)
	'hide the dialog
	vdialog.SetData(dialogShow, False)
	'set persistence
	vdialog.SetData(dialogpersistent, bPersistent)
	vdialog.SetData(xDialogTitle, "")
	vdialog.SetData(dialogMessage, "")
	vdialog.SetData(dialogpromptshow, False)
	vdialog.SetData(dialogpromptlabel, "")
	vdialog.SetData(dialogprompthint, "")
	vdialog.SetData(dialogpromptvalue, "")
	vdialog.SetData(dialogpromptplaceholder, "")
	vdialog.SetData(dialogcanceltitle, "Cancel")
	vdialog.SetData(dialogcancelshow, True)
	vdialog.SetData(dialogcancelcolor, CancelColor)
	vdialog.SetData(dialogokshow, True)
	vdialog.SetData(dialogokcolor, OkColor)
	vdialog.SetData(dialogoktitle, "Ok")
	vdialog.SetData(texttype, "text")
	Return vdialog
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
Sub DialogTitle(Module As Object, dlgID As String) As VueElement
	Dim dialogTitleID As String = $"${dlgID}title"$
	dialogTitleID = dialogTitleID.ToLowerCase
	'
	Dim elx As VueElement
	elx.Initialize(Module, dialogTitleID, dialogTitleID)
	Return elx
End Sub

'return the dialog card container
Sub DialogForm(Module As Object, dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}form"$
	dialogContainerID = dialogContainerID.ToLowerCase
	'
	Dim elx As VueElement
	elx.Initialize(Module, dialogContainerID, dialogContainerID)
	Return elx
End Sub

'return the dialog card container
Sub DialogContainer(Module As Object, dlgID As String) As VueElement
	Dim dialogContainerID As String = $"${dlgID}container"$
	dialogContainerID = dialogContainerID.ToLowerCase
	'
	Dim elx As VueElement
	elx.Initialize(Module, dialogContainerID, dialogContainerID)
	Return elx
End Sub


Sub DialogUpdateTitle(dlgID As String, title As String)
	Dim xDialogTitle As String = $"${dlgID}caption"$
	SetData(xDialogTitle, title)
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


'add input dialog
Sub AddDialogInput(Module As Object, parentID As String, elID As String, bPersistent As Boolean, dWidth As String, Title As String, OkTitle As String, OkColor As String, CancelTitle As String, CancelColor As String) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	'
	Dim dialogShow As String = $"${elID}show"$
	Dim xdialogTitle As String = $"${elID}caption"$
	Dim dialogcanceltitle As String = $"${elID}canceltitle"$
	Dim dialogoktitle As String = $"${elID}oktitle"$
	Dim dialogokcolor As String = $"${elID}okcolor"$
	Dim dialogcancelcolor As String = $"${elID}cancelcolor"$
	Dim dialogokshow As String = $"${elID}okshow"$
	Dim dialogcancelshow As String = $"${elID}cancelshow"$
	Dim dialogpersistent As String = $"${elID}persistent"$
	Dim dialogwidth As String = $"${elID}width"$
	Dim dialogCardID As String = $"${elID}cardid"$
	Dim dialogTitleID As String = $"${elID}title"$
	Dim dialogtextID As String = $"${elID}text"$
	Dim divider As String = $"${elID}divider"$
	Dim cardactionsid As String = $"${elID}actions"$
	Dim cardspacer As String = $"${elID}spacer"$
	Dim cancelid As String = $"${elID}cancel"$
	Dim okid As String = $"${elID}ok"$
	Dim dialogFormID As String = $"${elID}form"$
	Dim dialogContainerID As String = $"${elID}container"$
	'
	Dim sbTemplate As StringBuilder
	sbTemplate.Initialize
	sbTemplate.Append($"<v-dialog id="${elID}" v-model="${dialogShow}" :width="${dialogwidth}" :persistent="${dialogpersistent}">"$)
	sbTemplate.Append($"<v-card id="${dialogCardID}">"$)
	sbTemplate.Append($"<v-card-title id="${dialogTitleID}">{{ ${xdialogTitle} }}</v-card-title>"$)
	sbTemplate.Append($"<v-card-text id="${dialogtextID}">"$)
	sbTemplate.Append($"<v-container id="${dialogContainerID}" ref="${dialogContainerID}">"$)
	sbTemplate.Append($"<v-form id="${dialogFormID}" ref="${dialogFormID}">"$)
	sbTemplate.Append($"</v-form>"$)
	sbTemplate.Append($"</v-container>"$)
	sbTemplate.Append($"</v-card-text>"$)
	sbTemplate.Append($"<v-divider id="${divider}" class="mx-2"></v-divider>"$)
	sbTemplate.Append($"<v-card-actions id="${cardactionsid}">"$)
	sbTemplate.Append($"<v-spacer id="${cardspacer}"></v-spacer>"$)
	sbTemplate.Append($"<v-btn id="${cancelid}" v-show="${dialogcancelshow}" :color="${dialogcancelcolor}" "$)
	sbTemplate.Append($"class="mx-2">{{ ${dialogcanceltitle} }}</v-btn>"$)
	sbTemplate.Append($"<v-btn id="${okid}" v-show="${dialogokshow}" :color="${dialogokcolor}" v-on:click="${okid}_click" class="mx-2">"$)
	sbTemplate.Append($"{{ ${dialogoktitle} }}</v-btn>"$)
	sbTemplate.Append($"</v-card-actions>"$)
	sbTemplate.Append($"</v-card>"$)
	sbTemplate.Append("</v-dialog>")
	
	BANano.GetElement(parentID).Append(sbTemplate.tostring)
	'
	Dim vdialog As VueElement
	vdialog.Initialize(Module, elID, elID)
	'
	Dim vbtnc As VueElement
	vbtnc.Initialize(Module, cancelid, cancelid)
	vbtnc.BindAllEvents
	'
	Dim vbtno As VueElement
	vbtno.Initialize(Module, okid, okid)
	vbtno.BindAllEvents
	
	vdialog.BindVueElement(vbtnc)
	vdialog.BindVueElement(vbtno)
	
	'set states
	vdialog.SetData(dialogwidth, dWidth)
	'hide the dialog
	vdialog.SetData(dialogShow, False)
	'set persistence
	vdialog.SetData(dialogpersistent, bPersistent)
	vdialog.SetData(xdialogTitle, Title)
	vdialog.SetData(dialogcanceltitle, CancelTitle)
	vdialog.SetData(dialogcancelshow, True)
	vdialog.SetData(dialogcancelcolor, CancelColor)
	vdialog.SetData(dialogokshow, True)
	vdialog.SetData(dialogokcolor, OkColor)
	vdialog.SetData(dialogoktitle, OkTitle)
	Return vdialog
End Sub

'get the date picker text field
Sub GetDatePickerText(Module As Object, dpID As String) As VueElement
	Dim txtid As String = $"${dpID}text"$
	txtid = txtid.ToLowerCase
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, txtid, txtid)
	Return vtextfield
End Sub

'get actual date picker
Sub GetDateTimePicker(Module As Object, dpID As String) As VueElement
	Dim dtpicker As String = $"${dpID}dp"$
	dtpicker = dtpicker.tolowercase
	Dim vdatepicker As VueElement
	vdatepicker.Initialize(Module, dtpicker, dtpicker)
	Return vdatepicker
End Sub

'add date picker input
'<code>
'Dim dp1 As VueElement = Vuetify.AddDatePickerInput1(Me, "r1c1", "dp1", "dp1value", "Date", "Select a date", Null)
'vuetify.BindVueElement(dp1)
'on clear click
'Sub dp1_clearclick(e As BANanoEvent)
'End Sub
'</code>
Sub AddDatePickerInput1(Module As Object, parentID As String, elID As String, vModel As String, sLabel As String, txtprops As Map, dateprops As Map) As VueElement
	Dim dp As VueElement = AddDatePickerInput(Module, parentID, elID, vModel, sLabel, "", False, "", "", txtprops, dateprops)
	Return dp
End Sub


'add date picker input
'<code>
'Dim dp1 As VueElement = Vuetify.AddDatePickerInput(Me, "r1c1", "dp1", "dp1value", "Date", "Select a date", True, "mdi-calendar", "", Null, NUll)
'vuetify.BindVueElement(dp1)
'on clear click
'Sub dp1_clearclick(e As BANanoEvent)
'End Sub
'</code>
Sub AddDatePickerInput(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, txtprops As Map, dateprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim menuref As String = $"${elID}menu"$
	Dim txtid As String = $"${elID}text"$
	Dim btnok As String = $"${elID}ok"$
	Dim btncancel As String = $"${elID}cancel"$
	Dim dtpicker As String = $"${elID}dp"$
	Dim btnclear As String = $"${elID}clear"$
	Dim spacer As String = $"${elID}spacer"$
	Dim tempID As String = $"${elID}template"$
	'
Dim sbTemplate As String = $"<v-menu id="${menuref}" :close-on-content-click="false" transition="scale-transition" :offset-y="true"
ref="${menuref}" :return-value.sync="${vmodel}" v-model="${menuref}" min-width="460px" max-width="460px" :nudge-right="40">
<v-template id="${tempID}" v-slot:activator="{ on, attrs }">
<v-text-field id="${txtid}" v-on="on" v-bind="attrs" label="${slabel}" v-model="${vmodel}" prepend-icon="${sPrependIcon}"
:required="${bRequired}" hint="${sHint}" ref="${vmodel}" autocomplete="off" placeholder="${splaceholder}"></v-text-field>
</v-template>
<v-date-picker id="${dtpicker}" :scrollable="true" v-model="${vmodel}" :landscape="true">
<v-btn id="${btnclear}" color="error" :text="true" v-on:click="${vmodel} = ''" :outlined="true">Clear</v-btn>
<v-spacer id="${spacer}"></v-spacer>
<v-btn id="${btncancel}" color="primary" :text="true" v-on:click="${menuref} = false" :outlined="true">
Cancel</v-btn>
<v-btn id="${btnok}" color="primary" :text="true" v-on:click="~refs.${menuref}.save(${vmodel})" :outlined="true">
Ok</v-btn>
</v-date-picker>
</v-menu>"$
	'fix the refs
	sbTemplate = sbTemplate.Replace("~","$")
	BANano.GetElement(parentID).Append(sbTemplate)
	'
	Dim vmenu As VueElement
	vmenu.Initialize(Module, menuref, menuref)
	
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, txtid, txtid)
	vtextfield.AssignProps(txtprops)
	vtextfield.BindAllEvents
	'
	Dim vdatepicker As VueElement
	vdatepicker.Initialize(Module, dtpicker, dtpicker)
	vdatepicker.AssignProps(dateprops)
	'
	vtextfield.BindVueElement(vmenu)
	vtextfield.BindVueElement(vdatepicker)
	vtextfield.SetData(vmodel, "")
	vtextfield.SetData(menuref, False)
	Return vtextfield
End Sub


Sub AddTimePickerInput1(Module As Object, parentID As String, elID As String, vModel As String, sLabel As String, txtprops As Map, tpprops As Map) As VueElement
	Dim tp As VueElement = AddTimePickerInput(Module, parentID, elID, vModel, sLabel,"", False, "", "", txtprops, tpprops)
	Return tp 
End Sub

'add time picker input
Sub AddTimePickerInput(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, sHint As String, txtprops As Map, dateprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim menuref As String = $"${elID}menu"$
	Dim txtid As String = $"${elID}text"$
	Dim btnok As String = $"${elID}ok"$
	Dim btncancel As String = $"${elID}cancel"$
	Dim dtpicker As String = $"${elID}dp"$
	Dim btnclear As String = $"${elID}clear"$
	Dim spacer As String = $"${elID}spacer"$
	Dim tempID As String = $"${elID}template"$
	'
Dim sbTemplate As String = $"<v-menu id="${menuref}" :close-on-content-click="false" transition="scale-transition" :offset-y="true"
ref="${menuref}" :return-value.sync="${vmodel}" v-model="${menuref}" min-width="460px" max-width="460px" :nudge-right="40">
<v-template id="${tempID}" v-slot:activator="{ on, attrs }">
<v-text-field id="${txtid}" v-on="on" v-bind="attrs" label="${slabel}" v-model="${vmodel}" prepend-icon="${sPrependIcon}"
:required="${bRequired}" hint="${sHint}" ref="${vmodel}" autocomplete="off" placeholder="${splaceholder}"></v-text-field>
</v-template>
<v-time-picker id="${dtpicker}" :scrollable="true" v-model="${vmodel}" :landscape="true">
<v-btn id="${btnclear}" color="error" :text="true" v-on:click="${vmodel} = ''" :outlined="true">Clear</v-btn>
<v-spacer id="${spacer}"></v-spacer>
<v-btn id="${btncancel}" color="primary" :text="true" v-on:click="${menuref} = false" :outlined="true">
Cancel</v-btn>
<v-btn id="${btnok}" color="primary" :text="true" v-on:click="~refs.${menuref}.save(${vmodel})" :outlined="true">
Ok</v-btn>
</v-time-picker>
</v-menu>"$

	'fix the refs
	sbTemplate = sbTemplate.Replace("~","$")
	BANano.GetElement(parentID).Append(sbTemplate)
	'
	Dim vmenu As VueElement
	vmenu.Initialize(Module, menuref, menuref)
	
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, txtid, txtid)
	vtextfield.AssignProps(txtprops)
	vtextfield.BindAllEvents
	'
	Dim vdatepicker As VueElement
	vdatepicker.Initialize(Module, dtpicker, dtpicker)
	vdatepicker.AssignProps(dateprops)
	'
	vtextfield.BindVueElement(vmenu)
	vtextfield.BindVueElement(vdatepicker)
	vtextfield.SetData(vmodel, "")
	vtextfield.SetData(menuref, False)
	Return vtextfield
End Sub


Sub AddIcon(Module As Object, parentID As String, elID As String, eIcon As String, color As String, bDark As Boolean, iconprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-icon id="${elID}"></v-icon>"$)
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	vbtnright.Dark = bDark
	vbtnright.Caption = eIcon
	If color <> "" Then vbtnright.Color = color
	vbtnright.AssignProps(iconprops)
	vbtnright.BindAllEvents
	Return vbtnright
End Sub

Sub AddBadge(Module As Object, parentID As String, elID As String, vmodel As String, content As String, color As String, bDot As Boolean, bOverLap As Boolean, bDark As Boolean, badgeProps As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-badge id="${elID}"></v-badge>"$)
	Dim vbtnright As VueElement
	vbtnright.Initialize(Module, elID, elID)
	vbtnright.Dark = bDark
	If color <> "" Then vbtnright.Color = color
	vbtnright.Dot = bDot
	vbtnright.Overlap = bOverLap
	vbtnright.VModel = vmodel
	vbtnright.SetData(vmodel, content)
	vbtnright.AssignProps(badgeProps)
	Return vbtnright
End Sub


Sub AddSearch(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, bSolo As Boolean, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-text-field id="${elID}"></v-text-field>"$)
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.AppendIcon = "mdi-magnify"
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.Solo = bSolo
	vtextfield.Clearable = True
	vtextfield.SingleLine = True
	vtextfield.HideDetails = True
	vtextfield.BindAllEvents
	vtextfield.Shrink
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

Sub AddParallax(Module As Object, parentID As String, elID As String, sheight As String, src As String, alt As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-parallax id="${elID}"></v-parallax>"$)
	Dim vparallax As VueElement
	vparallax.Initialize(Module, elID, elID)
	vparallax.Src = src
	vparallax.Height = sheight
	vparallax.Alt = alt
	vparallax.AssignProps(props)
	Return vparallax
End Sub

'<code>
'Dim fi1 As VueElement = vuetify.AddFileInput(Me, "r1c1", "fi1", "fi1", "Select File", "", False, "", null)
'vuetify.BindVueElement(fi1)
'Sub fi1_change(fileObj As Map)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
'start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''update state of some element
''VC.SetData("vmodel, fp)
'End Sub
''****for multiple files
'Sub fi1_change(fileList As List)
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
'Dim uploads As List = vc.NewList
''for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''uploads.Add(fp)
'next
'End Sub
'</code>
Sub AddFileInput(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bMultiple As Boolean, sHint As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-file-input id="${elID}"></v-file-input>"$)
	Dim vfileinput As VueElement
	vfileinput.Initialize(Module, elID, elID)
	vfileinput.Label = slabel
	vfileinput.Placeholder = splaceholder
	vfileinput.Hint = sHint
	vfileinput.VModel = vmodel
	vfileinput.AddAttrOnConditionTrue(":multiple", bMultiple, True)
	vfileinput.BindAllEvents
	vfileinput.AssignProps(props)
	If vmodel <> "" Then
		If bMultiple Then
			vfileinput.SetData(vmodel, NewList)
		Else
			vfileinput.SetData(vmodel, Null)	
		End If
	End If
	Return vfileinput
End Sub


'<code>
'Dim fi As VueElement = vuetify.AddFileInput(Me, "r1c1", "fi", "fi", "Browse File", null)
'vuetify.BindVueElement(fi)
'Sub fi_change(fileObj As Map)
'If banano.IsNull(fileObj) Or banano.IsUndefined(fileObj) Then Return
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''update state of some element
''VC.SetData("vmodel, fp)
'End Sub
''****for multiple files
'Sub fi1_change(fileList As List)
'If banano.IsNull(fileList) Or banano.IsUndefined(fileList) Then Return
'Dim uploads As List = vc.NewList
''for each fileObj As Map in fileList
''get file details
'Dim fileDet As FileObject
'fileDet = BANanoShared.GetFileDetails(fileObj)
'Dim fn As String = fileDet.FileName
''you can check the size here
''start uploading the file
'fileDet = BANanoShared.UploadFileWait(fileObj)
'Dim sstatus As String = fileDet.Status
'Select Case sstatus
'Case "error"
'vuetify.ShowSnackBarError($"The file '${fn}' was not uploaded successfully!"$)
'Case "success"
'vuetify.ShowSnackBarSuccess($"The file '${fn}' was uploaded successfully!"$)
'End Select
'Dim fp As String = fileDet.FullPath
''uploads.Add(fp)
'next
'End Sub
'</code>
Sub AddFileInput1(Module As Object, parentID As String, fldName As String, vmodel As String, title As String, props As Map) As VueElement
	Dim elx As VueElement = AddFileInput(Module, parentID, fldName, vmodel, title, "", False, "", props)
	Return elx
End Sub

Sub AddSlider(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, iminvalue As Object, imaxvalue As Object, iStep As Int,  bShowThumb As Boolean,  bVertical As Boolean, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-slider id="${elID}"></v-slider>"$)
	'get the text field, there is only 1 element on the layout
	Dim vslider As VueElement
	vslider.Initialize(Module, elID, elID)
	vslider.Label = slabel
	vslider.VModel = vmodel
	vslider.SetData(vmodel, 0)
	If bShowThumb Then vslider.AddAttr("thumb-label", "always")
	vslider.AddAttr(":vertical", bVertical)
	vslider.AddAttr("min", iminvalue)
	vslider.AddAttr("max", imaxvalue)
	If iStep > 0 Then vslider.AddAttr("step", iStep)
	vslider.BindAllEvents
	vslider.AssignProps(props)
	Return vslider
End Sub

'<code>
'add a telephone
'Dim txtF As VueElement = vuetify.AddTelephone1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTelephone1(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddTelephone(Module, parentID, elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a telephone
'Dim txtF As VueElement = vuetify.AddTelephone(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTelephone(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim el As VueElement = AddTextField(Module, parentID, elID, vmodel, slabel,splaceholder, bRequired, sPrependIcon, iMaxLen, sHint, props)
	el.SetTypeTelephone
	Return el
End Sub

'<code>
'add an email
'Dim txtF As VueElement = vuetify.AddEmail1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddEmail1(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddEmail(Module, parentID, elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddEmail(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddEmail(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	Dim el As VueElement = AddTextField(Module, parentID, elID, vmodel, slabel,splaceholder, bRequired, sPrependIcon, iMaxLen, sHint, props)
	el.SetTypeEmail
	Return el
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextField1(Me, "r1c1", "txtF", "fldName", "Text Field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextField1(Module As Object, parentID As String, elID As String, vModel As String, sLabel As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-text-field id="${elID}"></v-v-text-field>"$)
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = sLabel
	vtextfield.VModel = vModel
	vtextfield.SetData(vModel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextField(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextField(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-text-field id="${elID}"></v-v-text-field>"$)
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextArea1(Me, "r1c1", "txtF", "fldName", "Text Field")
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextArea1(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, props As Map) As VueElement
	Return AddTextArea(Module, parentID, elID, vmodel, slabel, "", False, "", 0, "", props)
End Sub


'<code>
'add a text field
'Dim txtF As VueElement = vuetify.AddTextArea(Me, "r1c1", "txtF", "fldName", "Text Field", "Text field placeholder", True, "", 0, "Enter a text field", null)
'vuetify.BindVueElement(txtF)
'</code>
Sub AddTextArea(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-textarea id="${elID}"></v-textarea>"$)
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypeText
	vtextfield.BindAllEvents
	vtextfield.AssignProps(props)
	Return vtextfield
End Sub

Sub AddPassword1(Module As Object, parentID As String, fldName As String, vmodel As String, title As String, maxLen As Int, props As Map) As VueElement
	Return AddPassword(Module, parentID, fldName, vmodel, title, "", False, "", maxLen, "", props)
End Sub

Sub AddPassword(Module As Object, parentID As String, elID As String, vmodel As String, slabel As String, splaceholder As String, bRequired As Boolean, sPrependIcon As String, iMaxLen As Int, sHint As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-text-field id="${elID}"></v-text-field>"$)
	Dim bshowPassword As String = $"${elID}ShowPassword"$
	bshowPassword = bshowPassword.tolowercase
	Dim vtextfield As VueElement
	vtextfield.Initialize(Module, elID, elID)
	vtextfield.Label = slabel
	vtextfield.Required = bRequired
	vtextfield.PrependIcon = sPrependIcon
	If iMaxLen > 0 Then
		vtextfield.Counter = True
	End If
	vtextfield.Placeholder = splaceholder
	vtextfield.Hint = sHint
	vtextfield.VModel = vmodel
	vtextfield.SetData(vmodel, "")
	vtextfield.SetTypePassword
	vtextfield.BindAllEvents
	vtextfield.AddAttr(":type", $"${bshowPassword} ? 'text' : 'password'"$)
	vtextfield.AddAttr(":append-icon", $"${bshowPassword} ? 'mdi-eye' : 'mdi-eye-off'"$)
	vtextfield.AddAttr("v-on:click:append", $"${bshowPassword} = !${bshowPassword}"$)
	vtextfield.AddAttr("autocomplete", "off")
	vtextfield.AssignProps(props)
	vtextfield.SetData(bshowPassword, False)
	Return vtextfield
End Sub


Sub AddSwitch(Module As Object, parentID As String, sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, bInset As Boolean, props As Map) As VueElement
	parentID = CleanID(parentID)
	sid = sid.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-switch id="${sid}"></v-switch>"$)
	Dim vswitch As VueElement
	vswitch.Initialize(Module, sid, sid)
	vswitch.VModel = vmodel
	vswitch.SetData(vmodel, "")
	vswitch.label = slabel
	If BANano.IsNull(truevalue) = False Or BANano.IsUndefined(truevalue) = False Then 
		vswitch.Value = truevalue
		vswitch.AddAttr("true-value", truevalue)
	End If
	If BANano.IsNull(falsevalue) = False Or BANano.IsUndefined(truevalue) = False Then 
		vswitch.AddAttr("false-value", falsevalue)
	End If
	vswitch.AddAttr(":inset", bInset)
	If color <> "" Then vswitch.Color = color
	vswitch.AssignProps(props)
	vswitch.BindAllEvents
	If vmodel <> "" Then
		vswitch.SetData(vmodel, truevalue)
	End If
	Return vswitch
End Sub


Sub AddRating(Module As Object, parentID As String, sid As String, vmodel As String, slength As Int, ssize As Int, bHover As Boolean, color As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	sid = sid.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-rating id="${sid}"></v-rating>"$)
	Dim vrating As VueElement
	vrating.Initialize(Module, sid, sid)
	vrating.VModel = vmodel
	vrating.SetData(vmodel, Null)
	If slength <> 0 Then 
		vrating.AddAttr("length", slength)
	End If
	If ssize <> 0 Then 
		vrating.AddAttr("size", ssize)
	End If
	vrating.AddAttr(":hover", bHover)
	If color <> "" Then 
		vrating.Color = color
	End If
	vrating.AssignProps(props)
	vrating.BindAllEvents
	Return vrating
End Sub

Sub AddCheckBox(Module As Object, parentID As String, sid As String, vmodel As String, slabel As String, truevalue As Object, falsevalue As Object, color As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	sid = sid.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-checkbox id="${sid}"></v-checkbox>"$)
	Dim vcheckbox As VueElement
	vcheckbox.Initialize(Module, sid, sid)
	vcheckbox.VModel = vmodel
	vcheckbox.SetData(vmodel, Null)
	vcheckbox.label = slabel
	If BANano.IsNull(truevalue) = False Or BANano.IsUndefined(truevalue) = False Then
		vcheckbox.Value = truevalue
		vcheckbox.AddAttr("true-value", truevalue)
	End If
	If BANano.IsNull(falsevalue) = False Or BANano.IsUndefined(truevalue) = False Then
		vcheckbox.AddAttr("false-value", falsevalue)
	End If
	If color <> "" Then vcheckbox.Color = color
	vcheckbox.AssignProps(props)
	vcheckbox.BindAllEvents
	If vmodel <> "" Then 
		vcheckbox.SetData(vmodel, truevalue)
	End If
	Return vcheckbox
End Sub

'<code>
'Dim vimg As VueElement = vuetify.AddImage1(Me, "r1c1", "vimg", "vmodel", "Logo", "100px", "100px", null)
'vuetify.BindVueElement(vimg)
'
'Sub vimg_click(e As BANanoEvent)
'End Sub 
'</code>
Sub AddImage1(Module As Object, parentID As String, elID As String, vmodel As String, alt As String, sheight As String, swidth As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-img id="${elID}"></v-img>"$)
	Dim vimg As VueElement
	vimg.Initialize(Module, elID, elID)
	If sheight <> "" Then vimg.MaxHeight = sheight
	If swidth <> "" Then vimg.MaxWidth = swidth
	vimg.AddAttr(":src", vmodel)
	vimg.AddAttr(":lazy-src", vmodel)
	vimg.Alt = alt
	'vimg.AddAttr(":aspect-ratio", "16/9")
	vimg.BindAllEvents
	vimg.AssignProps(props)
	Return vimg
End Sub

'<code>
'Dim vimg As VueElement = vuetify.AddImage(Me, "r1c1", "vimg", "./assets/logo.png", "./assets/logo.png", "Logo", "100px", "100px", null)
'vuetify.BindVueElement(vimg)
'
'Sub vimg_click(e As BANanoEvent)
'End Sub 
'</code>
Sub AddImage(Module As Object, parentID As String, elID As String, src As String, lazysrc As String, alt As String, sheight As String, swidth As String, props As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	BANano.GetElement(parentID).Append($"<v-img id="${elID}"></v-img>"$)
	Dim vimg As VueElement
	vimg.Initialize(Module, elID, elID)
	If sheight <> "" Then vimg.MaxHeight = sheight
	If swidth <> "" Then vimg.MaxWidth = swidth
	vimg.Src = src
	vimg.Alt = alt
	If lazysrc = "" Then 
		vimg.AddAttr("lazy-src", src)
	Else
		vimg.AddAttr("lazy-src", lazysrc)
	End If
	'vimg.AddAttr(":aspect-ratio", "16/9")
	vimg.BindAllEvents
	vimg.AssignProps(props)
	Return vimg
End Sub

'add spacer
Sub AddSpacer(Module As Object, parentID As String, elid As String, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement(Module, parentID, elid, "v-spacer", "", "", "", props)
	Return vlist
End Sub

'add divider
Sub AddDivider(Module As Object, parentID As String, elid As String, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement(Module, parentID, elid, "v-divider", "", "", "", props)
	Return vlist
End Sub


Sub AddList(Module As Object, parentID As String, elid As String, bDense As Boolean, bFlat As Boolean, bRounded As Boolean, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement(Module, parentID, elid, "v-list", "", "", "", props)
	vlist.Bind("rounded", bRounded)
	vlist.Bind("flat", bFlat)
	vlist.Bind("dense", bDense)
	vlist.NewListViewItemOptions
	Return vlist
End Sub


Sub AddListItem(Module As Object, parentID As String, elid As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elid, "v-list-item", "", "", "", props)
End Sub

Sub AddFooter(Module As Object, parentID As String, elid As String, bPadless As Boolean, bFlat As Boolean, props As Map) As VueElement
	Dim vlist As VueElement = AddVueElement(Module, parentID, elid, "v-footer", "", "", "", props)
	vlist.Bind("padless", bPadless)
	vlist.Bind("flat", bFlat)
	Return vlist
End Sub


Sub AddHover(Module As Object, parentID As String, elid As String, props As Map) As VueElement
	Return AddVueElement(Module, parentID, elid, "v-hover", "", "", "", props)
End Sub

Sub AddChip(Module As Object, parentID As String, elid As String) As VueElement
	Return AddVueElement(Module, parentID, elid, "v-chip", "", "", "", Null)
End Sub

Sub AddTimePicker(Module As Object, parentID As String, elid As String, vmodel As String, defaultValue As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement(Module, parentID, elid, "v-time-picker", vmodel, "", "", props)
	elx.SetData(vmodel, defaultValue)
	Return elx
End Sub


Sub AddDatePicker(Module As Object, parentID As String, elid As String, vmodel As String, defaultValue As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement(Module, parentID, elid, "v-date-picker", vmodel, "", "", props)
	elx.SetData(vmodel, defaultValue)
	Return elx
End Sub


Sub AddMenu(Module As Object, parentID As String, elid As String, returnValue As String, bCloseOnContentClick As Boolean, bCloseOnClick As Boolean, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement(Module, parentID, elid, "v-menu", "", "", "", props)
	elx.Bind("close-on-content-click", bCloseOnContentClick)
	elx.Bind("close-on-click", bCloseOnClick)
	If returnValue <> "" Then elx.Bind("return-value.sync",returnValue)
	Return elx
End Sub


Sub AddDialog(Module As Object, parentID As String, elid As String, vmodel As String, bPersistent As Boolean, width As String, props As Map) As VueElement
	Dim elx As VueElement =  AddVueElement(Module, parentID, elid, "v-dialog", vmodel, "", "", props)
	elx.Width = width
	elx.Persistent = bPersistent
	elx.SetData(vmodel, False)
	Return elx
End Sub


Sub AddChipWithAvatar(Module As Object, parentID As String, elID As String, src As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, avatarprops As Map, imgprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim spanID As String = $"${elID}span"$
	Dim avarID As String = $"${elID}avatar"$
	Dim imgID As String = $"${elID}image"$
	'
	BANano.GetElement(parentID).Append($"<v-chip id="${elID}"><v-avatar id="${avarID}"><v-img id="${imgID}"></v-img></v-avatar><span id="${spanID}"></span></v-chip>"$)
	
	Dim vchip As VueElement
	vchip.Initialize(Module, elID, elID)
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	If color <> "" Then vchip.Color = color
	vchip.AssignProps(chipprops)
	vchip.BindAllEvents
	vchip.SetOnEvent(Module, "click", $"'${elID}'"$)
	vchip.SetOnEvent(Module, "click:close", $"'${elID}'"$)
	'
	Dim vavatar As VueElement
	vavatar.Initialize(Module, avarID, avarID)
	vavatar.AddAttr(":left", True)
	vavatar.AssignProps(avatarprops)
	'
	Dim vimg As VueElement
	vimg.Initialize(Module, imgID, imgID)
	vimg.Src = src
	vimg.lazysrc = src
	vimg.AssignProps(imgprops)
	'
	Dim span As VueElement
	span.Initialize(Module, spanID, spanID)
	span.Caption = label
	'
	vchip.BindVueElement(span)
	vchip.BindVueElement(vavatar)
	vchip.BindVueElement(vimg)
	'
	Return vchip
End Sub


Sub AddChipWithIcon(Module As Object, parentID As String, elID As String, sicon As String, label As String, bPill As Boolean, bClose As Boolean, color As String, chipprops As Map, iconprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim iconID As String = $"${elID}icon"$
	Dim spanID As String = $"${elID}span"$
	BANano.GetElement(parentID).Append($"<v-chip id="${elID}"><v-icon id="${iconID}"></v-icon><span id="${spanID}"></span></v-chip>"$)
	'
	Dim vchip As VueElement
	vchip.Initialize(Module, elID, elID)
	vchip.AddAttr(":pill", bPill)
	vchip.AddAttr(":close", bClose)
	If color <> "" Then vchip.Color = color
	vchip.BindAllEvents
	vchip.SetOnEvent(Module, "click", $"'${elID}'"$)
	vchip.SetOnEvent(Module, "click:close", $"'${elID}'"$)'
	'
	Dim vicon As VueElement
	vicon.Initialize(Module, iconID, iconID)
	vicon.caption = sicon
	'
	Dim span As VueElement
	span.Initialize(Module, spanID, spanID)
	span.Caption = label
	'
	vchip.AssignProps(chipprops)
	vicon.AssignProps(iconprops)
	'
	vchip.BindVueElement(vicon)
	vchip.BindVueElement(span)
	Return vchip
End Sub

Sub AddRadioGroup(Module As Object, parentID As String, elID As String, vmodel As String, sLabel As String, bRow As Boolean, bMultiple As Boolean, sourceTable As String, key As String, value As String, colorField As String, radiogroupprops As Map, radioprops As Map) As VueElement
	parentID = CleanID(parentID)
	elID = elID.ToLowerCase
	Dim radioID As String = $"${elID}radio"$
	BANano.GetElement(parentID).Append($"<v-radio-group id="${elID}"><v-radio id="${radioID}"></v-radio></v-radio-group>"$)
	sourceTable = sourceTable.ToLowerCase
	key = key.ToLowerCase
	value = value.ToLowerCase
	
	colorField = colorField.tolowercase
	Dim vradiogroup As VueElement
	vradiogroup.Initialize(Module, elID, elID)
	vradiogroup.label = sLabel
	vradiogroup.Multiple = bMultiple
	vradiogroup.AddAttr(":row", bRow)
	vradiogroup.AddAttr(":column", Not(bRow))
	vradiogroup.VModel = vmodel
	vradiogroup.AssignProps(radiogroupprops)
	Dim vradio As VueElement
	vradio.Initialize(Module, radioID, radioID)
	vradio.VFor = $"item in ${sourceTable}"$
	vradio.BindKey($"item.${key}"$)
	vradio.Bind("label", $"item.${value}"$)
	vradio.Bind("value", $"item.${key}"$)
	If colorField <> "" Then vradio.Bind("color", $"item.${colorField}"$)
	vradio.AssignProps(radioprops)
	If bMultiple Then
		Dim lst As List = NewList
		vradiogroup.SetData(vmodel, lst)
	Else
		vradiogroup.SetData(vmodel, Null)
	End If
	Dim lst As List = NewList
	vradiogroup.SetData(sourceTable, lst)
	vradiogroup.BindAllEvents
	vradiogroup.SetOnEvent(Module, "change", $"item.${key}"$)
	vradiogroup.BindVueElement(vradio)
	Return vradiogroup
End Sub

Sub AddFab(Module As Object, parentID As String, elID As String, eIcon As String, eColor As String, bOutlined As Boolean, btnprops As Map, iconprops As Map) As VueElement
	Dim np As Map = CreateMap()
	np.Put(":fab", True)
	np.Put(":outlined", bOutlined)
	If BANano.IsNull(btnprops) = False Then
		For Each k As String In btnprops.Keys
			Dim v As String = btnprops.Get(k)
			np.Put(k, v)
		Next
	End If
	Dim ip As Map = CreateMap()
	ip.Put(":fab", True)
	If BANano.IsNull(iconprops) = False Then
		For Each k As String In iconprops.Keys
			Dim v As String = iconprops.Get(k)
			ip.Put(k, v)
		Next
	End If
	Dim btn As VueElement = AddButtonWithIcon(Module, parentID, elID, eIcon, eColor, np, ip)
	Return btn
End Sub

'get a list of selected files
Sub GetSelectedFiles(e As BANanoEvent) As List
	Dim files As List = e.OtherField("target").GetField("files").Result
	Return files
End Sub

'get a selected file from file input
Sub GetSelectedFile(e As BANanoEvent) As Map
	Dim files As List = e.OtherField("target").GetField("files").Result
	Dim obj As Map = files.Get(0)
	Return obj
End Sub

Sub IsVisible(ve As VueElement, bShow As Boolean)
	Dim vkey As String = ve.VShow
	SetData(vkey, bShow)
End Sub

Sub UseGoogleCharts
	If ModuleExist("googlecharts") = False Then
		Dim VueGoogleCharts As BANanoObject
		VueGoogleCharts.Initialize("VueGoogleCharts")
		Use(VueGoogleCharts)
		AddModule("googlecharts")
	End If
End Sub

Sub UseGoogleMaps(gk As String)
	GoogleMapKey = gk
	'ensure that the module is loaded
	If ModuleExist("googlemap") = False Then
		Dim VueGoogleMaps As BANanoObject
		VueGoogleMaps.Initialize("VueGoogleMaps")
		
		Dim load As Map = CreateMap()
		load.Put("key", GoogleMapKey)
		load.Put("libraries", "places")
		'
		Dim VueGoogleMapsOptions As Map = CreateMap()
		VueGoogleMapsOptions.Put("load", load)
		VueGoogleMapsOptions.Put("installComponents", True)
		Use1(VueGoogleMaps, VueGoogleMapsOptions)
		AddModule("googlemap")
	End If
End Sub


'get the data at the position
Sub GetDataAtPosition(lstName As String, pos As Int) As Map
	lstName = lstName.tolowercase
	Dim res As List = data.GetField(lstName).Result
	Dim out As Map = res.Get(pos)
	Return out
End Sub

'return the position of the data with these properties
Sub GetDataPositionWhere(lstName As String, props As Map) As Int
	lstName = lstName.tolowercase
	Dim res As List = data.GetField(lstName).Result
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

Sub UseVBlur
	'ensure that the module is loaded
	If ModuleExist("vblur") = False Then
		Dim VBlur As BANanoObject = BANano.Window.GetField("v-blur")
		Use(VBlur)
		AddModule("vblur")
	End If
End Sub

Sub UseVueDraggable
	If ModuleExist("vuedraggable") = False Then
		Dim vuedraggable As BANanoObject
		vuedraggable.Initialize("vuedraggable")
		Use(vuedraggable)
		AddModule("vuedraggable")
	End If
End Sub

Sub setAuthenticated(b As Boolean)
	SetData("authenticated", b)
End Sub

Sub getAuthenticated As Boolean
	Dim b As Boolean = GetData("authenticated")
	Return b
End Sub

Sub OnAuthenticated As String
	Return "authenticated"
End Sub

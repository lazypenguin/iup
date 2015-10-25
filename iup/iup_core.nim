#* \file
#  \brief User API
#  IUP - A Portable User Interface Toolkit
#  Tecgraf: Computer Graphics Technology Group, PUC-Rio, Brazil
#  http://www.tecgraf.puc-rio.br/iup  mailto:iup@tecgraf.puc-rio.br
# 
#  See Copyright Notice at the end of this file
# 

#*****************************************************************************
# Copyright (C) 1994-2015 Tecgraf/PUC-Rio.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#****************************************************************************

import 
  iup_key, iup_def

when defined(windows):
  const dllname = "iup(|316).dll"
  const imgdllname = "iupimg(|316|).dll"
elif defined(macosx):
  const dllname = "libiup(|3.16).dylib"
  const imgdllname = "iupimg(|3.16).dylib"
else:
  const dllname = "libiup(|3.16).so(|.1)"
  const imgdllname = "libiupimglib(|3.16|).so(|.1)"

const 
  IUP_NAME* = "IUP - Portable User Interface"
  IUP_DESCRIPTION* = "Multi-platform Toolkit for Building Graphical User Interfaces"
  IUP_COPYRIGHT* = "Copyright (C) 1994-2015 Tecgraf/PUC-Rio"
  constIUP_VERSION* = "3.16"
  constIUP_VERSION_NUMBER* = 316000
  constIUP_VERSION_DATE* = "2015/09/15"

type
  Ihandle = object
  PIhandle* = ptr Ihandle

  Icallback* = proc (a2: ptr Ihandle): cint {.cdecl.}

#**********************************************************************
#                        Main API                                      
#**********************************************************************

proc open*(argc: ptr cint; argv: ptr cstringArray): cint {.cdecl, 
    importc: "IupOpen", dynlib: dllname.}
proc close*() {.cdecl, importc: "IupClose", dynlib: dllname.}
proc imageLibOpen*() {.cdecl, importc: "IupImageLibOpen", dynlib: imgdllname.}
proc mainLoop*(): cint {.cdecl, importc: "IupMainLoop", dynlib: dllname.}
proc loopStep*(): cint {.cdecl, importc: "IupLoopStep", dynlib: dllname.}
proc loopStepWait*(): cint {.cdecl, importc: "IupLoopStepWait", 
                                dynlib: dllname.}
proc mainLoopLevel*(): cint {.cdecl, importc: "IupMainLoopLevel", 
                                 dynlib: dllname.}
proc flush*() {.cdecl, importc: "IupFlush", dynlib: dllname.}
proc exitLoop*() {.cdecl, importc: "IupExitLoop", dynlib: dllname.}
proc recordInput*(filename: cstring; mode: cint): cint {.cdecl, 
    importc: "IupRecordInput", dynlib: dllname.}
proc playInput*(filename: cstring): cint {.cdecl, importc: "IupPlayInput", 
    dynlib: dllname.}
proc update*(ih: ptr Ihandle) {.cdecl, importc: "IupUpdate", 
                                   dynlib: dllname.}
proc updateChildren*(ih: ptr Ihandle) {.cdecl, importc: "IupUpdateChildren", 
    dynlib: dllname.}
proc redraw*(ih: ptr Ihandle; children: cint) {.cdecl, importc: "IupRedraw", 
    dynlib: dllname.}
proc refresh*(ih: ptr Ihandle) {.cdecl, importc: "IupRefresh", 
                                    dynlib: dllname.}
proc refreshChildren*(ih: ptr Ihandle) {.cdecl, 
    importc: "IupRefreshChildren", dynlib: dllname.}
proc help*(url: cstring): cint {.cdecl, importc: "IupHelp", dynlib: dllname.}
proc load*(filename: cstring): cstring {.cdecl, importc: "IupLoad", 
    dynlib: dllname.}
proc loadBuffer*(buffer: cstring): cstring {.cdecl, importc: "IupLoadBuffer", 
    dynlib: dllname.}
proc version*(): cstring {.cdecl, importc: "IupVersion", dynlib: dllname.}
proc versionDate*(): cstring {.cdecl, importc: "IupVersionDate", 
                                  dynlib: dllname.}
proc versionNumber*(): cint {.cdecl, importc: "IupVersionNumber", 
                                 dynlib: dllname.}
proc setLanguage*(lng: cstring) {.cdecl, importc: "IupSetLanguage", 
                                     dynlib: dllname.}
proc getLanguage*(): cstring {.cdecl, importc: "IupGetLanguage", 
                                  dynlib: dllname.}
proc setLanguageString*(name: cstring; str: cstring) {.cdecl, 
    importc: "IupSetLanguageString", dynlib: dllname.}
proc storeLanguageString*(name: cstring; str: cstring) {.cdecl, 
    importc: "IupStoreLanguageString", dynlib: dllname.}
proc getLanguageString*(name: cstring): cstring {.cdecl, 
    importc: "IupGetLanguageString", dynlib: dllname.}
proc setLanguagePack*(ih: ptr Ihandle) {.cdecl, 
    importc: "IupSetLanguagePack", dynlib: dllname.}
proc destroy*(ih: ptr Ihandle) {.cdecl, importc: "IupDestroy", 
                                    dynlib: dllname.}
proc detach*(child: ptr Ihandle) {.cdecl, importc: "IupDetach", 
                                      dynlib: dllname.}
proc append*(ih: ptr Ihandle; child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupAppend", dynlib: dllname.}
proc insert*(ih: ptr Ihandle; ref_child: ptr Ihandle; child: ptr Ihandle): ptr Ihandle {.
    cdecl, importc: "IupInsert", dynlib: dllname.}
proc getChild*(ih: ptr Ihandle; pos: cint): ptr Ihandle {.cdecl, 
    importc: "IupGetChild", dynlib: dllname.}
proc getChildPos*(ih: ptr Ihandle; child: ptr Ihandle): cint {.cdecl, 
    importc: "IupGetChildPos", dynlib: dllname.}
proc getChildCount*(ih: ptr Ihandle): cint {.cdecl, 
    importc: "IupGetChildCount", dynlib: dllname.}
proc getNextChild*(ih: ptr Ihandle; child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupGetNextChild", dynlib: dllname.}
proc getBrother*(ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupGetBrother", dynlib: dllname.}
proc getParent*(ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupGetParent", dynlib: dllname.}
proc getDialog*(ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupGetDialog", dynlib: dllname.}
proc getDialogChild*(ih: ptr Ihandle; name: cstring): ptr Ihandle {.cdecl, 
    importc: "IupGetDialogChild", dynlib: dllname.}
proc reparent*(ih: ptr Ihandle; new_parent: ptr Ihandle; 
                  ref_child: ptr Ihandle): cint {.cdecl, importc: "IupReparent", 
    dynlib: dllname.}
proc popup*(ih: ptr Ihandle; x: cint; y: cint): cint {.cdecl, 
    importc: "IupPopup", dynlib: dllname.}
proc show*(ih: ptr Ihandle): cint {.cdecl, importc: "IupShow", 
                                       dynlib: dllname.}
proc showXY*(ih: ptr Ihandle; x: cint; y: cint): cint {.cdecl, 
    importc: "IupShowXY", dynlib: dllname.}
proc hide*(ih: ptr Ihandle): cint {.cdecl, importc: "IupHide", 
                                       dynlib: dllname.}
proc map*(ih: ptr Ihandle): cint {.cdecl, importc: "IupMap", 
                                      dynlib: dllname.}
proc unmap*(ih: ptr Ihandle) {.cdecl, importc: "IupUnmap", dynlib: dllname.}
proc resetAttribute*(ih: ptr Ihandle; name: cstring) {.cdecl, 
    importc: "IupResetAttribute", dynlib: dllname.}
proc getAllAttributes*(ih: ptr Ihandle; names: cstringArray; n: cint): cint {.
    cdecl, importc: "IupGetAllAttributes", dynlib: dllname.}
proc setAtt*(handle_name: cstring; ih: ptr Ihandle; name: cstring): ptr Ihandle {.
    varargs, cdecl, importc: "IupSetAtt", dynlib: dllname.}
proc setAttributes*(ih: ptr Ihandle; str: cstring): ptr Ihandle {.cdecl, 
    importc: "IupSetAttributes", dynlib: dllname.}
proc getAttributes*(ih: ptr Ihandle): cstring {.cdecl, 
    importc: "IupGetAttributes", dynlib: dllname.}
proc setAttribute*(ih: ptr Ihandle; name: cstring; value: cstring) {.cdecl, 
    importc: "IupSetAttribute", dynlib: dllname.}
proc setStrAttribute*(ih: ptr Ihandle; name: cstring; value: cstring) {.
    cdecl, importc: "IupSetStrAttribute", dynlib: dllname.}
proc setStrf*(ih: ptr Ihandle; name: cstring; format: cstring) {.varargs, 
    cdecl, importc: "IupSetStrf", dynlib: dllname.}
proc setInt*(ih: ptr Ihandle; name: cstring; value: cint) {.cdecl, 
    importc: "IupSetInt", dynlib: dllname.}
proc setFloat*(ih: ptr Ihandle; name: cstring; value: cfloat) {.cdecl, 
    importc: "IupSetFloat", dynlib: dllname.}
proc setDouble*(ih: ptr Ihandle; name: cstring; value: cdouble) {.cdecl, 
    importc: "IupSetDouble", dynlib: dllname.}
proc setRGB*(ih: ptr Ihandle; name: cstring; r: cuchar; g: cuchar; b: cuchar) {.
    cdecl, importc: "IupSetRGB", dynlib: dllname.}
proc getAttribute*(ih: ptr Ihandle; name: cstring): cstring {.cdecl, 
    importc: "IupGetAttribute", dynlib: dllname.}
proc getInt*(ih: ptr Ihandle; name: cstring): cint {.cdecl, 
    importc: "IupGetInt", dynlib: dllname.}
proc getInt2*(ih: ptr Ihandle; name: cstring): cint {.cdecl, 
    importc: "IupGetInt2", dynlib: dllname.}
proc getIntInt*(ih: ptr Ihandle; name: cstring; i1: ptr cint; i2: ptr cint): cint {.
    cdecl, importc: "IupGetIntInt", dynlib: dllname.}
proc getFloat*(ih: ptr Ihandle; name: cstring): cfloat {.cdecl, 
    importc: "IupGetFloat", dynlib: dllname.}
proc getDouble*(ih: ptr Ihandle; name: cstring): cdouble {.cdecl, 
    importc: "IupGetDouble", dynlib: dllname.}
proc getRGB*(ih: ptr Ihandle; name: cstring; r: ptr cuchar; g: ptr cuchar; 
                b: ptr cuchar) {.cdecl, importc: "IupGetRGB", dynlib: dllname.}
proc setAttributeId*(ih: ptr Ihandle; name: cstring; id: cint; value: cstring) {.
    cdecl, importc: "IupSetAttributeId", dynlib: dllname.}
proc setStrAttributeId*(ih: ptr Ihandle; name: cstring; id: cint; 
                           value: cstring) {.cdecl, 
    importc: "IupSetStrAttributeId", dynlib: dllname.}
proc setStrfId*(ih: ptr Ihandle; name: cstring; id: cint; format: cstring) {.
    varargs, cdecl, importc: "IupSetStrfId", dynlib: dllname.}
proc setIntId*(ih: ptr Ihandle; name: cstring; id: cint; value: cint) {.
    cdecl, importc: "IupSetIntId", dynlib: dllname.}
proc setFloatId*(ih: ptr Ihandle; name: cstring; id: cint; value: cfloat) {.
    cdecl, importc: "IupSetFloatId", dynlib: dllname.}
proc setDoubleId*(ih: ptr Ihandle; name: cstring; id: cint; value: cdouble) {.
    cdecl, importc: "IupSetDoubleId", dynlib: dllname.}
proc setRGBId*(ih: ptr Ihandle; name: cstring; id: cint; r: cuchar; 
                  g: cuchar; b: cuchar) {.cdecl, importc: "IupSetRGBId", 
    dynlib: dllname.}
proc getAttributeId*(ih: ptr Ihandle; name: cstring; id: cint): cstring {.
    cdecl, importc: "IupGetAttributeId", dynlib: dllname.}
proc getIntId*(ih: ptr Ihandle; name: cstring; id: cint): cint {.cdecl, 
    importc: "IupGetIntId", dynlib: dllname.}
proc getFloatId*(ih: ptr Ihandle; name: cstring; id: cint): cfloat {.cdecl, 
    importc: "IupGetFloatId", dynlib: dllname.}
proc getDoubleId*(ih: ptr Ihandle; name: cstring; id: cint): cdouble {.cdecl, 
    importc: "IupGetDoubleId", dynlib: dllname.}
proc getRGBId*(ih: ptr Ihandle; name: cstring; id: cint; r: ptr cuchar; 
                  g: ptr cuchar; b: ptr cuchar) {.cdecl, importc: "IupGetRGBId", 
    dynlib: dllname.}
proc setAttributeId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                         value: cstring) {.cdecl, importc: "IupSetAttributeId2", 
    dynlib: dllname.}
proc setStrAttributeId2*(ih: ptr Ihandle; name: cstring; lin: cint; 
                            col: cint; value: cstring) {.cdecl, 
    importc: "IupSetStrAttributeId2", dynlib: dllname.}
proc setStrfId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                    format: cstring) {.varargs, cdecl, importc: "IupSetStrfId2", 
                                       dynlib: dllname.}
proc setIntId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                   value: cint) {.cdecl, importc: "IupSetIntId2", 
                                  dynlib: dllname.}
proc setFloatId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                     value: cfloat) {.cdecl, importc: "IupSetFloatId2", 
                                      dynlib: dllname.}
proc setDoubleId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                      value: cdouble) {.cdecl, importc: "IupSetDoubleId2", 
                                        dynlib: dllname.}
proc setRGBId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                   r: cuchar; g: cuchar; b: cuchar) {.cdecl, 
    importc: "IupSetRGBId2", dynlib: dllname.}
proc getAttributeId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cstring {.
    cdecl, importc: "IupGetAttributeId2", dynlib: dllname.}
proc getIntId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cint {.
    cdecl, importc: "IupGetIntId2", dynlib: dllname.}
proc getFloatId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cfloat {.
    cdecl, importc: "IupGetFloatId2", dynlib: dllname.}
proc getDoubleId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cdouble {.
    cdecl, importc: "IupGetDoubleId2", dynlib: dllname.}
proc getRGBId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                   r: ptr cuchar; g: ptr cuchar; b: ptr cuchar) {.cdecl, 
    importc: "IupGetRGBId2", dynlib: dllname.}
proc setGlobal*(name: cstring; value: cstring) {.cdecl, 
    importc: "IupSetGlobal", dynlib: dllname.}
proc setStrGlobal*(name: cstring; value: cstring) {.cdecl, 
    importc: "IupSetStrGlobal", dynlib: dllname.}
proc getGlobal*(name: cstring): cstring {.cdecl, importc: "IupGetGlobal", 
    dynlib: dllname.}
proc setFocus*(ih: ptr Ihandle): ptr Ihandle {.cdecl, importc: "IupSetFocus", 
    dynlib: dllname.}
proc getFocus*(): ptr Ihandle {.cdecl, importc: "IupGetFocus", 
                                   dynlib: dllname.}
proc previousField*(ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupPreviousField", dynlib: dllname.}
proc nextField*(ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupNextField", dynlib: dllname.}
proc getCallback*(ih: ptr Ihandle; name: cstring): Icallback {.cdecl, 
    importc: "IupGetCallback", dynlib: dllname.}
proc setCallback*(ih: ptr Ihandle; name: cstring; `func`: Icallback): Icallback {.
    cdecl, importc: "IupSetCallback", dynlib: dllname.}
proc setCallbacks*(ih: ptr Ihandle; name: cstring; `func`: Icallback): ptr Ihandle {.
    varargs, cdecl, importc: "IupSetCallbacks", dynlib: dllname.}
proc getFunction*(name: cstring): Icallback {.cdecl, 
    importc: "IupGetFunction", dynlib: dllname.}
proc setFunction*(name: cstring; `func`: Icallback): Icallback {.cdecl, 
    importc: "IupSetFunction", dynlib: dllname.}
proc getHandle*(name: cstring): ptr Ihandle {.cdecl, importc: "IupGetHandle", 
    dynlib: dllname.}
proc setHandle*(name: cstring; ih: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupSetHandle", dynlib: dllname.}
proc getAllNames*(names: cstringArray; n: cint): cint {.cdecl, 
    importc: "IupGetAllNames", dynlib: dllname.}
proc getAllDialogs*(names: cstringArray; n: cint): cint {.cdecl, 
    importc: "IupGetAllDialogs", dynlib: dllname.}
proc getName*(ih: ptr Ihandle): cstring {.cdecl, importc: "IupGetName", 
    dynlib: dllname.}
proc setAttributeHandle*(ih: ptr Ihandle; name: cstring; 
                            ih_named: ptr Ihandle) {.cdecl, 
    importc: "IupSetAttributeHandle", dynlib: dllname.}
proc getAttributeHandle*(ih: ptr Ihandle; name: cstring): ptr Ihandle {.
    cdecl, importc: "IupGetAttributeHandle", dynlib: dllname.}
proc getClassName*(ih: ptr Ihandle): cstring {.cdecl, 
    importc: "IupGetClassName", dynlib: dllname.}
proc getClassType*(ih: ptr Ihandle): cstring {.cdecl, 
    importc: "IupGetClassType", dynlib: dllname.}
proc getAllClasses*(names: cstringArray; n: cint): cint {.cdecl, 
    importc: "IupGetAllClasses", dynlib: dllname.}
proc getClassAttributes*(classname: cstring; names: cstringArray; n: cint): cint {.
    cdecl, importc: "IupGetClassAttributes", dynlib: dllname.}
proc getClassCallbacks*(classname: cstring; names: cstringArray; n: cint): cint {.
    cdecl, importc: "IupGetClassCallbacks", dynlib: dllname.}
proc saveClassAttributes*(ih: ptr Ihandle) {.cdecl, 
    importc: "IupSaveClassAttributes", dynlib: dllname.}
proc copyClassAttributes*(src_ih: ptr Ihandle; dst_ih: ptr Ihandle) {.cdecl, 
    importc: "IupCopyClassAttributes", dynlib: dllname.}
proc setClassDefaultAttribute*(classname: cstring; name: cstring; 
                                  value: cstring) {.cdecl, 
    importc: "IupSetClassDefaultAttribute", dynlib: dllname.}
proc classMatch*(ih: ptr Ihandle; classname: cstring): cint {.cdecl, 
    importc: "IupClassMatch", dynlib: dllname.}
proc create*(classname: cstring): ptr Ihandle {.cdecl, importc: "IupCreate", 
    dynlib: dllname.}
proc createv*(classname: cstring; params: ptr pointer): ptr Ihandle {.cdecl, 
    importc: "IupCreatev", dynlib: dllname.}
proc createp*(classname: cstring; first: pointer): ptr Ihandle {.varargs, 
    cdecl, importc: "IupCreatep", dynlib: dllname.}
#**********************************************************************
#                        Elements                                      
#**********************************************************************

proc fill*(): ptr Ihandle {.cdecl, importc: "IupFill", dynlib: dllname.}
proc radio*(child: ptr Ihandle): ptr Ihandle {.cdecl, importc: "IupRadio", 
    dynlib: dllname.}
proc vbox*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupVbox", dynlib: dllname.}
proc vboxv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupVboxv", dynlib: dllname.}
proc zbox*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupZbox", dynlib: dllname.}
proc zboxv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupZboxv", dynlib: dllname.}
proc hbox*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupHbox", dynlib: dllname.}
proc hboxv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupHboxv", dynlib: dllname.}
proc normalizer*(ih_first: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupNormalizer", dynlib: dllname.}
proc normalizerv*(ih_list: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupNormalizerv", dynlib: dllname.}
proc cbox*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupCbox", dynlib: dllname.}
proc cboxv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupCboxv", dynlib: dllname.}
proc sbox*(child: ptr Ihandle): ptr Ihandle {.cdecl, importc: "IupSbox", 
    dynlib: dllname.}
proc split*(child1: ptr Ihandle; child2: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupSplit", dynlib: dllname.}
proc scrollBox*(child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupScrollBox", dynlib: dllname.}
proc gridBox*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupGridBox", dynlib: dllname.}
proc gridBoxv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupGridBoxv", dynlib: dllname.}
proc expander*(child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupExpander", dynlib: dllname.}
proc detachBox*(child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupDetachBox", dynlib: dllname.}
proc backgroundBox*(child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupBackgroundBox", dynlib: dllname.}
proc frame*(child: ptr Ihandle): ptr Ihandle {.cdecl, importc: "IupFrame", 
    dynlib: dllname.}
proc image*(width: cint; height: cint; pixmap: ptr cuchar): ptr Ihandle {.
    cdecl, importc: "IupImage", dynlib: dllname.}
proc imageRGB*(width: cint; height: cint; pixmap: ptr cuchar): ptr Ihandle {.
    cdecl, importc: "IupImageRGB", dynlib: dllname.}
proc imageRGBA*(width: cint; height: cint; pixmap: ptr cuchar): ptr Ihandle {.
    cdecl, importc: "IupImageRGBA", dynlib: dllname.}
proc item*(title: cstring; action: cstring): ptr Ihandle {.cdecl, 
    importc: "IupItem", dynlib: dllname.}
proc submenu*(title: cstring; child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupSubmenu", dynlib: dllname.}
proc separator*(): ptr Ihandle {.cdecl, importc: "IupSeparator", 
                                    dynlib: dllname.}
proc menu*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupMenu", dynlib: dllname.}
proc menuv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupMenuv", dynlib: dllname.}
proc button*(title: cstring; action: cstring): ptr Ihandle {.cdecl, 
    importc: "IupButton", dynlib: dllname.}
proc canvas*(action: cstring): ptr Ihandle {.cdecl, importc: "IupCanvas", 
    dynlib: dllname.}
proc dialog*(child: ptr Ihandle): ptr Ihandle {.cdecl, importc: "IupDialog", 
    dynlib: dllname.}
proc user*(): ptr Ihandle {.cdecl, importc: "IupUser", dynlib: dllname.}
proc label*(title: cstring): ptr Ihandle {.cdecl, importc: "IupLabel", 
    dynlib: dllname.}
proc list*(action: cstring): ptr Ihandle {.cdecl, importc: "IupList", 
    dynlib: dllname.}
proc text*(action: cstring): ptr Ihandle {.cdecl, importc: "IupText", 
    dynlib: dllname.}
proc multiLine*(action: cstring): ptr Ihandle {.cdecl, 
    importc: "IupMultiLine", dynlib: dllname.}
proc toggle*(title: cstring; action: cstring): ptr Ihandle {.cdecl, 
    importc: "IupToggle", dynlib: dllname.}
proc timer*(): ptr Ihandle {.cdecl, importc: "IupTimer", dynlib: dllname.}
proc clipboard*(): ptr Ihandle {.cdecl, importc: "IupClipboard", 
                                    dynlib: dllname.}
proc progressBar*(): ptr Ihandle {.cdecl, importc: "IupProgressBar", 
                                      dynlib: dllname.}
proc val*(`type`: cstring): ptr Ihandle {.cdecl, importc: "IupVal", 
    dynlib: dllname.}
proc tabs*(child: ptr Ihandle): ptr Ihandle {.varargs, cdecl, 
    importc: "IupTabs", dynlib: dllname.}
proc tabsv*(children: ptr ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupTabsv", dynlib: dllname.}
proc tree*(): ptr Ihandle {.cdecl, importc: "IupTree", dynlib: dllname.}
proc link*(url: cstring; title: cstring): ptr Ihandle {.cdecl, 
    importc: "IupLink", dynlib: dllname.}
proc flatButton*(title: cstring): ptr Ihandle {.cdecl, 
    importc: "IupFlatButton", dynlib: dllname.}
# Old controls, use SPIN attribute of IupText 

proc spin*(): ptr Ihandle {.cdecl, importc: "IupSpin", dynlib: dllname.}
proc spinbox*(child: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupSpinbox", dynlib: dllname.}
#**********************************************************************
#                      Utilities                                       
#**********************************************************************
# IupImage utility 

proc saveImageAsText*(ih: ptr Ihandle; file_name: cstring; format: cstring; 
                         name: cstring): cint {.cdecl, 
    importc: "IupSaveImageAsText", dynlib: dllname.}
# IupText and IupScintilla utilities 

proc textConvertLinColToPos*(ih: ptr Ihandle; lin: cint; col: cint; 
                                pos: ptr cint) {.cdecl, 
    importc: "IupTextConvertLinColToPos", dynlib: dllname.}
proc textConvertPosToLinCol*(ih: ptr Ihandle; pos: cint; lin: ptr cint; 
                                col: ptr cint) {.cdecl, 
    importc: "IupTextConvertPosToLinCol", dynlib: dllname.}
# IupText, IupList, IupTree, IupMatrix and IupScintilla utility 

proc convertXYToPos*(ih: ptr Ihandle; x: cint; y: cint): cint {.cdecl, 
    importc: "IupConvertXYToPos", dynlib: dllname.}
# OLD names, kept for backward compatibility, will never be removed. 

proc storeGlobal*(name: cstring; value: cstring) {.cdecl, 
    importc: "IupStoreGlobal", dynlib: dllname.}
proc storeAttribute*(ih: ptr Ihandle; name: cstring; value: cstring) {.cdecl, 
    importc: "IupStoreAttribute", dynlib: dllname.}
proc setfAttribute*(ih: ptr Ihandle; name: cstring; format: cstring) {.
    varargs, cdecl, importc: "IupSetfAttribute", dynlib: dllname.}
proc storeAttributeId*(ih: ptr Ihandle; name: cstring; id: cint; 
                          value: cstring) {.cdecl, 
    importc: "IupStoreAttributeId", dynlib: dllname.}
proc setfAttributeId*(ih: ptr Ihandle; name: cstring; id: cint; f: cstring) {.
    varargs, cdecl, importc: "IupSetfAttributeId", dynlib: dllname.}
proc storeAttributeId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                           value: cstring) {.cdecl, 
    importc: "IupStoreAttributeId2", dynlib: dllname.}
proc setfAttributeId2*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                          format: cstring) {.varargs, cdecl, 
    importc: "IupSetfAttributeId2", dynlib: dllname.}
# IupTree utilities 

proc treeSetUserId*(ih: ptr Ihandle; id: cint; userid: pointer): cint {.
    cdecl, importc: "IupTreeSetUserId", dynlib: dllname.}
proc treeGetUserId*(ih: ptr Ihandle; id: cint): pointer {.cdecl, 
    importc: "IupTreeGetUserId", dynlib: dllname.}
proc treeGetId*(ih: ptr Ihandle; userid: pointer): cint {.cdecl, 
    importc: "IupTreeGetId", dynlib: dllname.}
proc treeSetAttributeHandle*(ih: ptr Ihandle; name: cstring; id: cint; 
                                ih_named: ptr Ihandle) {.cdecl, 
    importc: "IupTreeSetAttributeHandle", dynlib: dllname.}
# DEPRECATED IupTree utilities, use Iup*AttributeId functions. It will be removed in a future version.  

proc treeSetAttribute*(ih: ptr Ihandle; name: cstring; id: cint; 
                          value: cstring) {.cdecl, 
    importc: "IupTreeSetAttribute", dynlib: dllname.}
proc treeStoreAttribute*(ih: ptr Ihandle; name: cstring; id: cint; 
                            value: cstring) {.cdecl, 
    importc: "IupTreeStoreAttribute", dynlib: dllname.}
proc treeGetAttribute*(ih: ptr Ihandle; name: cstring; id: cint): cstring {.
    cdecl, importc: "IupTreeGetAttribute", dynlib: dllname.}
proc treeGetInt*(ih: ptr Ihandle; name: cstring; id: cint): cint {.cdecl, 
    importc: "IupTreeGetInt", dynlib: dllname.}
proc treeGetFloat*(ih: ptr Ihandle; name: cstring; id: cint): cfloat {.cdecl, 
    importc: "IupTreeGetFloat", dynlib: dllname.}
proc treeSetfAttribute*(ih: ptr Ihandle; name: cstring; id: cint; 
                           format: cstring) {.varargs, cdecl, 
    importc: "IupTreeSetfAttribute", dynlib: dllname.}
# DEPRECATED callback management. It will be removed in a future version. 

proc getActionName*(): cstring {.cdecl, importc: "IupGetActionName", 
                                    dynlib: dllname.}
# DEPRECATED font names. It will be removed in a future version.  

proc mapFont*(iupfont: cstring): cstring {.cdecl, importc: "IupMapFont", 
    dynlib: dllname.}
proc unMapFont*(driverfont: cstring): cstring {.cdecl, 
    importc: "IupUnMapFont", dynlib: dllname.}
#**********************************************************************
#                      Pre-defined dialogs                           
#**********************************************************************

proc fileDlg*(): ptr Ihandle {.cdecl, importc: "IupFileDlg", 
                                  dynlib: dllname.}
proc messageDlg*(): ptr Ihandle {.cdecl, importc: "IupMessageDlg", 
                                     dynlib: dllname.}
proc colorDlg*(): ptr Ihandle {.cdecl, importc: "IupColorDlg", 
                                   dynlib: dllname.}
proc fontDlg*(): ptr Ihandle {.cdecl, importc: "IupFontDlg", 
                                  dynlib: dllname.}
proc progressDlg*(): ptr Ihandle {.cdecl, importc: "IupProgressDlg", 
                                      dynlib: dllname.}
proc getFile*(arq: cstring): cint {.cdecl, importc: "IupGetFile", 
                                       dynlib: dllname.}
proc message*(title: cstring; msg: cstring) {.cdecl, importc: "IupMessage", 
    dynlib: dllname.}
proc messagef*(title: cstring; format: cstring) {.varargs, cdecl, 
    importc: "IupMessagef", dynlib: dllname.}
proc alarm*(title: cstring; msg: cstring; b1: cstring; b2: cstring; 
               b3: cstring): cint {.cdecl, importc: "IupAlarm", 
                                    dynlib: dllname.}
proc scanf*(format: cstring): cint {.varargs, cdecl, importc: "IupScanf", 
                                        dynlib: dllname.}
proc listDialog*(`type`: cint; title: cstring; size: cint; 
                    list: cstringArray; op: cint; max_col: cint; max_lin: cint; 
                    marks: ptr cint): cint {.cdecl, importc: "IupListDialog", 
    dynlib: dllname.}
proc getText*(title: cstring; text: cstring): cint {.cdecl, 
    importc: "IupGetText", dynlib: dllname.}
proc getColor*(x: cint; y: cint; r: ptr cuchar; g: ptr cuchar; b: ptr cuchar): cint {.
    cdecl, importc: "IupGetColor", dynlib: dllname.}
type 
  Iparamcb* = proc (dialog: ptr Ihandle; param_index: cint; user_data: pointer): cint {.
      cdecl.}

proc getParam*(title: cstring; action: Iparamcb; user_data: pointer; 
                  format: cstring): cint {.varargs, cdecl, 
    importc: "IupGetParam", dynlib: dllname.}
proc getParamv*(title: cstring; action: Iparamcb; user_data: pointer; 
                   format: cstring; param_count: cint; param_extra: cint; 
                   param_data: ptr pointer): cint {.cdecl, 
    importc: "IupGetParamv", dynlib: dllname.}
proc paramf*(format: cstring): ptr Ihandle {.cdecl, importc: "IupParamf", 
    dynlib: dllname.}
proc paramBox*(parent: ptr Ihandle; params: ptr ptr Ihandle; count: cint): ptr Ihandle {.
    cdecl, importc: "IupParamBox", dynlib: dllname.}
proc layoutDialog*(dialog: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupLayoutDialog", dynlib: dllname.}
proc elementPropertiesDialog*(elem: ptr Ihandle): ptr Ihandle {.cdecl, 
    importc: "IupElementPropertiesDialog", dynlib: dllname.}
#**********************************************************************
#                   Common Flags and Return Values                     
#**********************************************************************

const 
  IUP_ERROR* = 1
  IUP_NOERROR* = 0
  IUP_OPENED* = - 1
  IUP_INVALID* = - 1
  IUP_INVALID_ID* = - 10

#**********************************************************************
#                   Callback Return Values                             
#**********************************************************************

const 
  IUP_IGNORE* = - 1
  IUP_DEFAULT* = - 2
  IUP_CLOSE* = - 3
  IUP_CONTINUE* = - 4

#**********************************************************************
#           IupPopup and IupShowXY Parameter Values                    
#**********************************************************************

const 
  IUP_CENTER* = 0x0000FFFF
  IUP_LEFT* = 0x0000FFFE
  IUP_RIGHT* = 0x0000FFFD
  IUP_MOUSEPOS* = 0x0000FFFC
  IUP_CURRENT* = 0x0000FFFB
  IUP_CENTERPARENT* = 0x0000FFFA
  IUP_TOP* = IUP_LEFT
  IUP_BOTTOM* = IUP_RIGHT

#**********************************************************************
#               SHOW_CB Callback Values                                
#**********************************************************************

const 
  IUP_SHOW* = 0
  IUP_RESTORE* = 1
  IUP_MINIMIZE* = 2
  IUP_MAXIMIZE* = 3
  IUP_HIDE* = 4

#**********************************************************************
#               SCROLL_CB Callback Values                              
#**********************************************************************

const 
  IUP_SBUP* = 0
  IUP_SBDN* = 1
  IUP_SBPGUP* = 2
  IUP_SBPGDN* = 3
  IUP_SBPOSV* = 4
  IUP_SBDRAGV* = 5
  IUP_SBLEFT* = 6
  IUP_SBRIGHT* = 7
  IUP_SBPGLEFT* = 8
  IUP_SBPGRIGHT* = 9
  IUP_SBPOSH* = 10
  IUP_SBDRAGH* = 11

#**********************************************************************
#               Mouse Button Values and Macros                         
#**********************************************************************

const 
  IUP_BUTTON1* = '1'
  IUP_BUTTON2* = '2'
  IUP_BUTTON3* = '3'
  IUP_BUTTON4* = '4'
  IUP_BUTTON5* = '5'

template iup_isshift*(s: expr): expr = 
  (s[0] == 'S')

template iup_iscontrol*(s: expr): expr = 
  (s[1] == 'C')

template iup_isbutton1*(s: expr): expr = 
  (s[2] == '1')

template iup_isbutton2*(s: expr): expr = 
  (s[3] == '2')

template iup_isbutton3*(s: expr): expr = 
  (s[4] == '3')

template iup_isdouble*(s: expr): expr = 
  (s[5] == 'D')

template iup_isalt*(s: expr): expr = 
  (s[6] == 'A')

template iup_issys*(s: expr): expr = 
  (s[7] == 'Y')

template iup_isbutton4*(s: expr): expr = 
  (s[8] == '4')

template iup_isbutton5*(s: expr): expr = 
  (s[9] == '5')

# Old definitions for backward compatibility 

# const 
#   isshift* = iup_isshift
#   iscontrol* = iup_iscontrol
#   isbutton1* = iup_isbutton1
#   isbutton2* = iup_isbutton2
#   isbutton3* = iup_isbutton3
#   isdouble* = iup_isdouble
#   isalt* = iup_isalt
#   issys* = iup_issys
#   isbutton4* = iup_isbutton4
#   isbutton5* = iup_isbutton5

#**********************************************************************
#                      Pre-Defined Masks                               
#**********************************************************************

const 
  IUP_MASK_FLOAT* = "[+/-]?(/d+/.?/d*|/./d+)"
  IUP_MASK_UFLOAT* = "(/d+/.?/d*|/./d+)"
  IUP_MASK_EFLOAT* = "[+/-]?(/d+/.?/d*|/./d+)([eE][+/-]?/d+)?"
  IUP_MASK_FLOATCOMMA* = "[+/-]?(/d+/,?/d*|/,/d+)"
  IUP_MASK_UFLOATCOMMA* = "(/d+/,?/d*|/,/d+)"
  IUP_MASK_INT* = "[+/-]?/d+"
  IUP_MASK_UINT* = "/d+"

# Old definitions for backward compatibility 

# const 
#   IUPMASK_FLOAT* = IUP_MASK_FLOAT
#   IUPMASK_UFLOAT* = IUP_MASK_UFLOAT
#   IUPMASK_EFLOAT* = IUP_MASK_EFLOAT
#   IUPMASK_INT* = IUP_MASK_INT
#   IUPMASK_UINT* = IUP_MASK_UINT

#**********************************************************************
#                   IupGetParam Callback situations                    
#**********************************************************************

const 
  IUP_GETPARAM_BUTTON1* = - 1
  IUP_GETPARAM_INIT* = - 2
  IUP_GETPARAM_BUTTON2* = - 3
  IUP_GETPARAM_BUTTON3* = - 4
  IUP_GETPARAM_CLOSE* = - 5
  IUP_GETPARAM_OK* = IUP_GETPARAM_BUTTON1
  IUP_GETPARAM_CANCEL* = IUP_GETPARAM_BUTTON2
  IUP_GETPARAM_HELP* = IUP_GETPARAM_BUTTON3

#**********************************************************************
#                   Record Input Modes                                 
#**********************************************************************

const 
  IUP_RECBINARY* = 0
  IUP_RECTEXT* = 1

#**********************************************************************
#              Replacement for the WinMain in Windows,                 
#        this allows the application to start from "main".             
#        Used only for Watcom.                                         
#**********************************************************************

# when defined(__WATCOMC__): 
#   const 
#     main* = IupMain

#* \file
#  \brief initializes dial, gauge, colorbrowser, colorbar controls.
# 
#  See Copyright Notice in "iup.h"
# 
when defined(windows):
  const controlsdllname = "iupcontrols(|316).dll"
elif defined(macosx):
  const controlsdllname = "libiupcontrols(|3.16).dylib"
else:
  const controlsdllname = "libiupcontrols(|3.16).so(|.1)"

proc controlsOpen*(): cint {.cdecl, importc: "IupControlsOpen", dynlib: controlsdllname.}
proc controlsClose*() {.cdecl, importc: "IupControlsClose", dynlib: controlsdllname.}
# for backward compatibility only, does nothing since IUP 3. DEPRECATED. It will be removed in a future version.  

proc colorbar*(): ptr Ihandle {.cdecl, importc: "IupColorbar", 
                                   dynlib: controlsdllname.}
proc cells*(): ptr Ihandle {.cdecl, importc: "IupCells", dynlib: controlsdllname.}
proc colorBrowser*(): ptr Ihandle {.cdecl, importc: "IupColorBrowser", 
                                       dynlib: controlsdllname.}
proc gauge*(): ptr Ihandle {.cdecl, importc: "IupGauge", dynlib: controlsdllname.}
proc dial*(`type`: cstring): ptr Ihandle {.cdecl, importc: "IupDial", 
    dynlib: controlsdllname.}
proc matrix*(action: cstring): ptr Ihandle {.cdecl, importc: "IupMatrix", 
    dynlib: controlsdllname.}
proc matrixList*(): ptr Ihandle {.cdecl, importc: "IupMatrixList", 
                                     dynlib: controlsdllname.}
# IupMatrix utilities (DEPRECATED, use IupSetAttributeId2 functions). It will be removed in a future version. 

proc matSetAttribute*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                         value: cstring) {.cdecl, importc: "IupMatSetAttribute", 
    dynlib: controlsdllname.}
proc matStoreAttribute*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                           value: cstring) {.cdecl, 
    importc: "IupMatStoreAttribute", dynlib: controlsdllname.}
proc matGetAttribute*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cstring {.
    cdecl, importc: "IupMatGetAttribute", dynlib: controlsdllname.}
proc matGetInt*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cint {.
    cdecl, importc: "IupMatGetInt", dynlib: controlsdllname.}
proc matGetFloat*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint): cfloat {.
    cdecl, importc: "IupMatGetFloat", dynlib: controlsdllname.}
proc matSetfAttribute*(ih: ptr Ihandle; name: cstring; lin: cint; col: cint; 
                          format: cstring) {.varargs, cdecl, 
    importc: "IupMatSetfAttribute", dynlib: controlsdllname.}
# Used by IupColorbar 

const 
  IUP_PRIMARY* = - 1
  IUP_SECONDARY* = - 2

# available only when linking with "iupluamatrix" 

# proc matrixSetFormula*(ih: ptr Ihandle; col: cint; formula: cstring; 
#                           init: cstring) {.cdecl, 
#     importc: "IupMatrixSetFormula", dynlib: controlsdllname.}
# proc matrixSetDynamic*(ih: ptr Ihandle; init: cstring) {.cdecl, 
#     importc: "IupMatrixSetDynamic", dynlib: controlsdllname.}
#* \file
#  \brief Keyboard Keys definitions.
# 
#  See Copyright Notice in "iup_core.nim"
# 

# from 32 to 126, all character sets are equal,
#   the key code is the same as the ASCii character code. 

const 
  K_SP* = cint(ord(' '))
  K_exclam* = cint(ord('!'))
  K_quotedbl* = cint(ord('\"'))
  K_numbersign* = cint(ord('#'))
  K_dollar* = cint(ord('$'))
  K_percent* = cint(ord('%'))
  K_ampersand* = cint(ord('&'))
  K_apostrophe* = cint(ord('\''))
  K_parentleft* = cint(ord('('))
  K_parentright* = cint(ord(')'))
  K_asterisk* = cint(ord('*'))
  K_plus* = cint(ord('+'))
  K_comma* = cint(ord(','))
  K_minus* = cint(ord('-'))
  K_period* = cint(ord('.'))
  K_slash* = cint(ord('/'))
  K_0* = cint(ord('0'))
  K_1* = cint(ord('1'))
  K_2* = cint(ord('2'))
  K_3* = cint(ord('3'))
  K_4* = cint(ord('4'))
  K_5* = cint(ord('5'))
  K_6* = cint(ord('6'))
  K_7* = cint(ord('7'))
  K_8* = cint(ord('8'))
  K_9* = cint(ord('9'))
  K_colon* = cint(ord(':'))
  K_semicolon* = cint(ord(';'))
  K_less* = cint(ord('<'))
  K_equal* = cint(ord('='))
  K_greater* = cint(ord('>'))
  K_question* = cint(ord('?'))
  K_at* = cint(ord('@'))
  K_upperA* = cint(ord('A'))
  K_upperB* = cint(ord('B'))
  K_upperC* = cint(ord('C'))
  K_upperD* = cint(ord('D'))
  K_upperE* = cint(ord('E'))
  K_upperF* = cint(ord('F'))
  K_upperG* = cint(ord('G'))
  K_upperH* = cint(ord('H'))
  K_upperI* = cint(ord('I'))
  K_upperJ* = cint(ord('J'))
  K_upperK* = cint(ord('K'))
  K_upperL* = cint(ord('L'))
  K_upperM* = cint(ord('M'))
  K_upperN* = cint(ord('N'))
  K_upperO* = cint(ord('O'))
  K_upperP* = cint(ord('P'))
  K_upperQ* = cint(ord('Q'))
  K_upperR* = cint(ord('R'))
  K_upperS* = cint(ord('S'))
  K_upperT* = cint(ord('T'))
  K_upperU* = cint(ord('U'))
  K_upperV* = cint(ord('V'))
  K_upperW* = cint(ord('W'))
  K_upperX* = cint(ord('X'))
  K_upperY* = cint(ord('Y'))
  K_upperZ* = cint(ord('Z'))
  K_bracketleft* = cint(ord('['))
  K_backslash* = cint(ord('\\'))
  K_bracketright* = cint(ord(']'))
  K_circum* = cint(ord('^'))
  K_underscore* = cint(ord('_'))
  K_grave* = cint(ord('`'))
  K_a* = cint(ord('a'))
  K_b* = cint(ord('b'))
  K_c* = cint(ord('c'))
  K_d* = cint(ord('d'))
  K_e* = cint(ord('e'))
  K_f* = cint(ord('f'))
  K_g* = cint(ord('g'))
  K_h* = cint(ord('h'))
  K_i* = cint(ord('i'))
  K_j* = cint(ord('j'))
  K_k* = cint(ord('k'))
  K_l* = cint(ord('l'))
  K_m* = cint(ord('m'))
  K_n* = cint(ord('n'))
  K_o* = cint(ord('o'))
  K_p* = cint(ord('p'))
  K_q* = cint(ord('q'))
  K_r* = cint(ord('r'))
  K_s* = cint(ord('s'))
  K_t* = cint(ord('t'))
  K_u* = cint(ord('u'))
  K_v* = cint(ord('v'))
  K_w* = cint(ord('w'))
  K_x* = cint(ord('x'))
  K_y* = cint(ord('y'))
  K_z* = cint(ord('z'))
  K_braceleft* = cint(ord('{'))
  K_bar* = cint(ord('|'))
  K_braceright* = cint(ord('}'))
  K_tilde* = cint(ord('~'))

# Printable ASCii keys 

template iup_isprint*(c: expr): expr = 
  ((c) > 31 and (c) < 127)

# also define the escape sequences that have keys associated 

const 
  K_BS* = cint(ord('\b'))
  K_TAB* = cint(ord('\t'))
  K_LF* = cint(10)
  K_CR* = cint(13)

# IUP Extended Key Codes, range start at 128      

template iup_isXkey*(c: expr): expr = 
  ((c) >= 128)

# These use the same definition as X11 and GDK.
#   This also means that any X11 or GDK definition can also be used. 

const 
  K_PAUSE* = 0x0000FF13
  K_ESC* = 0x0000FF1B
  K_HOME* = 0x0000FF50
  K_LEFT* = 0x0000FF51
  K_UP* = 0x0000FF52
  K_RIGHT* = 0x0000FF53
  K_DOWN* = 0x0000FF54
  K_PGUP* = 0x0000FF55
  K_PGDN* = 0x0000FF56
  K_END* = 0x0000FF57
  K_MIDDLE* = 0x0000FF0B
  K_Print* = 0x0000FF61
  K_INS* = 0x0000FF63
  K_Menu* = 0x0000FF67
  K_DEL* = 0x0000FFFF
  K_F1* = 0x0000FFBE
  K_F2* = 0x0000FFBF
  K_F3* = 0x0000FFC0
  K_F4* = 0x0000FFC1
  K_F5* = 0x0000FFC2
  K_F6* = 0x0000FFC3
  K_F7* = 0x0000FFC4
  K_F8* = 0x0000FFC5
  K_F9* = 0x0000FFC6
  K_F10* = 0x0000FFC7
  K_F11* = 0x0000FFC8
  K_F12* = 0x0000FFC9

# no Shift/Ctrl/Alt 

const 
  K_LSHIFT* = 0x0000FFE1
  K_RSHIFT* = 0x0000FFE2
  K_LCTRL* = 0x0000FFE3
  K_RCTRL* = 0x0000FFE4
  K_LALT* = 0x0000FFE9
  K_RALT* = 0x0000FFEA
  K_NUM* = 0x0000FF7F
  K_SCROLL* = 0x0000FF14
  K_CAPS* = 0x0000FFE5

# Also, these are the same as the Latin-1 definition 

const 
  K_ccedilla* = 0x000000E7
  K_upperCcedilla* = 0x000000C7
  K_acute* = 0x000000B4
  K_diaeresis* = 0x000000A8

#****************************************************
# Modifiers use last 4 bits. Since IUP 3.9           
# These modifiers definitions are specific to IUP    
#****************************************************

template iup_isShiftXkey*(c: expr): expr = 
  ((c) and 0x10000000)

template iup_isCtrlXkey*(c: expr): expr = 
  ((c) and 0x20000000)

template iup_isAltXkey*(c: expr): expr = 
  ((c) and 0x40000000)

template iup_isSysXkey*(c: expr): expr = 
  ((c) and 0x80000000)

template iup_XkeyBase*(c: expr): expr = 
  ((c) and 0x0FFFFFFF)

template iup_XkeyShift*(c: expr): expr = 
  ((c) or 0x10000000)        # Shift  
  
template iup_XkeyCtrl*(c: expr): expr = 
  ((c) or 0x20000000)        # Ctrl   
  
template iup_XkeyAlt*(c: expr): expr = 
  ((c) or 0x40000000)        # Alt    
  
template iup_XkeySys*(c: expr): expr = 
  ((c) or 0x80000000)        # Sys (Win or Apple) 
  
# These definitions are here for backward compatibility 
#   and to simplify some key combination usage.
#   But since IUP 3.9, modifiers can be combined with any key
#   and they can be mixed togheter. 

const 
  K_sHOME* = iup_XkeyShift(K_HOME)
  K_sUP* = iup_XkeyShift(K_UP)
  K_sPGUP* = iup_XkeyShift(K_PGUP)
  K_sLEFT* = iup_XkeyShift(K_LEFT)
  K_sMIDDLE* = iup_XkeyShift(K_MIDDLE)
  K_sRIGHT* = iup_XkeyShift(K_RIGHT)
  K_sEND* = iup_XkeyShift(K_END)
  K_sDOWN* = iup_XkeyShift(K_DOWN)
  K_sPGDN* = iup_XkeyShift(K_PGDN)
  K_sINS* = iup_XkeyShift(K_INS)
  K_sDEL* = iup_XkeyShift(K_DEL)
  K_sSP* = iup_XkeyShift(K_SP)
  K_sTAB* = iup_XkeyShift(K_TAB)
  K_sCR* = iup_XkeyShift(K_CR)
  K_sBS* = iup_XkeyShift(K_BS)
  K_sPAUSE* = iup_XkeyShift(K_PAUSE)
  K_sESC* = iup_XkeyShift(K_ESC)
  K_sF1* = iup_XkeyShift(K_F1)
  K_sF2* = iup_XkeyShift(K_F2)
  K_sF3* = iup_XkeyShift(K_F3)
  K_sF4* = iup_XkeyShift(K_F4)
  K_sF5* = iup_XkeyShift(K_F5)
  K_sF6* = iup_XkeyShift(K_F6)
  K_sF7* = iup_XkeyShift(K_F7)
  K_sF8* = iup_XkeyShift(K_F8)
  K_sF9* = iup_XkeyShift(K_F9)
  K_sF10* = iup_XkeyShift(K_F10)
  K_sF11* = iup_XkeyShift(K_F11)
  K_sF12* = iup_XkeyShift(K_F12)
  K_sPrint* = iup_XkeyShift(K_Print)
  K_sMenu* = iup_XkeyShift(K_Menu)
  K_cHOME* = iup_XkeyCtrl(K_HOME)
  K_cUP* = iup_XkeyCtrl(K_UP)
  K_cPGUP* = iup_XkeyCtrl(K_PGUP)
  K_cLEFT* = iup_XkeyCtrl(K_LEFT)
  K_cMIDDLE* = iup_XkeyCtrl(K_MIDDLE)
  K_cRIGHT* = iup_XkeyCtrl(K_RIGHT)
  K_cEND* = iup_XkeyCtrl(K_END)
  K_cDOWN* = iup_XkeyCtrl(K_DOWN)
  K_cPGDN* = iup_XkeyCtrl(K_PGDN)
  K_cINS* = iup_XkeyCtrl(K_INS)
  K_cDEL* = iup_XkeyCtrl(K_DEL)
  K_cSP* = iup_XkeyCtrl(K_SP)
  K_cTAB* = iup_XkeyCtrl(K_TAB)
  K_cCR* = iup_XkeyCtrl(K_CR)
  K_cBS* = iup_XkeyCtrl(K_BS)
  K_cPAUSE* = iup_XkeyCtrl(K_PAUSE)
  K_cESC* = iup_XkeyCtrl(K_ESC)
  K_cCcedilla* = iup_XkeyCtrl(K_Ccedilla)
  K_cF1* = iup_XkeyCtrl(K_F1)
  K_cF2* = iup_XkeyCtrl(K_F2)
  K_cF3* = iup_XkeyCtrl(K_F3)
  K_cF4* = iup_XkeyCtrl(K_F4)
  K_cF5* = iup_XkeyCtrl(K_F5)
  K_cF6* = iup_XkeyCtrl(K_F6)
  K_cF7* = iup_XkeyCtrl(K_F7)
  K_cF8* = iup_XkeyCtrl(K_F8)
  K_cF9* = iup_XkeyCtrl(K_F9)
  K_cF10* = iup_XkeyCtrl(K_F10)
  K_cF11* = iup_XkeyCtrl(K_F11)
  K_cF12* = iup_XkeyCtrl(K_F12)
  K_cPrint* = iup_XkeyCtrl(K_Print)
  K_cMenu* = iup_XkeyCtrl(K_Menu)
  K_mHOME* = iup_XkeyAlt(K_HOME)
  K_mUP* = iup_XkeyAlt(K_UP)
  K_mPGUP* = iup_XkeyAlt(K_PGUP)
  K_mLEFT* = iup_XkeyAlt(K_LEFT)
  K_mMIDDLE* = iup_XkeyAlt(K_MIDDLE)
  K_mRIGHT* = iup_XkeyAlt(K_RIGHT)
  K_mEND* = iup_XkeyAlt(K_END)
  K_mDOWN* = iup_XkeyAlt(K_DOWN)
  K_mPGDN* = iup_XkeyAlt(K_PGDN)
  K_mINS* = iup_XkeyAlt(K_INS)
  K_mDEL* = iup_XkeyAlt(K_DEL)
  K_mSP* = iup_XkeyAlt(K_SP)
  K_mTAB* = iup_XkeyAlt(K_TAB)
  K_mCR* = iup_XkeyAlt(K_CR)
  K_mBS* = iup_XkeyAlt(K_BS)
  K_mPAUSE* = iup_XkeyAlt(K_PAUSE)
  K_mESC* = iup_XkeyAlt(K_ESC)
  K_mCcedilla* = iup_XkeyAlt(K_Ccedilla)
  K_mF1* = iup_XkeyAlt(K_F1)
  K_mF2* = iup_XkeyAlt(K_F2)
  K_mF3* = iup_XkeyAlt(K_F3)
  K_mF4* = iup_XkeyAlt(K_F4)
  K_mF5* = iup_XkeyAlt(K_F5)
  K_mF6* = iup_XkeyAlt(K_F6)
  K_mF7* = iup_XkeyAlt(K_F7)
  K_mF8* = iup_XkeyAlt(K_F8)
  K_mF9* = iup_XkeyAlt(K_F9)
  K_mF10* = iup_XkeyAlt(K_F10)
  K_mF11* = iup_XkeyAlt(K_F11)
  K_mF12* = iup_XkeyAlt(K_F12)
  K_mPrint* = iup_XkeyAlt(K_Print)
  K_mMenu* = iup_XkeyAlt(K_Menu)
  K_yHOME* = iup_XkeySys(K_HOME)
  K_yUP* = iup_XkeySys(K_UP)
  K_yPGUP* = iup_XkeySys(K_PGUP)
  K_yLEFT* = iup_XkeySys(K_LEFT)
  K_yMIDDLE* = iup_XkeySys(K_MIDDLE)
  K_yRIGHT* = iup_XkeySys(K_RIGHT)
  K_yEND* = iup_XkeySys(K_END)
  K_yDOWN* = iup_XkeySys(K_DOWN)
  K_yPGDN* = iup_XkeySys(K_PGDN)
  K_yINS* = iup_XkeySys(K_INS)
  K_yDEL* = iup_XkeySys(K_DEL)
  K_ySP* = iup_XkeySys(K_SP)
  K_yTAB* = iup_XkeySys(K_TAB)
  K_yCR* = iup_XkeySys(K_CR)
  K_yBS* = iup_XkeySys(K_BS)
  K_yPAUSE* = iup_XkeySys(K_PAUSE)
  K_yESC* = iup_XkeySys(K_ESC)
  K_yCcedilla* = iup_XkeySys(K_Ccedilla)
  K_yF1* = iup_XkeySys(K_F1)
  K_yF2* = iup_XkeySys(K_F2)
  K_yF3* = iup_XkeySys(K_F3)
  K_yF4* = iup_XkeySys(K_F4)
  K_yF5* = iup_XkeySys(K_F5)
  K_yF6* = iup_XkeySys(K_F6)
  K_yF7* = iup_XkeySys(K_F7)
  K_yF8* = iup_XkeySys(K_F8)
  K_yF9* = iup_XkeySys(K_F9)
  K_yF10* = iup_XkeySys(K_F10)
  K_yF11* = iup_XkeySys(K_F11)
  K_yF12* = iup_XkeySys(K_F12)
  K_yPrint* = iup_XkeySys(K_Print)
  K_yMenu* = iup_XkeySys(K_Menu)
  K_sPlus* = iup_XkeyShift(K_plus)
  K_sComma* = iup_XkeyShift(K_comma)
  K_sMinus* = iup_XkeyShift(K_minus)
  K_sPeriod* = iup_XkeyShift(K_period)
  K_sSlash* = iup_XkeyShift(K_slash)
  K_sAsterisk* = iup_XkeyShift(K_asterisk)
  K_cupperA* = iup_XkeyCtrl(K_A)
  K_cupperB* = iup_XkeyCtrl(K_B)
  K_cupperC* = iup_XkeyCtrl(K_C)
  K_cupperD* = iup_XkeyCtrl(K_D)
  K_cupperE* = iup_XkeyCtrl(K_E)
  K_cupperF* = iup_XkeyCtrl(K_F)
  K_cupperG* = iup_XkeyCtrl(K_G)
  K_cupperH* = iup_XkeyCtrl(K_H)
  K_cupperI* = iup_XkeyCtrl(K_I)
  K_cupperJ* = iup_XkeyCtrl(K_J)
  K_cupperK* = iup_XkeyCtrl(K_K)
  K_cupperL* = iup_XkeyCtrl(K_L)
  K_cupperM* = iup_XkeyCtrl(K_M)
  K_cupperN* = iup_XkeyCtrl(K_N)
  K_cupperO* = iup_XkeyCtrl(K_O)
  K_cupperP* = iup_XkeyCtrl(K_P)
  K_cupperQ* = iup_XkeyCtrl(K_Q)
  K_cupperR* = iup_XkeyCtrl(K_R)
  K_cupperS* = iup_XkeyCtrl(K_S)
  K_cupperT* = iup_XkeyCtrl(K_T)
  K_cupperU* = iup_XkeyCtrl(K_U)
  K_cupperV* = iup_XkeyCtrl(K_V)
  K_cupperW* = iup_XkeyCtrl(K_W)
  K_cupperX* = iup_XkeyCtrl(K_X)
  K_cupperY* = iup_XkeyCtrl(K_Y)
  K_cupperZ* = iup_XkeyCtrl(K_Z)
  K_c1* = iup_XkeyCtrl(K_1)
  K_c2* = iup_XkeyCtrl(K_2)
  K_c3* = iup_XkeyCtrl(K_3)
  K_c4* = iup_XkeyCtrl(K_4)
  K_c5* = iup_XkeyCtrl(K_5)
  K_c6* = iup_XkeyCtrl(K_6)
  K_c7* = iup_XkeyCtrl(K_7)
  K_c8* = iup_XkeyCtrl(K_8)
  K_c9* = iup_XkeyCtrl(K_9)
  K_c0* = iup_XkeyCtrl(K_0)
  K_cPlus* = iup_XkeyCtrl(K_plus)
  K_cComma* = iup_XkeyCtrl(K_comma)
  K_cMinus* = iup_XkeyCtrl(K_minus)
  K_cPeriod* = iup_XkeyCtrl(K_period)
  K_cSlash* = iup_XkeyCtrl(K_slash)
  K_cSemicolon* = iup_XkeyCtrl(K_semicolon)
  K_cEqual* = iup_XkeyCtrl(K_equal)
  K_cBracketleft* = iup_XkeyCtrl(K_bracketleft)
  K_cBracketright* = iup_XkeyCtrl(K_bracketright)
  K_cBackslash* = iup_XkeyCtrl(K_backslash)
  K_cAsterisk* = iup_XkeyCtrl(K_asterisk)
  K_mupperA* = iup_XkeyAlt(K_A)
  K_mupperB* = iup_XkeyAlt(K_B)
  K_mupperC* = iup_XkeyAlt(K_C)
  K_mupperD* = iup_XkeyAlt(K_D)
  K_mupperE* = iup_XkeyAlt(K_E)
  K_mupperF* = iup_XkeyAlt(K_F)
  K_mupperG* = iup_XkeyAlt(K_G)
  K_mupperH* = iup_XkeyAlt(K_H)
  K_mupperI* = iup_XkeyAlt(K_I)
  K_mupperJ* = iup_XkeyAlt(K_J)
  K_mupperK* = iup_XkeyAlt(K_K)
  K_mupperL* = iup_XkeyAlt(K_L)
  K_mupperM* = iup_XkeyAlt(K_M)
  K_mupperN* = iup_XkeyAlt(K_N)
  K_mupperO* = iup_XkeyAlt(K_O)
  K_mupperP* = iup_XkeyAlt(K_P)
  K_mupperQ* = iup_XkeyAlt(K_Q)
  K_mupperR* = iup_XkeyAlt(K_R)
  K_mupperS* = iup_XkeyAlt(K_S)
  K_mupperT* = iup_XkeyAlt(K_T)
  K_mupperU* = iup_XkeyAlt(K_U)
  K_mupperV* = iup_XkeyAlt(K_V)
  K_mupperW* = iup_XkeyAlt(K_W)
  K_mupperX* = iup_XkeyAlt(K_X)
  K_mupperY* = iup_XkeyAlt(K_Y)
  K_mupperZ* = iup_XkeyAlt(K_Z)
  K_m1* = iup_XkeyAlt(K_1)
  K_m2* = iup_XkeyAlt(K_2)
  K_m3* = iup_XkeyAlt(K_3)
  K_m4* = iup_XkeyAlt(K_4)
  K_m5* = iup_XkeyAlt(K_5)
  K_m6* = iup_XkeyAlt(K_6)
  K_m7* = iup_XkeyAlt(K_7)
  K_m8* = iup_XkeyAlt(K_8)
  K_m9* = iup_XkeyAlt(K_9)
  K_m0* = iup_XkeyAlt(K_0)
  K_mPlus* = iup_XkeyAlt(K_plus)
  K_mComma* = iup_XkeyAlt(K_comma)
  K_mMinus* = iup_XkeyAlt(K_minus)
  K_mPeriod* = iup_XkeyAlt(K_period)
  K_mSlash* = iup_XkeyAlt(K_slash)
  K_mSemicolon* = iup_XkeyAlt(K_semicolon)
  K_mEqual* = iup_XkeyAlt(K_equal)
  K_mBracketleft* = iup_XkeyAlt(K_bracketleft)
  K_mBracketright* = iup_XkeyAlt(K_bracketright)
  K_mBackslash* = iup_XkeyAlt(K_backslash)
  K_mAsterisk* = iup_XkeyAlt(K_asterisk)
  K_yupperA* = iup_XkeySys(K_A)
  K_yupperB* = iup_XkeySys(K_B)
  K_yupperC* = iup_XkeySys(K_C)
  K_yupperD* = iup_XkeySys(K_D)
  K_yupperE* = iup_XkeySys(K_E)
  K_yupperF* = iup_XkeySys(K_F)
  K_yupperG* = iup_XkeySys(K_G)
  K_yupperH* = iup_XkeySys(K_H)
  K_yupperI* = iup_XkeySys(K_I)
  K_yupperJ* = iup_XkeySys(K_J)
  K_yupperK* = iup_XkeySys(K_K)
  K_yupperL* = iup_XkeySys(K_L)
  K_yupperM* = iup_XkeySys(K_M)
  K_yupperN* = iup_XkeySys(K_N)
  K_yupperO* = iup_XkeySys(K_O)
  K_yupperP* = iup_XkeySys(K_P)
  K_yupperQ* = iup_XkeySys(K_Q)
  K_yupperR* = iup_XkeySys(K_R)
  K_yupperS* = iup_XkeySys(K_S)
  K_yupperT* = iup_XkeySys(K_T)
  K_yupperU* = iup_XkeySys(K_U)
  K_yupperV* = iup_XkeySys(K_V)
  K_yupperW* = iup_XkeySys(K_W)
  K_yupperX* = iup_XkeySys(K_X)
  K_yupperY* = iup_XkeySys(K_Y)
  K_yupperZ* = iup_XkeySys(K_Z)
  K_y1* = iup_XkeySys(K_1)
  K_y2* = iup_XkeySys(K_2)
  K_y3* = iup_XkeySys(K_3)
  K_y4* = iup_XkeySys(K_4)
  K_y5* = iup_XkeySys(K_5)
  K_y6* = iup_XkeySys(K_6)
  K_y7* = iup_XkeySys(K_7)
  K_y8* = iup_XkeySys(K_8)
  K_y9* = iup_XkeySys(K_9)
  K_y0* = iup_XkeySys(K_0)
  K_yPlus* = iup_XkeySys(K_plus)
  K_yComma* = iup_XkeySys(K_comma)
  K_yMinus* = iup_XkeySys(K_minus)
  K_yPeriod* = iup_XkeySys(K_period)
  K_ySlash* = iup_XkeySys(K_slash)
  K_ySemicolon* = iup_XkeySys(K_semicolon)
  K_yEqual* = iup_XkeySys(K_equal)
  K_yBracketleft* = iup_XkeySys(K_bracketleft)
  K_yBracketright* = iup_XkeySys(K_bracketright)
  K_yBackslash* = iup_XkeySys(K_backslash)
  K_yAsterisk* = iup_XkeySys(K_asterisk)

‘
ƒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\IDataForDropdown.cs
	namespace 	
EMMS
 
. 
Business 
. 
	Interface !
{		 
public

 

	interface

 
IDataForDropdown

 %
{ 
List 
< 
Details 
> 
GetWages 
( 
)  
;  !
List 
< 
Details 
> 
GetUOMs 
( 
) 
;  
List 
< 
Assets 
> 

GetsAssets 
(  
)  !
;! "
} 
}  T
…D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\IPlantSetUpManager.cs
	namespace 	
EMMS
 
. 
Business 
. 
	Interface !
{		 
public

 

	interface

 
IPlantSetUpManager

 '
{ 
int 
PlantId 
{ 
get 
; 
set 
; 
}  !
string 
UserName 
{ 
get 
; 
set "
;" #
}$ %
bool  
AddConsumptionActual !
(! "
List" &
<& '
AnnualDetails' 4
>4 5
Consumption6 A
,A B
stringC I
YearJ N
,N O
intP S
WagesT Y
,Y Z
string[ a
	procedureb k
)k l
;l m
bool 
AddProductionActual  
(  !
List! %
<% &
AnnualDetails& 3
>3 4

production5 ?
,? @
stringA G
yearH L
,L M
stringN T
	procedureU ^
)^ _
;_ `
bool !
AddMonthlyConsumption "
(" #
List# '
<' (
MonthlyConsumption( :
>: ;
monthlyconsum< I
,I J
stringK Q
YearR V
,V W
intX [
WagesId\ c
,c d
inte h
MonthIDi p
)p q
;q r
bool  
AddMonthlySolidwaste !
(! "
List" &
<& '
MonthlyConsumption' 9
>9 :
monthlysolid; G
,G H
stringI O
YearP T
,T U
intV Y
MonthIDZ a
)a b
;b c
bool  
AddCSolidwasteActual !
(! "
List" &
<& '
AnnualDetails' 4
>4 5
Consumption6 A
,A B
stringC I
YearJ N
,N O
stringP V
	procedureW `
)` a
;a b
bool 
AddSolidwasteDaily 
(  
List  $
<$ %
ProductionDaily% 4
>4 5

production6 @
,@ A
doubleB H

solidwasteI S
,S T
stringU [
date\ `
)` a
;a b
bool 
AddProductonDaily 
( 
List #
<# $
ProductionDaily$ 3
>3 4

production5 ?
,? @
stringA G
dateH L
)L M
;M N
bool 
SaveWageMapping 
( 
string #

energyName$ .
,. /
int0 3

energyType4 >
,> ?
int@ C
UOMD G
,G H
intI L
IDM O
)O P
;P Q
bool 
SaveBaseYear 
( 
string  
year! %
)% &
;& '
bool 
EditConfiguration 
( 
WageUomMapping -
wages. 3
)3 4
;4 5
List"" 
<"" 
AnnualDetails"" 
>""  
GetConsumptionActual"" 0
(""0 1
int""1 4
year""5 9
,""9 :
int""; >
wagesID""? F
,""F G
string""H N
	procedure""O X
)""X Y
;""Y Z
List$$ 
<$$ 
AnnualDetails$$ 
>$$ 
GetSolidWaste$$ )
($$) *
int$$* -
year$$. 2
,$$2 3
string$$4 :
	procedure$$; D
)$$D E
;$$E F
List,, 
<,, 
int,, 
>,, 
GetYearsLists,, 
(,,  
),,  !
;,,! "
List-- 
<-- 
MonthlyConsumption-- 
>--   
GetMonthlySolidwaste--! 5
(--5 6
int--6 9
yearId--: @
,--@ A
int--B E
monthId--F M
)--M N
;--N O
List33 
<33 
AnnualDetails33 
>33 
GetProductionActual33 /
(33/ 0
int330 3
year334 8
,338 9
string33: @
	procedure33A J
)33J K
;33K L
List88 
<88 
Details88 
>88 
GetDepartment88 #
(88# $
)88$ %
;88% &
List99 
<99 
Details99 
>99 
GetPlantNames99 #
(99# $
)99$ %
;99% &
List?? 
<?? 
ProductionDaily?? 
>?? 
GetDailyProduction?? 0
(??0 1
string??1 7
date??8 <
)??< =
;??= >
ListEE 
<EE 
ProductionDailyEE 
>EE 
GetSolidWasteDailyEE 0
(EE0 1
stringEE1 7
dateEE8 <
)EE< =
;EE= >
ListFF 
<FF 
WageUomMappingFF 
>FF 
GetWageMappingFF +
(FF+ ,
)FF, -
;FF- .
ListGG 
<GG 

AlarmEnbleGG 
>GG 
GetAlaramDataGG &
(GG& '
)GG' (
;GG( )
ListHH 
<HH 
AssetsHH 
>HH 
GetUserDetailsHH #
(HH# $
stringHH$ *
emailIdHH+ 2
)HH2 3
;HH3 4
boolII 
UpdateAlarmInfoII 
(II 
ListII !
<II! "

AlarmEnbleII" ,
>II, -
	alarminfoII. 7
)II7 8
;II8 9
intJJ 
GetCurrentBaseYearJJ 
(JJ 
)JJ  
;JJ  !
boolKK 
AddUSDExchnageRateKK 
(KK  
doubleKK  &
rateKK' +
,KK+ ,
intKK- 0
yearKK1 5
)KK5 6
;KK6 7
ListLL 
<LL 
CurrencyLL 
>LL 
GetCurrencyLL "
(LL" #
)LL# $
;LL$ %
boolMM 
UpdateCurrencyMM 
(MM 
stringMM "
currencyMM# +
)MM+ ,
;MM, -
stringNN 
GetUpdatedCurrencyNN !
(NN! "
)NN" #
;NN# $
doubleOO 

GetUSDRateOO 
(OO 
)OO 
;OO 
ListPP 
<PP 
DetailsPP 
>PP 
GetUOMsPP 
(PP 
)PP 
;PP  
ListQQ 
<QQ 
DetailsQQ 
>QQ 
GetDeviceIDQQ !
(QQ! "
)QQ" #
;QQ# $
boolRR 
AddUomRR 
(RR 
stringRR 
uomRR 
)RR 
;RR  
boolSS 
AddDeviceIdSS 
(SS 
stringSS 
IdSS  "
)SS" #
;SS# $
boolTT 
AddEmailConfigTT 
(TT 
ListTT  
<TT  !
EmailConfigurationTT! 3
>TT3 4
emailConfigTT5 @
)TT@ A
;TTA B
boolUU 
UpdateDeviceUU 
(UU 
intUU 
idUU  
,UU  !
stringUU" (
deviceidUU) 1
)UU1 2
;UU2 3
boolVV 
	UpdateUOMVV 
(VV 
intVV 
idVV 
,VV 
stringVV %
uomVV& )
)VV) *
;VV* +
ListWW 
<WW 
EmailConfigurationWW 
>WW  
GetEmailConfigWW! /
(WW/ 0
)WW0 1
;WW1 2
boolXX 
AddUserMappingXX 
(XX 
intXX 
userIdXX  &
,XX& '
stringXX( .
plantidXX/ 6
)XX6 7
;XX7 8
boolYY 
AddEmailListYY 
(YY 
stringYY  
[YY  !
]YY! "
emailYY# (
,YY( )
intYY* -
idYY. 0
)YY0 1
;YY1 2
ListZZ 
<ZZ 
DetailsZZ 
>ZZ 
GetEmailListZZ "
(ZZ" #
)ZZ# $
;ZZ$ %
List[[ 
<[[ 
string[[ 
>[[ 
GetMacID[[ 
([[ 
)[[ 
;[[  
List\\ 
<\\ 
UserMapping\\ 
>\\ 
GetUserMappingList\\ ,
(\\, -
)\\- .
;\\. /
bool]] 
DeleteEmail]] 
(]] 
int]] 
Id]] 
)]]  
;]]  !
bool^^ 

DeleteUSer^^ 
(^^ 
int^^ 
UserId^^ "
)^^" #
;^^# $
List__ 
<__ 
UserMapping__ 
>__ 
GetAdminList__ &
(__& '
)__' (
;__( )
bool`` 
saveDisplayName`` 
(`` 
int``  
wages``! &
,``& '
string``( .
displayName``/ :
,``: ;
int``< ?
id``@ B
)``B C
;``C D
Listaa 
<aa 
Displayaa 
>aa 
getDisplayNamesaa %
(aa% &
)aa& '
;aa' (
boolbb 
deleteDisplyNamebb 
(bb 
intbb !
idbb" $
)bb$ %
;bb% &
boolcc #
AddProductionUOMMappingcc $
(cc$ %
intcc% (
productionUomIdcc) 8
,cc8 9
intcc: =
SolidawasteUomIdcc> N
)ccN O
;ccO P
Listdd 
<dd 
UOMdd 
>dd 
GetProductionUomdd "
(dd" #
)dd# $
;dd$ %
intee 
CheckUOMMappingee 
(ee 
stringee "

energynameee# -
,ee- .
intee/ 2
typeee3 7
,ee7 8
intee9 <
uomee= @
)ee@ A
;eeA B
Listff 
<ff 
EmailLstff 
>ff 
GetEmailAddressff &
(ff& '
)ff' (
;ff( )
boolgg 
AddEmailAddressgg 
(gg 
stringgg #
emailIdgg$ +
,gg+ ,
intgg- 0
roleIdgg1 7
,gg7 8
intgg9 <
Idgg= ?
)gg? @
;gg@ A
boolhh 
DeleteEmailAddresshh 
(hh  
inthh  #
Idhh$ &
)hh& '
;hh' (
boolii 
DeleteUserMappingii 
(ii 
intii "
Idii# %
)ii% &
;ii& '
}jj 
}kk ¶
ŠD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 2
)2 3
]3 4
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business.Interface\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csĞ
xD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\DataForDropDown.cs
	namespace 	
EMMS
 
. 
Business 
{ 
public 
class	 
DataForDropDown 
:  
IDataForDropdown! 1
{ 
IGetItemForCombobox 
dropDownData (
;( )
public 
DataForDropDown 
( 
IGetItemForCombobox 2
dropDownData3 ?
)? @
{ 	
this 
. 
dropDownData 
= 
dropDownData  ,
;, -
} 	
public 
List 
< 
Wages 
> 
GetWages #
(# $
)$ %
{ 	
return 
dropDownData 
.  
GetWages  (
(( )
)) *
;* +
} 	
public 
List 
< 
UOM 
> 
GetUOMs  
(  !
)! "
{ 	
return 
dropDownData 
.  
GetUOMs  '
(' (
)( )
;) *
} 	
public 
List 
< 
Assets 
> 

GetsAssets &
(& '
)' (
{ 	
return 
dropDownData 
.  

GetsAssets  *
(* +
)+ ,
;, -
} 	
}   
}!! Ç
wD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\PlantDetailsBL.cs
	namespace

 	
EMMS


 
.

 
Business

 
{ 
public 

class 
PlantDetailsBL 
:  !
IDataForDropdown" 2
{ 
IGetItemForCombobox 
listOfValues (
;( )
public 
PlantDetailsBL 
( 
IGetItemForCombobox 1
listOfValues2 >
)> ?
{ 	
this 
. 
listOfValues 
= 
listOfValues  ,
;, -
} 	
public 
List 
< 
Assets 
> 

GetsAssets &
(& '
)' (
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
List 
< 
Details 
> 
GetUOMs $
($ %
)% &
{ 	
return 
listOfValues 
.  
GetUOMs  '
(' (
)( )
;) *
} 	
public 
List 
< 
Details 
> 
GetWages %
(% &
)& '
{ 	
return   
listOfValues   
.    
GetWages    (
(  ( )
)  ) *
;  * +
}!! 	
}"" 
}## öã
zD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\PlantSetUpManager.cs
	namespace 	
EMMS
 
. 
Business 
{ 
public 

class 
PlantSetUpManager "
:# $
IPlantSetUpManager% 7
{ 
public 
IPlantSetupDal 
plntstup &
;& '
private 
int 
plantid 
; 
private 
string 
userName 
;  
public 
int 
PlantId 
{ 	
get 
{ 
return 
plantid 
; 
} 
set 
{ 
plantid 
= 
value 
;  
if 
( 
plntstup 
!= 
null  $
)$ %
plntstup 
. 
PlantId $
=% &
value' ,
;, -
}   
}!! 	
public"" 
string"" 
UserName"" 
{## 	
get$$ 
{%% 
return&& 
userName&& 
;&&  
}'' 
set)) 
{** 
userName++ 
=++ 
value++  
;++  !
if-- 
(-- 
plntstup-- 
!=-- 
null--  $
)--$ %
plntstup.. 
... 
UserName.. %
=..& '
value..( -
;..- .
}// 
}00 	
public11 
PlantSetUpManager11  
(11  !
IPlantSetupDal11! /
plntstup110 8
)118 9
{22 	
this33 
.33 
plntstup33 
=33 
plntstup33 $
;33$ %
}44 	
public55 
bool55  
AddConsumptionActual55 (
(55( )
List55) -
<55- .
AnnualDetails55. ;
>55; <
Consumption55= H
,55H I
string55J P
Year55Q U
,55U V
int55W Z
Wages55[ `
,55` a
string55b h
	procedure55i r
)55r s
{66 	
if77 
(77 
Consumption77 
!=77 
null77 #
)77# $
return88 
plntstup88 
.88   
AddConsumptionActual88  4
(884 5
Consumption885 @
,88@ A
Year88B F
,88F G
Wages88H M
,88M N
	procedure88O X
)88X Y
;88Y Z
else99 
return:: 
false:: 
;:: 
};; 	
public>> 
bool>> !
AddMonthlyConsumption>> )
(>>) *
List>>* .
<>>. /
MonthlyConsumption>>/ A
>>>A B
monthlyconsum>>C P
,>>P Q
string>>R X
Year>>Y ]
,>>] ^
int>>_ b
WagesId>>c j
,>>j k
int>>l o
MonthID>>p w
)>>w x
{?? 	
if@@ 
(@@ 
monthlyconsum@@ 
!=@@  
null@@! %
)@@% &
returnAA 
plntstupAA 
.AA  !
AddMonthlyConsumptionAA  5
(AA5 6
monthlyconsumAA6 C
,AAC D
YearAAE I
,AAI J
WagesIdAAK R
,AAR S
MonthIDAAT [
)AA[ \
;AA\ ]
elseBB 
returnCC 
falseCC 
;CC 
}DD 	
publicKK 
ListKK 
<KK 
AnnualDetailsKK !
>KK! " 
GetConsumptionActualKK# 7
(KK7 8
intKK8 ;
yearKK< @
,KK@ A
intKKB E
wagesIDKKF M
,KKM N
stringKKO U
nameKKV Z
)KKZ [
{LL 	
returnMM 
plntstupMM 
.MM  
GetConsumptionActualMM 0
(MM0 1
yearMM1 5
,MM5 6
wagesIDMM7 >
,MM> ?
nameMM@ D
)MMD E
;MME F
}NN 	
publicOO 
ListOO 
<OO 
WageUomMappingOO "
>OO" #
GetWageMappingOO$ 2
(OO2 3
)OO3 4
{PP 	
returnQQ 
plntstupQQ 
.QQ 
GetWageMappingQQ *
(QQ* +
)QQ+ ,
;QQ, -
}RR 	
publicTT 
ListTT 
<TT 
intTT 
>TT 
GetYearsListsTT &
(TT& '
)TT' (
{UU 	
returnVV 
plntstupVV 
.VV 
GetYearsVV $
(VV$ %
)VV% &
;VV& '
}WW 	
publicXX 
ListXX 
<XX 
MonthlyConsumptionXX &
>XX& ' 
GetMonthlySolidwasteXX( <
(XX< =
intXX= @
yearIdXXA G
,XXG H
intXXI L
monthIdXXM T
)XXT U
{YY 	
returnZZ 
plntstupZZ 
.ZZ  
GetMonthlySolidwasteZZ 0
(ZZ0 1
yearIdZZ1 7
,ZZ7 8
monthIdZZ9 @
)ZZ@ A
;ZZA B
}[[ 	
public\\ 
bool\\ 
SaveWageMapping\\ #
(\\# $
string\\$ *

energyName\\+ 5
,\\5 6
int\\7 :

energyType\\; E
,\\E F
int\\G J
UOM\\K N
,\\N O
int\\P S
ID\\T V
)\\V W
{]] 	
if^^ 
(^^ 
!^^ 
string^^ 
.^^ 
IsNullOrEmpty^^ %
(^^% &

energyName^^& 0
)^^0 1
&&^^2 4
!^^5 6
string^^6 <
.^^< =
IsNullOrEmpty^^= J
(^^J K

energyType^^K U
.^^U V
ToString^^V ^
(^^^ _
)^^_ `
)^^` a
&&^^b d
!^^e f
string^^f l
.^^l m
IsNullOrEmpty^^m z
(^^z {
UOM^^{ ~
.^^~ 
ToString	^^ ‡
(
^^‡ ˆ
)
^^ˆ ‰
)
^^‰ Š
&&
^^‹ 
!
^^ 
string
^^ •
.
^^• –
IsNullOrEmpty
^^– £
(
^^£ ¤
ID
^^¤ ¦
.
^^¦ §
ToString
^^§ ¯
(
^^¯ °
)
^^° ±
)
^^± ²
)
^^² ³
return__ 
plntstup__ 
.__  
SaveWageMapping__  /
(__/ 0

energyName__0 :
,__: ;

energyType__< F
,__F G
UOM__H K
,__K L
ID__M O
)__O P
;__P Q
else`` 
returnaa 
falseaa 
;aa 
}bb 	
publichh 
Listhh 
<hh 
AnnualDetailshh !
>hh! "
GetProductionActualhh# 6
(hh6 7
inthh7 :
yearhh; ?
,hh? @
stringhhA G
	procedurehhH Q
)hhQ R
{ii 	
returnjj 
plntstupjj 
.jj 
GetProductionActualjj /
(jj/ 0
yearjj0 4
,jj4 5
	procedurejj6 ?
)jj? @
;jj@ A
}kk 	
publicpp 
Listpp 
<pp 
Detailspp 
>pp 
GetDepartmentpp *
(pp* +
)pp+ ,
{qq 	
returnrr 
plntstuprr 
.rr 
GetDepartmentrr )
(rr) *
)rr* +
;rr+ ,
}ss 	
publicvv 
Listvv 
<vv 
AnnualDetailsvv !
>vv! "
GetSolidWastevv# 0
(vv0 1
intvv1 4
yearvv5 9
,vv9 :
stringvv; A
	procedurevvB K
)vvK L
{ww 	
returnxx 
plntstupxx 
.xx 
GetSolidWastexx )
(xx) *
yearxx* .
,xx. /
	procedurexx0 9
)xx9 :
;xx: ;
}yy 	
public
€€ 
List
€€ 
<
€€ 
ProductionDaily
€€ #
>
€€# $ 
GetDailyProduction
€€% 7
(
€€7 8
string
€€8 >
date
€€? C
)
€€C D
{
 	
return
‚‚ 
plntstup
‚‚ 
.
‚‚  
GetProductionDaily
‚‚ .
(
‚‚. /
date
‚‚/ 3
)
‚‚3 4
;
‚‚4 5
}
ƒƒ 	
public
‰‰ 
List
‰‰ 
<
‰‰ 
ProductionDaily
‰‰ #
>
‰‰# $ 
GetSolidWasteDaily
‰‰% 7
(
‰‰7 8
string
‰‰8 >
date
‰‰? C
)
‰‰C D
{
ŠŠ 	
return
‹‹ 
plntstup
‹‹ 
.
‹‹  
GetSolidWasteDaily
‹‹ .
(
‹‹. /
date
‹‹/ 3
)
‹‹3 4
;
‹‹4 5
}
ŒŒ 	
public
 
bool
 !
AddProductionActual
 '
(
' (
List
( ,
<
, -
AnnualDetails
- :
>
: ;

production
< F
,
F G
string
H N
year
O S
,
S T
string
U [
	procedure
\ e
)
e f
{
 	
if
 
(
 

production
 
!=
 
null
 "
)
" #
return
‘‘ 
plntstup
‘‘ 
.
‘‘  !
AddProductionActual
‘‘  3
(
‘‘3 4

production
‘‘4 >
,
‘‘> ?
year
‘‘@ D
,
‘‘D E
	procedure
‘‘F O
)
‘‘O P
;
‘‘P Q
else
’’ 
return
““ 
false
““ 
;
““ 
}
”” 	
public
–– 
bool
–– 
EditConfiguration
–– %
(
––% &
WageUomMapping
––& 4
wages
––5 :
)
––: ;
{
—— 	
if
˜˜ 
(
˜˜ 
wages
˜˜ 
!=
˜˜ 
null
˜˜ 
)
˜˜ 
return
™™ 
plntstup
™™ 
.
™™  
EditConfiguration
™™  1
(
™™1 2
wages
™™2 7
)
™™7 8
;
™™8 9
else
šš 
return
›› 
false
›› 
;
›› 
}
œœ 	
public
 
bool
 "
AddCSolidwasteActual
 (
(
( )
List
) -
<
- .
AnnualDetails
. ;
>
; <
Consumption
= H
,
H I
string
J P
Year
Q U
,
U V
string
W ]
	procedure
^ g
)
g h
{
ŸŸ 	
if
   
(
   
Consumption
   
!=
   
null
   #
)
  # $
return
¡¡ 
plntstup
¡¡ 
.
¡¡  "
AddCSolidwasteActual
¡¡  4
(
¡¡4 5
Consumption
¡¡5 @
,
¡¡@ A
Year
¡¡B F
,
¡¡F G
	procedure
¡¡H Q
)
¡¡Q R
;
¡¡R S
else
¢¢ 
return
££ 
false
££ 
;
££ 
}
¤¤ 	
public
§§ 
bool
§§ "
AddMonthlySolidwaste
§§ (
(
§§( )
List
§§) -
<
§§- . 
MonthlyConsumption
§§. @
>
§§@ A
monthlysolid
§§B N
,
§§N O
string
§§P V
Year
§§W [
,
§§[ \
int
§§] `
MonthID
§§a h
)
§§h i
{
¨¨ 	
if
©© 
(
©© 
monthlysolid
©© 
!=
©© 
null
©©  $
)
©©$ %
return
ªª 
plntstup
ªª 
.
ªª  "
AddMonthlySolidwaste
ªª  4
(
ªª4 5
monthlysolid
ªª5 A
,
ªªA B
Year
ªªC G
,
ªªG H
MonthID
ªªI P
)
ªªP Q
;
ªªQ R
else
«« 
return
¬¬ 
false
¬¬ 
;
¬¬ 
}
­­ 	
public
¯¯ 
bool
¯¯  
AddSolidwasteDaily
¯¯ &
(
¯¯& '
List
¯¯' +
<
¯¯+ ,
ProductionDaily
¯¯, ;
>
¯¯; <

production
¯¯= G
,
¯¯G H
double
¯¯I O
	solidwste
¯¯P Y
,
¯¯Y Z
string
¯¯[ a
date
¯¯b f
)
¯¯f g
{
°° 	
if
±± 
(
±± 

production
±± 
!=
±± 
null
±± "
)
±±" #
return
²² 
plntstup
²² 
.
²²   
AddSolidwasteDaily
²²  2
(
²²2 3

production
²²3 =
,
²²= >
	solidwste
²²? H
,
²²H I
date
²²J N
)
²²N O
;
²²O P
else
³³ 
return
´´ 
false
´´ 
;
´´ 
}
µµ 	
public
¶¶ 
bool
¶¶ 
SaveBaseYear
¶¶  
(
¶¶  !
string
¶¶! '
year
¶¶( ,
)
¶¶, -
{
·· 	
return
¸¸ 
plntstup
¸¸ 
.
¸¸ 
SaveBaseYear
¸¸ (
(
¸¸( )
year
¸¸) -
)
¸¸- .
;
¸¸. /
}
¹¹ 	
public
ºº 
bool
ºº 
AddProductonDaily
ºº %
(
ºº% &
List
ºº& *
<
ºº* +
ProductionDaily
ºº+ :
>
ºº: ;

production
ºº< F
,
ººF G
string
ººH N
date
ººO S
)
ººS T
{
»» 	
if
¼¼ 
(
¼¼ 

production
¼¼ 
!=
¼¼ 
null
¼¼ "
)
¼¼" #
return
½½ 
plntstup
½½ 
.
½½  
AddProductonDaily
½½  1
(
½½1 2

production
½½2 <
,
½½< =
date
½½> B
)
½½B C
;
½½C D
else
¾¾ 
return
¿¿ 
false
¿¿ 
;
¿¿ 
}
ÀÀ 	
public
ÂÂ 
List
ÂÂ 
<
ÂÂ 

AlarmEnble
ÂÂ 
>
ÂÂ 
GetAlaramData
ÂÂ  -
(
ÂÂ- .
)
ÂÂ. /
{
ÃÃ 	
return
ÄÄ 
plntstup
ÄÄ 
.
ÄÄ 
GetAlaramData
ÄÄ )
(
ÄÄ) *
)
ÄÄ* +
;
ÄÄ+ ,
}
ÅÅ 	
public
ÇÇ 
List
ÇÇ 
<
ÇÇ 
Assets
ÇÇ 
>
ÇÇ 
GetUserDetails
ÇÇ *
(
ÇÇ* +
string
ÇÇ+ 1
emailId
ÇÇ2 9
)
ÇÇ9 :
{
ÈÈ 	
return
ÉÉ 
plntstup
ÉÉ 
.
ÉÉ 
GetUserDetails
ÉÉ *
(
ÉÉ* +
emailId
ÉÉ+ 2
)
ÉÉ2 3
;
ÉÉ3 4
}
ÊÊ 	
public
ËË 
bool
ËË 
UpdateAlarmInfo
ËË #
(
ËË# $
List
ËË$ (
<
ËË( )

AlarmEnble
ËË) 3
>
ËË3 4
	alarminfo
ËË5 >
)
ËË> ?
{
ÌÌ 	
if
ÍÍ 
(
ÍÍ 
	alarminfo
ÍÍ 
!=
ÍÍ 
null
ÍÍ !
)
ÍÍ! "
return
ÎÎ 
plntstup
ÎÎ 
.
ÎÎ  
UpdateAlarmInfo
ÎÎ  /
(
ÎÎ/ 0
	alarminfo
ÎÎ0 9
)
ÎÎ9 :
;
ÎÎ: ;
else
ÏÏ 
return
ĞĞ 
false
ĞĞ 
;
ĞĞ 
}
ÑÑ 	
public
ÒÒ 
int
ÒÒ  
GetCurrentBaseYear
ÒÒ %
(
ÒÒ% &
)
ÒÒ& '
{
ÓÓ 	
return
ÔÔ 
plntstup
ÔÔ 
.
ÔÔ  
GetCurrentBaseYear
ÔÔ .
(
ÔÔ. /
)
ÔÔ/ 0
;
ÔÔ0 1
}
ÕÕ 	
public
ÖÖ 
bool
ÖÖ  
AddUSDExchnageRate
ÖÖ &
(
ÖÖ& '
double
ÖÖ' -
rate
ÖÖ. 2
,
ÖÖ2 3
int
ÖÖ4 7
year
ÖÖ8 <
)
ÖÖ< =
{
×× 	
if
ØØ 
(
ØØ 
rate
ØØ 
!=
ØØ 
$num
ØØ 
)
ØØ 
return
ÙÙ 
plntstup
ÙÙ 
.
ÙÙ   
AddUSDExchnageRate
ÙÙ  2
(
ÙÙ2 3
rate
ÙÙ3 7
,
ÙÙ7 8
year
ÙÙ9 =
)
ÙÙ= >
;
ÙÙ> ?
else
ÚÚ 
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÜÜ 	
public
İİ 
List
İİ 
<
İİ 
Currency
İİ 
>
İİ 
GetCurrency
İİ )
(
İİ) *
)
İİ* +
{
ŞŞ 	
return
ßß 
plntstup
ßß 
.
ßß 
GetCurrency
ßß '
(
ßß' (
)
ßß( )
;
ßß) *
}
àà 	
public
áá 
bool
áá 
UpdateCurrency
áá "
(
áá" #
string
áá# )
currency
áá* 2
)
áá2 3
{
ââ 	
if
ãã 
(
ãã 
currency
ãã 
!=
ãã 
null
ãã  
)
ãã  !
return
ää 
plntstup
ää 
.
ää  
UpdateCurrency
ää  .
(
ää. /
currency
ää/ 7
)
ää7 8
;
ää8 9
else
åå 
return
ææ 
false
ææ 
;
ææ 
}
çç 	
public
éé 
string
éé  
GetUpdatedCurrency
éé (
(
éé( )
)
éé) *
{
êê 	
return
ëë 
plntstup
ëë 
.
ëë  
GetUpdatedCurrency
ëë .
(
ëë. /
)
ëë/ 0
;
ëë0 1
}
ìì 	
public
îî 
double
îî 

GetUSDRate
îî  
(
îî  !
)
îî! "
{
ïï 	
return
ğğ 
plntstup
ğğ 
.
ğğ 

GetUSDRate
ğğ &
(
ğğ& '
)
ğğ' (
;
ğğ( )
}
ññ 	
public
óó 
List
óó 
<
óó 
Details
óó 
>
óó 
GetUOMs
óó $
(
óó$ %
)
óó% &
{
ôô 	
return
õõ 
plntstup
õõ 
.
õõ 
GetUOMs
õõ #
(
õõ# $
)
õõ$ %
;
õõ% &
}
öö 	
public
øø 
List
øø 
<
øø 
Details
øø 
>
øø 
GetDeviceID
øø (
(
øø( )
)
øø) *
{
ùù 	
return
úú 
plntstup
úú 
.
úú 
GetDeviceID
úú '
(
úú' (
)
úú( )
;
úú) *
}
ûû 	
public
ıı 
bool
ıı 
AddUom
ıı 
(
ıı 
string
ıı !
uom
ıı" %
)
ıı% &
{
şş 	
if
ÿÿ 
(
ÿÿ 
uom
ÿÿ 
!=
ÿÿ 
null
ÿÿ 
)
ÿÿ 
return
 
plntstup
 
.
  
AddUom
  &
(
& '
uom
' *
)
* +
;
+ ,
else
‚‚ 
return
ƒƒ 
false
ƒƒ 
;
ƒƒ 
}
…… 	
public
†† 
bool
†† 
AddDeviceId
†† 
(
††  
string
††  &
Id
††' )
)
††) *
{
‡‡ 	
if
ˆˆ 
(
ˆˆ 
Id
ˆˆ 
!=
ˆˆ 
null
ˆˆ 
)
ˆˆ 
return
ŠŠ 
plntstup
ŠŠ 
.
ŠŠ  
AddDeviceId
ŠŠ  +
(
ŠŠ+ ,
Id
ŠŠ, .
)
ŠŠ. /
;
ŠŠ/ 0
else
‹‹ 
return
ŒŒ 
false
ŒŒ 
;
ŒŒ 
}
 	
public
 
bool
 
AddEmailConfig
 "
(
" #
List
# '
<
' ( 
EmailConfiguration
( :
>
: ;
emailConfig
< G
)
G H
{
 	
if
‘‘ 
(
‘‘ 
emailConfig
‘‘ 
!=
‘‘ 
null
‘‘ #
)
‘‘# $
return
““ 
plntstup
““ 
.
““  
AddEmailConfig
““  .
(
““. /
emailConfig
““/ :
)
““: ;
;
““; <
else
”” 
return
•• 
false
•• 
;
•• 
}
–– 	
public
˜˜ 
bool
˜˜ 
UpdateDevice
˜˜  
(
˜˜  !
int
˜˜! $
id
˜˜% '
,
˜˜' (
string
˜˜) /
deviceid
˜˜0 8
)
˜˜8 9
{
™™ 	
if
šš 
(
šš 
id
šš 
!=
šš 
$num
šš 
&&
šš 
deviceid
šš #
!=
šš$ &
null
šš' +
)
šš+ ,
{
›› 
return
œœ 
plntstup
œœ 
.
œœ  
UpdateDevice
œœ  ,
(
œœ, -
id
œœ- /
,
œœ/ 0
deviceid
œœ1 9
)
œœ9 :
;
œœ: ;
}
 
else
 
{
ŸŸ 
return
   
false
   
;
   
}
¡¡ 
}
¢¢ 	
public
¤¤ 
bool
¤¤ 
	UpdateUOM
¤¤ 
(
¤¤ 
int
¤¤ !
id
¤¤" $
,
¤¤$ %
string
¤¤& ,
uom
¤¤- 0
)
¤¤0 1
{
¥¥ 	
if
¦¦ 
(
¦¦ 
id
¦¦ 
!=
¦¦ 
$num
¦¦ 
&&
¦¦ 
uom
¦¦ 
!=
¦¦ !
null
¦¦" &
)
¦¦& '
{
§§ 
return
¨¨ 
plntstup
¨¨ 
.
¨¨  
	UpdateUOM
¨¨  )
(
¨¨) *
id
¨¨* ,
,
¨¨, -
uom
¨¨. 1
)
¨¨1 2
;
¨¨2 3
}
©© 
else
ªª 
{
«« 
return
¬¬ 
false
¬¬ 
;
¬¬ 
}
­­ 
}
®® 	
public
°° 
List
°° 
<
°°  
EmailConfiguration
°° &
>
°°& '
GetEmailConfig
°°( 6
(
°°6 7
)
°°7 8
{
±± 	
return
²² 
plntstup
²² 
.
²² 
GetEmailConfig
²² *
(
²²* +
)
²²+ ,
;
²², -
}
³³ 	
public
´´ 
List
´´ 
<
´´ 
string
´´ 
>
´´ 
GetMacID
´´ $
(
´´$ %
)
´´% &
{
µµ 	
return
¶¶ 
plntstup
¶¶ 
.
¶¶ 
GetMacID
¶¶ $
(
¶¶$ %
)
¶¶% &
;
¶¶& '
}
·· 
public
¸¸ 
List
¸¸ 
<
¸¸ 
Details
¸¸ 
>
¸¸ 
GetPlantNames
¸¸ *
(
¸¸* +
)
¸¸+ ,
{
¹¹ 	
return
ºº 
plntstup
ºº 
.
ºº 
GetPlantNames
ºº )
(
ºº) *
)
ºº* +
;
ºº+ ,
}
»» 	
public
¼¼ 
bool
¼¼ 
AddUserMapping
¼¼ "
(
¼¼" #
int
¼¼# &
userId
¼¼' -
,
¼¼- .
string
¼¼/ 5
plantid
¼¼6 =
)
¼¼= >
{
½½ 	
return
¾¾ 
plntstup
¾¾ 
.
¾¾ 
AddUserMapping
¾¾ *
(
¾¾* +
userId
¾¾+ 1
,
¾¾1 2
plantid
¾¾2 9
)
¾¾9 :
;
¾¾: ;
}
¿¿ 	
public
ÀÀ 
bool
ÀÀ 
AddEmailList
ÀÀ  
(
ÀÀ  !
string
ÀÀ! '
[
ÀÀ' (
]
ÀÀ( )
email
ÀÀ* /
,
ÀÀ/ 0
int
ÀÀ1 4
id
ÀÀ5 7
)
ÀÀ7 8
{
ÁÁ 	
return
ÂÂ 
plntstup
ÂÂ 
.
ÂÂ 
AddEmailList
ÂÂ (
(
ÂÂ( )
email
ÂÂ) .
,
ÂÂ. /
id
ÂÂ0 2
)
ÂÂ2 3
;
ÂÂ3 4
}
ÃÃ 	
public
ÄÄ 
List
ÄÄ 
<
ÄÄ 
Details
ÄÄ 
>
ÄÄ 
GetEmailList
ÄÄ )
(
ÄÄ) *
)
ÄÄ* +
{
ÅÅ 	
return
ÆÆ 
plntstup
ÆÆ 
.
ÆÆ 
GetEmailList
ÆÆ (
(
ÆÆ( )
)
ÆÆ) *
;
ÆÆ* +
}
ÇÇ 	
public
ÈÈ 
List
ÈÈ 
<
ÈÈ 
UserMapping
ÈÈ 
>
ÈÈ   
GetUserMappingList
ÈÈ! 3
(
ÈÈ3 4
)
ÈÈ4 5
{
ÉÉ 	
return
ÊÊ 
plntstup
ÊÊ 
.
ÊÊ  
GetUserMappingList
ÊÊ .
(
ÊÊ. /
)
ÊÊ/ 0
;
ÊÊ0 1
}
ËË 	
public
ÌÌ 
bool
ÌÌ 
DeleteEmail
ÌÌ 
(
ÌÌ  
int
ÌÌ  #
Id
ÌÌ$ &
)
ÌÌ& '
{
ÍÍ 	
return
ÎÎ 
plntstup
ÎÎ 
.
ÎÎ 
DeleteEmail
ÎÎ '
(
ÎÎ' (
Id
ÎÎ( *
)
ÎÎ* +
;
ÎÎ+ ,
}
ÏÏ 	
public
ÑÑ 
bool
ÑÑ 

DeleteUSer
ÑÑ 
(
ÑÑ 
int
ÑÑ "
UserId
ÑÑ# )
)
ÑÑ) *
{
ÒÒ 	
return
ÓÓ 
plntstup
ÓÓ 
.
ÓÓ 

DeleteUSer
ÓÓ &
(
ÓÓ& '
UserId
ÓÓ' -
)
ÓÓ- .
;
ÓÓ. /
}
ÔÔ 	
public
ÖÖ 
List
ÖÖ 
<
ÖÖ 
UserMapping
ÖÖ 
>
ÖÖ  
GetAdminList
ÖÖ! -
(
ÖÖ- .
)
ÖÖ. /
{
×× 	
return
ØØ 
plntstup
ØØ 
.
ØØ 
GetAdminList
ØØ (
(
ØØ( )
)
ØØ) *
;
ØØ* +
}
ÙÙ 	
public
ÛÛ 
bool
ÛÛ 
saveDisplayName
ÛÛ "
(
ÛÛ" #
int
ÛÛ# &
wages
ÛÛ' ,
,
ÛÛ, -
string
ÛÛ- 3
displayName
ÛÛ4 ?
,
ÛÛ? @
int
ÛÛ@ C
id
ÛÛD F
)
ÛÛF G
{
ÜÜ 	
return
İİ 
plntstup
İİ 
.
İİ 
saveDisplayName
İİ +
(
İİ+ ,
wages
İİ, 1
,
İİ1 2
displayName
İİ3 >
,
İİ> ?
id
İİ? A
)
İİA B
;
İİB C
}
ŞŞ 	
public
àà 
List
àà 
<
àà 
Display
àà 
>
àà 
getDisplayNames
àà ,
(
àà, -
)
àà- .
{
áá 	
return
ââ 
plntstup
ââ 
.
ââ 
getDisplayNames
ââ +
(
ââ+ ,
)
ââ, -
;
ââ- .
}
ãã 	
public
åå 
bool
åå 
deleteDisplyName
åå $
(
åå$ %
int
åå% (
id
åå) +
)
åå+ ,
{
ææ 	
return
çç 
plntstup
çç 
.
çç 
deleteDisplyName
çç ,
(
çç, -
id
çç- /
)
çç/ 0
;
çç0 1
}
èè 	
public
êê 
bool
êê %
AddProductionUOMMapping
êê +
(
êê+ ,
int
êê, /
productionUomId
êê0 ?
,
êê? @
int
êêA D
SolidawasteUomId
êêE U
)
êêU V
{
ëë 	
return
ìì 
plntstup
ìì 
.
ìì %
AddProductionUOMMapping
ìì 3
(
ìì3 4
productionUomId
ìì4 C
,
ììC D
SolidawasteUomId
ììE U
)
ììU V
;
ììV W
}
íí 	
public
ïï 
List
ïï 
<
ïï 
UOM
ïï 
>
ïï 
GetProductionUom
ïï )
(
ïï) *
)
ïï* +
{
ğğ 	
return
ññ 
plntstup
ññ 
.
ññ 
GetProductionUom
ññ ,
(
ññ, -
)
ññ- .
;
ññ. /
}
òò 	
public
ôô 
int
ôô 
CheckUOMMapping
ôô "
(
ôô" #
string
ôô# )

energyname
ôô* 4
,
ôô4 5
int
ôô6 9
type
ôô: >
,
ôô> ?
int
ôô@ C
uom
ôôD G
)
ôôG H
{
õõ 	
return
öö 
plntstup
öö 
.
öö 
CheckUOMMapping
öö +
(
öö+ ,

energyname
öö, 6
,
öö6 7
type
öö7 ;
,
öö; <
uom
öö< ?
)
öö? @
;
öö@ A
}
÷÷ 	
public
ùù 
List
ùù 
<
ùù 
EmailLst
ùù 
>
ùù 
GetEmailAddress
ùù -
(
ùù- .
)
ùù. /
{
úú 	
return
ûû 
plntstup
ûû 
.
ûû 
GetEmailAddress
ûû +
(
ûû+ ,
)
ûû, -
;
ûû- .
}
üü 	
public
şş 
bool
şş 
AddEmailAddress
şş #
(
şş# $
string
şş$ *
emailId
şş+ 2
,
şş2 3
int
şş4 7
roleId
şş8 >
,
şş> ?
int
şş@ C
Id
şşD F
)
şşF G
{
ÿÿ 	
return
€€ 
plntstup
€€ 
.
€€ 
AddEmailAddress
€€ +
(
€€+ ,
emailId
€€, 3
,
€€3 4
roleId
€€4 :
,
€€: ;
Id
€€; =
)
€€= >
;
€€> ?
}
 	
public
ƒƒ 
bool
ƒƒ  
DeleteEmailAddress
ƒƒ &
(
ƒƒ& '
int
ƒƒ' *
Id
ƒƒ+ -
)
ƒƒ- .
{
„„ 	
return
…… 
plntstup
…… 
.
……  
DeleteEmailAddress
…… .
(
……. /
Id
……/ 1
)
……1 2
;
……2 3
}
†† 	
public
ˆˆ 
bool
ˆˆ 
DeleteUserMapping
ˆˆ %
(
ˆˆ% &
int
ˆˆ& )
Id
ˆˆ* ,
)
ˆˆ, -
{
‰‰ 	
return
ŠŠ 
plntstup
ŠŠ 
.
ŠŠ 
DeleteUserMapping
ŠŠ -
(
ŠŠ- .
Id
ŠŠ. 0
)
ŠŠ0 1
;
ŠŠ1 2
}
‹‹ 	
}
ŒŒ 
} ¬
€D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str *
)* +
]+ ,
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *±
®D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs±
®D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs±
®D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Business\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csÀ
nD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\AlarmEnble.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 

AlarmEnble		 
{

 
public 
int 
TagID 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
AssetID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	AssetName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	isEnabled 
{  !
get" %
;% &
set' *
;* +
}, -
public 
double 
Target 
{ 
get "
;" #
set$ '
;' (
}) *
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return 
false 
; 

AlarmEnble 
alarm 
= 
(  

AlarmEnble  *
)* +
obj+ .
;. /
if 
( 
alarm 
== 
null 
) 
return 
false 
; 
return 
this 
. 
TagID 
==  
alarm! &
.& '
TagID' ,
&&- /
this0 4
.4 5
AssetID5 <
=== ?
alarm@ E
.E F
AssetIDF M
&& 
this 
. 
TagName !
==" $
alarm% *
.* +
TagName+ 2
&&3 5
this6 :
.: ;
	AssetName; D
==E G
alarmH M
.M N
	AssetNameN W
&& 
this 
. 
	isEnabled #
==$ &
alarm' ,
., -
	isEnabled- 6
&&7 9
this: >
.> ?
Target? E
==F H
alarmI N
.N O
TargetO U
;U V
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
TagID 
. 
GetHashCode $
($ %
)% &
^& '
AssetID' .
.. /
GetHashCode/ :
(: ;
); <
^< =
TagName= D
.D E
GetHashCodeE P
(P Q
)Q R
^R S
	AssetName   
.   
GetHashCode   %
(  % &
)  & '
^  ' (
	isEnabled  ( 1
.  1 2
GetHashCode  2 =
(  = >
)  > ?
^  ? @
Target  @ F
.  F G
GetHashCode  G R
(  R S
)  S T
;  T U
}"" 	
}## 
}$$ ò
jD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Assets.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
Assets		 
{

 
public 
int 
PlantID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	PlantName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
} 
} Ø
uD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ConsumptionActual.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
} Ú
wD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ConsumptionBudgeted.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
} ö9
vD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ConsumptionDetails.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public

 

class

 
AnnualDetails

 
{ 
public 
int 
	DetailsId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DetailsName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
double 
Jan 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Feb 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Mar 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Apr 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
May 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Jun 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Jul 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Aug 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Sep 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Oct 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Nov 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Dec 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UOMID 
{ 
get 
; 
set  #
;# $
}% &
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return   
false   
;   
AnnualDetails!! 
details!! !
=!!" #
(!!$ %
AnnualDetails!!% 2
)!!2 3
obj!!3 6
;!!6 7
if"" 
("" 
details"" 
=="" 
null"" 
)""  
return## 
false## 
;## 
return$$ 
this$$ 
.$$ 
	DetailsId$$ !
==$$" $
details$$% ,
.$$, -
	DetailsId$$- 6
&&$$7 9
this$$: >
.$$> ?
DetailsName$$? J
==$$K M
details$$N U
.$$U V
DetailsName$$V a
&&%% 
this%% 
.%% 
Jan%% 
==%% 
details%% &
.%%& '
Jan%%' *
&&%%+ -
this%%. 2
.%%2 3
Feb%%3 6
==%%7 9
details%%: A
.%%A B
Feb%%B E
&&%%F H
this%%I M
.%%M N
Mar%%N Q
==%%R T
details%%U \
.%%\ ]
Mar%%] `
&&&& 
this&& 
.&& 
Apr&& 
==&& 
details&& &
.&&& '
Apr&&' *
&&&&+ -
this&&. 2
.&&2 3
May&&3 6
==&&7 9
details&&: A
.&&A B
May&&B E
&&&&F H
this&&I M
.&&M N
Jun&&N Q
==&&R T
details&&U \
.&&\ ]
Jun&&] `
&&'' 
this'' 
.'' 
Jul'' 
=='' 
details'' &
.''& '
Jul''' *
&&''+ -
this''. 2
.''2 3
Aug''3 6
==''7 9
details'': A
.''A B
Aug''B E
&&''F H
this''I M
.''M N
Sep''N Q
==''R T
details''U \
.''\ ]
Sep''] `
&&(( 
this(( 
.(( 
Oct(( 
==(( 
details(( &
.((& '
Oct((' *
&&((+ -
this((. 2
.((2 3
Nov((3 6
==((7 9
details((: A
.((A B
Nov((B E
&&((F H
this((I M
.((M N
Dec((N Q
==((R T
details((U \
.((\ ]
Dec((] `
&&)) 
this)) 
.)) 
UOM)) 
==)) 
details)) &
.))& '
UOM))' *
&&))+ -
this)). 2
.))2 3
UOMID))3 8
==))9 ;
details))< C
.))C D
UOMID))D I
;))I J
}** 	
public++ 
override++ 
int++ 
GetHashCode++ '
(++' (
)++( )
{,, 	
return-- 
(-- 
	DetailsId-- 
.-- 
GetHashCode-- )
(--) *
)--* +
^--, -
DetailsName--. 9
.--9 :
GetHashCode--: E
(--E F
)--F G
^--H I
Jan--J M
.--M N
GetHashCode--N Y
(--Y Z
)--Z [
^--\ ]
Feb--^ a
.--a b
GetHashCode--b m
(--m n
)--n o
^--p q
Apr--r u
.--u v
GetHashCode	--v 
(
-- ‚
)
--‚ ƒ
^
--„ …
May
--† ‰
.
--‰ Š
GetHashCode
--Š •
(
--• –
)
--– —
^
--˜ ™
Jun
--š 
.
-- 
GetHashCode
-- ©
(
--© ª
)
--ª «
^
--¬ ­
Jul
--® ±
.
--± ²
GetHashCode
--² ½
(
--½ ¾
)
--¾ ¿
^
--À Á
Aug
--Â Å
.
--Å Æ
GetHashCode
--Æ Ñ
(
--Ñ Ò
)
--Ò Ó
^
--Ô Õ
Sep
--Ö Ù
.
--Ù Ú
GetHashCode
--Ú å
(
--å æ
)
--æ ç
^
--è é
Oct
--ê í
.
--í î
GetHashCode
--î ù
(
--ù ú
)
--ú û
^
--ü ı
Nov
--ş 
.
-- ‚
GetHashCode
--‚ 
(
-- 
)
-- 
^.. 
Dec.. 
... 
GetHashCode.. "
(.." #
)..# $
^..% &
UOM..' *
...* +
GetHashCode..+ 6
(..6 7
)..7 8
^..9 :
UOMID..; @
...@ A
GetHashCode..A L
(..L M
)..M N
)..N O
;..O P
}// 	
}11 
}22 Ñ
nD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\CostActual.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
} ä
lD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Currency.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
Currency		 
{

 
public 
string 
CurrncyName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ù
nD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Department.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public 

class 

Department 
{ 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} â
kD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Details.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 	
class		
 
Details		 
{

 
public 
int 
? 
ID 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return 
false 
; 
Details 
details 
= 
( 
Details &
)& '
obj' *
;* +
if 
( 
details 
== 
null 
)  
return 
false 
; 
return 
this 
. 
ID 
== 
details %
.% &
ID& (
&&) +
this, 0
.0 1
Name1 5
==6 8
details9 @
.@ A
NameA E
;E F
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
ID 
. 
GetHashCode !
(! "
)" #
^$ %
Name& *
.* +
GetHashCode+ 6
(6 7
)7 8
;8 9
} 	
} 
} 
kD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Display.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 	
class		
 
Display		 
{

 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
string 
WageType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
WageID 
{ 
get 
;  
set! $
;$ %
}& '
} 
} µ
vD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\EmailConfiguration.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
EmailConfiguration		 #
{

 
public 
string 

smtpServer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
smtpPort 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
smtpUserName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
smtpPassword "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 
lD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\EmailLst.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
EmailLst		 
{

 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UserType 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ã
nD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\MonthNames.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 

MonthNames		 
{

 
public 
string 
	MonthName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
MonthId 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ó	
vD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\MonthlyConsumption.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
public

 

class

 
MonthlyConsumption

 #
{ 
public 
string 
WAGES 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
WagesId 
{ 
get  
;  !
set" %
;% &
}' (
public 
double 
Consumption !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UOMID 
{ 
get 
; 
set  #
;# $
}% &
public 
double 
Cost 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ƒ
tD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ProductionActual.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
public

 	
class


 
ProductionActual

  
{ 
[ 	
Required	 
] 
public 
int 
CurrentYear 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
List 
< 
string 
> 
Month !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
List 
< 
string 
> 
UOM 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
DataType	 
( 
DataType 
. 
Currency #
)# $
]$ %
public 
double 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
ProductionDetails "
{ 
public 
string 

Department  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
AssetID 
{ 
get  
;  !
set" %
;% &
}' (
public 
double 
Jan 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Feb 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Mar 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Apr 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
May 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Jun 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
Jul 
{ 
get 
;  
set! $
;$ %
}& '
public   
double   
Aug   
{   
get   
;    
set  ! $
;  $ %
}  & '
public!! 
double!! 
Sep!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
public"" 
double"" 
Oct"" 
{"" 
get"" 
;""  
set""! $
;""$ %
}""& '
public## 
double## 
Nov## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
public$$ 
double$$ 
Dec$$ 
{$$ 
get$$ 
;$$  
set$$! $
;$$$ %
}$$& '
public%% 
string%% 
UOM%% 
{%% 
get%% 
;%%  
set%%! $
;%%$ %
}%%& '
public&& 
int&& 
UOMID&& 
{&& 
get&& 
;&& 
set&&  #
;&&# $
}&&% &
}'' 
}(( ©

tD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ProductionBudget.cs
	namespace 	
EMMS
 
. 
DTO 
{		 
public

 

class

 
ProductionBudget

 !
{ 
[ 	
Required	 
] 
public 
int 
BudgetedYear 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
List 
< 
string 
> 
Month !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
List 
< 
string 
> 
UOM 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
DataType	 
( 
DataType 
. 
Currency #
)# $
]$ %
public 
double 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ª
sD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\ProductionDaily.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
ProductionDaily		  
{

 
public 
int 
AssetId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

DepartName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
Total 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
UOMId 
{ 
get 
; 
set  #
;# $
}% &
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return 
false 
; 
ProductionDaily 
daily !
=" #
($ %
ProductionDaily% 4
)4 5
obj5 8
;8 9
if 
( 
daily 
== 
null 
) 
return 
false 
; 
return 
this 
. 
AssetId 
==  "
daily# (
.( )
AssetId) 0
&&1 3
this4 8
.8 9

DepartName9 C
==D F
dailyG L
.L M

DepartNameM W
&&X Z
this 
. 
Total 
== 
daily #
.# $
Total$ )
&&* ,
this- 1
.1 2
UOM2 5
==6 8
daily9 >
.> ?
UOM? B
&&C E
thisF J
.J K
UOMIdK P
==Q S
dailyT Y
.Y Z
UOMIdZ _
;_ `
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
AssetId 
. 
GetHashCode &
(& '
)' (
^) *

DepartName+ 5
.5 6
GetHashCode6 A
(A B
)B C
^D E
TotalF K
.K L
GetHashCodeL W
(W X
)X Y
^Z [
UOM 
. 
GetHashCode 
(  
)  !
^" #
UOMId$ )
.) *
GetHashCode* 5
(5 6
)6 7
;7 8
} 	
} 
}   ¦
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *Ú
yD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\StoreProcedureUtility.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

static		 
class		 !
StoreProcedureUtility		 -
{

 
public 
static 

Dictionary  
<  !
string! '
,' (
string) /
>/ 0"
storedProcedureMapping1 G
=H I
newJ M

DictionaryN X
<X Y
stringY _
,_ `
stringa g
>g h
(h i
)i j
{ 	
[ 
$str 
] 
= 
$str 8
,8 9
[ 
$str 
] 
= 
$str +
,+ ,
[ 
$str 
] 
= 
$str ,
,, -
[ 
$str 
] 
=  
$str! 5
,5 6
[ 
$str #
]# $
=% &
$str' ;
,; <
[ 
$str %
]% &
=' (
$str) A
,A B
[ 
$str #
]# $
=% &
$str' B
,B C
[ 
$str '
]' (
=) *
$str+ ?
,? @
[ 
$str )
]) *
=+ ,
$str- >
,> ?
[ 
$str %
]% &
=' (
$str) A
,A B
[ 
$str "
]" #
=$ %
$str& ;
,; <
[ 
$str $
]$ %
=& '
$str( ?
,? @
[ 
$str $
]$ %
=& '
$str( @
,@ A
[ 
$str (
]( )
=* +
$str, I
,I J
[ 
$str %
]% &
=' (
$str) =
,= >
[ 
$str 
] 
=  !
$str" 1
,1 2
[ 
$str "
]" #
=$ %
$str& ;
,; <
[ 
$str $
]$ %
=& '
$str( =
,= >
[ 
$str %
]% &
=' (
$str) ?
,? @
[   
$str   )
]  ) *
=  + ,
$str  - G
}"" 	
;""	 

}## 
}$$ ä
gD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\UOM.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
UOM		 
{

 
public 
int 
? 
ProductionID  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
SolidID 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ˜
oD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\UserMapping.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 

class		 
UserMapping		 
{

 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
EmailId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	PlantName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
RecordId 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ü
kD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Utility.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 	
class		
 
Utility		 
{

 
public 
int 
plantID 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
UserName 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ì
rD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\WageUomMapping.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
public		 	
class		
 
WageUomMapping		 
{

 
public 
int 
ID 
{ 
get 
; 
set 
; 
}  
public 
string 

EnergyName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

EnergyType 
{ 
get  #
;# $
set% (
;( )
}* +
public 

int 
EnergyTypeID 
{ 
get !
;! "
set# &
;& '
}( )
public 	
int
 
UOMID 
{ 
get 
; 
set 
; 
}  !
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
) 
return 
false 
; 
WageUomMapping 
maps 
=  !
(" #
WageUomMapping# 1
)1 2
obj2 5
;5 6
if 
( 
maps 
== 
null 
) 
return 
false 
; 
return 
this 
. 

EnergyName "
==# %
maps& *
.* +

EnergyName+ 5
&&6 8
this9 =
.= >
ID> @
==A C
mapsD H
.H I
IDI K
&& 
this 
. 

EnergyType "
==# %
maps& *
.* +

EnergyType+ 5
&&6 8
this9 =
.= >
UOM> A
==B D
mapsE I
.I J
UOMJ M
;M N
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
return 
ID 
. 
GetHashCode !
(! "
)" #
^# $

EnergyName$ .
.. /
GetHashCode/ :
(: ;
); <
^< =

EnergyType= G
.G H
GetHashCodeH S
(S T
)T U
^U V
UOMV Y
.Y Z
GetHashCodeZ e
(e f
)f g
;g h
} 	
}   
}!! Ì
iD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\Wages.cs
	namespace 	
EMMS
 
. 
DTO 
{ 
} ¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DTO\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs›
ˆD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\IGetItemForCombobox.cs
	namespace 	
EMMS
 
. 

DataAccess 
. 
	Interface #
{		 
public

 	
	interface


 
IGetItemForCombobox

 '
{ 
List 
< 
Details 
> 
GetWages 
( 
)  
;  !
List 
< 
Details 
> 
GetUOMs 
( 
) 
;  
List 
< 
Assets 
> 

GetsAssets 
(  
)  !
;! "
} 
} —T
ƒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\IPlantSetupDal.cs
	namespace 	
EMMS
 
. 

DataAccess 
. 
	Interface #
{ 
public		 

	interface		 
IPlantSetupDal		 #
{

 
int 
PlantId 
{ 
get 
; 
set 
; 
}  !
string 
UserName 
{ 
get 
; 
set "
;" #
}$ %
bool 
AddProductionActual  
(  !
List! %
<% &
AnnualDetails& 3
>3 4

production5 ?
,? @
stringA G
yearH L
,L M
stringM S
	procedureT ]
)] ^
;^ _
bool  
AddConsumptionActual !
(! "
List" &
<& '
AnnualDetails' 4
>4 5
Consumption6 A
,A B
stringC I
YearJ N
,N O
intP S
WagesT Y
,Y Z
stringZ `
	procedurea j
)j k
;k l
bool !
AddMonthlyConsumption "
(" #
List# '
<' (
MonthlyConsumption( :
>: ;
monthlyconsum< I
,I J
stringK Q
YearR V
,V W
intX [
WagesId\ c
,c d
intd g
MonthIDh o
)o p
;p q
bool  
AddMonthlySolidwaste !
(! "
List" &
<& '
MonthlyConsumption' 9
>9 :
monthlysolid; G
,G H
stringI O
YearP T
,T U
intV Y
MonthIDZ a
)a b
;b c
bool  
AddCSolidwasteActual !
(! "
List" &
<& '
AnnualDetails' 4
>4 5
Consumption6 A
,A B
stringC I
YearJ N
,N O
stringO U
	procedureV _
)_ `
;` a
bool 
AddSolidwasteDaily 
(  
List  $
<$ %
ProductionDaily% 4
>4 5

production6 @
,@ A
doubleA G

solidwasteH R
,R S
stringS Y
dateZ ^
)^ _
;_ `
bool 
AddProductonDaily 
( 
List #
<# $
ProductionDaily$ 3
>3 4

production5 ?
,? @
stringA G
dateH L
)L M
;M N
bool 
SaveWageMapping 
( 
string #

energyName$ .
,. /
int0 3

energyType4 >
,> ?
int@ C
UOMD G
,G H
intH K
IDL N
)N O
;O P
bool 
SaveBaseYear 
( 
string  
year! %
)% &
;& '
List 
< 
WageUomMapping 
> 
GetWageMapping +
(+ ,
), -
;- .
bool 
EditConfiguration 
( 
WageUomMapping -
wages. 3
)3 4
;4 5
List   
<   
AnnualDetails   
>    
GetConsumptionActual   0
(  0 1
int  1 4
year  5 9
,  9 :
int  ; >
wagesID  ? F
,  F G
string  G M
	procedure  N W
)  W X
;  X Y
List'' 
<'' 
AnnualDetails'' 
>'' 
GetSolidWaste'' )
('') *
int''* -
year''. 2
,''2 3
string''3 9
	procedure'': C
)''C D
;''D E
List// 
<// 
int// 
>// 
GetYears// 
(// 
)// 
;// 
List00 
<00 
MonthlyConsumption00 
>00   
GetMonthlySolidwaste00! 5
(005 6
int006 9
yearId00: @
,00@ A
int00B E
monthId00F M
)00M N
;00N O
List66 
<66 
AnnualDetails66 
>66 
GetProductionActual66 /
(66/ 0
int660 3
year664 8
,668 9
string669 ?
	procedure66@ I
)66I J
;66J K
List;; 
<;; 
Details;; 
>;; 
GetDepartment;; #
(;;# $
);;$ %
;;;% &
List<< 
<<< 
Details<< 
><< 
GetPlantNames<< #
(<<# $
)<<$ %
;<<% &
ListCC 
<CC 
ProductionDailyCC 
>CC 
GetProductionDailyCC 0
(CC0 1
stringCC1 7
dateCC8 <
)CC< =
;CC= >
ListII 
<II 
ProductionDailyII 
>II 
GetSolidWasteDailyII 0
(II0 1
stringII1 7
dateII8 <
)II< =
;II= >
ListKK 
<KK 

AlarmEnbleKK 
>KK 
GetAlaramDataKK &
(KK& '
)KK' (
;KK( )
ListLL 
<LL 
AssetsLL 
>LL 
GetUserDetailsLL #
(LL# $
stringLL$ *
emailIdLL+ 2
)LL2 3
;LL3 4
boolMM 
UpdateAlarmInfoMM 
(MM 
ListMM !
<MM! "

AlarmEnbleMM" ,
>MM, -
	alarminfoMM. 7
)MM7 8
;MM8 9
intNN 
GetCurrentBaseYearNN 
(NN 
)NN  
;NN  !
ListOO 
<OO 
CurrencyOO 
>OO 
GetCurrencyOO "
(OO" #
)OO# $
;OO$ %
boolPP 
AddUSDExchnageRatePP 
(PP  
doublePP  &
ratePP' +
,PP+ ,
intPP- 0
yearPP1 5
)PP5 6
;PP6 7
boolQQ 
UpdateCurrencyQQ 
(QQ 
stringQQ "
currencyQQ# +
)QQ+ ,
;QQ, -
stringRR 
GetUpdatedCurrencyRR !
(RR! "
)RR" #
;RR# $
doubleSS 

GetUSDRateSS 
(SS 
)SS 
;SS 
ListTT 
<TT 
DetailsTT 
>TT 
GetUOMsTT 
(TT 
)TT 
;TT  
ListUU 
<UU 
DetailsUU 
>UU 
GetDeviceIDUU !
(UU! "
)UU" #
;UU# $
boolVV 
AddUomVV 
(VV 
stringVV 
uomVV 
)VV 
;VV  
boolWW 
AddDeviceIdWW 
(WW 
stringWW 
IdWW  "
)WW" #
;WW# $
boolXX 
AddEmailConfigXX 
(XX 
ListXX  
<XX  !
EmailConfigurationXX! 3
>XX3 4
emailConfigXX5 @
)XX@ A
;XXA B
boolYY 
UpdateDeviceYY 
(YY 
intYY 
idYY  
,YY  !
stringYY! '
deviceidYY( 0
)YY0 1
;YY1 2
boolZZ 
	UpdateUOMZZ 
(ZZ 
intZZ 
idZZ 
,ZZ 
stringZZ %
uomZZ& )
)ZZ) *
;ZZ* +
List[[ 
<[[ 
EmailConfiguration[[ 
>[[  
GetEmailConfig[[! /
([[/ 0
)[[0 1
;[[1 2
bool\\ 
AddUserMapping\\ 
(\\ 
int\\ 
userId\\  &
,\\& '
string\\( .
plantid\\/ 6
)\\6 7
;\\7 8
bool]] 
AddEmailList]] 
(]] 
string]]  
[]]  !
]]]! "
email]]# (
,]]( )
int]]* -
id]]. 0
)]]0 1
;]]1 2
List^^ 
<^^ 
Details^^ 
>^^ 
GetEmailList^^ "
(^^" #
)^^# $
;^^$ %
List__ 
<__ 
string__ 
>__ 
GetMacID__ 
(__ 
)__ 
;__ 
List`` 
<`` 
UserMapping`` 
>`` 
GetUserMappingList`` ,
(``, -
)``- .
;``. /
boolaa 
DeleteEmailaa 
(aa 
intaa 
Idaa 
)aa  
;aa  !
boolbb 

DeleteUSerbb 
(bb 
intbb 
UserIdbb "
)bb" #
;bb# $
Listcc 
<cc 
UserMappingcc 
>cc 
GetAdminListcc &
(cc& '
)cc' (
;cc( )
booldd 
saveDisplayNamedd 
(dd 
intdd  
wagesdd! &
,dd& '
stringdd( .
displayNamedd/ :
,dd: ;
intdd< ?
iddd@ B
)ddB C
;ddC D
Listee 
<ee 
Displayee 
>ee 
getDisplayNamesee %
(ee% &
)ee& '
;ee' (
boolff 
deleteDisplyNameff 
(ff 
intff !
idff" $
)ff$ %
;ff% &
boolgg #
AddProductionUOMMappinggg $
(gg$ %
intgg% (
productionUomIdgg) 8
,gg8 9
intgg9 <
SolidawasteUomIdgg= M
)ggM N
;ggN O
Listhh 
<hh 
UOMhh 
>hh 
GetProductionUomhh "
(hh" #
)hh# $
;hh$ %
intii 
CheckUOMMappingii 
(ii 
stringii "

energynameii# -
,ii- .
intii. 1
typeii2 6
,ii6 7
intii7 :
uomii; >
)ii> ?
;ii? @
Listjj 
<jj 
EmailLstjj 
>jj 
GetEmailAddressjj &
(jj& '
)jj' (
;jj( )
boolkk 
AddEmailAddresskk 
(kk 
stringkk #
emailIdkk$ +
,kk+ ,
intkk, /
roleIdkk0 6
,kk6 7
intkk7 :
Idkk; =
)kk= >
;kk> ?
boolll 
DeleteEmailAddressll 
(ll  
intll  #
Idll$ &
)ll& '
;ll' (
boolmm 
DeleteUserMappingmm 
(mm 
intmm "
Idmm# %
)mm% &
;mm& '
}nn 
}oo ¸
ŒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 4
)4 5
]5 6
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs½
ºD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess.Interface\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs.
zD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\PlantDetailsDal.cs
	namespace 	
EMMS
 
. 

DataAccess 
{ 
public 

class 
PlantDetailsDal  
:! "
IGetItemForCombobox# 6
{ 
string 
connectionstring 
=  ! 
ConfigurationManager" 6
.6 7
ConnectionStrings7 H
[H I
$strI Q
]Q R
.R S
ConnectionStringS c
;c d
public 
List 
< 
Assets 
> 

GetsAssets &
(& '
)' (
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
List 
< 
Details 
> 
GetUOMs $
($ %
)% &
{ 	
List 
< 
Details 
> 
UOMList !
=" #
new$ '
List( ,
<, -
Details- 4
>4 5
(5 6
)6 7
;7 8
try 
{ 
using 
( 
SqlConnection $
conn% )
=* +
new, /
SqlConnection0 =
(= >
connectionstring> N
)N O
)O P
{ 
conn 
. 
Open 
( 
) 
;  
using 
( 

SqlCommand %
cmd& )
=* +
new, /

SqlCommand0 :
(: ;
$str; z
,z {
conn	| €
)
€ 
)
 ‚
{   
cmd"" 
."" 
CommandType"" '
=""( )
CommandType""* 5
.""5 6
Text""6 :
;"": ;
using## 
(## 
SqlDataReader## ,
reader##- 3
=##4 5
cmd##6 9
.##9 :
ExecuteReader##: G
(##G H
)##H I
)##I J
{$$ 
while%% !
(%%" #
reader%%# )
.%%) *
Read%%* .
(%%. /
)%%/ 0
)%%0 1
{&& 
UOMList''  '
.''' (
Add''( +
(''+ ,
new(($ '
Details((( /
{))$ %
ID**( *
=**+ ,
Convert**- 4
.**4 5
ToInt32**5 <
(**< =
reader**= C
[**C D
$str**D H
]**H I
)**I J
,**J K
Name++( ,
=++- .
reader++/ 5
[++5 6
$str++6 C
]++C D
.++D E
ToString++E M
(++M N
)++N O
},,$ %
)--$ %
;--% &
}.. 
}// 
}00 
}11 
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
Debug55 
.55 
	WriteLine55 
(55  
$str55  0
+551 2
ex553 5
.555 6
Message556 =
)55= >
;55> ?
}66 
return77 
UOMList77 
;77 
}88 	
public== 
List== 
<== 
Details== 
>== 
GetWages== %
(==% &
)==& '
{>> 	
List?? 
<?? 
Details?? 
>?? 
WageList?? "
=??# $
new??% (
List??) -
<??- .
Details??. 5
>??5 6
(??6 7
)??7 8
;??8 9
try@@ 
{AA 
usingBB 
(BB 
SqlConnectionBB $
connBB% )
=BB* +
newBB, /
SqlConnectionBB0 =
(BB= >
connectionstringBB> N
)BBN O
)BBO P
{CC 
connDD 
.DD 
OpenDD 
(DD 
)DD 
;DD  
usingEE 
(EE 

SqlCommandEE %
cmdEE& )
=EE* +
newEE, /

SqlCommandEE0 :
(EE: ;
$strEE; E
,EEE F
connEEG K
)EEK L
)EEL M
{FF 
cmdHH 
.HH 
CommandTypeHH '
=HH( )
CommandTypeHH* 5
.HH5 6
StoredProcedureHH6 E
;HHE F
usingII 
(II 
SqlDataReaderII ,
readerII- 3
=II4 5
cmdII6 9
.II9 :
ExecuteReaderII: G
(IIG H
)IIH I
)III J
{JJ 
whileKK !
(KK" #
readerKK# )
.KK) *
ReadKK* .
(KK. /
)KK/ 0
)KK0 1
{LL 
WageListMM  (
.MM( )
AddMM) ,
(MM, -
newNN$ '
DetailsNN( /
{OO$ %
IDPP( *
=PP+ ,
ConvertPP- 4
.PP4 5
ToInt32PP5 <
(PP< =
readerPP= C
[PPC D
$strPPD H
]PPH I
)PPI J
,PPJ K
NameQQ( ,
=QQ- .
readerQQ/ 5
[QQ5 6
$strQQ6 C
]QQC D
.QQD E
ToStringQQE M
(QQM N
)QQN O
}RR$ %
)SS$ %
;SS% &
}TT 
}UU 
}VV 
}WW 
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 
Debug[[ 
.[[ 
	WriteLine[[ 
([[  
$str[[  0
+[[0 1
ex[[1 3
.[[3 4
Message[[4 ;
)[[; <
;[[< =
}\\ 
return]] 
WageList]] 
;]] 
}^^ 	
}aa 
}bb äë
xD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\PlantSetUpDal.cs
	namespace 	
EMMS
 
. 

DataAccess 
{ 
public 

class 
PlantSetUpDal 
:  
IPlantSetupDal! /
{ 
public 
int 
PlantId 
{ 	
get 
; 
set 
; 
} 	
public 
string 
UserName 
{ 	
get 
; 
set 
; 
} 	
private 
readonly 
string 
connectionstring  0
=1 2 
ConfigurationManager3 G
.G H
ConnectionStringsH Y
[Y Z
$strZ b
]b c
.c d
ConnectionStringd t
;t u
private 
SqlConnection 

SqlConnect (
(( )
)) *
{   	
SqlConnection!! 
sqlConn!! !
;!!! "
sqlConn"" 
="" 
new"" 
SqlConnection"" '
(""' (
connectionstring""( 8
)""8 9
;""9 :
sqlConn## 
.## 
Open## 
(## 
)## 
;## 
return$$ 
sqlConn$$ 
;$$ 
}%% 	
public++ 
bool++  
AddConsumptionActual++ (
(++( )
List++) -
<++- .
AnnualDetails++. ;
>++; <
Consumption++= H
,++H I
string++J P
Year++Q U
,++U V
int++W Z
Wages++[ `
,++` a
string++b h
	procedure++i r
)++r s
{,, 	
string-- 
procedureName--  
=--! "!
StoreProcedureUtility--# 8
.--8 9"
storedProcedureMapping--9 O
.--O P
ContainsKey--P [
(--[ \
	procedure--\ e
)--e f
?--g h!
StoreProcedureUtility--i ~
.--~ #
storedProcedureMapping	-- •
[
--• –
	procedure
--– Ÿ
]
--Ÿ  
:
--¡ ¢
$str
--£ ¥
;
--¥ ¦
if.. 
(.. 
string.. 
... 
IsNullOrEmpty.. $
(..$ %
procedureName..% 2
)..2 3
)..3 4
return// 
false// 
;// 
try00 
{11 
using33 
(33 
SqlConnection33 $
sqlConn33% ,
=33- .

SqlConnect33/ 9
(339 :
)33: ;
)33; <
{44 
foreach66 
(66 
var66  
item66! %
in66& (
Consumption66) 4
)664 5
{77 
using99 
(99 

SqlCommand99 )
command99* 1
=992 3
new994 7

SqlCommand998 B
(99B C
procedureName99C P
,99P Q
sqlConn99R Y
)99Y Z
)99Z [
{:: 
command;; #
.;;# $
CommandType;;$ /
=;;0 1
CommandType;;2 =
.;;= >
StoredProcedure;;> M
;;;M N
command<< #
.<<# $

Parameters<<$ .
.<<. /
AddWithValue<</ ;
(<<; <
$str<<< D
,<<D E
item<<F J
.<<J K
	DetailsId<<K T
)<<T U
;<<U V
AddParam== $
(==$ %
item==% )
,==) *
command==+ 2
,==2 3
procedureName==4 A
)==A B
;==B C
command>> #
.>># $

Parameters>>$ .
.>>. /
AddWithValue>>/ ;
(>>; <
$str>>< C
,>>C D
Year>>E I
)>>I J
;>>J K
command?? #
.??# $

Parameters??$ .
.??. /
AddWithValue??/ ;
(??; <
$str??< F
,??F G
Wages??H M
)??M N
;??N O
command@@ #
.@@# $

Parameters@@$ .
.@@. /
AddWithValue@@/ ;
(@@; <
$str@@< A
,@@A B
UserName@@C K
)@@K L
;@@L M
commandAA #
.AA# $
ExecuteNonQueryAA$ 3
(AA3 4
)AA4 5
;AA5 6
}BB 
}CC 
returnEE 
trueEE 
;EE  
}FF 
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
LoggerKK 
.KK 
LogKK 
(KK 
$strKK ?
+KK@ A
exKKB D
.KKD E
ToStringKKE M
(KKM N
)KKN O
)KKO P
;KKP Q
returnLL 
falseLL 
;LL 
}MM 
}OO 	
privateQQ 
voidQQ 
AddParamQQ 
(QQ 
AnnualDetailsQQ +
itemQQ, 0
,QQ0 1

SqlCommandQQ2 <
commandQQ= D
,QQD E
stringQQF L
procedureNameQQM Z
)QQZ [
{RR 	
commandSS 
.SS 

ParametersSS 
.SS 
AddWithValueSS +
(SS+ ,
$strSS, 2
,SS2 3
itemSS4 8
.SS8 9
JanSS9 <
)SS< =
;SS= >
commandTT 
.TT 

ParametersTT 
.TT 
AddWithValueTT +
(TT+ ,
$strTT, 2
,TT2 3
itemTT4 8
.TT8 9
FebTT9 <
)TT< =
;TT= >
commandUU 
.UU 

ParametersUU 
.UU 
AddWithValueUU +
(UU+ ,
$strUU, 2
,UU2 3
itemUU4 8
.UU8 9
MarUU9 <
)UU< =
;UU= >
commandVV 
.VV 

ParametersVV 
.VV 
AddWithValueVV +
(VV+ ,
$strVV, 2
,VV2 3
itemVV4 8
.VV8 9
AprVV9 <
)VV< =
;VV= >
commandWW 
.WW 

ParametersWW 
.WW 
AddWithValueWW +
(WW+ ,
$strWW, 2
,WW2 3
itemWW4 8
.WW8 9
MayWW9 <
)WW< =
;WW= >
commandXX 
.XX 

ParametersXX 
.XX 
AddWithValueXX +
(XX+ ,
$strXX, 2
,XX2 3
itemXX4 8
.XX8 9
JunXX9 <
)XX< =
;XX= >
commandYY 
.YY 

ParametersYY 
.YY 
AddWithValueYY +
(YY+ ,
$strYY, 2
,YY2 3
itemYY4 8
.YY8 9
JulYY9 <
)YY< =
;YY= >
commandZZ 
.ZZ 

ParametersZZ 
.ZZ 
AddWithValueZZ +
(ZZ+ ,
$strZZ, 2
,ZZ2 3
itemZZ4 8
.ZZ8 9
AugZZ9 <
)ZZ< =
;ZZ= >
command[[ 
.[[ 

Parameters[[ 
.[[ 
AddWithValue[[ +
([[+ ,
$str[[, 2
,[[2 3
item[[4 8
.[[8 9
Sep[[9 <
)[[< =
;[[= >
command\\ 
.\\ 

Parameters\\ 
.\\ 
AddWithValue\\ +
(\\+ ,
$str\\, 2
,\\2 3
item\\4 8
.\\8 9
Oct\\9 <
)\\< =
;\\= >
command]] 
.]] 

Parameters]] 
.]] 
AddWithValue]] +
(]]+ ,
$str]], 2
,]]2 3
item]]4 8
.]]8 9
Nov]]9 <
)]]< =
;]]= >
command^^ 
.^^ 

Parameters^^ 
.^^ 
AddWithValue^^ +
(^^+ ,
$str^^, 2
,^^2 3
item^^4 8
.^^8 9
Dec^^9 <
)^^< =
;^^= >
if__ 
(__ 
procedureName__ 
!=__  
$str__! 9
&&__: <
procedureName__= J
!=__K M
$str__N h
)__h i
{`` 
commandaa 
.aa 

Parametersaa "
.aa" #
AddWithValueaa# /
(aa/ 0
$straa0 6
,aa6 7
itemaa8 <
.aa< =
UOMIDaa= B
)aaB C
;aaC D
}bb 
commanddd 
.dd 

Parametersdd 
.dd 
AddWithValuedd +
(dd+ ,
$strdd, 6
,dd6 7
PlantIddd8 ?
)dd? @
;dd@ A
}ee 	
publicgg 
boolgg 
AddProductionActualgg '
(gg' (
Listgg( ,
<gg, -
AnnualDetailsgg- :
>gg: ;

productiongg< F
,ggF G
stringggH N
yearggO S
,ggS T
stringggU [
	proceduregg\ e
)gge f
{hh 	
stringii 
procedureNameii  
=ii! "!
StoreProcedureUtilityii# 8
.ii8 9"
storedProcedureMappingii9 O
.iiO P
ContainsKeyiiP [
(ii[ \
	procedureii\ e
)iie f
?iig h!
StoreProcedureUtilityiii ~
.ii~ #
storedProcedureMapping	ii •
[
ii• –
	procedure
ii– Ÿ
]
iiŸ  
:
ii¡ ¢
$str
ii£ ¥
;
ii¥ ¦
ifjj 
(jj 
stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %
procedureNamejj% 2
)jj2 3
)jj3 4
returnkk 
falsekk 
;kk 
tryll 
{mm 
usingnn 
(nn 
SqlConnectionnn $
sqlConnnn% ,
=nn- .

SqlConnectnn/ 9
(nn9 :
)nn: ;
)nn; <
{oo 
foreachpp 
(pp 
varpp  
itempp! %
inpp& (

productionpp) 3
)pp3 4
{qq 
usingrr 
(rr 

SqlCommandrr )
commandrr* 1
=rr2 3
newrr4 7

SqlCommandrr8 B
(rrB C
procedureNamerrC P
,rrP Q
sqlConnrrR Y
)rrY Z
)rrZ [
{ss 
commanduu #
.uu# $
CommandTypeuu$ /
=uu0 1
CommandTypeuu2 =
.uu= >
StoredProcedureuu> M
;uuM N
commandvv #
.vv# $

Parametersvv$ .
.vv. /
AddWithValuevv/ ;
(vv; <
$strvv< I
,vvI J
itemvvK O
.vvO P
	DetailsIdvvP Y
)vvY Z
;vvZ [
AddParamww $
(ww$ %
itemww% )
,ww) *
commandww+ 2
,ww2 3
procedureNameww4 A
)wwA B
;wwB C
commandxx #
.xx# $

Parametersxx$ .
.xx. /
AddWithValuexx/ ;
(xx; <
$strxx< C
,xxC D
yearxxE I
)xxI J
;xxJ K
commandyy #
.yy# $

Parametersyy$ .
.yy. /
AddWithValueyy/ ;
(yy; <
$stryy< A
,yyA B
UserNameyyC K
)yyK L
;yyL M
commandzz #
.zz# $
ExecuteNonQueryzz$ 3
(zz3 4
)zz4 5
;zz5 6
}{{ 
}|| 
return}} 
true}} 
;}}  
}~~ 
}
€€ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
‚‚ 
Logger
ƒƒ 
.
ƒƒ 
Log
ƒƒ 
(
ƒƒ 
$str
ƒƒ ;
+
ƒƒ< =
ex
ƒƒ> @
.
ƒƒ@ A
ToString
ƒƒA I
(
ƒƒI J
)
ƒƒJ K
)
ƒƒK L
;
ƒƒL M
return
„„ 
false
„„ 
;
„„ 
}
…… 
}
†† 	
public
‰‰ 
bool
‰‰ #
AddMonthlyConsumption
‰‰ )
(
‰‰) *
List
‰‰* .
<
‰‰. / 
MonthlyConsumption
‰‰/ A
>
‰‰A B
monthlyconsum
‰‰C P
,
‰‰P Q
string
‰‰R X
Year
‰‰Y ]
,
‰‰] ^
int
‰‰_ b
WagesId
‰‰c j
,
‰‰j k
int
‰‰l o
MonthID
‰‰p w
)
‰‰w x
{
ŠŠ 	
try
‹‹ 
{
ŒŒ 
using
 
(
 
SqlConnection
 $
sqlConn
% ,
=
- .

SqlConnect
/ 9
(
9 :
)
: ;
)
; <
{
 
foreach
 
(
 
var
  
item
! %
in
& (
monthlyconsum
) 6
)
6 7
{
 
using
‘‘ 
(
‘‘ 

SqlCommand
‘‘ )
command
‘‘* 1
=
‘‘2 3
new
‘‘4 7

SqlCommand
‘‘8 B
(
‘‘B C
$str
‘‘C Z
,
‘‘Z [
sqlConn
‘‘\ c
)
‘‘c d
)
‘‘d e
{
’’ 
command
““ #
.
““# $
CommandType
““$ /
=
““0 1
CommandType
““2 =
.
““= >
StoredProcedure
““> M
;
““M N
command
”” #
.
””# $

Parameters
””$ .
.
””. /
AddWithValue
””/ ;
(
””; <
$str
””< F
,
””F G
WagesId
””H O
)
””O P
;
””P Q
command
•• #
.
••# $

Parameters
••$ .
.
••. /
AddWithValue
••/ ;
(
••; <
$str
••< F
,
••F G
PlantId
••H O
)
••O P
;
••P Q
command
–– #
.
––# $

Parameters
––$ .
.
––. /
AddWithValue
––/ ;
(
––; <
$str
––< J
,
––J K
item
––L P
.
––P Q
Consumption
––Q \
)
––\ ]
;
––] ^
command
—— #
.
——# $

Parameters
——$ .
.
——. /
AddWithValue
——/ ;
(
——; <
$str
——< C
,
——C D
item
——E I
.
——I J
Cost
——J N
)
——N O
;
——O P
command
˜˜ #
.
˜˜# $

Parameters
˜˜$ .
.
˜˜. /
AddWithValue
˜˜/ ;
(
˜˜; <
$str
˜˜< D
,
˜˜D E
item
˜˜F J
.
˜˜J K
UOMID
˜˜K P
)
˜˜P Q
;
˜˜Q R
command
™™ #
.
™™# $

Parameters
™™$ .
.
™™. /
AddWithValue
™™/ ;
(
™™; <
$str
™™< D
,
™™D E
item
™™F J
.
™™J K
WagesId
™™K R
)
™™R S
;
™™S T
command
šš #
.
šš# $

Parameters
šš$ .
.
šš. /
AddWithValue
šš/ ;
(
šš; <
$str
šš< E
,
ššE F
Year
ššG K
)
ššK L
;
ššL M
command
›› #
.
››# $

Parameters
››$ .
.
››. /
AddWithValue
››/ ;
(
››; <
$str
››< F
,
››F G
MonthID
››H O
)
››O P
;
››P Q
command
œœ #
.
œœ# $
ExecuteNonQuery
œœ$ 3
(
œœ3 4
)
œœ4 5
;
œœ5 6
}
 
}
 
return
ŸŸ 
true
ŸŸ 
;
ŸŸ  
}
   
}
¢¢ 
catch
££ 
(
££ 
	Exception
££ 
ex
££ 
)
££  
{
¤¤ 
Logger
¥¥ 
.
¥¥ 
Log
¥¥ 
(
¥¥ 
$str
¥¥ =
+
¥¥> ?
ex
¥¥@ B
.
¥¥B C
ToString
¥¥C K
(
¥¥K L
)
¥¥L M
)
¥¥M N
;
¥¥N O
return
¦¦ 
false
¦¦ 
;
¦¦ 
}
§§ 
}
¨¨ 	
public
®® 
List
®® 
<
®® 
AnnualDetails
®® !
>
®®! ""
GetConsumptionActual
®®# 7
(
®®7 8
int
®®8 ;
year
®®< @
,
®®@ A
int
®®B E
wagesID
®®F M
,
®®M N
string
®®O U
	procedure
®®V _
)
®®_ `
{
¯¯ 	
string
°° 
procedureName
°°  
=
°°! "#
StoreProcedureUtility
°°# 8
.
°°8 9$
storedProcedureMapping
°°9 O
.
°°O P
ContainsKey
°°P [
(
°°[ \
	procedure
°°\ e
)
°°e f
?
°°g h#
StoreProcedureUtility
°°i ~
.
°°~ %
storedProcedureMapping°° •
[°°• –
	procedure°°– Ÿ
]°°Ÿ  
:°°¡ ¢
$str°°£ ¥
;°°¥ ¦
return
²² 
GetCommomValues
²² "
(
²²" #
year
²²# '
,
²²' (
wagesID
²²) 0
.
²²0 1
ToString
²²1 9
(
²²9 :
)
²²: ;
,
²²; <
procedureName
²²= J
)
²²J K
;
²²K L
}
´´ 	
private
¶¶ 
List
¶¶ 
<
¶¶ 
AnnualDetails
¶¶ "
>
¶¶" #
GetCommomValues
¶¶$ 3
(
¶¶3 4
int
¶¶4 7
year
¶¶8 <
,
¶¶< =
string
¶¶> D
wagesID
¶¶E L
,
¶¶L M
string
¶¶N T
procedureName
¶¶U b
)
¶¶b c
{
·· 	
List
¸¸ 
<
¸¸ 
AnnualDetails
¸¸ 
>
¸¸ 
consumptionList
¸¸  /
=
¸¸0 1
new
¸¸2 5
List
¸¸6 :
<
¸¸: ;
AnnualDetails
¸¸; H
>
¸¸H I
(
¸¸I J
)
¸¸J K
;
¸¸K L
try
¹¹ 
{
ºº 
using
»» 
(
»» 
SqlConnection
»» $
sqlConn
»»% ,
=
»»- .

SqlConnect
»»/ 9
(
»»9 :
)
»»: ;
)
»»; <
{
¼¼ 
using
½½ 
(
½½ 

SqlCommand
½½ %
cmd
½½& )
=
½½* +
new
½½, /

SqlCommand
½½0 :
(
½½: ;
procedureName
½½; H
,
½½H I
sqlConn
½½J Q
)
½½Q R
)
½½R S
{
¾¾ 
cmd
¿¿ 
.
¿¿ 
CommandType
¿¿ '
=
¿¿( )
CommandType
¿¿* 5
.
¿¿5 6
StoredProcedure
¿¿6 E
;
¿¿E F
cmd
ÀÀ 
.
ÀÀ 

Parameters
ÀÀ &
.
ÀÀ& '
AddWithValue
ÀÀ' 3
(
ÀÀ3 4
$str
ÀÀ4 ;
,
ÀÀ; <
year
ÀÀ= A
)
ÀÀA B
;
ÀÀB C
cmd
ÁÁ 
.
ÁÁ 

Parameters
ÁÁ &
.
ÁÁ& '
AddWithValue
ÁÁ' 3
(
ÁÁ3 4
$str
ÁÁ4 >
,
ÁÁ> ?
PlantId
ÁÁ@ G
)
ÁÁG H
;
ÁÁH I
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
string
ÂÂ #
.
ÂÂ# $
IsNullOrEmpty
ÂÂ$ 1
(
ÂÂ1 2
wagesID
ÂÂ2 9
.
ÂÂ9 :
ToString
ÂÂ: B
(
ÂÂB C
)
ÂÂC D
)
ÂÂD E
)
ÂÂE F
{
ÃÃ 
int
ÄÄ 
wageid
ÄÄ  &
;
ÄÄ& '
if
ÅÅ 
(
ÅÅ  
int
ÅÅ  #
.
ÅÅ# $
TryParse
ÅÅ$ ,
(
ÅÅ, -
wagesID
ÅÅ- 4
.
ÅÅ4 5
ToString
ÅÅ5 =
(
ÅÅ= >
)
ÅÅ> ?
,
ÅÅ? @
out
ÅÅA D
wageid
ÅÅE K
)
ÅÅK L
)
ÅÅL M
cmd
ÆÆ  #
.
ÆÆ# $

Parameters
ÆÆ$ .
.
ÆÆ. /
AddWithValue
ÆÆ/ ;
(
ÆÆ; <
$str
ÆÆ< F
,
ÆÆF G
wageid
ÆÆH N
)
ÆÆN O
;
ÆÆO P
}
ÇÇ 
using
ÊÊ 
(
ÊÊ 
SqlDataReader
ÊÊ ,
reader
ÊÊ- 3
=
ÊÊ4 5
cmd
ÊÊ6 9
.
ÊÊ9 :
ExecuteReader
ÊÊ: G
(
ÊÊG H
)
ÊÊH I
)
ÊÊI J
{
ËË 
while
ÌÌ !
(
ÌÌ" #
reader
ÌÌ# )
.
ÌÌ) *
Read
ÌÌ* .
(
ÌÌ. /
)
ÌÌ/ 0
)
ÌÌ0 1
{
ÍÍ 
consumptionList
ÎÎ  /
.
ÎÎ/ 0
Add
ÎÎ0 3
(
ÎÎ3 4
new
ÏÏ$ '
AnnualDetails
ÏÏ( 5
{
ĞĞ$ %
DetailsName
ÑÑ( 3
=
ÑÑ4 5
reader
ÑÑ6 <
[
ÑÑ< =
$str
ÑÑ= D
]
ÑÑD E
.
ÑÑE F
ToString
ÑÑF N
(
ÑÑN O
)
ÑÑO P
,
ÑÑP Q
	DetailsId
ÒÒ( 1
=
ÒÒ2 3
!
ÒÒ4 5
string
ÒÒ5 ;
.
ÒÒ; <
IsNullOrEmpty
ÒÒ< I
(
ÒÒI J
reader
ÒÒJ P
[
ÒÒP Q
$str
ÒÒQ Z
]
ÒÒZ [
.
ÒÒ[ \
ToString
ÒÒ\ d
(
ÒÒd e
)
ÒÒe f
)
ÒÒf g
?
ÒÒh i
Convert
ÒÒj q
.
ÒÒq r
ToInt32
ÒÒr y
(
ÒÒy z
readerÒÒz €
[ÒÒ€ 
$strÒÒ Š
]ÒÒŠ ‹
.ÒÒ‹ Œ
ToStringÒÒŒ ”
(ÒÒ” •
)ÒÒ• –
)ÒÒ– —
:ÒÒ˜ ™
$numÒÒš ›
,ÒÒ› œ
UOM
ÓÓ( +
=
ÓÓ, -
!
ÓÓ. /
string
ÓÓ/ 5
.
ÓÓ5 6
IsNullOrEmpty
ÓÓ6 C
(
ÓÓC D
reader
ÓÓD J
[
ÓÓJ K
$str
ÓÓK P
]
ÓÓP Q
.
ÓÓQ R
ToString
ÓÓR Z
(
ÓÓZ [
)
ÓÓ[ \
)
ÓÓ\ ]
?
ÓÓ^ _
reader
ÓÓ` f
[
ÓÓf g
$str
ÓÓg l
]
ÓÓl m
.
ÓÓm n
ToString
ÓÓn v
(
ÓÓv w
)
ÓÓw x
:
ÓÓy z!
GetUpdatedCurrencyÓÓ{ 
(ÓÓ 
)ÓÓ 
,ÓÓ 
UOMID
ÔÔ( -
=
ÔÔ. /
!
ÔÔ0 1
string
ÔÔ1 7
.
ÔÔ7 8
IsNullOrEmpty
ÔÔ8 E
(
ÔÔE F
reader
ÔÔF L
[
ÔÔL M
$str
ÔÔM T
]
ÔÔT U
.
ÔÔU V
ToString
ÔÔV ^
(
ÔÔ^ _
)
ÔÔ_ `
)
ÔÔ` a
?
ÔÔb c
Convert
ÔÔd k
.
ÔÔk l
ToInt32
ÔÔl s
(
ÔÔs t
reader
ÔÔt z
[
ÔÔz {
$strÔÔ{ ‚
]ÔÔ‚ ƒ
.ÔÔƒ „
ToStringÔÔ„ Œ
(ÔÔŒ 
)ÔÔ 
)ÔÔ 
:ÔÔ ‘
$numÔÔ’ “
,ÔÔ“ ”
Jan
ÕÕ( +
=
ÕÕ, -
!
ÕÕ. /
string
ÕÕ/ 5
.
ÕÕ5 6
IsNullOrEmpty
ÕÕ6 C
(
ÕÕC D
reader
ÕÕD J
[
ÕÕJ K
$str
ÕÕK P
]
ÕÕP Q
.
ÕÕQ R
ToString
ÕÕR Z
(
ÕÕZ [
)
ÕÕ[ \
)
ÕÕ\ ]
?
ÕÕ^ _
Convert
ÕÕ` g
.
ÕÕg h
ToDouble
ÕÕh p
(
ÕÕp q
reader
ÕÕq w
[
ÕÕw x
$str
ÕÕx }
]
ÕÕ} ~
.
ÕÕ~ 
ToStringÕÕ ‡
(ÕÕ‡ ˆ
)ÕÕˆ ‰
)ÕÕ‰ Š
:ÕÕ‹ Œ
$numÕÕ 
,ÕÕ 
Feb
ÖÖ( +
=
ÖÖ, -
!
ÖÖ. /
string
ÖÖ/ 5
.
ÖÖ5 6
IsNullOrEmpty
ÖÖ6 C
(
ÖÖC D
reader
ÖÖD J
[
ÖÖJ K
$str
ÖÖK P
]
ÖÖP Q
.
ÖÖQ R
ToString
ÖÖR Z
(
ÖÖZ [
)
ÖÖ[ \
)
ÖÖ\ ]
?
ÖÖ^ _
Convert
ÖÖ` g
.
ÖÖg h
ToDouble
ÖÖh p
(
ÖÖp q
reader
ÖÖq w
[
ÖÖw x
$str
ÖÖx }
]
ÖÖ} ~
.
ÖÖ~ 
ToStringÖÖ ‡
(ÖÖ‡ ˆ
)ÖÖˆ ‰
)ÖÖ‰ Š
:ÖÖ‹ Œ
$numÖÖ 
,ÖÖ 
Mar
××( +
=
××, -
!
××. /
string
××/ 5
.
××5 6
IsNullOrEmpty
××6 C
(
××C D
reader
××D J
[
××J K
$str
××K P
]
××P Q
.
××Q R
ToString
××R Z
(
××Z [
)
××[ \
)
××\ ]
?
××^ _
Convert
××` g
.
××g h
ToDouble
××h p
(
××p q
reader
××q w
[
××w x
$str
××x }
]
××} ~
.
××~ 
ToString×× ‡
(××‡ ˆ
)××ˆ ‰
)××‰ Š
:××‹ Œ
$num×× 
,×× 
Apr
ØØ( +
=
ØØ, -
!
ØØ. /
string
ØØ/ 5
.
ØØ5 6
IsNullOrEmpty
ØØ6 C
(
ØØC D
reader
ØØD J
[
ØØJ K
$str
ØØK P
]
ØØP Q
.
ØØQ R
ToString
ØØR Z
(
ØØZ [
)
ØØ[ \
)
ØØ\ ]
?
ØØ^ _
Convert
ØØ` g
.
ØØg h
ToDouble
ØØh p
(
ØØp q
reader
ØØq w
[
ØØw x
$str
ØØx }
]
ØØ} ~
.
ØØ~ 
ToStringØØ ‡
(ØØ‡ ˆ
)ØØˆ ‰
)ØØ‰ Š
:ØØ‹ Œ
$numØØ 
,ØØ 
May
ÙÙ( +
=
ÙÙ, -
!
ÙÙ. /
string
ÙÙ/ 5
.
ÙÙ5 6
IsNullOrEmpty
ÙÙ6 C
(
ÙÙC D
reader
ÙÙD J
[
ÙÙJ K
$str
ÙÙK P
]
ÙÙP Q
.
ÙÙQ R
ToString
ÙÙR Z
(
ÙÙZ [
)
ÙÙ[ \
)
ÙÙ\ ]
?
ÙÙ^ _
Convert
ÙÙ` g
.
ÙÙg h
ToDouble
ÙÙh p
(
ÙÙp q
reader
ÙÙq w
[
ÙÙw x
$str
ÙÙx }
]
ÙÙ} ~
.
ÙÙ~ 
ToStringÙÙ ‡
(ÙÙ‡ ˆ
)ÙÙˆ ‰
)ÙÙ‰ Š
:ÙÙ‹ Œ
$numÙÙ 
,ÙÙ 
Jun
ÚÚ( +
=
ÚÚ, -
!
ÚÚ. /
string
ÚÚ/ 5
.
ÚÚ5 6
IsNullOrEmpty
ÚÚ6 C
(
ÚÚC D
reader
ÚÚD J
[
ÚÚJ K
$str
ÚÚK P
]
ÚÚP Q
.
ÚÚQ R
ToString
ÚÚR Z
(
ÚÚZ [
)
ÚÚ[ \
)
ÚÚ\ ]
?
ÚÚ^ _
Convert
ÚÚ` g
.
ÚÚg h
ToDouble
ÚÚh p
(
ÚÚp q
reader
ÚÚq w
[
ÚÚw x
$str
ÚÚx }
]
ÚÚ} ~
.
ÚÚ~ 
ToStringÚÚ ‡
(ÚÚ‡ ˆ
)ÚÚˆ ‰
)ÚÚ‰ Š
:ÚÚ‹ Œ
$numÚÚ 
,ÚÚ 
Jul
ÛÛ( +
=
ÛÛ, -
!
ÛÛ. /
string
ÛÛ/ 5
.
ÛÛ5 6
IsNullOrEmpty
ÛÛ6 C
(
ÛÛC D
reader
ÛÛD J
[
ÛÛJ K
$str
ÛÛK P
]
ÛÛP Q
.
ÛÛQ R
ToString
ÛÛR Z
(
ÛÛZ [
)
ÛÛ[ \
)
ÛÛ\ ]
?
ÛÛ^ _
Convert
ÛÛ` g
.
ÛÛg h
ToDouble
ÛÛh p
(
ÛÛp q
reader
ÛÛq w
[
ÛÛw x
$str
ÛÛx }
]
ÛÛ} ~
.
ÛÛ~ 
ToStringÛÛ ‡
(ÛÛ‡ ˆ
)ÛÛˆ ‰
)ÛÛ‰ Š
:ÛÛ‹ Œ
$numÛÛ 
,ÛÛ 
Aug
ÜÜ( +
=
ÜÜ, -
!
ÜÜ. /
string
ÜÜ/ 5
.
ÜÜ5 6
IsNullOrEmpty
ÜÜ6 C
(
ÜÜC D
reader
ÜÜD J
[
ÜÜJ K
$str
ÜÜK P
]
ÜÜP Q
.
ÜÜQ R
ToString
ÜÜR Z
(
ÜÜZ [
)
ÜÜ[ \
)
ÜÜ\ ]
?
ÜÜ^ _
Convert
ÜÜ` g
.
ÜÜg h
ToDouble
ÜÜh p
(
ÜÜp q
reader
ÜÜq w
[
ÜÜw x
$str
ÜÜx }
]
ÜÜ} ~
.
ÜÜ~ 
ToStringÜÜ ‡
(ÜÜ‡ ˆ
)ÜÜˆ ‰
)ÜÜ‰ Š
:ÜÜ‹ Œ
$numÜÜ 
,ÜÜ 
Sep
İİ( +
=
İİ, -
!
İİ. /
string
İİ/ 5
.
İİ5 6
IsNullOrEmpty
İİ6 C
(
İİC D
reader
İİD J
[
İİJ K
$str
İİK P
]
İİP Q
.
İİQ R
ToString
İİR Z
(
İİZ [
)
İİ[ \
)
İİ\ ]
?
İİ^ _
Convert
İİ` g
.
İİg h
ToDouble
İİh p
(
İİp q
reader
İİq w
[
İİw x
$str
İİx }
]
İİ} ~
.
İİ~ 
ToStringİİ ‡
(İİ‡ ˆ
)İİˆ ‰
)İİ‰ Š
:İİ‹ Œ
$numİİ 
,İİ 
Oct
ŞŞ( +
=
ŞŞ, -
!
ŞŞ. /
string
ŞŞ/ 5
.
ŞŞ5 6
IsNullOrEmpty
ŞŞ6 C
(
ŞŞC D
reader
ŞŞD J
[
ŞŞJ K
$str
ŞŞK P
]
ŞŞP Q
.
ŞŞQ R
ToString
ŞŞR Z
(
ŞŞZ [
)
ŞŞ[ \
)
ŞŞ\ ]
?
ŞŞ^ _
Convert
ŞŞ` g
.
ŞŞg h
ToDouble
ŞŞh p
(
ŞŞp q
reader
ŞŞq w
[
ŞŞw x
$str
ŞŞx }
]
ŞŞ} ~
.
ŞŞ~ 
ToStringŞŞ ‡
(ŞŞ‡ ˆ
)ŞŞˆ ‰
)ŞŞ‰ Š
:ŞŞ‹ Œ
$numŞŞ 
,ŞŞ 
Nov
ßß( +
=
ßß, -
!
ßß. /
string
ßß/ 5
.
ßß5 6
IsNullOrEmpty
ßß6 C
(
ßßC D
reader
ßßD J
[
ßßJ K
$str
ßßK P
]
ßßP Q
.
ßßQ R
ToString
ßßR Z
(
ßßZ [
)
ßß[ \
)
ßß\ ]
?
ßß^ _
Convert
ßß` g
.
ßßg h
ToDouble
ßßh p
(
ßßp q
reader
ßßq w
[
ßßw x
$str
ßßx }
]
ßß} ~
.
ßß~ 
ToStringßß ‡
(ßß‡ ˆ
)ßßˆ ‰
)ßß‰ Š
:ßß‹ Œ
$numßß 
,ßß 
Dec
àà( +
=
àà, -
!
àà. /
string
àà/ 5
.
àà5 6
IsNullOrEmpty
àà6 C
(
ààC D
reader
ààD J
[
ààJ K
$str
ààK P
]
ààP Q
.
ààQ R
ToString
ààR Z
(
ààZ [
)
àà[ \
)
àà\ ]
?
àà^ _
Convert
àà` g
.
ààg h
ToDouble
ààh p
(
ààp q
reader
ààq w
[
ààw x
$str
ààx }
]
àà} ~
.
àà~ 
ToStringàà ‡
(àà‡ ˆ
)ààˆ ‰
)àà‰ Š
:àà‹ Œ
$numàà 
}
áá$ %
)
ââ$ %
;
ââ% &
}
ãã 
}
ää 
}
åå 
}
ææ 
}
èè 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
êê 
Logger
ëë 
.
ëë 
Log
ëë 
(
ëë 
$str
ëë :
+
ëë; <
ex
ëë= ?
.
ëë? @
ToString
ëë@ H
(
ëëH I
)
ëëI J
)
ëëJ K
;
ëëK L
}
ìì 
return
íí 
consumptionList
íí "
;
íí" #
}
îî 	
public
öö 
List
öö 
<
öö 
AnnualDetails
öö !
>
öö! "
GetSolidWaste
öö# 0
(
öö0 1
int
öö1 4
year
öö5 9
,
öö9 :
string
öö; A
	procedure
ööB K
)
ööK L
{
÷÷ 	
string
øø 
procedureName
øø  
=
øø! "#
StoreProcedureUtility
øø# 8
.
øø8 9$
storedProcedureMapping
øø9 O
.
øøO P
ContainsKey
øøP [
(
øø[ \
	procedure
øø\ e
)
øøe f
?
øøg h#
StoreProcedureUtility
øøi ~
.
øø~ %
storedProcedureMappingøø •
[øø• –
	procedureøø– Ÿ
]øøŸ  
:øø¡ ¢
$strøø£ ¥
;øø¥ ¦
return
úú !
GetSolidWasteValues
úú &
(
úú& '
year
úú' +
,
úú+ ,
procedureName
úú- :
)
úú: ;
;
úú; <
}
ûû 	
private
ÿÿ 
List
ÿÿ 
<
ÿÿ 
AnnualDetails
ÿÿ "
>
ÿÿ" #!
GetSolidWasteValues
ÿÿ$ 7
(
ÿÿ7 8
int
ÿÿ8 ;
year
ÿÿ< @
,
ÿÿ@ A
string
ÿÿB H
procedureName
ÿÿI V
)
ÿÿV W
{
€€ 	
List
 
<
 
AnnualDetails
 
>
 
consumptionList
  /
=
0 1
new
2 5
List
6 :
<
: ;
AnnualDetails
; H
>
H I
(
I J
)
J K
;
K L
try
‚‚ 
{
ƒƒ 
using
„„ 
(
„„ 
SqlConnection
„„ $
sqlConn
„„% ,
=
„„- .

SqlConnect
„„/ 9
(
„„9 :
)
„„: ;
)
„„; <
{
…… 
using
†† 
(
†† 

SqlCommand
†† %
cmd
††& )
=
††* +
new
††, /

SqlCommand
††0 :
(
††: ;
procedureName
††; H
,
††H I
sqlConn
††J Q
)
††Q R
)
††R S
{
‡‡ 
cmd
ˆˆ 
.
ˆˆ 
CommandType
ˆˆ '
=
ˆˆ( )
CommandType
ˆˆ* 5
.
ˆˆ5 6
StoredProcedure
ˆˆ6 E
;
ˆˆE F
cmd
‰‰ 
.
‰‰ 

Parameters
‰‰ &
.
‰‰& '
AddWithValue
‰‰' 3
(
‰‰3 4
$str
‰‰4 ;
,
‰‰; <
year
‰‰= A
)
‰‰A B
;
‰‰B C
cmd
ŠŠ 
.
ŠŠ 

Parameters
ŠŠ &
.
ŠŠ& '
AddWithValue
ŠŠ' 3
(
ŠŠ3 4
$str
ŠŠ4 >
,
ŠŠ> ?
PlantId
ŠŠ@ G
)
ŠŠG H
;
ŠŠH I
using
ŒŒ 
(
ŒŒ 
SqlDataReader
ŒŒ ,
reader
ŒŒ- 3
=
ŒŒ4 5
cmd
ŒŒ6 9
.
ŒŒ9 :
ExecuteReader
ŒŒ: G
(
ŒŒG H
)
ŒŒH I
)
ŒŒI J
{
 
while
 !
(
" #
reader
# )
.
) *
Read
* .
(
. /
)
/ 0
)
0 1
{
 
consumptionList
  /
.
/ 0
Add
0 3
(
3 4
new
‘‘$ '
AnnualDetails
‘‘( 5
{
’’$ %
UOM
””( +
=
””, -
!
””. /
string
””/ 5
.
””5 6
IsNullOrEmpty
””6 C
(
””C D
reader
””D J
[
””J K
$str
””K P
]
””P Q
.
””Q R
ToString
””R Z
(
””Z [
)
””[ \
)
””\ ]
?
””^ _
reader
””` f
[
””f g
$str
””g l
]
””l m
.
””m n
ToString
””n v
(
””v w
)
””w x
:
””y z!
GetUpdatedCurrency””{ 
(”” 
)”” 
,”” 
UOMID
••( -
=
••. /

Enumerable
••0 :
.
••: ;
Range
••; @
(
••@ A
$num
••A B
,
••B C
reader
••D J
.
••J K

FieldCount
••K U
)
••U V
.
••V W
Select
••W ]
(
••] ^
i
••^ _
=>
••` b
reader
••c i
.
••i j
GetName
••j q
(
••q r
i
••r s
)
••s t
)
••t u
.
••u v
ToList
••v |
(
••| }
)
••} ~
.
••~ 
Contains•• ‡
(••‡ ˆ
$str••ˆ 
)•• 
&&••‘ “
!••” •
string••• ›
.••› œ
IsNullOrEmpty••œ ©
(••© ª
reader••ª °
[••° ±
$str••± ¸
]••¸ ¹
.••¹ º
ToString••º Â
(••Â Ã
)••Ã Ä
)••Ä Å
?••Æ Ç
Convert••È Ï
.••Ï Ğ
ToInt32••Ğ ×
(••× Ø
reader••Ø Ş
[••Ş ß
$str••ß æ
]••æ ç
.••ç è
ToString••è ğ
(••ğ ñ
)••ñ ò
)••ò ó
:••ô õ
$num••ö ÷
,••÷ ø
Jan
––( +
=
––, -
!
––. /
string
––/ 5
.
––5 6
IsNullOrEmpty
––6 C
(
––C D
reader
––D J
[
––J K
$str
––K P
]
––P Q
.
––Q R
ToString
––R Z
(
––Z [
)
––[ \
)
––\ ]
?
––^ _
Convert
––` g
.
––g h
ToDouble
––h p
(
––p q
reader
––q w
[
––w x
$str
––x }
]
––} ~
.
––~ 
ToString–– ‡
(––‡ ˆ
)––ˆ ‰
)––‰ Š
:––‹ Œ
$num–– 
,–– 
Feb
——( +
=
——, -
!
——. /
string
——/ 5
.
——5 6
IsNullOrEmpty
——6 C
(
——C D
reader
——D J
[
——J K
$str
——K P
]
——P Q
.
——Q R
ToString
——R Z
(
——Z [
)
——[ \
)
——\ ]
?
——^ _
Convert
——` g
.
——g h
ToDouble
——h p
(
——p q
reader
——q w
[
——w x
$str
——x }
]
——} ~
.
——~ 
ToString—— ‡
(——‡ ˆ
)——ˆ ‰
)——‰ Š
:——‹ Œ
$num—— 
,—— 
Mar
˜˜( +
=
˜˜, -
!
˜˜. /
string
˜˜/ 5
.
˜˜5 6
IsNullOrEmpty
˜˜6 C
(
˜˜C D
reader
˜˜D J
[
˜˜J K
$str
˜˜K P
]
˜˜P Q
.
˜˜Q R
ToString
˜˜R Z
(
˜˜Z [
)
˜˜[ \
)
˜˜\ ]
?
˜˜^ _
Convert
˜˜` g
.
˜˜g h
ToDouble
˜˜h p
(
˜˜p q
reader
˜˜q w
[
˜˜w x
$str
˜˜x }
]
˜˜} ~
.
˜˜~ 
ToString˜˜ ‡
(˜˜‡ ˆ
)˜˜ˆ ‰
)˜˜‰ Š
:˜˜‹ Œ
$num˜˜ 
,˜˜ 
Apr
™™( +
=
™™, -
!
™™. /
string
™™/ 5
.
™™5 6
IsNullOrEmpty
™™6 C
(
™™C D
reader
™™D J
[
™™J K
$str
™™K P
]
™™P Q
.
™™Q R
ToString
™™R Z
(
™™Z [
)
™™[ \
)
™™\ ]
?
™™^ _
Convert
™™` g
.
™™g h
ToDouble
™™h p
(
™™p q
reader
™™q w
[
™™w x
$str
™™x }
]
™™} ~
.
™™~ 
ToString™™ ‡
(™™‡ ˆ
)™™ˆ ‰
)™™‰ Š
:™™‹ Œ
$num™™ 
,™™ 
May
šš( +
=
šš, -
!
šš. /
string
šš/ 5
.
šš5 6
IsNullOrEmpty
šš6 C
(
ššC D
reader
ššD J
[
ššJ K
$str
ššK P
]
ššP Q
.
ššQ R
ToString
ššR Z
(
ššZ [
)
šš[ \
)
šš\ ]
?
šš^ _
Convert
šš` g
.
ššg h
ToDouble
ššh p
(
ššp q
reader
ššq w
[
ššw x
$str
ššx }
]
šš} ~
.
šš~ 
ToStringšš ‡
(šš‡ ˆ
)ššˆ ‰
)šš‰ Š
:šš‹ Œ
$numšš 
,šš 
Jun
››( +
=
››, -
!
››. /
string
››/ 5
.
››5 6
IsNullOrEmpty
››6 C
(
››C D
reader
››D J
[
››J K
$str
››K P
]
››P Q
.
››Q R
ToString
››R Z
(
››Z [
)
››[ \
)
››\ ]
?
››^ _
Convert
››` g
.
››g h
ToDouble
››h p
(
››p q
reader
››q w
[
››w x
$str
››x }
]
››} ~
.
››~ 
ToString›› ‡
(››‡ ˆ
)››ˆ ‰
)››‰ Š
:››‹ Œ
$num›› 
,›› 
Jul
œœ( +
=
œœ, -
!
œœ. /
string
œœ/ 5
.
œœ5 6
IsNullOrEmpty
œœ6 C
(
œœC D
reader
œœD J
[
œœJ K
$str
œœK P
]
œœP Q
.
œœQ R
ToString
œœR Z
(
œœZ [
)
œœ[ \
)
œœ\ ]
?
œœ^ _
Convert
œœ` g
.
œœg h
ToDouble
œœh p
(
œœp q
reader
œœq w
[
œœw x
$str
œœx }
]
œœ} ~
.
œœ~ 
ToStringœœ ‡
(œœ‡ ˆ
)œœˆ ‰
)œœ‰ Š
:œœ‹ Œ
$numœœ 
,œœ 
Aug
( +
=
, -
!
. /
string
/ 5
.
5 6
IsNullOrEmpty
6 C
(
C D
reader
D J
[
J K
$str
K P
]
P Q
.
Q R
ToString
R Z
(
Z [
)
[ \
)
\ ]
?
^ _
Convert
` g
.
g h
ToDouble
h p
(
p q
reader
q w
[
w x
$str
x }
]
} ~
.
~ 
ToString ‡
(‡ ˆ
)ˆ ‰
)‰ Š
:‹ Œ
$num 
, 
Sep
( +
=
, -
!
. /
string
/ 5
.
5 6
IsNullOrEmpty
6 C
(
C D
reader
D J
[
J K
$str
K P
]
P Q
.
Q R
ToString
R Z
(
Z [
)
[ \
)
\ ]
?
^ _
Convert
` g
.
g h
ToDouble
h p
(
p q
reader
q w
[
w x
$str
x }
]
} ~
.
~ 
ToString ‡
(‡ ˆ
)ˆ ‰
)‰ Š
:‹ Œ
$num 
, 
Oct
ŸŸ( +
=
ŸŸ, -
!
ŸŸ. /
string
ŸŸ/ 5
.
ŸŸ5 6
IsNullOrEmpty
ŸŸ6 C
(
ŸŸC D
reader
ŸŸD J
[
ŸŸJ K
$str
ŸŸK P
]
ŸŸP Q
.
ŸŸQ R
ToString
ŸŸR Z
(
ŸŸZ [
)
ŸŸ[ \
)
ŸŸ\ ]
?
ŸŸ^ _
Convert
ŸŸ` g
.
ŸŸg h
ToDouble
ŸŸh p
(
ŸŸp q
reader
ŸŸq w
[
ŸŸw x
$str
ŸŸx }
]
ŸŸ} ~
.
ŸŸ~ 
ToStringŸŸ ‡
(ŸŸ‡ ˆ
)ŸŸˆ ‰
)ŸŸ‰ Š
:ŸŸ‹ Œ
$numŸŸ 
,ŸŸ 
Nov
  ( +
=
  , -
!
  . /
string
  / 5
.
  5 6
IsNullOrEmpty
  6 C
(
  C D
reader
  D J
[
  J K
$str
  K P
]
  P Q
.
  Q R
ToString
  R Z
(
  Z [
)
  [ \
)
  \ ]
?
  ^ _
Convert
  ` g
.
  g h
ToDouble
  h p
(
  p q
reader
  q w
[
  w x
$str
  x }
]
  } ~
.
  ~ 
ToString   ‡
(  ‡ ˆ
)  ˆ ‰
)  ‰ Š
:  ‹ Œ
$num   
,   
Dec
¡¡( +
=
¡¡, -
!
¡¡. /
string
¡¡/ 5
.
¡¡5 6
IsNullOrEmpty
¡¡6 C
(
¡¡C D
reader
¡¡D J
[
¡¡J K
$str
¡¡K P
]
¡¡P Q
.
¡¡Q R
ToString
¡¡R Z
(
¡¡Z [
)
¡¡[ \
)
¡¡\ ]
?
¡¡^ _
Convert
¡¡` g
.
¡¡g h
ToDouble
¡¡h p
(
¡¡p q
reader
¡¡q w
[
¡¡w x
$str
¡¡x }
]
¡¡} ~
.
¡¡~ 
ToString¡¡ ‡
(¡¡‡ ˆ
)¡¡ˆ ‰
)¡¡‰ Š
:¡¡‹ Œ
$num¡¡ 
}
¢¢$ %
)
££$ %
;
££% &
}
¤¤ 
}
¥¥ 
}
¦¦ 
}
§§ 
}
©© 
catch
ªª 
(
ªª 
	Exception
ªª 
ex
ªª 
)
ªª  
{
«« 
Logger
¬¬ 
.
¬¬ 
Log
¬¬ 
(
¬¬ 
$str
¬¬ :
+
¬¬; <
ex
¬¬= ?
.
¬¬? @
ToString
¬¬@ H
(
¬¬H I
)
¬¬I J
)
¬¬J K
;
¬¬K L
}
­­ 
return
®® 
consumptionList
®® "
;
®®" #
}
¯¯ 	
public
µµ 
List
µµ 
<
µµ 
AnnualDetails
µµ !
>
µµ! "!
GetProductionActual
µµ# 6
(
µµ6 7
int
µµ7 :
year
µµ; ?
,
µµ? @
string
µµA G
	procedure
µµH Q
)
µµQ R
{
¶¶ 	
string
·· 
procedureName
··  
=
··! "#
StoreProcedureUtility
··# 8
.
··8 9$
storedProcedureMapping
··9 O
.
··O P
ContainsKey
··P [
(
··[ \
	procedure
··\ e
)
··e f
?
··g h#
StoreProcedureUtility
··i ~
.
··~ %
storedProcedureMapping·· •
[··• –
	procedure··– Ÿ
]··Ÿ  
:··¡ ¢
$str··£ ¥
;··¥ ¦
List
¹¹ 
<
¹¹ 
AnnualDetails
¹¹ 
>
¹¹ 
prodcostList
¹¹  ,
=
¹¹- .
new
¹¹/ 2
List
¹¹3 7
<
¹¹7 8
AnnualDetails
¹¹8 E
>
¹¹E F
(
¹¹F G
)
¹¹G H
;
¹¹H I
try
ºº 
{
»» 
using
¼¼ 
(
¼¼ 
SqlConnection
¼¼ $
sqlConn
¼¼% ,
=
¼¼- .

SqlConnect
¼¼/ 9
(
¼¼9 :
)
¼¼: ;
)
¼¼; <
{
½½ 
using
¾¾ 
(
¾¾ 

SqlCommand
¾¾ %
cmd
¾¾& )
=
¾¾* +
new
¾¾, /

SqlCommand
¾¾0 :
(
¾¾: ;
procedureName
¾¾; H
,
¾¾H I
sqlConn
¾¾J Q
)
¾¾Q R
)
¾¾R S
{
¿¿ 
cmd
ÀÀ 
.
ÀÀ 
CommandType
ÀÀ '
=
ÀÀ( )
CommandType
ÀÀ* 5
.
ÀÀ5 6
StoredProcedure
ÀÀ6 E
;
ÀÀE F
cmd
ÁÁ 
.
ÁÁ 

Parameters
ÁÁ &
.
ÁÁ& '
AddWithValue
ÁÁ' 3
(
ÁÁ3 4
$str
ÁÁ4 ;
,
ÁÁ; <
year
ÁÁ= A
)
ÁÁA B
;
ÁÁB C
cmd
ÂÂ 
.
ÂÂ 

Parameters
ÂÂ &
.
ÂÂ& '
AddWithValue
ÂÂ' 3
(
ÂÂ3 4
$str
ÂÂ4 >
,
ÂÂ> ?
PlantId
ÂÂ@ G
)
ÂÂG H
;
ÂÂH I
using
ÄÄ 
(
ÄÄ 
SqlDataReader
ÄÄ ,
reader
ÄÄ- 3
=
ÄÄ4 5
cmd
ÄÄ6 9
.
ÄÄ9 :
ExecuteReader
ÄÄ: G
(
ÄÄG H
)
ÄÄH I
)
ÄÄI J
{
ÅÅ 
while
ÆÆ !
(
ÆÆ" #
reader
ÆÆ# )
.
ÆÆ) *
Read
ÆÆ* .
(
ÆÆ. /
)
ÆÆ/ 0
)
ÆÆ0 1
{
ÇÇ 
prodcostList
ÈÈ  ,
.
ÈÈ, -
Add
ÈÈ- 0
(
ÈÈ0 1
new
ÉÉ$ '
AnnualDetails
ÉÉ( 5
{
ÊÊ$ %
DetailsName
ËË( 3
=
ËË4 5
reader
ËË6 <
[
ËË< =
$str
ËË= I
]
ËËI J
.
ËËJ K
ToString
ËËK S
(
ËËS T
)
ËËT U
,
ËËU V
	DetailsId
ÌÌ( 1
=
ÌÌ2 3
!
ÌÌ4 5
string
ÌÌ5 ;
.
ÌÌ; <
IsNullOrEmpty
ÌÌ< I
(
ÌÌI J
reader
ÌÌJ P
[
ÌÌP Q
$str
ÌÌQ Z
]
ÌÌZ [
.
ÌÌ[ \
ToString
ÌÌ\ d
(
ÌÌd e
)
ÌÌe f
)
ÌÌf g
?
ÌÌh i
Convert
ÌÌj q
.
ÌÌq r
ToInt32
ÌÌr y
(
ÌÌy z
readerÌÌz €
[ÌÌ€ 
$strÌÌ Š
]ÌÌŠ ‹
.ÌÌ‹ Œ
ToStringÌÌŒ ”
(ÌÌ” •
)ÌÌ• –
)ÌÌ– —
:ÌÌ˜ ™
$numÌÌš ›
,ÌÌ› œ
UOM
ÍÍ( +
=
ÍÍ, -
!
ÍÍ. /
string
ÍÍ/ 5
.
ÍÍ5 6
IsNullOrEmpty
ÍÍ6 C
(
ÍÍC D
reader
ÍÍD J
[
ÍÍJ K
$str
ÍÍK P
]
ÍÍP Q
.
ÍÍQ R
ToString
ÍÍR Z
(
ÍÍZ [
)
ÍÍ[ \
)
ÍÍ\ ]
?
ÍÍ^ _
reader
ÍÍ` f
[
ÍÍf g
$str
ÍÍg l
]
ÍÍl m
.
ÍÍm n
ToString
ÍÍn v
(
ÍÍv w
)
ÍÍw x
:
ÍÍy z
$strÍÍ{ ‚
,ÍÍ‚ ƒ
UOMID
ÎÎ( -
=
ÎÎ. /
!
ÎÎ0 1
string
ÎÎ1 7
.
ÎÎ7 8
IsNullOrEmpty
ÎÎ8 E
(
ÎÎE F
reader
ÎÎF L
[
ÎÎL M
$str
ÎÎM T
]
ÎÎT U
.
ÎÎU V
ToString
ÎÎV ^
(
ÎÎ^ _
)
ÎÎ_ `
)
ÎÎ` a
?
ÎÎb c
Convert
ÎÎd k
.
ÎÎk l
ToInt32
ÎÎl s
(
ÎÎs t
reader
ÎÎt z
[
ÎÎz {
$strÎÎ{ ‚
]ÎÎ‚ ƒ
.ÎÎƒ „
ToStringÎÎ„ Œ
(ÎÎŒ 
)ÎÎ 
)ÎÎ 
:ÎÎ ‘
$numÎÎ’ “
,ÎÎ“ ”
Jan
ÏÏ( +
=
ÏÏ, -
!
ÏÏ. /
string
ÏÏ/ 5
.
ÏÏ5 6
IsNullOrEmpty
ÏÏ6 C
(
ÏÏC D
reader
ÏÏD J
[
ÏÏJ K
$str
ÏÏK P
]
ÏÏP Q
.
ÏÏQ R
ToString
ÏÏR Z
(
ÏÏZ [
)
ÏÏ[ \
)
ÏÏ\ ]
?
ÏÏ^ _
Convert
ÏÏ` g
.
ÏÏg h
ToDouble
ÏÏh p
(
ÏÏp q
reader
ÏÏq w
[
ÏÏw x
$str
ÏÏx }
]
ÏÏ} ~
.
ÏÏ~ 
ToStringÏÏ ‡
(ÏÏ‡ ˆ
)ÏÏˆ ‰
)ÏÏ‰ Š
:ÏÏ‹ Œ
$numÏÏ 
,ÏÏ 
Feb
ĞĞ( +
=
ĞĞ, -
!
ĞĞ. /
string
ĞĞ/ 5
.
ĞĞ5 6
IsNullOrEmpty
ĞĞ6 C
(
ĞĞC D
reader
ĞĞD J
[
ĞĞJ K
$str
ĞĞK P
]
ĞĞP Q
.
ĞĞQ R
ToString
ĞĞR Z
(
ĞĞZ [
)
ĞĞ[ \
)
ĞĞ\ ]
?
ĞĞ^ _
Convert
ĞĞ` g
.
ĞĞg h
ToDouble
ĞĞh p
(
ĞĞp q
reader
ĞĞq w
[
ĞĞw x
$str
ĞĞx }
]
ĞĞ} ~
.
ĞĞ~ 
ToStringĞĞ ‡
(ĞĞ‡ ˆ
)ĞĞˆ ‰
)ĞĞ‰ Š
:ĞĞ‹ Œ
$numĞĞ 
,ĞĞ 
Mar
ÑÑ( +
=
ÑÑ, -
!
ÑÑ. /
string
ÑÑ/ 5
.
ÑÑ5 6
IsNullOrEmpty
ÑÑ6 C
(
ÑÑC D
reader
ÑÑD J
[
ÑÑJ K
$str
ÑÑK P
]
ÑÑP Q
.
ÑÑQ R
ToString
ÑÑR Z
(
ÑÑZ [
)
ÑÑ[ \
)
ÑÑ\ ]
?
ÑÑ^ _
Convert
ÑÑ` g
.
ÑÑg h
ToDouble
ÑÑh p
(
ÑÑp q
reader
ÑÑq w
[
ÑÑw x
$str
ÑÑx }
]
ÑÑ} ~
.
ÑÑ~ 
ToStringÑÑ ‡
(ÑÑ‡ ˆ
)ÑÑˆ ‰
)ÑÑ‰ Š
:ÑÑ‹ Œ
$numÑÑ 
,ÑÑ 
Apr
ÒÒ( +
=
ÒÒ, -
!
ÒÒ. /
string
ÒÒ/ 5
.
ÒÒ5 6
IsNullOrEmpty
ÒÒ6 C
(
ÒÒC D
reader
ÒÒD J
[
ÒÒJ K
$str
ÒÒK P
]
ÒÒP Q
.
ÒÒQ R
ToString
ÒÒR Z
(
ÒÒZ [
)
ÒÒ[ \
)
ÒÒ\ ]
?
ÒÒ^ _
Convert
ÒÒ` g
.
ÒÒg h
ToDouble
ÒÒh p
(
ÒÒp q
reader
ÒÒq w
[
ÒÒw x
$str
ÒÒx }
]
ÒÒ} ~
.
ÒÒ~ 
ToStringÒÒ ‡
(ÒÒ‡ ˆ
)ÒÒˆ ‰
)ÒÒ‰ Š
:ÒÒ‹ Œ
$numÒÒ 
,ÒÒ 
May
ÓÓ( +
=
ÓÓ, -
!
ÓÓ. /
string
ÓÓ/ 5
.
ÓÓ5 6
IsNullOrEmpty
ÓÓ6 C
(
ÓÓC D
reader
ÓÓD J
[
ÓÓJ K
$str
ÓÓK P
]
ÓÓP Q
.
ÓÓQ R
ToString
ÓÓR Z
(
ÓÓZ [
)
ÓÓ[ \
)
ÓÓ\ ]
?
ÓÓ^ _
Convert
ÓÓ` g
.
ÓÓg h
ToDouble
ÓÓh p
(
ÓÓp q
reader
ÓÓq w
[
ÓÓw x
$str
ÓÓx }
]
ÓÓ} ~
.
ÓÓ~ 
ToStringÓÓ ‡
(ÓÓ‡ ˆ
)ÓÓˆ ‰
)ÓÓ‰ Š
:ÓÓ‹ Œ
$numÓÓ 
,ÓÓ 
Jun
ÔÔ( +
=
ÔÔ, -
!
ÔÔ. /
string
ÔÔ/ 5
.
ÔÔ5 6
IsNullOrEmpty
ÔÔ6 C
(
ÔÔC D
reader
ÔÔD J
[
ÔÔJ K
$str
ÔÔK P
]
ÔÔP Q
.
ÔÔQ R
ToString
ÔÔR Z
(
ÔÔZ [
)
ÔÔ[ \
)
ÔÔ\ ]
?
ÔÔ^ _
Convert
ÔÔ` g
.
ÔÔg h
ToDouble
ÔÔh p
(
ÔÔp q
reader
ÔÔq w
[
ÔÔw x
$str
ÔÔx }
]
ÔÔ} ~
.
ÔÔ~ 
ToStringÔÔ ‡
(ÔÔ‡ ˆ
)ÔÔˆ ‰
)ÔÔ‰ Š
:ÔÔ‹ Œ
$numÔÔ 
,ÔÔ 
Jul
ÕÕ( +
=
ÕÕ, -
!
ÕÕ. /
string
ÕÕ/ 5
.
ÕÕ5 6
IsNullOrEmpty
ÕÕ6 C
(
ÕÕC D
reader
ÕÕD J
[
ÕÕJ K
$str
ÕÕK P
]
ÕÕP Q
.
ÕÕQ R
ToString
ÕÕR Z
(
ÕÕZ [
)
ÕÕ[ \
)
ÕÕ\ ]
?
ÕÕ^ _
Convert
ÕÕ` g
.
ÕÕg h
ToDouble
ÕÕh p
(
ÕÕp q
reader
ÕÕq w
[
ÕÕw x
$str
ÕÕx }
]
ÕÕ} ~
.
ÕÕ~ 
ToStringÕÕ ‡
(ÕÕ‡ ˆ
)ÕÕˆ ‰
)ÕÕ‰ Š
:ÕÕ‹ Œ
$numÕÕ 
,ÕÕ 
Aug
ÖÖ( +
=
ÖÖ, -
!
ÖÖ. /
string
ÖÖ/ 5
.
ÖÖ5 6
IsNullOrEmpty
ÖÖ6 C
(
ÖÖC D
reader
ÖÖD J
[
ÖÖJ K
$str
ÖÖK P
]
ÖÖP Q
.
ÖÖQ R
ToString
ÖÖR Z
(
ÖÖZ [
)
ÖÖ[ \
)
ÖÖ\ ]
?
ÖÖ^ _
Convert
ÖÖ` g
.
ÖÖg h
ToDouble
ÖÖh p
(
ÖÖp q
reader
ÖÖq w
[
ÖÖw x
$str
ÖÖx }
]
ÖÖ} ~
.
ÖÖ~ 
ToStringÖÖ ‡
(ÖÖ‡ ˆ
)ÖÖˆ ‰
)ÖÖ‰ Š
:ÖÖ‹ Œ
$numÖÖ 
,ÖÖ 
Sep
××( +
=
××, -
!
××. /
string
××/ 5
.
××5 6
IsNullOrEmpty
××6 C
(
××C D
reader
××D J
[
××J K
$str
××K P
]
××P Q
.
××Q R
ToString
××R Z
(
××Z [
)
××[ \
)
××\ ]
?
××^ _
Convert
××` g
.
××g h
ToDouble
××h p
(
××p q
reader
××q w
[
××w x
$str
××x }
]
××} ~
.
××~ 
ToString×× ‡
(××‡ ˆ
)××ˆ ‰
)××‰ Š
:××‹ Œ
$num×× 
,×× 
Oct
ØØ( +
=
ØØ, -
!
ØØ. /
string
ØØ/ 5
.
ØØ5 6
IsNullOrEmpty
ØØ6 C
(
ØØC D
reader
ØØD J
[
ØØJ K
$str
ØØK P
]
ØØP Q
.
ØØQ R
ToString
ØØR Z
(
ØØZ [
)
ØØ[ \
)
ØØ\ ]
?
ØØ^ _
Convert
ØØ` g
.
ØØg h
ToDouble
ØØh p
(
ØØp q
reader
ØØq w
[
ØØw x
$str
ØØx }
]
ØØ} ~
.
ØØ~ 
ToStringØØ ‡
(ØØ‡ ˆ
)ØØˆ ‰
)ØØ‰ Š
:ØØ‹ Œ
$numØØ 
,ØØ 
Nov
ÙÙ( +
=
ÙÙ, -
!
ÙÙ. /
string
ÙÙ/ 5
.
ÙÙ5 6
IsNullOrEmpty
ÙÙ6 C
(
ÙÙC D
reader
ÙÙD J
[
ÙÙJ K
$str
ÙÙK P
]
ÙÙP Q
.
ÙÙQ R
ToString
ÙÙR Z
(
ÙÙZ [
)
ÙÙ[ \
)
ÙÙ\ ]
?
ÙÙ^ _
Convert
ÙÙ` g
.
ÙÙg h
ToDouble
ÙÙh p
(
ÙÙp q
reader
ÙÙq w
[
ÙÙw x
$str
ÙÙx }
]
ÙÙ} ~
.
ÙÙ~ 
ToStringÙÙ ‡
(ÙÙ‡ ˆ
)ÙÙˆ ‰
)ÙÙ‰ Š
:ÙÙ‹ Œ
$numÙÙ 
,ÙÙ 
Dec
ÚÚ( +
=
ÚÚ, -
!
ÚÚ. /
string
ÚÚ/ 5
.
ÚÚ5 6
IsNullOrEmpty
ÚÚ6 C
(
ÚÚC D
reader
ÚÚD J
[
ÚÚJ K
$str
ÚÚK P
]
ÚÚP Q
.
ÚÚQ R
ToString
ÚÚR Z
(
ÚÚZ [
)
ÚÚ[ \
)
ÚÚ\ ]
?
ÚÚ^ _
Convert
ÚÚ` g
.
ÚÚg h
ToDouble
ÚÚh p
(
ÚÚp q
reader
ÚÚq w
[
ÚÚw x
$str
ÚÚx }
]
ÚÚ} ~
.
ÚÚ~ 
ToStringÚÚ ‡
(ÚÚ‡ ˆ
)ÚÚˆ ‰
)ÚÚ‰ Š
:ÚÚ‹ Œ
$numÚÚ 
}
ÛÛ$ %
)
ÜÜ$ %
;
ÜÜ% &
}
İİ 
}
ŞŞ 
}
ßß 
}
àà 
}
ââ 
catch
ãã 
(
ãã 
	Exception
ãã 
ex
ãã 
)
ãã  
{
ää 
Logger
åå 
.
åå 
Log
åå 
(
åå 
$str
åå 9
+
åå: ;
ex
åå< >
.
åå> ?
ToString
åå? G
(
ååG H
)
ååH I
)
ååI J
;
ååJ K
}
ææ 
return
çç 
prodcostList
çç 
;
çç  
}
èè 	
public
êê 
List
êê 
<
êê  
MonthlyConsumption
êê &
>
êê& '"
GetMonthlySolidwaste
êê( <
(
êê< =
int
êê= @
yearId
êêA G
,
êêG H
int
êêI L
monthId
êêM T
)
êêT U
{
ëë 	
List
ìì 
<
ìì  
MonthlyConsumption
ìì #
>
ìì# $#
monthlysolidwasteList
ìì% :
=
ìì; <
new
ìì= @
List
ììA E
<
ììE F 
MonthlyConsumption
ììF X
>
ììX Y
(
ììY Z
)
ììZ [
;
ìì[ \
try
íí 
{
îî 
using
ïï 
(
ïï 
SqlConnection
ïï $
sqlConn
ïï% ,
=
ïï- .

SqlConnect
ïï/ 9
(
ïï9 :
)
ïï: ;
)
ïï; <
{
ğğ 
using
ññ 
(
ññ 

SqlCommand
ññ %
cmd
ññ& )
=
ññ* +
new
ññ, /

SqlCommand
ññ0 :
(
ññ: ;
$str
ññ; U
,
ññU V
sqlConn
ññW ^
)
ññ^ _
)
ññ_ `
{
òò 
cmd
óó 
.
óó 
CommandType
óó '
=
óó( )
CommandType
óó* 5
.
óó5 6
StoredProcedure
óó6 E
;
óóE F
cmd
ôô 
.
ôô 

Parameters
ôô &
.
ôô& '
AddWithValue
ôô' 3
(
ôô3 4
$str
ôô4 =
,
ôô= >
yearId
ôô? E
)
ôôE F
;
ôôF G
cmd
õõ 
.
õõ 

Parameters
õõ &
.
õõ& '
AddWithValue
õõ' 3
(
õõ3 4
$str
õõ4 >
,
õõ> ?
monthId
õõ@ G
)
õõG H
;
õõH I
cmd
öö 
.
öö 

Parameters
öö &
.
öö& '
AddWithValue
öö' 3
(
öö3 4
$str
öö4 >
,
öö> ?
PlantId
öö@ G
)
ööG H
;
ööH I
using
øø 
(
øø 
SqlDataReader
øø ,
reader
øø- 3
=
øø4 5
cmd
øø6 9
.
øø9 :
ExecuteReader
øø: G
(
øøG H
)
øøH I
)
øøI J
{
ùù 
while
úú !
(
úú" #
reader
úú# )
.
úú) *
Read
úú* .
(
úú. /
)
úú/ 0
)
úú0 1
{
ûû #
monthlysolidwasteList
üü  5
.
üü5 6
Add
üü6 9
(
üü9 :
new
ıı$ ' 
MonthlyConsumption
ıı( :
{
şş$ %
WAGES
ÿÿ( -
=
ÿÿ. /
!
ÿÿ0 1
string
ÿÿ1 7
.
ÿÿ7 8
IsNullOrEmpty
ÿÿ8 E
(
ÿÿE F
reader
ÿÿF L
[
ÿÿL M
$str
ÿÿM T
]
ÿÿT U
.
ÿÿU V
ToString
ÿÿV ^
(
ÿÿ^ _
)
ÿÿ_ `
)
ÿÿ` a
?
ÿÿb c
reader
ÿÿd j
[
ÿÿj k
$str
ÿÿk r
]
ÿÿr s
.
ÿÿs t
ToString
ÿÿt |
(
ÿÿ| }
)
ÿÿ} ~
:ÿÿ €
$strÿÿ ˆ
,ÿÿˆ ‰
WagesId
€€( /
=
€€0 1
!
€€2 3
string
€€3 9
.
€€9 :
IsNullOrEmpty
€€: G
(
€€G H
reader
€€H N
[
€€N O
$str
€€O X
]
€€X Y
.
€€Y Z
ToString
€€Z b
(
€€b c
)
€€c d
)
€€d e
?
€€f g
Convert
€€h o
.
€€o p
ToInt32
€€p w
(
€€w x
reader
€€x ~
[
€€~ 
$str€€ ˆ
]€€ˆ ‰
.€€‰ Š
ToString€€Š ’
(€€’ “
)€€“ ”
)€€” •
:€€– —
$num€€˜ ™
,€€™ š
Consumption
( 3
=
4 5
!
6 7
string
7 =
.
= >
IsNullOrEmpty
> K
(
K L
reader
L R
[
R S
$str
S _
]
_ `
.
` a
ToString
a i
(
i j
)
j k
)
k l
?
m n
Convert
o v
.
v w
ToDouble
w 
( €
reader€ †
[† ‡
$str‡ “
]“ ”
.” •
ToString• 
( 
) Ÿ
)Ÿ  
:¡ ¢
$num£ ¤
,¤ ¥
UOM
‚‚( +
=
‚‚, -
reader
‚‚. 4
[
‚‚4 5
$str
‚‚5 :
]
‚‚: ;
.
‚‚; <
ToString
‚‚< D
(
‚‚D E
)
‚‚E F
,
‚‚F G
UOMID
ƒƒ( -
=
ƒƒ. /
Convert
ƒƒ0 7
.
ƒƒ7 8
ToInt32
ƒƒ8 ?
(
ƒƒ? @
reader
ƒƒ@ F
[
ƒƒF G
$str
ƒƒG N
]
ƒƒN O
.
ƒƒO P
ToString
ƒƒP X
(
ƒƒX Y
)
ƒƒY Z
)
ƒƒZ [
,
ƒƒ[ \
Cost
„„( ,
=
„„- .
!
„„/ 0
string
„„0 6
.
„„6 7
IsNullOrEmpty
„„7 D
(
„„D E
reader
„„E K
[
„„K L
$str
„„L \
]
„„\ ]
.
„„] ^
ToString
„„^ f
(
„„f g
)
„„g h
)
„„h i
?
„„j k
Convert
„„l s
.
„„s t
ToDouble
„„t |
(
„„| }
reader„„} ƒ
[„„ƒ „
$str„„„ ”
]„„” •
.„„• –
ToString„„– 
(„„ Ÿ
)„„Ÿ  
)„„  ¡
:„„¢ £
$num„„¤ ¥
}
……$ %
)
††$ %
;
††% &
}
‡‡ 
}
ˆˆ 
}
‰‰ 
}
ŠŠ 
}
ŒŒ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
 
Logger
 
.
 
Log
 
(
 
$str
 ;
+
< =
ex
> @
.
@ A
ToString
A I
(
I J
)
J K
)
K L
;
L M
}
 
return
‘‘ #
monthlysolidwasteList
‘‘ (
;
‘‘( )
}
’’ 	
public
—— 
List
—— 
<
—— 
Details
—— 
>
—— 
GetDepartment
—— *
(
——* +
)
——+ ,
{
˜˜ 	
List
™™ 
<
™™ 
Details
™™ 
>
™™ 
deptList
™™ "
=
™™# $
new
™™% (
List
™™) -
<
™™- .
Details
™™. 5
>
™™5 6
(
™™6 7
)
™™7 8
;
™™8 9
try
šš 
{
›› 
using
œœ 
(
œœ 
SqlConnection
œœ $
sqlConn
œœ% ,
=
œœ- .

SqlConnect
œœ/ 9
(
œœ9 :
)
œœ: ;
)
œœ; <
{
 
using
 
(
 

SqlCommand
 %
cmd
& )
=
* +
new
, /

SqlCommand
0 :
(
: ;
$str
; J
,
J K
sqlConn
L S
)
S T
)
T U
{
ŸŸ 
cmd
   
.
   
CommandType
   '
=
  ( )
CommandType
  * 5
.
  5 6
StoredProcedure
  6 E
;
  E F
cmd
¡¡ 
.
¡¡ 

Parameters
¡¡ &
.
¡¡& '
AddWithValue
¡¡' 3
(
¡¡3 4
$str
¡¡4 >
,
¡¡> ?
PlantId
¡¡@ G
)
¡¡G H
;
¡¡H I
using
¢¢ 
(
¢¢ 
SqlDataReader
¢¢ ,
reader
¢¢- 3
=
¢¢4 5
cmd
¢¢6 9
.
¢¢9 :
ExecuteReader
¢¢: G
(
¢¢G H
)
¢¢H I
)
¢¢I J
{
££ 
while
¤¤ !
(
¤¤" #
reader
¤¤# )
.
¤¤) *
Read
¤¤* .
(
¤¤. /
)
¤¤/ 0
)
¤¤0 1
{
¥¥ 
deptList
¦¦  (
.
¦¦( )
Add
¦¦) ,
(
¦¦, -
new
§§$ '
Details
§§( /
{
¨¨$ %
ID
©©( *
=
©©+ ,
Convert
©©- 4
.
©©4 5
ToInt32
©©5 <
(
©©< =
reader
©©= C
[
©©C D
$str
©©D H
]
©©H I
.
©©I J
ToString
©©J R
(
©©R S
)
©©S T
)
©©T U
,
©©U V
Name
ªª( ,
=
ªª- .
reader
ªª/ 5
[
ªª5 6
$str
ªª6 <
]
ªª< =
.
ªª= >
ToString
ªª> F
(
ªªF G
)
ªªG H
}
««$ %
)
­­  !
;
­­! "
}
®® 
}
¯¯ 
}
°° 
}
±± 
}
³³ 
catch
´´ 
(
´´ 
	Exception
´´ 
ex
´´ 
)
´´  
{
µµ 
Logger
¶¶ 
.
¶¶ 
Log
¶¶ 
(
¶¶ 
$str
¶¶ 3
+
¶¶4 5
ex
¶¶6 8
.
¶¶8 9
ToString
¶¶9 A
(
¶¶A B
)
¶¶B C
)
¶¶C D
;
¶¶D E
}
·· 
return
¸¸ 
deptList
¸¸ 
;
¸¸ 
}
¹¹ 	
public
¿¿ 
List
¿¿ 
<
¿¿ 
string
¿¿ 
>
¿¿ 
GetMacID
¿¿ $
(
¿¿$ %
)
¿¿% &
{
ÀÀ 	
List
ÁÁ 
<
ÁÁ 
string
ÁÁ 
>
ÁÁ 
	macIDList
ÁÁ "
=
ÁÁ# $
new
ÁÁ% (
List
ÁÁ) -
<
ÁÁ- .
string
ÁÁ. 4
>
ÁÁ4 5
(
ÁÁ5 6
)
ÁÁ6 7
;
ÁÁ7 8
try
ÂÂ 
{
ÃÃ 
using
ÄÄ 
(
ÄÄ 
SqlConnection
ÄÄ $
sqlConn
ÄÄ% ,
=
ÄÄ- .

SqlConnect
ÄÄ/ 9
(
ÄÄ9 :
)
ÄÄ: ;
)
ÄÄ; <
{
ÅÅ 
using
ÆÆ 
(
ÆÆ 

SqlCommand
ÆÆ %
cmd
ÆÆ& )
=
ÆÆ* +
new
ÆÆ, /

SqlCommand
ÆÆ0 :
(
ÆÆ: ;
$str
ÆÆ; _
,
ÆÆ_ `
sqlConn
ÆÆa h
)
ÆÆh i
)
ÆÆi j
{
ÇÇ 
cmd
ÈÈ 
.
ÈÈ 
CommandType
ÈÈ '
=
ÈÈ( )
CommandType
ÈÈ* 5
.
ÈÈ5 6
Text
ÈÈ6 :
;
ÈÈ: ;
using
ÊÊ 
(
ÊÊ 
SqlDataReader
ÊÊ ,
reader
ÊÊ- 3
=
ÊÊ4 5
cmd
ÊÊ6 9
.
ÊÊ9 :
ExecuteReader
ÊÊ: G
(
ÊÊG H
)
ÊÊH I
)
ÊÊI J
{
ËË 
while
ÌÌ !
(
ÌÌ" #
reader
ÌÌ# )
.
ÌÌ) *
Read
ÌÌ* .
(
ÌÌ. /
)
ÌÌ/ 0
)
ÌÌ0 1
{
ÍÍ 
	macIDList
ÎÎ  )
.
ÎÎ) *
Add
ÎÎ* -
(
ÎÎ- .
reader
ÎÎ. 4
[
ÎÎ4 5
$str
ÎÎ5 <
]
ÎÎ< =
.
ÎÎ= >
ToString
ÎÎ> F
(
ÎÎF G
)
ÎÎG H
)
ÎÎH I
;
ÎÎI J
}
ÏÏ 
}
ĞĞ 
}
ÑÑ 
}
ÒÒ 
}
ÔÔ 
catch
ÕÕ 
(
ÕÕ 
	Exception
ÕÕ 
ex
ÕÕ 
)
ÕÕ  
{
ÖÖ 
Debug
×× 
.
×× 
	WriteLine
×× 
(
××  
$str
××  8
+
××9 :
ex
××; =
.
××= >
ToString
××> F
(
××F G
)
××G H
)
××H I
;
××I J
}
ØØ 
return
ÙÙ 
	macIDList
ÙÙ 
;
ÙÙ 
}
ÚÚ 	
public
ÛÛ 
List
ÛÛ 
<
ÛÛ 
Details
ÛÛ 
>
ÛÛ 
GetPlantNames
ÛÛ *
(
ÛÛ* +
)
ÛÛ+ ,
{
ÜÜ 	
List
İİ 
<
İİ 
Details
İİ 
>
İİ 
deptList
İİ "
=
İİ# $
new
İİ% (
List
İİ) -
<
İİ- .
Details
İİ. 5
>
İİ5 6
(
İİ6 7
)
İİ7 8
;
İİ8 9
try
ŞŞ 
{
ßß 
using
àà 
(
àà 
SqlConnection
àà $
sqlConn
àà% ,
=
àà- .

SqlConnect
àà/ 9
(
àà9 :
)
àà: ;
)
àà; <
{
áá 
using
ââ 
(
ââ 

SqlCommand
ââ %
cmd
ââ& )
=
ââ* +
new
ââ, /

SqlCommand
ââ0 :
(
ââ: ;
$str
ââ; I
,
ââI J
sqlConn
ââK R
)
ââR S
)
ââS T
{
ãã 
cmd
ää 
.
ää 
CommandType
ää '
=
ää( )
CommandType
ää* 5
.
ää5 6
StoredProcedure
ää6 E
;
ääE F
using
åå 
(
åå 
SqlDataReader
åå ,
reader
åå- 3
=
åå4 5
cmd
åå6 9
.
åå9 :
ExecuteReader
åå: G
(
ååG H
)
ååH I
)
ååI J
{
ææ 
while
çç !
(
çç" #
reader
çç# )
.
çç) *
Read
çç* .
(
çç. /
)
çç/ 0
)
çç0 1
{
èè 
deptList
éé  (
.
éé( )
Add
éé) ,
(
éé, -
new
êê$ '
Details
êê( /
{
ëë$ %
ID
ìì( *
=
ìì+ ,
Convert
ìì- 4
.
ìì4 5
ToInt32
ìì5 <
(
ìì< =
reader
ìì= C
[
ììC D
$str
ììD H
]
ììH I
.
ììI J
ToString
ììJ R
(
ììR S
)
ììS T
)
ììT U
,
ììU V
Name
íí( ,
=
íí- .
reader
íí/ 5
[
íí5 6
$str
íí6 B
]
ííB C
.
ííC D
ToString
ííD L
(
ííL M
)
ííM N
}
îî$ %
)
ğğ  !
;
ğğ! "
}
ññ 
}
òò 
}
óó 
}
ôô 
}
öö 
catch
÷÷ 
(
÷÷ 
	Exception
÷÷ 
ex
÷÷ 
)
÷÷  
{
øø 
Logger
ùù 
.
ùù 
Log
ùù 
(
ùù 
$str
ùù 3
+
ùù4 5
ex
ùù6 8
.
ùù8 9
ToString
ùù9 A
(
ùùA B
)
ùùB C
)
ùùC D
;
ùùD E
}
úú 
return
ûû 
deptList
ûû 
;
ûû 
}
üü 	
public
‚‚ 
List
‚‚ 
<
‚‚ 
ProductionDaily
‚‚ #
>
‚‚# $ 
GetProductionDaily
‚‚% 7
(
‚‚7 8
string
‚‚8 >
date
‚‚? C
)
‚‚C D
{
ƒƒ 	
List
„„ 
<
„„ 
ProductionDaily
„„  
>
„„  !
dailyProdList
„„" /
=
„„0 1
new
„„2 5
List
„„6 :
<
„„: ;
ProductionDaily
„„; J
>
„„J K
(
„„K L
)
„„L M
;
„„M N
try
…… 
{
†† 
using
‡‡ 
(
‡‡ 
SqlConnection
‡‡ $
sqlConn
‡‡% ,
=
‡‡- .

SqlConnect
‡‡/ 9
(
‡‡9 :
)
‡‡: ;
)
‡‡; <
{
ˆˆ 
using
‰‰ 
(
‰‰ 

SqlCommand
‰‰ %
cmd
‰‰& )
=
‰‰* +
new
‰‰, /

SqlCommand
‰‰0 :
(
‰‰: ;
$str
‰‰; O
,
‰‰O P
sqlConn
‰‰Q X
)
‰‰X Y
)
‰‰Y Z
{
ŠŠ 
cmd
‹‹ 
.
‹‹ 
CommandType
‹‹ '
=
‹‹( )
CommandType
‹‹* 5
.
‹‹5 6
StoredProcedure
‹‹6 E
;
‹‹E F
cmd
ŒŒ 
.
ŒŒ 

Parameters
ŒŒ &
.
ŒŒ& '
AddWithValue
ŒŒ' 3
(
ŒŒ3 4
$str
ŒŒ4 ;
,
ŒŒ; <
date
ŒŒ= A
)
ŒŒA B
;
ŒŒB C
cmd
 
.
 

Parameters
 &
.
& '
AddWithValue
' 3
(
3 4
$str
4 >
,
> ?
PlantId
@ G
)
G H
;
H I
using
 
(
 
SqlDataReader
 ,
reader
- 3
=
4 5
cmd
6 9
.
9 :
ExecuteReader
: G
(
G H
)
H I
)
I J
{
 
while
‘‘ !
(
‘‘" #
reader
‘‘# )
.
‘‘) *
Read
‘‘* .
(
‘‘. /
)
‘‘/ 0
)
‘‘0 1
{
’’ 
dailyProdList
““  -
.
““- .
Add
““. 1
(
““1 2
new
””$ '
ProductionDaily
””( 7
{
••$ %
AssetId
––( /
=
––0 1
!
––2 3
string
––3 9
.
––9 :
IsNullOrEmpty
––: G
(
––G H
reader
––H N
[
––N O
$str
––O X
]
––X Y
.
––Y Z
ToString
––Z b
(
––b c
)
––c d
)
––d e
?
––f g
Convert
––h o
.
––o p
ToInt32
––p w
(
––w x
reader
––x ~
[
––~ 
$str–– ˆ
]––ˆ ‰
.––‰ Š
ToString––Š ’
(––’ “
)––“ ”
)––” •
:––– —
$num––˜ ™
,––™ š

DepartName
——( 2
=
——3 4
reader
——5 ;
[
——; <
$str
——< H
]
——H I
.
——I J
ToString
——J R
(
——R S
)
——S T
,
——T U
Total
˜˜( -
=
˜˜. /
!
˜˜0 1
string
˜˜1 7
.
˜˜7 8
IsNullOrEmpty
˜˜8 E
(
˜˜E F
reader
˜˜F L
[
˜˜L M
$str
˜˜M T
]
˜˜T U
.
˜˜U V
ToString
˜˜V ^
(
˜˜^ _
)
˜˜_ `
)
˜˜` a
?
˜˜b c
Convert
˜˜d k
.
˜˜k l
ToDouble
˜˜l t
(
˜˜t u
reader
˜˜u {
[
˜˜{ |
$str˜˜| ƒ
]˜˜ƒ „
.˜˜„ …
ToString˜˜… 
(˜˜ 
)˜˜ 
)˜˜ 
:˜˜‘ ’
$num˜˜“ ”
,˜˜” •
UOM
™™( +
=
™™, -
!
™™. /
string
™™/ 5
.
™™5 6
IsNullOrEmpty
™™6 C
(
™™C D
reader
™™D J
[
™™J K
$str
™™K P
]
™™P Q
.
™™Q R
ToString
™™R Z
(
™™Z [
)
™™[ \
)
™™\ ]
?
™™^ _
reader
™™` f
[
™™f g
$str
™™g l
]
™™l m
.
™™m n
ToString
™™n v
(
™™v w
)
™™w x
:
™™y z
$str™™{ ƒ
,™™ƒ „
UOMId
šš( -
=
šš. /
!
šš0 1
string
šš1 7
.
šš7 8
IsNullOrEmpty
šš8 E
(
ššE F
reader
ššF L
[
ššL M
$str
ššM T
]
ššT U
.
ššU V
ToString
ššV ^
(
šš^ _
)
šš_ `
)
šš` a
?
ššb c
Convert
ššd k
.
ššk l
ToInt32
ššl s
(
ššs t
reader
ššt z
[
ššz {
$stršš{ ‚
]šš‚ ƒ
.ššƒ „
ToStringšš„ Œ
(ššŒ 
)šš 
)šš 
:šš ‘
$numšš’ “
}
››$ %
)
œœ$ %
;
œœ% &
}
 
}
 
}
ŸŸ 
}
   
}
¢¢ 
catch
££ 
(
££ 
	Exception
££ 
ex
££ 
)
££  
{
¤¤ 
Logger
¥¥ 
.
¥¥ 
Log
¥¥ 
(
¥¥ 
$str
¥¥ 8
+
¥¥9 :
ex
¥¥; =
.
¥¥= >
ToString
¥¥> F
(
¥¥F G
)
¥¥G H
)
¥¥H I
;
¥¥I J
}
¦¦ 
return
§§ 
dailyProdList
§§  
;
§§  !
}
¨¨ 	
public
®® 
List
®® 
<
®® 
ProductionDaily
®® #
>
®®# $ 
GetSolidWasteDaily
®®% 7
(
®®7 8
string
®®8 >
date
®®? C
)
®®C D
{
¯¯ 	
List
°° 
<
°° 
ProductionDaily
°°  
>
°°  ! 
getsolidwasteDaily
°°" 4
=
°°5 6
new
°°7 :
List
°°; ?
<
°°? @
ProductionDaily
°°@ O
>
°°O P
(
°°P Q
)
°°Q R
;
°°R S
try
±± 
{
²² 
using
³³ 
(
³³ 
SqlConnection
³³ $
sqlConn
³³% ,
=
³³- .

SqlConnect
³³/ 9
(
³³9 :
)
³³: ;
)
³³; <
{
´´ 
using
µµ 
(
µµ 

SqlCommand
µµ %
cmd
µµ& )
=
µµ* +
new
µµ, /

SqlCommand
µµ0 :
(
µµ: ;
$str
µµ; O
,
µµO P
sqlConn
µµQ X
)
µµX Y
)
µµY Z
{
¶¶ 
cmd
·· 
.
·· 
CommandType
·· '
=
··( )
CommandType
··* 5
.
··5 6
StoredProcedure
··6 E
;
··E F
cmd
¸¸ 
.
¸¸ 

Parameters
¸¸ &
.
¸¸& '
AddWithValue
¸¸' 3
(
¸¸3 4
$str
¸¸4 ;
,
¸¸; <
date
¸¸= A
)
¸¸A B
;
¸¸B C
cmd
¹¹ 
.
¹¹ 

Parameters
¹¹ &
.
¹¹& '
AddWithValue
¹¹' 3
(
¹¹3 4
$str
¹¹4 >
,
¹¹> ?
PlantId
¹¹@ G
)
¹¹G H
;
¹¹H I
using
»» 
(
»» 
SqlDataReader
»» ,
reader
»»- 3
=
»»4 5
cmd
»»6 9
.
»»9 :
ExecuteReader
»»: G
(
»»G H
)
»»H I
)
»»I J
{
¼¼ 
while
½½ !
(
½½" #
reader
½½# )
.
½½) *
Read
½½* .
(
½½. /
)
½½/ 0
)
½½0 1
{
¾¾  
getsolidwasteDaily
¿¿  2
.
¿¿2 3
Add
¿¿3 6
(
¿¿6 7
new
ÀÀ$ '
ProductionDaily
ÀÀ( 7
{
ÁÁ$ %

DepartName
ÂÂ( 2
=
ÂÂ3 4
reader
ÂÂ5 ;
[
ÂÂ; <
$str
ÂÂ< C
]
ÂÂC D
.
ÂÂD E
ToString
ÂÂE M
(
ÂÂM N
)
ÂÂN O
,
ÂÂO P
Total
ÃÃ( -
=
ÃÃ. /
!
ÃÃ0 1
string
ÃÃ1 7
.
ÃÃ7 8
IsNullOrEmpty
ÃÃ8 E
(
ÃÃE F
reader
ÃÃF L
[
ÃÃL M
$str
ÃÃM T
]
ÃÃT U
.
ÃÃU V
ToString
ÃÃV ^
(
ÃÃ^ _
)
ÃÃ_ `
)
ÃÃ` a
?
ÃÃb c
Convert
ÃÃd k
.
ÃÃk l
ToDouble
ÃÃl t
(
ÃÃt u
reader
ÃÃu {
[
ÃÃ{ |
$strÃÃ| ƒ
]ÃÃƒ „
.ÃÃ„ …
ToStringÃÃ… 
(ÃÃ 
)ÃÃ 
)ÃÃ 
:ÃÃ‘ ’
$numÃÃ“ ”
,ÃÃ” •
UOM
ÄÄ( +
=
ÄÄ, -
!
ÄÄ. /
string
ÄÄ/ 5
.
ÄÄ5 6
IsNullOrEmpty
ÄÄ6 C
(
ÄÄC D
reader
ÄÄD J
[
ÄÄJ K
$str
ÄÄK P
]
ÄÄP Q
.
ÄÄQ R
ToString
ÄÄR Z
(
ÄÄZ [
)
ÄÄ[ \
)
ÄÄ\ ]
?
ÄÄ^ _
reader
ÄÄ` f
[
ÄÄf g
$str
ÄÄg l
]
ÄÄl m
.
ÄÄm n
ToString
ÄÄn v
(
ÄÄv w
)
ÄÄw x
:
ÄÄy z
$strÄÄ{ ƒ
,ÄÄƒ „
UOMId
ÅÅ( -
=
ÅÅ. /
!
ÅÅ0 1
string
ÅÅ1 7
.
ÅÅ7 8
IsNullOrEmpty
ÅÅ8 E
(
ÅÅE F
reader
ÅÅF L
[
ÅÅL M
$str
ÅÅM T
]
ÅÅT U
.
ÅÅU V
ToString
ÅÅV ^
(
ÅÅ^ _
)
ÅÅ_ `
)
ÅÅ` a
?
ÅÅb c
Convert
ÅÅd k
.
ÅÅk l
ToInt32
ÅÅl s
(
ÅÅs t
reader
ÅÅt z
[
ÅÅz {
$strÅÅ{ ‚
]ÅÅ‚ ƒ
.ÅÅƒ „
ToStringÅÅ„ Œ
(ÅÅŒ 
)ÅÅ 
)ÅÅ 
:ÅÅ ‘
$numÅÅ’ “
}
ÆÆ$ %
)
ÆÆ% &
;
ÆÆ& '
}
ÇÇ 
}
ÈÈ 
}
ÉÉ 
}
ÊÊ 
}
ÌÌ 
catch
ÍÍ 
(
ÍÍ 
	Exception
ÍÍ 
ex
ÍÍ 
)
ÍÍ  
{
ÎÎ 
Logger
ÏÏ 
.
ÏÏ 
Log
ÏÏ 
(
ÏÏ 
$str
ÏÏ 8
+
ÏÏ9 :
ex
ÏÏ; =
.
ÏÏ= >
ToString
ÏÏ> F
(
ÏÏF G
)
ÏÏG H
)
ÏÏH I
;
ÏÏI J
}
ĞĞ 
return
ÑÑ  
getsolidwasteDaily
ÑÑ %
;
ÑÑ% &
}
ÒÒ 	
public
ÔÔ 
bool
ÔÔ 
SaveWageMapping
ÔÔ #
(
ÔÔ# $
string
ÔÔ$ *

energyName
ÔÔ+ 5
,
ÔÔ5 6
int
ÔÔ7 :

energyType
ÔÔ; E
,
ÔÔE F
int
ÔÔG J
UOM
ÔÔK N
,
ÔÔN O
int
ÔÔP S
ID
ÔÔT V
)
ÔÔV W
{
ÕÕ 	
try
ÖÖ 
{
×× 
using
ØØ 
(
ØØ 
SqlConnection
ØØ $
sqlConn
ØØ% ,
=
ØØ- .

SqlConnect
ØØ/ 9
(
ØØ9 :
)
ØØ: ;
)
ØØ; <
{
ÙÙ 
using
ÛÛ 
(
ÛÛ 

SqlCommand
ÛÛ %
command
ÛÛ& -
=
ÛÛ. /
new
ÛÛ0 3

SqlCommand
ÛÛ4 >
(
ÛÛ> ?
$str
ÛÛ? J
,
ÛÛJ K
sqlConn
ÛÛL S
)
ÛÛS T
)
ÛÛT U
{
ÜÜ 
command
ŞŞ 
.
ŞŞ  
CommandType
ŞŞ  +
=
ŞŞ, -
CommandType
ŞŞ. 9
.
ŞŞ9 :
StoredProcedure
ŞŞ: I
;
ŞŞI J
command
àà 
.
àà  

Parameters
àà  *
.
àà* +
AddWithValue
àà+ 7
(
àà7 8
$str
àà8 E
,
ààE F

energyName
ààG Q
)
ààQ R
;
ààR S
command
áá 
.
áá  

Parameters
áá  *
.
áá* +
AddWithValue
áá+ 7
(
áá7 8
$str
áá8 E
,
ááE F

energyType
ááG Q
)
ááQ R
;
ááR S
command
ââ 
.
ââ  

Parameters
ââ  *
.
ââ* +
AddWithValue
ââ+ 7
(
ââ7 8
$str
ââ8 >
,
ââ> ?
UOM
ââ@ C
)
ââC D
;
ââD E
command
ãã 
.
ãã  

Parameters
ãã  *
.
ãã* +
AddWithValue
ãã+ 7
(
ãã7 8
$str
ãã8 B
,
ããB C
PlantId
ããD K
)
ããK L
;
ããL M
command
ää 
.
ää  

Parameters
ää  *
.
ää* +
AddWithValue
ää+ 7
(
ää7 8
$str
ää8 =
,
ää= >
ID
ää? A
)
ääA B
;
ääB C
command
åå 
.
åå  
ExecuteNonQuery
åå  /
(
åå/ 0
)
åå0 1
;
åå1 2
}
ææ 
return
çç 
true
çç 
;
çç  
}
èè 
}
êê 
catch
ëë 
(
ëë 
	Exception
ëë 
ex
ëë 
)
ëë  
{
ìì 
Logger
íí 
.
íí 
Log
íí 
(
íí 
$str
íí 5
+
íí6 7
ex
íí8 :
.
íí: ;
ToString
íí; C
(
ííC D
)
ííD E
)
ííE F
;
ííF G
return
îî 
false
îî 
;
îî 
}
ïï 
}
ğğ 	
public
ññ 
List
ññ 
<
ññ 
WageUomMapping
ññ "
>
ññ" #
GetWageMapping
ññ$ 2
(
ññ2 3
)
ññ3 4
{
òò 	
List
óó 
<
óó 
WageUomMapping
óó 
>
óó  
UOMList
óó! (
=
óó) *
new
óó+ .
List
óó/ 3
<
óó3 4
WageUomMapping
óó4 B
>
óóB C
(
óóC D
)
óóD E
;
óóE F
try
ôô 
{
õõ 
using
öö 
(
öö 
SqlConnection
öö $
sqlConn
öö% ,
=
öö- .

SqlConnect
öö/ 9
(
öö9 :
)
öö: ;
)
öö; <
{
÷÷ 
using
øø 
(
øø 

SqlCommand
øø %
cmd
øø& )
=
øø* +
new
øø, /

SqlCommand
øø0 :
(
øø: ;
$str
øø; K
,
øøK L
sqlConn
ùù 
)
ùù  
)
ùù  !
{
úú 
cmd
üü 
.
üü 
CommandType
üü '
=
üü( )
CommandType
üü* 5
.
üü5 6
StoredProcedure
üü6 E
;
üüE F
cmd
ıı 
.
ıı 

Parameters
ıı &
.
ıı& '
AddWithValue
ıı' 3
(
ıı3 4
$str
ıı4 >
,
ıı> ?
PlantId
ıı@ G
)
ııG H
;
ııH I
using
şş 
(
şş 
SqlDataReader
şş ,
reader
şş- 3
=
şş4 5
cmd
şş6 9
.
şş9 :
ExecuteReader
şş: G
(
şşG H
)
şşH I
)
şşI J
{
ÿÿ 
while
€€ !
(
€€" #
reader
€€# )
.
€€) *
Read
€€* .
(
€€. /
)
€€/ 0
)
€€0 1
{
 
UOMList
‚‚  '
.
‚‚' (
Add
‚‚( +
(
‚‚+ ,
new
ƒƒ$ '
WageUomMapping
ƒƒ( 6
{
„„$ %
ID
……( *
=
……+ ,
Convert
……- 4
.
……4 5
ToInt32
……5 <
(
……< =
reader
……= C
[
……C D
$str
……D H
]
……H I
)
……I J
,
……J K

EnergyName
††( 2
=
††3 4
reader
††5 ;
[
††; <
$str
††< H
]
††H I
.
††I J
ToString
††J R
(
††R S
)
††S T
,
††T U

EnergyType
‡‡( 2
=
‡‡3 4
reader
‡‡5 ;
[
‡‡; <
$str
‡‡< H
]
‡‡H I
.
‡‡I J
ToString
‡‡J R
(
‡‡R S
)
‡‡S T
,
‡‡T U
UOM
ˆˆ( +
=
ˆˆ, -
reader
ˆˆ. 4
[
ˆˆ4 5
$str
ˆˆ5 :
]
ˆˆ: ;
.
ˆˆ; <
ToString
ˆˆ< D
(
ˆˆD E
)
ˆˆE F
,
ˆˆF G
EnergyTypeID
‰‰( 4
=
‰‰5 6
Convert
‰‰7 >
.
‰‰> ?
ToInt32
‰‰? F
(
‰‰F G
reader
‰‰G M
[
‰‰M N
$str
‰‰N \
]
‰‰\ ]
)
‰‰] ^
,
‰‰^ _
UOMID
ŠŠ( -
=
ŠŠ. /
Convert
ŠŠ0 7
.
ŠŠ7 8
ToInt32
ŠŠ8 ?
(
ŠŠ? @
reader
ŠŠ@ F
[
ŠŠF G
$str
ŠŠG N
]
ŠŠN O
)
ŠŠO P
}
‹‹$ %
)
ŒŒ$ %
;
ŒŒ% &
}
 
}
 
}
 
}
 
}
’’ 
catch
““ 
(
““ 
	Exception
““ 
ex
““ 
)
““  
{
”” 
Logger
•• 
.
•• 
Log
•• 
(
•• 
$str
•• +
+
••, -
ex
••. 0
.
••0 1
ToString
••1 9
(
••9 :
)
••: ;
)
••; <
;
••< =
}
–– 
return
—— 
UOMList
—— 
;
—— 
}
˜˜ 	
public
šš 
bool
šš "
AddCSolidwasteActual
šš (
(
šš( )
List
šš) -
<
šš- .
AnnualDetails
šš. ;
>
šš; <
Consumption
šš= H
,
ššH I
string
ššJ P
Year
ššQ U
,
ššU V
string
ššW ]
	procedure
šš^ g
)
ššg h
{
›› 	
try
œœ 
{
 
string
 
procedureName
 $
=
% &#
StoreProcedureUtility
' <
.
< =$
storedProcedureMapping
= S
.
S T
ContainsKey
T _
(
_ `
	procedure
` i
)
i j
?
k l$
StoreProcedureUtilitym ‚
.‚ ƒ&
storedProcedureMappingƒ ™
[™ š
	procedureš £
]£ ¤
:¥ ¦
$str§ ©
;© ª
if
ŸŸ 
(
ŸŸ 
string
ŸŸ 
.
ŸŸ 
IsNullOrEmpty
ŸŸ (
(
ŸŸ( )
procedureName
ŸŸ) 6
)
ŸŸ6 7
)
ŸŸ7 8
return
   
false
    
;
    !
using
¡¡ 
(
¡¡ 
SqlConnection
¡¡ $
sqlConn
¡¡% ,
=
¡¡- .

SqlConnect
¡¡/ 9
(
¡¡9 :
)
¡¡: ;
)
¡¡; <
{
¢¢ 
foreach
££ 
(
££ 
var
££  
item
££! %
in
££& (
Consumption
££) 4
)
££4 5
{
¤¤ 
using
¦¦ 
(
¦¦ 

SqlCommand
¦¦ )
command
¦¦* 1
=
¦¦2 3
new
¦¦4 7

SqlCommand
¦¦8 B
(
¦¦B C
procedureName
¦¦C P
,
¦¦P Q
sqlConn
¦¦R Y
)
¦¦Y Z
)
¦¦Z [
{
§§ 
command
©© #
.
©©# $
CommandType
©©$ /
=
©©0 1
CommandType
©©2 =
.
©©= >
StoredProcedure
©©> M
;
©©M N
AddParam
«« $
(
««$ %
item
««% )
,
««) *
command
««+ 2
,
««2 3
procedureName
««4 A
)
««A B
;
««B C
command
¬¬ #
.
¬¬# $

Parameters
¬¬$ .
.
¬¬. /
AddWithValue
¬¬/ ;
(
¬¬; <
$str
¬¬< C
,
¬¬C D
Year
¬¬E I
)
¬¬I J
;
¬¬J K
command
­­ #
.
­­# $
ExecuteNonQuery
­­$ 3
(
­­3 4
)
­­4 5
;
­­5 6
}
®® 
}
¯¯ 
return
°° 
true
°° 
;
°°  
}
±± 
}
³³ 
catch
´´ 
(
´´ 
	Exception
´´ 
ex
´´ 
)
´´  
{
µµ 
Logger
¶¶ 
.
¶¶ 
Log
¶¶ 
(
¶¶ 
$str
¶¶ <
+
¶¶= >
ex
¶¶? A
.
¶¶A B
ToString
¶¶B J
(
¶¶J K
)
¶¶K L
)
¶¶L M
;
¶¶M N
return
·· 
false
·· 
;
·· 
}
¸¸ 
}
¹¹ 	
public
ÂÂ 
bool
ÂÂ "
AddMonthlySolidwaste
ÂÂ (
(
ÂÂ( )
List
ÂÂ) -
<
ÂÂ- . 
MonthlyConsumption
ÂÂ. @
>
ÂÂ@ A
monthlysolid
ÂÂB N
,
ÂÂN O
string
ÂÂP V
Year
ÂÂW [
,
ÂÂ[ \
int
ÂÂ] `
MonthID
ÂÂa h
)
ÂÂh i
{
ÃÃ 	
try
ÄÄ 
{
ÅÅ 
using
ÆÆ 
(
ÆÆ 
SqlConnection
ÆÆ $
sqlConn
ÆÆ% ,
=
ÆÆ- .

SqlConnect
ÆÆ/ 9
(
ÆÆ9 :
)
ÆÆ: ;
)
ÆÆ; <
{
ÇÇ 
foreach
ÈÈ 
(
ÈÈ 
var
ÈÈ  
item
ÈÈ! %
in
ÈÈ& (
monthlysolid
ÈÈ) 5
)
ÈÈ5 6
{
ÉÉ 
using
ÊÊ 
(
ÊÊ 

SqlCommand
ÊÊ )
command
ÊÊ* 1
=
ÊÊ2 3
new
ÊÊ4 7

SqlCommand
ÊÊ8 B
(
ÊÊB C
$str
ÊÊC ]
,
ÊÊ] ^
sqlConn
ÊÊ_ f
)
ÊÊf g
)
ÊÊg h
{
ËË 
command
ÎÎ #
.
ÎÎ# $
CommandType
ÎÎ$ /
=
ÎÎ0 1
CommandType
ÎÎ2 =
.
ÎÎ= >
StoredProcedure
ÎÎ> M
;
ÎÎM N
command
ĞĞ #
.
ĞĞ# $

Parameters
ĞĞ$ .
.
ĞĞ. /
AddWithValue
ĞĞ/ ;
(
ĞĞ; <
$str
ĞĞ< F
,
ĞĞF G
PlantId
ĞĞH O
)
ĞĞO P
;
ĞĞP Q
command
ÑÑ #
.
ÑÑ# $

Parameters
ÑÑ$ .
.
ÑÑ. /
AddWithValue
ÑÑ/ ;
(
ÑÑ; <
$str
ÑÑ< I
,
ÑÑI J
item
ÑÑK O
.
ÑÑO P
Consumption
ÑÑP [
)
ÑÑ[ \
;
ÑÑ\ ]
command
ÒÒ #
.
ÒÒ# $

Parameters
ÒÒ$ .
.
ÒÒ. /
AddWithValue
ÒÒ/ ;
(
ÒÒ; <
$str
ÒÒ< K
,
ÒÒK L
item
ÒÒM Q
.
ÒÒQ R
Cost
ÒÒR V
)
ÒÒV W
;
ÒÒW X
command
ÓÓ #
.
ÓÓ# $

Parameters
ÓÓ$ .
.
ÓÓ. /
AddWithValue
ÓÓ/ ;
(
ÓÓ; <
$str
ÓÓ< D
,
ÓÓD E
item
ÓÓF J
.
ÓÓJ K
UOMID
ÓÓK P
)
ÓÓP Q
;
ÓÓQ R
command
ÔÔ #
.
ÔÔ# $

Parameters
ÔÔ$ .
.
ÔÔ. /
AddWithValue
ÔÔ/ ;
(
ÔÔ; <
$str
ÔÔ< E
,
ÔÔE F
Year
ÔÔG K
)
ÔÔK L
;
ÔÔL M
command
ÕÕ #
.
ÕÕ# $

Parameters
ÕÕ$ .
.
ÕÕ. /
AddWithValue
ÕÕ/ ;
(
ÕÕ; <
$str
ÕÕ< F
,
ÕÕF G
MonthID
ÕÕH O
)
ÕÕO P
;
ÕÕP Q
command
ÖÖ #
.
ÖÖ# $
ExecuteNonQuery
ÖÖ$ 3
(
ÖÖ3 4
)
ÖÖ4 5
;
ÖÖ5 6
}
×× 
}
ØØ 
return
ÙÙ 
true
ÙÙ 
;
ÙÙ  
}
ÚÚ 
}
ÜÜ 
catch
İİ 
(
İİ 
	Exception
İİ 
ex
İİ 
)
İİ  
{
ŞŞ 
Logger
ßß 
.
ßß 
Log
ßß 
(
ßß 
$str
ßß :
+
ßß; <
ex
ßß= ?
.
ßß? @
ToString
ßß@ H
(
ßßH I
)
ßßI J
)
ßßJ K
;
ßßK L
return
àà 
false
àà 
;
àà 
}
áá 
}
ââ 	
public
êê 
bool
êê  
AddSolidwasteDaily
êê &
(
êê& '
List
êê' +
<
êê+ ,
ProductionDaily
êê, ;
>
êê; <

production
êê= G
,
êêG H
double
êêI O

solidwaste
êêP Z
,
êêZ [
string
êê\ b
date
êêc g
)
êêg h
{
ëë 	
try
ìì 
{
íí 
using
îî 
(
îî 
SqlConnection
îî $
sqlConn
îî% ,
=
îî- .

SqlConnect
îî/ 9
(
îî9 :
)
îî: ;
)
îî; <
{
ïï 
foreach
ğğ 
(
ğğ 
var
ğğ  
item
ğğ! %
in
ğğ& (

production
ğğ) 3
)
ğğ3 4
{
ññ 
using
óó 
(
óó 

SqlCommand
óó )
command
óó* 1
=
óó2 3
new
óó4 7

SqlCommand
óó8 B
(
óóB C
$str
óóC W
,
óóW X
sqlConn
óóY `
)
óó` a
)
óóa b
{
ôô 
command
öö #
.
öö# $
CommandType
öö$ /
=
öö0 1
CommandType
öö2 =
.
öö= >
StoredProcedure
öö> M
;
ööM N
command
÷÷ #
.
÷÷# $

Parameters
÷÷$ .
.
÷÷. /
AddWithValue
÷÷/ ;
(
÷÷; <
$str
÷÷< F
,
÷÷F G
PlantId
÷÷H O
)
÷÷O P
;
÷÷P Q
command
øø #
.
øø# $

Parameters
øø$ .
.
øø. /
AddWithValue
øø/ ;
(
øø; <
$str
øø< D
,
øøD E

solidwaste
øøF P
)
øøP Q
;
øøQ R
command
ùù #
.
ùù# $

Parameters
ùù$ .
.
ùù. /
AddWithValue
ùù/ ;
(
ùù; <
$str
ùù< D
,
ùùD E
item
ùùF J
.
ùùJ K
UOMId
ùùK P
)
ùùP Q
;
ùùQ R
command
úú #
.
úú# $

Parameters
úú$ .
.
úú. /
AddWithValue
úú/ ;
(
úú; <
$str
úú< G
,
úúG H
date
úúI M
)
úúM N
;
úúN O
command
ûû #
.
ûû# $
ExecuteNonQuery
ûû$ 3
(
ûû3 4
)
ûû4 5
;
ûû5 6
}
üü 
}
ıı 
return
şş 
true
şş 
;
şş  
}
ÿÿ 
}
 
catch
‚‚ 
(
‚‚ 
	Exception
‚‚ 
ex
‚‚ 
)
‚‚  
{
ƒƒ 
Logger
„„ 
.
„„ 
Log
„„ 
(
„„ 
$str
„„ 8
+
„„9 :
ex
„„; =
.
„„= >
ToString
„„> F
(
„„F G
)
„„G H
)
„„H I
;
„„I J
return
…… 
false
…… 
;
…… 
}
†† 
}
‡‡ 	
public
 
bool
 
AddProductonDaily
 %
(
% &
List
& *
<
* +
ProductionDaily
+ :
>
: ;

production
< F
,
F G
string
H N
date
O S
)
S T
{
 	
try
 
{
‘‘ 
using
’’ 
(
’’ 
SqlConnection
’’ $
sqlConn
’’% ,
=
’’- .

SqlConnect
’’/ 9
(
’’9 :
)
’’: ;
)
’’; <
{
““ 
foreach
”” 
(
”” 
var
””  
item
””! %
in
””& (

production
””) 3
)
””3 4
{
•• 
using
—— 
(
—— 

SqlCommand
—— )
command
——* 1
=
——2 3
new
——4 7

SqlCommand
——8 B
(
——B C
$str
——C W
,
——W X
sqlConn
——Y `
)
——` a
)
——a b
{
˜˜ 
command
šš #
.
šš# $
CommandType
šš$ /
=
šš0 1
CommandType
šš2 =
.
šš= >
StoredProcedure
šš> M
;
ššM N
command
›› #
.
››# $

Parameters
››$ .
.
››. /
AddWithValue
››/ ;
(
››; <
$str
››< F
,
››F G
item
››H L
.
››L M
AssetId
››M T
)
››T U
;
››U V
command
œœ #
.
œœ# $

Parameters
œœ$ .
.
œœ. /
AddWithValue
œœ/ ;
(
œœ; <
$str
œœ< F
,
œœF G
PlantId
œœH O
)
œœO P
;
œœP Q
command
 #
.
# $

Parameters
$ .
.
. /
AddWithValue
/ ;
(
; <
$str
< D
,
D E
item
F J
.
J K
Total
K P
)
P Q
;
Q R
command
 #
.
# $

Parameters
$ .
.
. /
AddWithValue
/ ;
(
; <
$str
< D
,
D E
item
F J
.
J K
UOMId
K P
)
P Q
;
Q R
command
ŸŸ #
.
ŸŸ# $

Parameters
ŸŸ$ .
.
ŸŸ. /
AddWithValue
ŸŸ/ ;
(
ŸŸ; <
$str
ŸŸ< G
,
ŸŸG H
date
ŸŸI M
)
ŸŸM N
;
ŸŸN O
command
   #
.
  # $
ExecuteNonQuery
  $ 3
(
  3 4
)
  4 5
;
  5 6
}
¡¡ 
}
¢¢ 
return
££ 
true
££ 
;
££  
}
¤¤ 
}
¦¦ 
catch
§§ 
(
§§ 
	Exception
§§ 
ex
§§ 
)
§§  
{
¨¨ 
Logger
©© 
.
©© 
Log
©© 
(
©© 
$str
©© 7
+
©©8 9
ex
©©: <
.
©©< =
ToString
©©= E
(
©©E F
)
©©F G
)
©©G H
;
©©H I
return
ªª 
false
ªª 
;
ªª 
}
«« 
}
¬¬ 	
public
±± 
List
±± 
<
±± 

AlarmEnble
±± 
>
±± 
GetAlaramData
±±  -
(
±±- .
)
±±. /
{
²² 	
List
³³ 
<
³³ 

AlarmEnble
³³ 
>
³³ 
	getalarms
³³ &
=
³³' (
new
³³) ,
List
³³- 1
<
³³1 2

AlarmEnble
³³2 <
>
³³< =
(
³³= >
)
³³> ?
;
³³? @
try
´´ 
{
µµ 
using
¶¶ 
(
¶¶ 
SqlConnection
¶¶ $
sqlConn
¶¶% ,
=
¶¶- .

SqlConnect
¶¶/ 9
(
¶¶9 :
)
¶¶: ;
)
¶¶; <
{
·· 
using
¸¸ 
(
¸¸ 

SqlCommand
¸¸ %
cmd
¸¸& )
=
¸¸* +
new
¸¸, /

SqlCommand
¸¸0 :
(
¸¸: ;
$str
¸¸; N
,
¸¸N O
sqlConn
¸¸P W
)
¸¸W X
)
¸¸X Y
{
¹¹ 
cmd
ºº 
.
ºº 
CommandType
ºº '
=
ºº( )
CommandType
ºº* 5
.
ºº5 6
StoredProcedure
ºº6 E
;
ººE F
cmd
»» 
.
»» 

Parameters
»» &
.
»»& '
AddWithValue
»»' 3
(
»»3 4
$str
»»4 >
,
»»> ?
PlantId
»»@ G
)
»»G H
;
»»H I
using
½½ 
(
½½ 
SqlDataReader
½½ ,
reader
½½- 3
=
½½4 5
cmd
½½6 9
.
½½9 :
ExecuteReader
½½: G
(
½½G H
)
½½H I
)
½½I J
{
¾¾ 
while
¿¿ !
(
¿¿" #
reader
¿¿# )
.
¿¿) *
Read
¿¿* .
(
¿¿. /
)
¿¿/ 0
)
¿¿0 1
{
ÀÀ 
	getalarms
ÁÁ  )
.
ÁÁ) *
Add
ÁÁ* -
(
ÁÁ- .
new
ÂÂ$ '

AlarmEnble
ÂÂ( 2
{
ÃÃ$ %
TagID
ÄÄ( -
=
ÄÄ. /
Convert
ÄÄ0 7
.
ÄÄ7 8
ToInt32
ÄÄ8 ?
(
ÄÄ? @
reader
ÄÄ@ F
[
ÄÄF G
$str
ÄÄG N
]
ÄÄN O
)
ÄÄO P
,
ÄÄP Q
AssetID
ÅÅ( /
=
ÅÅ0 1
Convert
ÅÅ2 9
.
ÅÅ9 :
ToInt32
ÅÅ: A
(
ÅÅA B
reader
ÅÅB H
[
ÅÅH I
$str
ÅÅI R
]
ÅÅR S
)
ÅÅS T
,
ÅÅT U
TagName
ÆÆ( /
=
ÆÆ0 1
reader
ÆÆ2 8
[
ÆÆ8 9
$str
ÆÆ9 B
]
ÆÆB C
.
ÆÆC D
ToString
ÆÆD L
(
ÆÆL M
)
ÆÆM N
,
ÆÆN O
	AssetName
ÇÇ( 1
=
ÇÇ2 3
reader
ÇÇ4 :
[
ÇÇ: ;
$str
ÇÇ; F
]
ÇÇF G
.
ÇÇG H
ToString
ÇÇH P
(
ÇÇP Q
)
ÇÇQ R
,
ÇÇR S
	isEnabled
ÈÈ( 1
=
ÈÈ2 3
reader
ÈÈ4 :
[
ÈÈ: ;
$str
ÈÈ; F
]
ÈÈF G
.
ÈÈG H
ToString
ÈÈH P
(
ÈÈP Q
)
ÈÈQ R
,
ÈÈR S
Target
ÉÉ( .
=
ÉÉ/ 0
!
ÉÉ1 2
string
ÉÉ2 8
.
ÉÉ8 9
IsNullOrEmpty
ÉÉ9 F
(
ÉÉF G
reader
ÉÉG M
[
ÉÉM N
$str
ÉÉN V
]
ÉÉV W
.
ÉÉW X
ToString
ÉÉX `
(
ÉÉ` a
)
ÉÉa b
)
ÉÉb c
?
ÉÉd e
Convert
ÉÉf m
.
ÉÉm n
ToDouble
ÉÉn v
(
ÉÉv w
reader
ÉÉw }
[
ÉÉ} ~
$strÉÉ~ †
]ÉÉ† ‡
.ÉÉ‡ ˆ
ToStringÉÉˆ 
(ÉÉ ‘
)ÉÉ‘ ’
)ÉÉ’ “
:ÉÉ” •
$numÉÉ– —
}
ÊÊ$ %
)
ÊÊ% &
;
ÊÊ& '
}
ËË 
}
ÌÌ 
}
ÍÍ 
}
ÎÎ 
}
ĞĞ 
catch
ÑÑ 
(
ÑÑ 
	Exception
ÑÑ 
ex
ÑÑ 
)
ÑÑ  
{
ÒÒ 
Logger
ÓÓ 
.
ÓÓ 
Log
ÓÓ 
(
ÓÓ 
$str
ÓÓ 3
+
ÓÓ4 5
ex
ÓÓ6 8
.
ÓÓ8 9
ToString
ÓÓ9 A
(
ÓÓA B
)
ÓÓB C
)
ÓÓC D
;
ÓÓD E
}
ÔÔ 
return
ÕÕ 
	getalarms
ÕÕ 
;
ÕÕ 
}
ÖÖ 	
public
İİ 
List
İİ 
<
İİ 
Assets
İİ 
>
İİ 
GetUserDetails
İİ *
(
İİ* +
string
İİ+ 1
emailId
İİ2 9
)
İİ9 :
{
ŞŞ 	
List
ßß 
<
ßß 
Assets
ßß 
>
ßß 
getuser
ßß  
=
ßß! "
new
ßß# &
List
ßß' +
<
ßß+ ,
Assets
ßß, 2
>
ßß2 3
(
ßß3 4
)
ßß4 5
;
ßß5 6
try
àà 
{
áá 
using
ââ 
(
ââ 
SqlConnection
ââ $
sqlConn
ââ% ,
=
ââ- .

SqlConnect
ââ/ 9
(
ââ9 :
)
ââ: ;
)
ââ; <
{
ãã 
using
ää 
(
ää 

SqlCommand
ää %
cmd
ää& )
=
ää* +
new
ää, /

SqlCommand
ää0 :
(
ää: ;
$str
ää; O
,
ääO P
sqlConn
ääQ X
)
ääX Y
)
ääY Z
{
åå 
cmd
ææ 
.
ææ 
CommandType
ææ '
=
ææ( )
CommandType
ææ* 5
.
ææ5 6
StoredProcedure
ææ6 E
;
ææE F
cmd
çç 
.
çç 

Parameters
çç &
.
çç& '
AddWithValue
çç' 3
(
çç3 4
$str
çç4 >
,
çç> ?
emailId
çç@ G
)
ççG H
;
ççH I
using
éé 
(
éé 
SqlDataReader
éé ,
reader
éé- 3
=
éé4 5
cmd
éé6 9
.
éé9 :
ExecuteReader
éé: G
(
ééG H
)
ééH I
)
ééI J
{
êê 
while
ëë !
(
ëë" #
reader
ëë# )
.
ëë) *
Read
ëë* .
(
ëë. /
)
ëë/ 0
)
ëë0 1
{
ìì 
getuser
íí  '
.
íí' (
Add
íí( +
(
íí+ ,
new
îî$ '
Assets
îî( .
{
ïï$ %
PlantID
ğğ( /
=
ğğ0 1
Convert
ğğ2 9
.
ğğ9 :
ToInt32
ğğ: A
(
ğğA B
reader
ğğB H
[
ğğH I
$str
ğğI R
]
ğğR S
)
ğğS T
,
ğğT U
	PlantName
òò( 1
=
òò2 3
string
òò4 :
.
òò: ;
IsNullOrEmpty
òò; H
(
òòH I
reader
òòI O
[
òòO P
$str
òòP \
]
òò\ ]
.
òò] ^
ToString
òò^ f
(
òòf g
)
òòg h
)
òòh i
?
òòj k
$str
òòl n
:
òòo p
reader
òòq w
[
òòw x
$stròòx „
]òò„ …
.òò… †
ToStringòò† 
(òò 
)òò 
,òò ‘
RoleId
óó( .
=
óó/ 0
Convert
óó1 8
.
óó8 9
ToInt32
óó9 @
(
óó@ A
reader
óóA G
[
óóG H
$str
óóH P
]
óóP Q
.
óóQ R
ToString
óóR Z
(
óóZ [
)
óó[ \
)
óó\ ]
}
ôô$ %
)
ôô% &
;
ôô& '
}
õõ 
}
öö 
}
÷÷ 
}
øø 
}
úú 
catch
üü 
(
üü 
	Exception
üü 
ex
üü 
)
üü  
{
ıı 
Logger
şş 
.
şş 
Log
şş 
(
şş 
$str
şş 4
+
şş5 6
ex
şş7 9
.
şş9 :
ToString
şş: B
(
şşB C
)
şşC D
)
şşD E
;
şşE F
return
ÿÿ 
null
ÿÿ 
;
ÿÿ 
}
€€ 
return
 
getuser
 
;
 
}
‚‚ 	
public
ˆˆ 
bool
ˆˆ 
EditConfiguration
ˆˆ %
(
ˆˆ% &
WageUomMapping
ˆˆ& 4
wages
ˆˆ5 :
)
ˆˆ: ;
{
‰‰ 	
try
ŠŠ 
{
‹‹ 
using
ŒŒ 
(
ŒŒ 
SqlConnection
ŒŒ $
sqlConn
ŒŒ% ,
=
ŒŒ- .

SqlConnect
ŒŒ/ 9
(
ŒŒ9 :
)
ŒŒ: ;
)
ŒŒ; <
{
 
using
 
(
 

SqlCommand
 %
command
& -
=
. /
new
0 3

SqlCommand
4 >
(
> ?
$str
? R
,
R S
sqlConn
T [
)
[ \
)
\ ]
{
 
command
’’ 
.
’’  
CommandType
’’  +
=
’’, -
CommandType
’’. 9
.
’’9 :
StoredProcedure
’’: I
;
’’I J
command
““ 
.
““  
ExecuteNonQuery
““  /
(
““/ 0
)
““0 1
;
““1 2
}
”” 
return
•• 
true
•• 
;
••  
}
–– 
}
˜˜ 
catch
™™ 
(
™™ 
	Exception
™™ 
ex
™™ 
)
™™  
{
šš 
Logger
›› 
.
›› 
Log
›› 
(
›› 
$str
›› 6
+
››7 8
ex
››9 ;
.
››; <
ToString
››< D
(
››D E
)
››E F
)
››F G
;
››G H
return
œœ 
false
œœ 
;
œœ 
}
 
}
 	
public
££ 
List
££ 
<
££ 
int
££ 
>
££ 
GetYears
££ !
(
££! "
)
££" #
{
¤¤ 	
List
¥¥ 
<
¥¥ 
int
¥¥ 
>
¥¥ 
YearList
¥¥ 
=
¥¥  
new
¥¥! $
List
¥¥% )
<
¥¥) *
int
¥¥* -
>
¥¥- .
(
¥¥. /
)
¥¥/ 0
;
¥¥0 1
try
¦¦ 
{
§§ 
using
¨¨ 
(
¨¨ 
SqlConnection
¨¨ $
sqlConn
¨¨% ,
=
¨¨- .

SqlConnect
¨¨/ 9
(
¨¨9 :
)
¨¨: ;
)
¨¨; <
{
©© 
using
ªª 
(
ªª 

SqlCommand
ªª %
cmd
ªª& )
=
ªª* +
new
ªª, /

SqlCommand
ªª0 :
(
ªª: ;
$str
ªª; D
,
ªªD E
sqlConn
ªªF M
)
ªªM N
)
ªªN O
{
«« 
cmd
­­ 
.
­­ 
CommandType
­­ '
=
­­( )
CommandType
­­* 5
.
­­5 6
StoredProcedure
­­6 E
;
­­E F
cmd
¯¯ 
.
¯¯ 

Parameters
¯¯ &
.
¯¯& '
AddWithValue
¯¯' 3
(
¯¯3 4
$str
¯¯4 >
,
¯¯> ?
PlantId
¯¯@ G
)
¯¯G H
;
¯¯H I
using
°° 
(
°° 
SqlDataReader
°° ,
reader
°°- 3
=
°°4 5
cmd
°°6 9
.
°°9 :
ExecuteReader
°°: G
(
°°G H
)
°°H I
)
°°I J
{
±± 
while
²² !
(
²²" #
reader
²²# )
.
²²) *
Read
²²* .
(
²². /
)
²²/ 0
)
²²0 1
{
³³ 
YearList
´´  (
.
´´( )
Add
´´) ,
(
´´, -
Convert
´´- 4
.
´´4 5
ToInt32
´´5 <
(
´´< =
reader
´´= C
[
´´C D
$str
´´D M
]
´´M N
)
´´N O
)
´´O P
;
´´P Q
}
µµ 
}
¶¶ 
}
·· 
}
¸¸ 
}
ºº 
catch
¼¼ 
(
¼¼ 
	Exception
¼¼ 
ex
¼¼ 
)
¼¼  
{
½½ 
Logger
¾¾ 
.
¾¾ 
Log
¾¾ 
(
¾¾ 
$str
¾¾ +
+
¾¾, -
ex
¾¾. 0
.
¾¾0 1
ToString
¾¾1 9
(
¾¾9 :
)
¾¾: ;
)
¾¾; <
;
¾¾< =
}
¿¿ 
return
ÀÀ 
YearList
ÀÀ 
;
ÀÀ 
}
ÁÁ 	
public
ÇÇ 
bool
ÇÇ 
SaveBaseYear
ÇÇ  
(
ÇÇ  !
string
ÇÇ! '
year
ÇÇ( ,
)
ÇÇ, -
{
ÈÈ 	
try
ÉÉ 
{
ÊÊ 
using
ËË 
(
ËË 
SqlConnection
ËË $
sqlConn
ËË% ,
=
ËË- .

SqlConnect
ËË/ 9
(
ËË9 :
)
ËË: ;
)
ËË; <
{
ÌÌ 
using
ÎÎ 
(
ÎÎ 

SqlCommand
ÎÎ %
command
ÎÎ& -
=
ÎÎ. /
new
ÎÎ0 3

SqlCommand
ÎÎ4 >
(
ÎÎ> ?
$str
ÎÎ? L
,
ÎÎL M
sqlConn
ÎÎN U
)
ÎÎU V
)
ÎÎV W
{
ÏÏ 
command
ĞĞ 
.
ĞĞ  
CommandType
ĞĞ  +
=
ĞĞ, -
CommandType
ĞĞ. 9
.
ĞĞ9 :
StoredProcedure
ĞĞ: I
;
ĞĞI J
command
ÑÑ 
.
ÑÑ  

Parameters
ÑÑ  *
.
ÑÑ* +
AddWithValue
ÑÑ+ 7
(
ÑÑ7 8
$str
ÑÑ8 B
,
ÑÑB C
PlantId
ÑÑD K
)
ÑÑK L
;
ÑÑL M
command
ÒÒ 
.
ÒÒ  

Parameters
ÒÒ  *
.
ÒÒ* +
AddWithValue
ÒÒ+ 7
(
ÒÒ7 8
$str
ÒÒ8 C
,
ÒÒC D
year
ÒÒE I
)
ÒÒI J
;
ÒÒJ K
command
ÓÓ 
.
ÓÓ  
ExecuteNonQuery
ÓÓ  /
(
ÓÓ/ 0
)
ÓÓ0 1
;
ÓÓ1 2
}
ÔÔ 
return
ÕÕ 
true
ÕÕ 
;
ÕÕ  
}
ÖÖ 
}
ØØ 
catch
ÙÙ 
(
ÙÙ 
	Exception
ÙÙ 
ex
ÙÙ 
)
ÙÙ  
{
ÚÚ 
Logger
ÛÛ 
.
ÛÛ 
Log
ÛÛ 
(
ÛÛ 
$str
ÛÛ 8
+
ÛÛ9 :
ex
ÛÛ; =
.
ÛÛ= >
ToString
ÛÛ> F
(
ÛÛF G
)
ÛÛG H
)
ÛÛH I
;
ÛÛI J
return
ÜÜ 
false
ÜÜ 
;
ÜÜ 
}
İİ 
}
ŞŞ 	
public
ãã 
int
ãã  
GetCurrentBaseYear
ãã %
(
ãã% &
)
ãã& '
{
ää 	
int
åå 
baseyear
åå 
=
åå 
$num
åå 
;
åå 
try
ææ 
{
çç 
using
èè 
(
èè 
SqlConnection
èè $
sqlConn
èè% ,
=
èè- .

SqlConnect
èè/ 9
(
èè9 :
)
èè: ;
)
èè; <
{
éé 
using
êê 
(
êê 

SqlCommand
êê %
cmd
êê& )
=
êê* +
new
êê, /

SqlCommand
êê0 :
(
êê: ;
$str
êê; H
,
êêH I
sqlConn
êêJ Q
)
êêQ R
)
êêR S
{
ëë 
cmd
íí 
.
íí 
CommandType
íí '
=
íí( )
CommandType
íí* 5
.
íí5 6
StoredProcedure
íí6 E
;
ííE F
cmd
ïï 
.
ïï 

Parameters
ïï &
.
ïï& '
AddWithValue
ïï' 3
(
ïï3 4
$str
ïï4 >
,
ïï> ?
PlantId
ïï@ G
)
ïïG H
;
ïïH I
using
ğğ 
(
ğğ 
SqlDataReader
ğğ ,
reader
ğğ- 3
=
ğğ4 5
cmd
ğğ6 9
.
ğğ9 :
ExecuteReader
ğğ: G
(
ğğG H
)
ğğH I
)
ğğI J
{
ññ 
while
òò !
(
òò" #
reader
òò# )
.
òò) *
Read
òò* .
(
òò. /
)
òò/ 0
)
òò0 1
{
óó 
baseyear
ôô  (
=
ôô) *
(
ôô+ ,
Convert
ôô, 3
.
ôô3 4
ToInt32
ôô4 ;
(
ôô; <
reader
ôô< B
[
ôôB C
$str
ôôC N
]
ôôN O
)
ôôO P
)
ôôP Q
;
ôôQ R
}
õõ 
}
öö 
}
÷÷ 
}
øø 
}
úú 
catch
üü 
(
üü 
	Exception
üü 
ex
üü 
)
üü  
{
ıı 
Logger
şş 
.
şş 
Log
şş 
(
şş 
$str
şş +
+
şş, -
ex
şş. 0
.
şş0 1
ToString
şş1 9
(
şş9 :
)
şş: ;
)
şş; <
;
şş< =
}
ÿÿ 
return
€€ 
baseyear
€€ 
;
€€ 
}
 	
public
ŠŠ 
bool
ŠŠ 
UpdateAlarmInfo
ŠŠ #
(
ŠŠ# $
List
ŠŠ$ (
<
ŠŠ( )

AlarmEnble
ŠŠ) 3
>
ŠŠ3 4
	alarminfo
ŠŠ5 >
)
ŠŠ> ?
{
‹‹ 	
try
ŒŒ 
{
 
using
 
(
 
SqlConnection
 $
sqlConn
% ,
=
- .

SqlConnect
/ 9
(
9 :
)
: ;
)
; <
{
 
foreach
 
(
 
var
  
item
! %
in
& (
	alarminfo
) 2
)
2 3
{
‘‘ 
using
’’ 
(
’’ 

SqlCommand
’’ )
command
’’* 1
=
’’2 3
new
’’4 7

SqlCommand
’’8 B
(
’’B C
$str
’’C V
,
’’V W
sqlConn
’’X _
)
’’_ `
)
’’` a
{
““ 
command
•• #
.
••# $
CommandType
••$ /
=
••0 1
CommandType
••2 =
.
••= >
StoredProcedure
••> M
;
••M N
command
–– #
.
––# $

Parameters
––$ .
.
––. /
AddWithValue
––/ ;
(
––; <
$str
––< D
,
––D E
item
––F J
.
––J K
TagID
––K P
)
––P Q
;
––Q R
command
—— #
.
——# $

Parameters
——$ .
.
——. /
AddWithValue
——/ ;
(
——; <
$str
——< G
,
——G H
item
——I M
.
——M N
AssetID
——N U
)
——U V
;
——V W
command
˜˜ #
.
˜˜# $

Parameters
˜˜$ .
.
˜˜. /
AddWithValue
˜˜/ ;
(
˜˜; <
$str
˜˜< H
,
˜˜H I
item
˜˜J N
.
˜˜N O
	isEnabled
˜˜O X
)
˜˜X Y
;
˜˜Y Z
command
™™ #
.
™™# $

Parameters
™™$ .
.
™™. /
AddWithValue
™™/ ;
(
™™; <
$str
™™< E
,
™™E F
item
™™G K
.
™™K L
Target
™™L R
)
™™R S
;
™™S T
command
šš #
.
šš# $
ExecuteNonQuery
šš$ 3
(
šš3 4
)
šš4 5
;
šš5 6
}
›› 
}
œœ 
return
 
true
 
;
  
}
 
}
   
catch
¡¡ 
(
¡¡ 
	Exception
¡¡ 
ex
¡¡ 
)
¡¡  
{
¢¢ 
Logger
££ 
.
££ 
Log
££ 
(
££ 
$str
££ 9
+
££: ;
ex
££< >
.
££> ?
ToString
££? G
(
££G H
)
££H I
)
££I J
;
££J K
return
¤¤ 
false
¤¤ 
;
¤¤ 
}
¥¥ 
}
¦¦ 	
public
­­ 
bool
­­  
AddUSDExchnageRate
­­ &
(
­­& '
double
­­' -
rate
­­. 2
,
­­2 3
int
­­4 7
year
­­8 <
)
­­< =
{
®® 	
try
¯¯ 
{
°° 
using
±± 
(
±± 
SqlConnection
±± $
sqlConn
±±% ,
=
±±- .

SqlConnect
±±/ 9
(
±±9 :
)
±±: ;
)
±±; <
{
²² 
using
´´ 
(
´´ 

SqlCommand
´´ %
command
´´& -
=
´´. /
new
´´0 3

SqlCommand
´´4 >
(
´´> ?
$str
´´? S
,
´´S T
sqlConn
´´U \
)
´´\ ]
)
´´] ^
{
µµ 
command
¶¶ 
.
¶¶  
CommandType
¶¶  +
=
¶¶, -
CommandType
¶¶. 9
.
¶¶9 :
StoredProcedure
¶¶: I
;
¶¶I J
command
·· 
.
··  

Parameters
··  *
.
··* +
AddWithValue
··+ 7
(
··7 8
$str
··8 B
,
··B C
rate
··D H
)
··H I
;
··I J
command
¸¸ 
.
¸¸  

Parameters
¸¸  *
.
¸¸* +
AddWithValue
¸¸+ 7
(
¸¸7 8
$str
¸¸8 ?
,
¸¸? @
year
¸¸A E
)
¸¸E F
;
¸¸F G
command
¹¹ 
.
¹¹  

Parameters
¹¹  *
.
¹¹* +
AddWithValue
¹¹+ 7
(
¹¹7 8
$str
¹¹8 B
,
¹¹B C
PlantId
¹¹D K
)
¹¹K L
;
¹¹L M
command
ºº 
.
ºº  
ExecuteNonQuery
ºº  /
(
ºº/ 0
)
ºº0 1
;
ºº1 2
}
»» 
return
½½ 
true
½½ 
;
½½  
}
¾¾ 
}
ÀÀ 
catch
ÁÁ 
(
ÁÁ 
	Exception
ÁÁ 
ex
ÁÁ 
)
ÁÁ  
{
ÂÂ 
Logger
ÃÃ 
.
ÃÃ 
Log
ÃÃ 
(
ÃÃ 
$str
ÃÃ 8
+
ÃÃ9 :
ex
ÃÃ; =
.
ÃÃ= >
ToString
ÃÃ> F
(
ÃÃF G
)
ÃÃG H
)
ÃÃH I
;
ÃÃI J
return
ÄÄ 
false
ÄÄ 
;
ÄÄ 
}
ÅÅ 
}
ÆÆ 	
public
ËË 
List
ËË 
<
ËË 
Currency
ËË 
>
ËË 
GetCurrency
ËË )
(
ËË) *
)
ËË* +
{
ÌÌ 	
List
ÍÍ 
<
ÍÍ 
Currency
ÍÍ 
>
ÍÍ 
currencyDict
ÍÍ '
=
ÍÍ( )
new
ÍÍ* -
List
ÍÍ. 2
<
ÍÍ2 3
Currency
ÍÍ3 ;
>
ÍÍ; <
(
ÍÍ< =
)
ÍÍ= >
;
ÍÍ> ?
try
ÎÎ 
{
ÏÏ 
using
ĞĞ 
(
ĞĞ 
SqlConnection
ĞĞ $
sqlConn
ĞĞ% ,
=
ĞĞ- .

SqlConnect
ĞĞ/ 9
(
ĞĞ9 :
)
ĞĞ: ;
)
ĞĞ; <
{
ÑÑ 
using
ÒÒ 
(
ÒÒ 

SqlCommand
ÒÒ %
cmd
ÒÒ& )
=
ÒÒ* +
new
ÒÒ, /

SqlCommand
ÒÒ0 :
(
ÒÒ: ;
$str
ÒÒ; H
,
ÒÒH I
sqlConn
ÒÒJ Q
)
ÒÒQ R
)
ÒÒR S
{
ÓÓ 
cmd
ÕÕ 
.
ÕÕ 
CommandType
ÕÕ '
=
ÕÕ( )
CommandType
ÕÕ* 5
.
ÕÕ5 6
StoredProcedure
ÕÕ6 E
;
ÕÕE F
using
ÖÖ 
(
ÖÖ 
SqlDataReader
ÖÖ ,
reader
ÖÖ- 3
=
ÖÖ4 5
cmd
ÖÖ6 9
.
ÖÖ9 :
ExecuteReader
ÖÖ: G
(
ÖÖG H
)
ÖÖH I
)
ÖÖI J
{
×× 
while
ØØ !
(
ØØ" #
reader
ØØ# )
.
ØØ) *
Read
ØØ* .
(
ØØ. /
)
ØØ/ 0
)
ØØ0 1
{
ÙÙ 
currencyDict
ÚÚ  ,
.
ÚÚ, -
Add
ÚÚ- 0
(
ÚÚ0 1
new
ÛÛ$ '
Currency
ÛÛ( 0
{
ÜÜ$ %
CurrncyName
İİ( 3
=
İİ4 5
reader
İİ6 <
[
İİ< =
$str
İİ= C
]
İİC D
.
İİD E
ToString
İİE M
(
İİM N
)
İİN O
,
İİO P
Country
ŞŞ( /
=
ŞŞ0 1
reader
ŞŞ2 8
[
ŞŞ8 9
$str
ŞŞ9 F
]
ŞŞF G
.
ŞŞG H
ToString
ŞŞH P
(
ŞŞP Q
)
ŞŞQ R
}
ßß$ %
)
áá  !
;
áá! "
}
ââ 
}
ãã 
}
ää 
}
åå 
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
êê 
Logger
ëë 
.
ëë 
Log
ëë 
(
ëë 
$str
ëë -
+
ëë. /
ex
ëë0 2
.
ëë2 3
ToString
ëë3 ;
(
ëë; <
)
ëë< =
)
ëë= >
;
ëë> ?
}
ìì 
return
íí 
currencyDict
íí 
;
íí  
}
îî 	
public
ôô 
bool
ôô 
UpdateCurrency
ôô "
(
ôô" #
string
ôô# )
currency
ôô* 2
)
ôô2 3
{
õõ 	
try
÷÷ 
{
øø 
using
ùù 
(
ùù 
SqlConnection
ùù $
sqlConn
ùù% ,
=
ùù- .

SqlConnect
ùù/ 9
(
ùù9 :
)
ùù: ;
)
ùù; <
{
úú 
using
üü 
(
üü 

SqlCommand
üü %
command
üü& -
=
üü. /
new
üü0 3

SqlCommand
üü4 >
(
üü> ?
$str
üü? O
,
üüO P
sqlConn
üüQ X
)
üüX Y
)
üüY Z
{
ıı 
command
şş 
.
şş  
CommandType
şş  +
=
şş, -
CommandType
şş. 9
.
şş9 :
StoredProcedure
şş: I
;
şşI J
command
ÿÿ 
.
ÿÿ  

Parameters
ÿÿ  *
.
ÿÿ* +
AddWithValue
ÿÿ+ 7
(
ÿÿ7 8
$str
ÿÿ8 B
,
ÿÿB C
PlantId
ÿÿD K
)
ÿÿK L
;
ÿÿL M
command
€	€	 
.
€	€	  

Parameters
€	€	  *
.
€	€	* +
AddWithValue
€	€	+ 7
(
€	€	7 8
$str
€	€	8 C
,
€	€	C D
currency
€	€	E M
)
€	€	M N
;
€	€	N O
command
		 
.
		  
ExecuteNonQuery
		  /
(
		/ 0
)
		0 1
;
		1 2
}
‚	‚	 
return
„	„	 
true
„	„	 
;
„	„	  
}
…	…	 
}
‡	‡	 
catch
ˆ	ˆ	 
(
ˆ	ˆ	 
	Exception
ˆ	ˆ	 
ex
ˆ	ˆ	 
)
ˆ	ˆ	  
{
‰	‰	 
Logger
Š	Š	 
.
Š	Š	 
Log
Š	Š	 
(
Š	Š	 
$str
Š	Š	 6
+
Š	Š	7 8
ex
Š	Š	9 ;
.
Š	Š	; <
ToString
Š	Š	< D
(
Š	Š	D E
)
Š	Š	E F
)
Š	Š	F G
;
Š	Š	G H
return
‹	‹	 
false
‹	‹	 
;
‹	‹	 
}
Œ	Œ	 
}
		 	
public
’	’	 
string
’	’	  
GetUpdatedCurrency
’	’	 (
(
’	’	( )
)
’	’	) *
{
“	“	 	
string
”	”	 
currency
”	”	 
=
”	”	 
string
”	”	 $
.
”	”	$ %
Empty
”	”	% *
;
”	”	* +
try
•	•	 
{
–	–	 
using
—	—	 
(
—	—	 
SqlConnection
—	—	 $
sqlConn
—	—	% ,
=
—	—	- .

SqlConnect
—	—	/ 9
(
—	—	9 :
)
—	—	: ;
)
—	—	; <
{
˜	˜	 
using
™	™	 
(
™	™	 

SqlCommand
™	™	 %
cmd
™	™	& )
=
™	™	* +
new
™	™	, /

SqlCommand
™	™	0 :
(
™	™	: ;
$str
™	™	; O
,
™	™	O P
sqlConn
™	™	Q X
)
™	™	X Y
)
™	™	Y Z
{
š	š	 
cmd
œ	œ	 
.
œ	œ	 
CommandType
œ	œ	 '
=
œ	œ	( )
CommandType
œ	œ	* 5
.
œ	œ	5 6
StoredProcedure
œ	œ	6 E
;
œ	œ	E F
cmd
		 
.
		 

Parameters
		 &
.
		& '
AddWithValue
		' 3
(
		3 4
$str
		4 >
,
		> ?
PlantId
		@ G
)
		G H
;
		H I
using
		 
(
		 
SqlDataReader
		 ,
reader
		- 3
=
		4 5
cmd
		6 9
.
		9 :
ExecuteReader
		: G
(
		G H
)
		H I
)
		I J
{
Ÿ	Ÿ	 
while
 	 	 !
(
 	 	" #
reader
 	 	# )
.
 	 	) *
Read
 	 	* .
(
 	 	. /
)
 	 	/ 0
)
 	 	0 1
{
¡	¡	 
currency
¢	¢	  (
=
¢	¢	) *
reader
¢	¢	+ 1
[
¢	¢	1 2
$str
¢	¢	2 <
]
¢	¢	< =
.
¢	¢	= >
ToString
¢	¢	> F
(
¢	¢	F G
)
¢	¢	G H
;
¢	¢	H I
}
£	£	 
;
£	£	 
}
¤	¤	 
}
¥	¥	 
}
¦	¦	 
}
¨	¨	 
catch
ª	ª	 
(
ª	ª	 
	Exception
ª	ª	 
ex
ª	ª	 
)
ª	ª	  
{
«	«	 
Logger
¬	¬	 
.
¬	¬	 
Log
¬	¬	 
(
¬	¬	 
$str
¬	¬	 +
+
¬	¬	, -
ex
¬	¬	. 0
.
¬	¬	0 1
ToString
¬	¬	1 9
(
¬	¬	9 :
)
¬	¬	: ;
)
¬	¬	; <
;
¬	¬	< =
}
­	­	 
return
®	®	 
currency
®	®	 
;
®	®	 
}
¯	¯	 	
public
±	±	 
double
±	±	 

GetUSDRate
±	±	  
(
±	±	  !
)
±	±	! "
{
²	²	 	
double
³	³	 
USDRate
³	³	 
=
³	³	 
$num
³	³	 
;
³	³	 
try
´	´	 
{
µ	µ	 
using
¶	¶	 
(
¶	¶	 
SqlConnection
¶	¶	 $
sqlConn
¶	¶	% ,
=
¶	¶	- .

SqlConnect
¶	¶	/ 9
(
¶	¶	9 :
)
¶	¶	: ;
)
¶	¶	; <
{
·	·	 
using
¸	¸	 
(
¸	¸	 

SqlCommand
¸	¸	 %
cmd
¸	¸	& )
=
¸	¸	* +
new
¸	¸	, /

SqlCommand
¸	¸	0 :
(
¸	¸	: ;
$str
¸	¸	; L
,
¸	¸	L M
sqlConn
¸	¸	N U
)
¸	¸	U V
)
¸	¸	V W
{
¹	¹	 
cmd
»	»	 
.
»	»	 
CommandType
»	»	 '
=
»	»	( )
CommandType
»	»	* 5
.
»	»	5 6
StoredProcedure
»	»	6 E
;
»	»	E F
cmd
¼	¼	 
.
¼	¼	 

Parameters
¼	¼	 &
.
¼	¼	& '
AddWithValue
¼	¼	' 3
(
¼	¼	3 4
$str
¼	¼	4 >
,
¼	¼	> ?
PlantId
¼	¼	@ G
)
¼	¼	G H
;
¼	¼	H I
using
½	½	 
(
½	½	 
SqlDataReader
½	½	 ,
reader
½	½	- 3
=
½	½	4 5
cmd
½	½	6 9
.
½	½	9 :
ExecuteReader
½	½	: G
(
½	½	G H
)
½	½	H I
)
½	½	I J
{
¾	¾	 
while
¿	¿	 !
(
¿	¿	" #
reader
¿	¿	# )
.
¿	¿	) *
Read
¿	¿	* .
(
¿	¿	. /
)
¿	¿	/ 0
)
¿	¿	0 1
{
À	À	 
USDRate
Á	Á	  '
=
Á	Á	( )
Convert
Á	Á	* 1
.
Á	Á	1 2
ToDouble
Á	Á	2 :
(
Á	Á	: ;
reader
Á	Á	; A
[
Á	Á	A B
$str
Á	Á	B P
]
Á	Á	P Q
)
Á	Á	Q R
;
Á	Á	R S
}
Â	Â	 
;
Â	Â	 
}
Ã	Ã	 
}
Ä	Ä	 
}
Å	Å	 
}
Ç	Ç	 
catch
É	É	 
(
É	É	 
	Exception
É	É	 
ex
É	É	 
)
É	É	  
{
Ê	Ê	 
Logger
Ë	Ë	 
.
Ë	Ë	 
Log
Ë	Ë	 
(
Ë	Ë	 
$str
Ë	Ë	 -
+
Ë	Ë	. /
ex
Ë	Ë	0 2
.
Ë	Ë	2 3
ToString
Ë	Ë	3 ;
(
Ë	Ë	; <
)
Ë	Ë	< =
)
Ë	Ë	= >
;
Ë	Ë	> ?
}
Ì	Ì	 
return
Í	Í	 
USDRate
Í	Í	 
;
Í	Í	 
}
Î	Î	 	
public
Ó	Ó	 
List
Ó	Ó	 
<
Ó	Ó	 
Details
Ó	Ó	 
>
Ó	Ó	 
GetUOMs
Ó	Ó	 $
(
Ó	Ó	$ %
)
Ó	Ó	% &
{
Ô	Ô	 	
List
Õ	Õ	 
<
Õ	Õ	 
Details
Õ	Õ	 
>
Õ	Õ	 
uomList
Õ	Õ	 !
=
Õ	Õ	" #
new
Õ	Õ	$ '
List
Õ	Õ	( ,
<
Õ	Õ	, -
Details
Õ	Õ	- 4
>
Õ	Õ	4 5
(
Õ	Õ	5 6
)
Õ	Õ	6 7
;
Õ	Õ	7 8
try
Ö	Ö	 
{
×	×	 
using
Ø	Ø	 
(
Ø	Ø	 
SqlConnection
Ø	Ø	 $
sqlConn
Ø	Ø	% ,
=
Ø	Ø	- .

SqlConnect
Ø	Ø	/ 9
(
Ø	Ø	9 :
)
Ø	Ø	: ;
)
Ø	Ø	; <
{
Ù	Ù	 
using
Ú	Ú	 
(
Ú	Ú	 

SqlCommand
Ú	Ú	 %
cmd
Ú	Ú	& )
=
Ú	Ú	* +
new
Ú	Ú	, /

SqlCommand
Ú	Ú	0 :
(
Ú	Ú	: ;
$str
Ú	Ú	; C
,
Ú	Ú	C D
sqlConn
Ú	Ú	E L
)
Ú	Ú	L M
)
Ú	Ú	M N
{
Û	Û	 
cmd
İ	İ	 
.
İ	İ	 
CommandType
İ	İ	 '
=
İ	İ	( )
CommandType
İ	İ	* 5
.
İ	İ	5 6
StoredProcedure
İ	İ	6 E
;
İ	İ	E F
using
Ş	Ş	 
(
Ş	Ş	 
SqlDataReader
Ş	Ş	 ,
reader
Ş	Ş	- 3
=
Ş	Ş	4 5
cmd
Ş	Ş	6 9
.
Ş	Ş	9 :
ExecuteReader
Ş	Ş	: G
(
Ş	Ş	G H
)
Ş	Ş	H I
)
Ş	Ş	I J
{
ß	ß	 
while
à	à	 !
(
à	à	" #
reader
à	à	# )
.
à	à	) *
Read
à	à	* .
(
à	à	. /
)
à	à	/ 0
)
à	à	0 1
{
á	á	 
uomList
â	â	  '
.
â	â	' (
Add
â	â	( +
(
â	â	+ ,
new
ã	ã	$ '
Details
ã	ã	( /
{
ä	ä	$ %
ID
å	å	( *
=
å	å	+ ,
Convert
å	å	- 4
.
å	å	4 5
ToInt32
å	å	5 <
(
å	å	< =
reader
å	å	= C
[
å	å	C D
$str
å	å	D H
]
å	å	H I
.
å	å	I J
ToString
å	å	J R
(
å	å	R S
)
å	å	S T
)
å	å	T U
,
å	å	U V
Name
æ	æ	( ,
=
æ	æ	- .
reader
æ	æ	/ 5
[
æ	æ	5 6
$str
æ	æ	6 C
]
æ	æ	C D
.
æ	æ	D E
ToString
æ	æ	E M
(
æ	æ	M N
)
æ	æ	N O
}
ç	ç	$ %
)
é	é	  !
;
é	é	! "
}
ê	ê	 
}
ë	ë	 
}
ì	ì	 
}
í	í	 
}
ï	ï	 
catch
ñ	ñ	 
(
ñ	ñ	 
	Exception
ñ	ñ	 
ex
ñ	ñ	 
)
ñ	ñ	  
{
ò	ò	 
Logger
ó	ó	 
.
ó	ó	 
Log
ó	ó	 
(
ó	ó	 
$str
ó	ó	 -
+
ó	ó	. /
ex
ó	ó	0 2
.
ó	ó	2 3
ToString
ó	ó	3 ;
(
ó	ó	; <
)
ó	ó	< =
)
ó	ó	= >
;
ó	ó	> ?
}
ô	ô	 
return
õ	õ	 
uomList
õ	õ	 
;
õ	õ	 
}
ö	ö	 	
public
û	û	 
List
û	û	 
<
û	û	 
Details
û	û	 
>
û	û	 
GetDeviceID
û	û	 (
(
û	û	( )
)
û	û	) *
{
ü	ü	 	
List
ı	ı	 
<
ı	ı	 
Details
ı	ı	 
>
ı	ı	 

deviceList
ı	ı	 $
=
ı	ı	% &
new
ı	ı	' *
List
ı	ı	+ /
<
ı	ı	/ 0
Details
ı	ı	0 7
>
ı	ı	7 8
(
ı	ı	8 9
)
ı	ı	9 :
;
ı	ı	: ;
try
ş	ş	 
{
ÿ	ÿ	 
using
€
€
 
(
€
€
 
SqlConnection
€
€
 $
sqlConn
€
€
% ,
=
€
€
- .

SqlConnect
€
€
/ 9
(
€
€
9 :
)
€
€
: ;
)
€
€
; <
{


 
using
‚
‚
 
(
‚
‚
 

SqlCommand
‚
‚
 %
cmd
‚
‚
& )
=
‚
‚
* +
new
‚
‚
, /

SqlCommand
‚
‚
0 :
(
‚
‚
: ;
$str
‚
‚
; J
,
‚
‚
J K
sqlConn
‚
‚
L S
)
‚
‚
S T
)
‚
‚
T U
{
ƒ
ƒ
 
cmd
…
…
 
.
…
…
 
CommandType
…
…
 '
=
…
…
( )
CommandType
…
…
* 5
.
…
…
5 6
StoredProcedure
…
…
6 E
;
…
…
E F
using
†
†
 
(
†
†
 
SqlDataReader
†
†
 ,
reader
†
†
- 3
=
†
†
4 5
cmd
†
†
6 9
.
†
†
9 :
ExecuteReader
†
†
: G
(
†
†
G H
)
†
†
H I
)
†
†
I J
{
‡
‡
 
while
ˆ
ˆ
 !
(
ˆ
ˆ
" #
reader
ˆ
ˆ
# )
.
ˆ
ˆ
) *
Read
ˆ
ˆ
* .
(
ˆ
ˆ
. /
)
ˆ
ˆ
/ 0
)
ˆ
ˆ
0 1
{
‰
‰
 

deviceList
Š
Š
  *
.
Š
Š
* +
Add
Š
Š
+ .
(
Š
Š
. /
new
‹
‹
$ '
Details
‹
‹
( /
{
Œ
Œ
$ %
ID


( *
=


+ ,
Convert


- 4
.


4 5
ToInt32


5 <
(


< =
reader


= C
[


C D
$str


D H
]


H I
.


I J
ToString


J R
(


R S
)


S T
)


T U
,


U V
Name


( ,
=


- .
reader


/ 5
[


5 6
$str


6 C
]


C D
.


D E
ToString


E M
(


M N
)


N O
}


$ %
)
‘
‘
  !
;
‘
‘
! "
}
’
’
 
}
“
“
 
}
”
”
 
}
•
•
 
}
—
—
 
catch
™
™
 
(
™
™
 
	Exception
™
™
 
ex
™
™
 
)
™
™
  
{
š
š
 
Logger
›
›
 
.
›
›
 
Log
›
›
 
(
›
›
 
$str
›
›
 -
+
›
›
. /
ex
›
›
0 2
.
›
›
2 3
ToString
›
›
3 ;
(
›
›
; <
)
›
›
< =
)
›
›
= >
;
›
›
> ?
}
œ
œ
 
return


 

deviceList


 
;


 
}


 	
public
 
 
 
bool
 
 
 
AddUom
 
 
 
(
 
 
 
string
 
 
 !
uom
 
 
" %
)
 
 
% &
{
¡
¡
 	
try
¢
¢
 
{
£
£
 
using
¤
¤
 
(
¤
¤
 
SqlConnection
¤
¤
 $
sqlConn
¤
¤
% ,
=
¤
¤
- .

SqlConnect
¤
¤
/ 9
(
¤
¤
9 :
)
¤
¤
: ;
)
¤
¤
; <
{
¥
¥
 
using
¦
¦
 
(
¦
¦
 

SqlCommand
¦
¦
 %
command
¦
¦
& -
=
¦
¦
. /
new
¦
¦
0 3

SqlCommand
¦
¦
4 >
(
¦
¦
> ?
$str
¦
¦
? G
,
¦
¦
G H
sqlConn
¦
¦
I P
)
¦
¦
P Q
)
¦
¦
Q R
{
§
§
 
command
©
©
 
.
©
©
  
CommandType
©
©
  +
=
©
©
, -
CommandType
©
©
. 9
.
©
©
9 :
StoredProcedure
©
©
: I
;
©
©
I J
command
ª
ª
 
.
ª
ª
  

Parameters
ª
ª
  *
.
ª
ª
* +
AddWithValue
ª
ª
+ 7
(
ª
ª
7 8
$str
ª
ª
8 >
,
ª
ª
> ?
uom
ª
ª
@ C
)
ª
ª
C D
;
ª
ª
D E
command
«
«
 
.
«
«
  

Parameters
«
«
  *
.
«
«
* +
AddWithValue
«
«
+ 7
(
«
«
7 8
$str
«
«
8 D
,
«
«
D E
UserName
«
«
F N
)
«
«
N O
;
«
«
O P
command
¬
¬
 
.
¬
¬
  
ExecuteNonQuery
¬
¬
  /
(
¬
¬
/ 0
)
¬
¬
0 1
;
¬
¬
1 2
}
­
­
 
return
¯
¯
 
true
¯
¯
 
;
¯
¯
  
}
°
°
 
}
²
²
 
catch
³
³
 
(
³
³
 
	Exception
³
³
 
ex
³
³
 
)
³
³
  
{
´
´
 
Logger
µ
µ
 
.
µ
µ
 
Log
µ
µ
 
(
µ
µ
 
$str
µ
µ
 2
+
µ
µ
3 4
ex
µ
µ
5 7
.
µ
µ
7 8
ToString
µ
µ
8 @
(
µ
µ
@ A
)
µ
µ
A B
)
µ
µ
B C
;
µ
µ
C D
return
¶
¶
 
false
¶
¶
 
;
¶
¶
 
}
·
·
 
}
¸
¸
 	
public
º
º
 
bool
º
º
 
AddDeviceId
º
º
 
(
º
º
  
string
º
º
  &
Id
º
º
' )
)
º
º
) *
{
»
»
 	
try
¼
¼
 
{
½
½
 
using
¾
¾
 
(
¾
¾
 
SqlConnection
¾
¾
 $
sqlConn
¾
¾
% ,
=
¾
¾
- .

SqlConnect
¾
¾
/ 9
(
¾
¾
9 :
)
¾
¾
: ;
)
¾
¾
; <
{
¿
¿
 
using
À
À
 
(
À
À
 

SqlCommand
À
À
 %
command
À
À
& -
=
À
À
. /
new
À
À
0 3

SqlCommand
À
À
4 >
(
À
À
> ?
$str
À
À
? L
,
À
À
L M
sqlConn
À
À
N U
)
À
À
U V
)
À
À
V W
{
Á
Á
 
command
Ã
Ã
 
.
Ã
Ã
  
CommandType
Ã
Ã
  +
=
Ã
Ã
, -
CommandType
Ã
Ã
. 9
.
Ã
Ã
9 :
StoredProcedure
Ã
Ã
: I
;
Ã
Ã
I J
command
Ä
Ä
 
.
Ä
Ä
  

Parameters
Ä
Ä
  *
.
Ä
Ä
* +
AddWithValue
Ä
Ä
+ 7
(
Ä
Ä
7 8
$str
Ä
Ä
8 C
,
Ä
Ä
C D
Id
Ä
Ä
E G
)
Ä
Ä
G H
;
Ä
Ä
H I
command
Å
Å
 
.
Å
Å
  
ExecuteNonQuery
Å
Å
  /
(
Å
Å
/ 0
)
Å
Å
0 1
;
Å
Å
1 2
}
Æ
Æ
 
return
È
È
 
true
È
È
 
;
È
È
  
}
É
É
 
}
Ë
Ë
 
catch
Ì
Ì
 
(
Ì
Ì
 
	Exception
Ì
Ì
 
ex
Ì
Ì
 
)
Ì
Ì
  
{
Í
Í
 
Logger
Î
Î
 
.
Î
Î
 
Log
Î
Î
 
(
Î
Î
 
$str
Î
Î
 5
+
Î
Î
6 7
ex
Î
Î
8 :
.
Î
Î
: ;
ToString
Î
Î
; C
(
Î
Î
C D
)
Î
Î
D E
)
Î
Î
E F
;
Î
Î
F G
return
Ï
Ï
 
false
Ï
Ï
 
;
Ï
Ï
 
}
Ğ
Ğ
 
}
Ñ
Ñ
 	
public
Ó
Ó
 
bool
Ó
Ó
 
AddEmailConfig
Ó
Ó
 "
(
Ó
Ó
" #
List
Ó
Ó
# '
<
Ó
Ó
' ( 
EmailConfiguration
Ó
Ó
( :
>
Ó
Ó
: ;
emailConfig
Ó
Ó
< G
)
Ó
Ó
G H
{
Ô
Ô
 	
try
Õ
Õ
 
{
Ö
Ö
 
using
×
×
 
(
×
×
 
SqlConnection
×
×
 $
sqlConn
×
×
% ,
=
×
×
- .

SqlConnect
×
×
/ 9
(
×
×
9 :
)
×
×
: ;
)
×
×
; <
{
Ø
Ø
 
foreach
Ù
Ù
 
(
Ù
Ù
 
var
Ù
Ù
  
item
Ù
Ù
! %
in
Ù
Ù
& (
emailConfig
Ù
Ù
) 4
)
Ù
Ù
4 5
{
Ú
Ú
 
using
Û
Û
 
(
Û
Û
 

SqlCommand
Û
Û
 )
command
Û
Û
* 1
=
Û
Û
2 3
new
Û
Û
4 7

SqlCommand
Û
Û
8 B
(
Û
Û
B C
$str
Û
Û
C S
,
Û
Û
S T
sqlConn
Û
Û
U \
)
Û
Û
\ ]
)
Û
Û
] ^
{
Ü
Ü
 
command
Ş
Ş
 #
.
Ş
Ş
# $
CommandType
Ş
Ş
$ /
=
Ş
Ş
0 1
CommandType
Ş
Ş
2 =
.
Ş
Ş
= >
StoredProcedure
Ş
Ş
> M
;
Ş
Ş
M N
command
ß
ß
 #
.
ß
ß
# $

Parameters
ß
ß
$ .
.
ß
ß
. /
AddWithValue
ß
ß
/ ;
(
ß
ß
; <
$str
ß
ß
< I
,
ß
ß
I J
item
ß
ß
K O
.
ß
ß
O P

smtpServer
ß
ß
P Z
)
ß
ß
Z [
;
ß
ß
[ \
command
à
à
 #
.
à
à
# $

Parameters
à
à
$ .
.
à
à
. /
AddWithValue
à
à
/ ;
(
à
à
; <
$str
à
à
< G
,
à
à
G H
item
à
à
I M
.
à
à
M N
smtpPort
à
à
N V
)
à
à
V W
;
à
à
W X
command
á
á
 #
.
á
á
# $

Parameters
á
á
$ .
.
á
á
. /
AddWithValue
á
á
/ ;
(
á
á
; <
$str
á
á
< K
,
á
á
K L
(
á
á
M N
item
á
á
N R
.
á
á
R S
smtpUserName
á
á
S _
==
á
á
` b
null
á
á
c g
)
á
á
g h
?
á
á
i j
$str
á
á
k o
:
á
á
p q
item
á
á
r v
.
á
á
v w
smtpUserNameá
á
w ƒ
)á
á
ƒ „
;á
á
„ …
command
â
â
 #
.
â
â
# $

Parameters
â
â
$ .
.
â
â
. /
AddWithValue
â
â
/ ;
(
â
â
; <
$str
â
â
< K
,
â
â
K L
(
â
â
M N
item
â
â
N R
.
â
â
R S
smtpPassword
â
â
S _
==
â
â
` b
null
â
â
c g
)
â
â
g h
?
â
â
i j
$str
â
â
k o
:
â
â
p q
item
â
â
r v
.
â
â
v w
smtpPasswordâ
â
w ƒ
)â
â
ƒ „
;â
â
„ …
command
ã
ã
 #
.
ã
ã
# $

Parameters
ã
ã
$ .
.
ã
ã
. /
AddWithValue
ã
ã
/ ;
(
ã
ã
; <
$str
ã
ã
< H
,
ã
ã
H I
UserName
ã
ã
J R
)
ã
ã
R S
;
ã
ã
S T
command
ä
ä
 #
.
ä
ä
# $
ExecuteNonQuery
ä
ä
$ 3
(
ä
ä
3 4
)
ä
ä
4 5
;
ä
ä
5 6
}
å
å
 
}
æ
æ
 
return
ç
ç
 
true
ç
ç
 
;
ç
ç
  
}
è
è
 
}
ê
ê
 
catch
ë
ë
 
(
ë
ë
 
	Exception
ë
ë
 
ex
ë
ë
 
)
ë
ë
  
{
ì
ì
 
Logger
í
í
 
.
í
í
 
Log
í
í
 
(
í
í
 
$str
í
í
 8
+
í
í
9 :
ex
í
í
; =
.
í
í
= >
ToString
í
í
> F
(
í
í
F G
)
í
í
G H
)
í
í
H I
;
í
í
I J
return
î
î
 
false
î
î
 
;
î
î
 
}
ï
ï
 
}
ğ
ğ
 	
public
ò
ò
 
bool
ò
ò
 
UpdateDevice
ò
ò
  
(
ò
ò
  !
int
ò
ò
! $
id
ò
ò
% '
,
ò
ò
' (
string
ò
ò
) /
deviceid
ò
ò
0 8
)
ò
ò
8 9
{
ó
ó
 	
try
ô
ô
 
{
õ
õ
 
using
ö
ö
 
(
ö
ö
 
SqlConnection
ö
ö
 $
sqlConn
ö
ö
% ,
=
ö
ö
- .

SqlConnect
ö
ö
/ 9
(
ö
ö
9 :
)
ö
ö
: ;
)
ö
ö
; <
{
÷
÷
 
using
ù
ù
 
(
ù
ù
 

SqlCommand
ù
ù
 %
command
ù
ù
& -
=
ù
ù
. /
new
ù
ù
0 3

SqlCommand
ù
ù
4 >
(
ù
ù
> ?
$str
ù
ù
? M
,
ù
ù
M N
sqlConn
ù
ù
O V
)
ù
ù
V W
)
ù
ù
W X
{
ú
ú
 
command
û
û
 
.
û
û
  
CommandType
û
û
  +
=
û
û
, -
CommandType
û
û
. 9
.
û
û
9 :
StoredProcedure
û
û
: I
;
û
û
I J
command
ü
ü
 
.
ü
ü
  

Parameters
ü
ü
  *
.
ü
ü
* +
AddWithValue
ü
ü
+ 7
(
ü
ü
7 8
$str
ü
ü
8 =
,
ü
ü
= >
id
ü
ü
? A
)
ü
ü
A B
;
ü
ü
B C
command
ı
ı
 
.
ı
ı
  

Parameters
ı
ı
  *
.
ı
ı
* +
AddWithValue
ı
ı
+ 7
(
ı
ı
7 8
$str
ı
ı
8 C
,
ı
ı
C D
deviceid
ı
ı
E M
)
ı
ı
M N
;
ı
ı
N O
command
ş
ş
 
.
ş
ş
  

Parameters
ş
ş
  *
.
ş
ş
* +
AddWithValue
ş
ş
+ 7
(
ş
ş
7 8
$str
ş
ş
8 E
,
ş
ş
E F
UserName
ş
ş
G O
)
ş
ş
O P
;
ş
ş
P Q
command
ÿ
ÿ
 
.
ÿ
ÿ
  
ExecuteNonQuery
ÿ
ÿ
  /
(
ÿ
ÿ
/ 0
)
ÿ
ÿ
0 1
;
ÿ
ÿ
1 2
}
€€ 
return
‚‚ 
true
‚‚ 
;
‚‚  
}
ƒƒ 
}
…… 
catch
†† 
(
†† 
	Exception
†† 
ex
†† 
)
††  
{
‡‡ 
Logger
ˆˆ 
.
ˆˆ 
Log
ˆˆ 
(
ˆˆ 
$str
ˆˆ 6
+
ˆˆ7 8
ex
ˆˆ9 ;
.
ˆˆ; <
ToString
ˆˆ< D
(
ˆˆD E
)
ˆˆE F
)
ˆˆF G
;
ˆˆG H
return
‰‰ 
false
‰‰ 
;
‰‰ 
}
ŠŠ 
}
‹‹ 	
public
 
bool
 
	UpdateUOM
 
(
 
int
 !
id
" $
,
$ %
string
& ,
uom
- 0
)
0 1
{
 	
try
 
{
 
using
‘‘ 
(
‘‘ 
SqlConnection
‘‘ $
sqlConn
‘‘% ,
=
‘‘- .

SqlConnect
‘‘/ 9
(
‘‘9 :
)
‘‘: ;
)
‘‘; <
{
’’ 
using
”” 
(
”” 

SqlCommand
”” %
command
””& -
=
””. /
new
””0 3

SqlCommand
””4 >
(
””> ?
$str
””? J
,
””J K
sqlConn
””L S
)
””S T
)
””T U
{
•• 
command
–– 
.
––  
CommandType
––  +
=
––, -
CommandType
––. 9
.
––9 :
StoredProcedure
––: I
;
––I J
command
—— 
.
——  

Parameters
——  *
.
——* +
AddWithValue
——+ 7
(
——7 8
$str
——8 =
,
——= >
id
——? A
)
——A B
;
——B C
command
˜˜ 
.
˜˜  

Parameters
˜˜  *
.
˜˜* +
AddWithValue
˜˜+ 7
(
˜˜7 8
$str
˜˜8 @
,
˜˜@ A
uom
˜˜B E
)
˜˜E F
;
˜˜F G
command
™™ 
.
™™  

Parameters
™™  *
.
™™* +
AddWithValue
™™+ 7
(
™™7 8
$str
™™8 E
,
™™E F
UserName
™™G O
)
™™O P
;
™™P Q
command
šš 
.
šš  
ExecuteNonQuery
šš  /
(
šš/ 0
)
šš0 1
;
šš1 2
}
›› 
return
 
true
 
;
  
}
 
}
   
catch
¡¡ 
(
¡¡ 
	Exception
¡¡ 
ex
¡¡ 
)
¡¡  
{
¢¢ 
Logger
££ 
.
££ 
Log
££ 
(
££ 
$str
££ 3
+
££4 5
ex
££6 8
.
££8 9
ToString
££9 A
(
££A B
)
££B C
)
££C D
;
££D E
return
¤¤ 
false
¤¤ 
;
¤¤ 
}
¥¥ 
}
¦¦ 	
public
¨¨ 
List
¨¨ 
<
¨¨  
EmailConfiguration
¨¨ &
>
¨¨& '
GetEmailConfig
¨¨( 6
(
¨¨6 7
)
¨¨7 8
{
©© 	
List
ªª 
<
ªª  
EmailConfiguration
ªª #
>
ªª# $
emailConfigList
ªª% 4
=
ªª5 6
new
ªª7 :
List
ªª; ?
<
ªª? @ 
EmailConfiguration
ªª@ R
>
ªªR S
(
ªªS T
)
ªªT U
;
ªªU V
try
«« 
{
¬¬ 
using
­­ 
(
­­ 
SqlConnection
­­ $
sqlConn
­­% ,
=
­­- .

SqlConnect
­­/ 9
(
­­9 :
)
­­: ;
)
­­; <
{
®® 
using
¯¯ 
(
¯¯ 

SqlCommand
¯¯ %
cmd
¯¯& )
=
¯¯* +
new
¯¯, /

SqlCommand
¯¯0 :
(
¯¯: ;
$str
¯¯; R
,
¯¯R S
sqlConn
¯¯T [
)
¯¯[ \
)
¯¯\ ]
{
°° 
cmd
²² 
.
²² 
CommandType
²² '
=
²²( )
CommandType
²²* 5
.
²²5 6
StoredProcedure
²²6 E
;
²²E F
using
³³ 
(
³³ 
SqlDataReader
³³ ,
reader
³³- 3
=
³³4 5
cmd
³³6 9
.
³³9 :
ExecuteReader
³³: G
(
³³G H
)
³³H I
)
³³I J
{
´´ 
while
µµ !
(
µµ" #
reader
µµ# )
.
µµ) *
Read
µµ* .
(
µµ. /
)
µµ/ 0
)
µµ0 1
{
¶¶ 
emailConfigList
··  /
.
··/ 0
Add
··0 3
(
··3 4
new
¸¸$ ' 
EmailConfiguration
¸¸( :
{
¹¹$ %

smtpServer
ºº( 2
=
ºº3 4
reader
ºº5 ;
[
ºº; <
$str
ºº< H
]
ººH I
.
ººI J
ToString
ººJ R
(
ººR S
)
ººS T
,
ººT U
smtpPort
»»( 0
=
»»1 2
Convert
»»3 :
.
»»: ;
ToInt32
»»; B
(
»»B C
reader
»»C I
[
»»I J
$str
»»J T
]
»»T U
.
»»U V
ToString
»»V ^
(
»»^ _
)
»»_ `
)
»»` a
,
»»a b
smtpUserName
¼¼( 4
=
¼¼5 6
reader
¼¼7 =
[
¼¼= >
$str
¼¼> H
]
¼¼H I
.
¼¼I J
ToString
¼¼J R
(
¼¼R S
)
¼¼S T
,
¼¼T U
smtpPassword
½½( 4
=
½½5 6
reader
½½7 =
[
½½= >
$str
½½> H
]
½½H I
.
½½I J
ToString
½½J R
(
½½R S
)
½½S T
}
¾¾$ %
)
ÀÀ  !
;
ÀÀ! "
}
ÁÁ 
}
ÂÂ 
}
ÃÃ 
}
ÄÄ 
}
ÆÆ 
catch
ÈÈ 
(
ÈÈ 
	Exception
ÈÈ 
ex
ÈÈ 
)
ÈÈ  
{
ÉÉ 
Logger
ÊÊ 
.
ÊÊ 
Log
ÊÊ 
(
ÊÊ 
$str
ÊÊ 8
+
ÊÊ9 :
ex
ÊÊ; =
.
ÊÊ= >
ToString
ÊÊ> F
(
ÊÊF G
)
ÊÊG H
)
ÊÊH I
;
ÊÊI J
}
ËË 
return
ÌÌ 
emailConfigList
ÌÌ "
;
ÌÌ" #
}
ÍÍ 	
public
ÏÏ 
bool
ÏÏ 
AddUserMapping
ÏÏ "
(
ÏÏ" #
int
ÏÏ# &
userId
ÏÏ' -
,
ÏÏ- .
string
ÏÏ. 4
plantid
ÏÏ5 <
)
ÏÏ< =
{
ĞĞ 	
try
ÒÒ 
{
ÓÓ 
using
ÔÔ 
(
ÔÔ 
SqlConnection
ÔÔ $
sqlConn
ÔÔ% ,
=
ÔÔ- .

SqlConnect
ÔÔ/ 9
(
ÔÔ9 :
)
ÔÔ: ;
)
ÔÔ; <
{
ÕÕ 
using
×× 
(
×× 

SqlCommand
×× %
command
××& -
=
××. /
new
××0 3

SqlCommand
××4 >
(
××> ?
$str
××? O
,
××O P
sqlConn
××Q X
)
××X Y
)
××Y Z
{
ØØ 
command
ÙÙ 
.
ÙÙ  
CommandType
ÙÙ  +
=
ÙÙ, -
CommandType
ÙÙ. 9
.
ÙÙ9 :
StoredProcedure
ÙÙ: I
;
ÙÙI J
command
ÚÚ 
.
ÚÚ  

Parameters
ÚÚ  *
.
ÚÚ* +
AddWithValue
ÚÚ+ 7
(
ÚÚ7 8
$str
ÚÚ8 A
,
ÚÚA B
userId
ÚÚC I
)
ÚÚI J
;
ÚÚJ K
command
ÛÛ 
.
ÛÛ  

Parameters
ÛÛ  *
.
ÛÛ* +
AddWithValue
ÛÛ+ 7
(
ÛÛ7 8
$str
ÛÛ8 B
,
ÛÛB C
plantid
ÛÛD K
)
ÛÛK L
;
ÛÛL M
command
ÜÜ 
.
ÜÜ  
ExecuteNonQuery
ÜÜ  /
(
ÜÜ/ 0
)
ÜÜ0 1
;
ÜÜ1 2
}
İİ 
return
àà 
true
àà 
;
àà  
}
áá 
}
ãã 
catch
ää 
(
ää 
	Exception
ää 
ex
ää 
)
ää  
{
åå 
Logger
ææ 
.
ææ 
Log
ææ 
(
ææ 
$str
ææ 8
+
ææ9 :
ex
ææ; =
.
ææ= >
ToString
ææ> F
(
ææF G
)
ææG H
)
ææH I
;
ææI J
return
çç 
false
çç 
;
çç 
}
èè 
}
ëë 	
public
ìì 
bool
ìì 
AddEmailList
ìì  
(
ìì  !
string
ìì! '
[
ìì' (
]
ìì( )
email
ìì* /
,
ìì/ 0
int
ìì1 4
id
ìì5 7
)
ìì7 8
{
íí 	
try
ïï 
{
ğğ 
using
ññ 
(
ññ 
SqlConnection
ññ $
sqlConn
ññ% ,
=
ññ- .

SqlConnect
ññ/ 9
(
ññ9 :
)
ññ: ;
)
ññ; <
{
òò 
for
óó 
(
óó 
int
óó 
i
óó 
=
óó  
$num
óó! "
;
óó" #
i
óó$ %
<
óó& '
email
óó( -
.
óó- .
Length
óó. 4
;
óó4 5
i
óó6 7
++
óó7 9
)
óó9 :
{
ôô 
using
öö 
(
öö 

SqlCommand
öö )
command
öö* 1
=
öö2 3
new
öö4 7

SqlCommand
öö8 B
(
ööB C
$str
ööC U
,
ööU V
sqlConn
ööW ^
)
öö^ _
)
öö_ `
{
÷÷ 
command
øø #
.
øø# $
CommandType
øø$ /
=
øø0 1
CommandType
øø2 =
.
øø= >
StoredProcedure
øø> M
;
øøM N
command
ùù #
.
ùù# $

Parameters
ùù$ .
.
ùù. /
AddWithValue
ùù/ ;
(
ùù; <
$str
ùù< A
,
ùùA B
id
ùùC E
)
ùùE F
;
ùùF G
command
úú #
.
úú# $

Parameters
úú$ .
.
úú. /
AddWithValue
úú/ ;
(
úú; <
$str
úú< F
,
úúF G
email
úúH M
[
úúM N
i
úúN O
]
úúO P
)
úúP Q
;
úúQ R
command
ûû #
.
ûû# $

Parameters
ûû$ .
.
ûû. /
AddWithValue
ûû/ ;
(
ûû; <
$str
ûû< F
,
ûûF G
PlantId
ûûH O
)
ûûO P
;
ûûP Q
command
üü #
.
üü# $

Parameters
üü$ .
.
üü. /
AddWithValue
üü/ ;
(
üü; <
$str
üü< H
,
üüH I
UserName
üüJ R
)
üüR S
;
üüS T
command
ıı #
.
ıı# $
ExecuteNonQuery
ıı$ 3
(
ıı3 4
)
ıı4 5
;
ıı5 6
}
şş 
}
ÿÿ 
return
 
true
 
;
  
}
‚‚ 
}
„„ 
catch
…… 
(
…… 
	Exception
…… 
ex
…… 
)
……  
{
†† 
Logger
‡‡ 
.
‡‡ 
Log
‡‡ 
(
‡‡ 
$str
‡‡ 8
+
‡‡9 :
ex
‡‡; =
.
‡‡= >
ToString
‡‡> F
(
‡‡F G
)
‡‡G H
)
‡‡H I
;
‡‡I J
return
ˆˆ 
false
ˆˆ 
;
ˆˆ 
}
‰‰ 
}
ŒŒ 	
public
 
List
 
<
 
Details
 
>
 
GetEmailList
 )
(
) *
)
* +
{
 	
List
 
<
 
Details
 
>
 
	emailList
 #
=
$ %
new
& )
List
* .
<
. /
Details
/ 6
>
6 7
(
7 8
)
8 9
;
9 :
try
 
{
‘‘ 
using
’’ 
(
’’ 
SqlConnection
’’ $
sqlConn
’’% ,
=
’’- .

SqlConnect
’’/ 9
(
’’9 :
)
’’: ;
)
’’; <
{
““ 
using
”” 
(
”” 

SqlCommand
”” %
cmd
””& )
=
””* +
new
””, /

SqlCommand
””0 :
(
””: ;
$str
””; J
,
””J K
sqlConn
””L S
)
””S T
)
””T U
{
•• 
cmd
—— 
.
—— 
CommandType
—— '
=
——( )
CommandType
——* 5
.
——5 6
StoredProcedure
——6 E
;
——E F
cmd
˜˜ 
.
˜˜ 

Parameters
˜˜ &
.
˜˜& '
AddWithValue
˜˜' 3
(
˜˜3 4
$str
˜˜4 >
,
˜˜> ?
PlantId
˜˜@ G
)
˜˜G H
;
˜˜H I
using
™™ 
(
™™ 
SqlDataReader
™™ ,
reader
™™- 3
=
™™4 5
cmd
™™6 9
.
™™9 :
ExecuteReader
™™: G
(
™™G H
)
™™H I
)
™™I J
{
šš 
while
›› !
(
››" #
reader
››# )
.
››) *
Read
››* .
(
››. /
)
››/ 0
)
››0 1
{
œœ 
	emailList
  )
.
) *
Add
* -
(
- .
new
$ '
Details
( /
{
ŸŸ$ %
ID
  ( *
=
  + ,
Convert
  - 4
.
  4 5
ToInt32
  5 <
(
  < =
reader
  = C
[
  C D
$str
  D H
]
  H I
.
  I J
ToString
  J R
(
  R S
)
  S T
)
  T U
,
  U V
Name
¡¡( ,
=
¡¡- .
reader
¡¡/ 5
[
¡¡5 6
$str
¡¡6 ?
]
¡¡? @
.
¡¡@ A
ToString
¡¡A I
(
¡¡I J
)
¡¡J K
}
££$ %
)
¥¥  !
;
¥¥! "
}
¦¦ 
}
§§ 
}
¨¨ 
}
©© 
}
«« 
catch
­­ 
(
­­ 
	Exception
­­ 
ex
­­ 
)
­­  
{
®® 
Logger
¯¯ 
.
¯¯ 
Log
¯¯ 
(
¯¯ 
$str
¯¯ 6
+
¯¯7 8
ex
¯¯9 ;
.
¯¯; <
ToString
¯¯< D
(
¯¯D E
)
¯¯E F
)
¯¯F G
;
¯¯G H
}
°° 
return
±± 
	emailList
±± 
;
±± 
}
²² 	
public
³³ 
List
³³ 
<
³³ 
UserMapping
³³ 
>
³³   
GetUserMappingList
³³! 3
(
³³3 4
)
³³4 5
{
´´ 	
List
µµ 
<
µµ 
UserMapping
µµ 
>
µµ 
usermappingList
µµ -
=
µµ. /
new
µµ0 3
List
µµ4 8
<
µµ8 9
UserMapping
µµ9 D
>
µµD E
(
µµE F
)
µµF G
;
µµG H
try
¶¶ 
{
·· 
using
¸¸ 
(
¸¸ 
SqlConnection
¸¸ $
sqlConn
¸¸% ,
=
¸¸- .

SqlConnect
¸¸/ 9
(
¸¸9 :
)
¸¸: ;
)
¸¸; <
{
¹¹ 
using
ºº 
(
ºº 

SqlCommand
ºº %
cmd
ºº& )
=
ºº* +
new
ºº, /

SqlCommand
ºº0 :
(
ºº: ;
$str
ºº; K
,
ººK L
sqlConn
ººM T
)
ººT U
)
ººU V
{
»» 
cmd
½½ 
.
½½ 
CommandType
½½ '
=
½½( )
CommandType
½½* 5
.
½½5 6
StoredProcedure
½½6 E
;
½½E F
using
¿¿ 
(
¿¿ 
SqlDataReader
¿¿ ,
reader
¿¿- 3
=
¿¿4 5
cmd
¿¿6 9
.
¿¿9 :
ExecuteReader
¿¿: G
(
¿¿G H
)
¿¿H I
)
¿¿I J
{
ÀÀ 
while
ÁÁ !
(
ÁÁ" #
reader
ÁÁ# )
.
ÁÁ) *
Read
ÁÁ* .
(
ÁÁ. /
)
ÁÁ/ 0
)
ÁÁ0 1
{
ÂÂ 
usermappingList
ÃÃ  /
.
ÃÃ/ 0
Add
ÃÃ0 3
(
ÃÃ3 4
new
ÄÄ$ '
UserMapping
ÄÄ( 3
{
ÅÅ$ %
RecordId
ÆÆ( 0
=
ÆÆ1 2
Convert
ÆÆ3 :
.
ÆÆ: ;
ToInt32
ÆÆ; B
(
ÆÆB C
reader
ÆÆC I
[
ÆÆI J
$str
ÆÆJ T
]
ÆÆT U
)
ÆÆU V
,
ÆÆV W
EmailId
ÇÇ( /
=
ÇÇ0 1
reader
ÇÇ2 8
[
ÇÇ8 9
$str
ÇÇ9 B
]
ÇÇB C
.
ÇÇC D
ToString
ÇÇD L
(
ÇÇL M
)
ÇÇM N
,
ÇÇN O
	PlantName
ÈÈ( 1
=
ÈÈ2 3
reader
ÈÈ4 :
[
ÈÈ: ;
$str
ÈÈ; G
]
ÈÈG H
.
ÈÈH I
ToString
ÈÈI Q
(
ÈÈQ R
)
ÈÈR S
,
ÈÈS T
UserId
ÉÉ( .
=
ÉÉ/ 0
Convert
ÉÉ1 8
.
ÉÉ8 9
ToInt32
ÉÉ9 @
(
ÉÉ@ A
reader
ÉÉA G
[
ÉÉG H
$str
ÉÉH P
]
ÉÉP Q
)
ÉÉQ R
,
ÉÉR S
}
ËË$ %
)
ÍÍ  !
;
ÍÍ! "
}
ÎÎ 
}
ÏÏ 
}
ĞĞ 
}
ÑÑ 
}
ÓÓ 
catch
ÕÕ 
(
ÕÕ 
	Exception
ÕÕ 
ex
ÕÕ 
)
ÕÕ  
{
ÖÖ 
Logger
×× 
.
×× 
Log
×× 
(
×× 
$str
×× <
+
××= >
ex
××? A
.
××A B
ToString
××B J
(
××J K
)
××K L
)
××L M
;
××M N
}
ØØ 
return
ÙÙ 
usermappingList
ÙÙ "
;
ÙÙ" #
}
ÚÚ 	
public
İİ 
bool
İİ 
DeleteEmail
İİ 
(
İİ  
int
İİ  #
Id
İİ$ &
)
İİ& '
{
ŞŞ 	
try
ßß 
{
àà 
using
áá 
(
áá 
SqlConnection
áá $
sqlConn
áá% ,
=
áá- .

SqlConnect
áá/ 9
(
áá9 :
)
áá: ;
)
áá; <
{
ââ 
using
ää 
(
ää 

SqlCommand
ää %
command
ää& -
=
ää. /
new
ää0 3

SqlCommand
ää4 >
(
ää> ?
$str
ää? L
,
ääL M
sqlConn
ääN U
)
ääU V
)
ääV W
{
åå 
command
ææ 
.
ææ  
CommandType
ææ  +
=
ææ, -
CommandType
ææ. 9
.
ææ9 :
StoredProcedure
ææ: I
;
ææI J
command
çç 
.
çç  

Parameters
çç  *
.
çç* +
AddWithValue
çç+ 7
(
çç7 8
$str
çç8 =
,
çç= >
Id
çç? A
)
ççA B
;
ççB C
command
éé 
.
éé  
ExecuteNonQuery
éé  /
(
éé/ 0
)
éé0 1
;
éé1 2
}
êê 
}
ëë 
return
íí 
true
íí 
;
íí 
}
ïï 
catch
ğğ 
(
ğğ 
	Exception
ğğ 
ex
ğğ 
)
ğğ  
{
ññ 
Logger
òò 
.
òò 
Log
òò 
(
òò 
$str
òò 5
+
òò6 7
ex
òò8 :
.
òò: ;
ToString
òò; C
(
òòC D
)
òòD E
)
òòE F
;
òòF G
return
óó 
false
óó 
;
óó 
}
ôô 
}
÷÷ 	
public
ùù 
bool
ùù 

DeleteUSer
ùù 
(
ùù 
int
ùù "
UserId
ùù# )
)
ùù) *
{
úú 	
try
ûû 
{
üü 
using
ıı 
(
ıı 
SqlConnection
ıı $
sqlConn
ıı% ,
=
ıı- .

SqlConnect
ıı/ 9
(
ıı9 :
)
ıı: ;
)
ıı; <
{
şş 
using
€€ 
(
€€ 

SqlCommand
€€ %
command
€€& -
=
€€. /
new
€€0 3

SqlCommand
€€4 >
(
€€> ?
$str
€€? K
,
€€K L
sqlConn
€€M T
)
€€T U
)
€€U V
{
 
command
‚‚ 
.
‚‚  
CommandType
‚‚  +
=
‚‚, -
CommandType
‚‚. 9
.
‚‚9 :
StoredProcedure
‚‚: I
;
‚‚I J
command
ƒƒ 
.
ƒƒ  

Parameters
ƒƒ  *
.
ƒƒ* +
AddWithValue
ƒƒ+ 7
(
ƒƒ7 8
$str
ƒƒ8 =
,
ƒƒ= >
UserId
ƒƒ? E
)
ƒƒE F
;
ƒƒF G
command
…… 
.
……  
ExecuteNonQuery
……  /
(
……/ 0
)
……0 1
;
……1 2
}
†† 
}
‡‡ 
return
‰‰ 
true
‰‰ 
;
‰‰ 
}
‹‹ 
catch
ŒŒ 
(
ŒŒ 
	Exception
ŒŒ 
ex
ŒŒ 
)
ŒŒ  
{
 
Logger
 
.
 
Log
 
(
 
$str
 4
+
5 6
ex
7 9
.
9 :
ToString
: B
(
B C
)
C D
)
D E
;
E F
return
 
false
 
;
 
}
 
}
““ 	
public
•• 
List
•• 
<
•• 
UserMapping
•• 
>
••  
GetAdminList
••! -
(
••- .
)
••. /
{
–– 	
List
—— 
<
—— 
UserMapping
—— 
>
—— 
usermappingList
—— -
=
——. /
new
——0 3
List
——4 8
<
——8 9
UserMapping
——9 D
>
——D E
(
——E F
)
——F G
;
——G H
try
˜˜ 
{
™™ 
using
šš 
(
šš 
SqlConnection
šš $
sqlConn
šš% ,
=
šš- .

SqlConnect
šš/ 9
(
šš9 :
)
šš: ;
)
šš; <
{
›› 
using
œœ 
(
œœ 

SqlCommand
œœ %
cmd
œœ& )
=
œœ* +
new
œœ, /

SqlCommand
œœ0 :
(
œœ: ;
$str
œœ; I
,
œœI J
sqlConn
œœK R
)
œœR S
)
œœS T
{
 
cmd
ŸŸ 
.
ŸŸ 
CommandType
ŸŸ '
=
ŸŸ( )
CommandType
ŸŸ* 5
.
ŸŸ5 6
StoredProcedure
ŸŸ6 E
;
ŸŸE F
using
¡¡ 
(
¡¡ 
SqlDataReader
¡¡ ,
reader
¡¡- 3
=
¡¡4 5
cmd
¡¡6 9
.
¡¡9 :
ExecuteReader
¡¡: G
(
¡¡G H
)
¡¡H I
)
¡¡I J
{
¢¢ 
while
££ !
(
££" #
reader
££# )
.
££) *
Read
££* .
(
££. /
)
££/ 0
)
££0 1
{
¤¤ 
usermappingList
¥¥  /
.
¥¥/ 0
Add
¥¥0 3
(
¥¥3 4
new
¦¦$ '
UserMapping
¦¦( 3
{
§§$ %
UserId
¨¨( .
=
¨¨/ 0
Convert
¨¨1 8
.
¨¨8 9
ToInt32
¨¨9 @
(
¨¨@ A
reader
¨¨A G
[
¨¨G H
$str
¨¨H P
]
¨¨P Q
.
¨¨Q R
ToString
¨¨R Z
(
¨¨Z [
)
¨¨[ \
)
¨¨\ ]
,
¨¨] ^
EmailId
©©( /
=
©©0 1
reader
©©2 8
[
©©8 9
$str
©©9 B
]
©©B C
.
©©C D
ToString
©©D L
(
©©L M
)
©©M N
,
©©N O
	PlantName
ªª( 1
=
ªª2 3
reader
ªª4 :
[
ªª: ;
$str
ªª; G
]
ªªG H
.
ªªH I
ToString
ªªI Q
(
ªªQ R
)
ªªR S
}
¬¬$ %
)
®®  !
;
®®! "
}
¯¯ 
}
°° 
}
±± 
}
²² 
}
´´ 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
ex
¶¶ 
)
¶¶  
{
·· 
Logger
¸¸ 
.
¸¸ 
Log
¸¸ 
(
¸¸ 
$str
¸¸ 6
+
¸¸7 8
ex
¸¸9 ;
.
¸¸; <
ToString
¸¸< D
(
¸¸D E
)
¸¸E F
)
¸¸F G
;
¸¸G H
}
¹¹ 
return
ºº 
usermappingList
ºº "
;
ºº" #
}
»» 	
public
½½ 
bool
½½ 
saveDisplayName
½½ #
(
½½# $
int
½½$ '
wages
½½( -
,
½½- .
string
½½/ 5
displayName
½½6 A
,
½½A B
int
½½C F
id
½½G I
)
½½I J
{
¾¾ 	
try
¿¿ 
{
ÀÀ 
using
ÁÁ 
(
ÁÁ 
SqlConnection
ÁÁ $
sqlConn
ÁÁ% ,
=
ÁÁ- .

SqlConnect
ÁÁ/ 9
(
ÁÁ9 :
)
ÁÁ: ;
)
ÁÁ; <
{
ÂÂ 
using
ÄÄ 
(
ÄÄ 

SqlCommand
ÄÄ %
command
ÄÄ& -
=
ÄÄ. /
new
ÄÄ0 3

SqlCommand
ÄÄ4 >
(
ÄÄ> ?
$str
ÄÄ? Q
,
ÄÄQ R
sqlConn
ÄÄS Z
)
ÄÄZ [
)
ÄÄ[ \
{
ÅÅ 
command
ÆÆ 
.
ÆÆ  
CommandType
ÆÆ  +
=
ÆÆ, -
CommandType
ÆÆ. 9
.
ÆÆ9 :
StoredProcedure
ÆÆ: I
;
ÆÆI J
command
ÇÇ 
.
ÇÇ  

Parameters
ÇÇ  *
.
ÇÇ* +
AddWithValue
ÇÇ+ 7
(
ÇÇ7 8
$str
ÇÇ8 B
,
ÇÇB C
PlantId
ÇÇD K
)
ÇÇK L
;
ÇÇL M
command
ÈÈ 
.
ÈÈ  

Parameters
ÈÈ  *
.
ÈÈ* +
AddWithValue
ÈÈ+ 7
(
ÈÈ7 8
$str
ÈÈ8 ?
,
ÈÈ? @
wages
ÈÈA F
)
ÈÈF G
;
ÈÈG H
command
ÉÉ 
.
ÉÉ  

Parameters
ÉÉ  *
.
ÉÉ* +
AddWithValue
ÉÉ+ 7
(
ÉÉ7 8
$str
ÉÉ8 F
,
ÉÉF G
displayName
ÉÉH S
)
ÉÉS T
;
ÉÉT U
command
ÊÊ 
.
ÊÊ  

Parameters
ÊÊ  *
.
ÊÊ* +
AddWithValue
ÊÊ+ 7
(
ÊÊ7 8
$str
ÊÊ8 =
,
ÊÊ= >
id
ÊÊ? A
)
ÊÊA B
;
ÊÊB C
command
ËË 
.
ËË  
ExecuteNonQuery
ËË  /
(
ËË/ 0
)
ËË0 1
;
ËË1 2
}
ÌÌ 
return
ÏÏ 
true
ÏÏ 
;
ÏÏ  
}
ĞĞ 
}
ÒÒ 
catch
ÓÓ 
(
ÓÓ 
	Exception
ÓÓ 
ex
ÓÓ 
)
ÓÓ  
{
ÔÔ 
Logger
ÕÕ 
.
ÕÕ 
Log
ÕÕ 
(
ÕÕ 
$str
ÕÕ 8
+
ÕÕ9 :
ex
ÕÕ; =
.
ÕÕ= >
ToString
ÕÕ> F
(
ÕÕF G
)
ÕÕG H
)
ÕÕH I
;
ÕÕI J
return
ÖÖ 
false
ÖÖ 
;
ÖÖ 
}
×× 
}
ØØ 	
public
ÚÚ 
List
ÚÚ 
<
ÚÚ 
Display
ÚÚ 
>
ÚÚ 
getDisplayNames
ÚÚ ,
(
ÚÚ, -
)
ÚÚ- .
{
ÛÛ 	
List
ÜÜ 
<
ÜÜ 
Display
ÜÜ 
>
ÜÜ 
displayList
ÜÜ %
=
ÜÜ& '
new
ÜÜ( +
List
ÜÜ, 0
<
ÜÜ0 1
Display
ÜÜ1 8
>
ÜÜ8 9
(
ÜÜ9 :
)
ÜÜ: ;
;
ÜÜ; <
try
İİ 
{
ŞŞ 
using
ßß 
(
ßß 
SqlConnection
ßß $
sqlConn
ßß% ,
=
ßß- .

SqlConnect
ßß/ 9
(
ßß9 :
)
ßß: ;
)
ßß; <
{
àà 
using
áá 
(
áá 

SqlCommand
áá %
cmd
áá& )
=
áá* +
new
áá, /

SqlCommand
áá0 :
(
áá: ;
$str
áá; K
,
ááK L
sqlConn
ááM T
)
ááT U
)
ááU V
{
ââ 
cmd
ää 
.
ää 
CommandType
ää '
=
ää( )
CommandType
ää* 5
.
ää5 6
StoredProcedure
ää6 E
;
ääE F
cmd
åå 
.
åå 

Parameters
åå &
.
åå& '
AddWithValue
åå' 3
(
åå3 4
$str
åå4 >
,
åå> ?
PlantId
åå@ G
)
ååG H
;
ååH I
using
ææ 
(
ææ 
SqlDataReader
ææ ,
reader
ææ- 3
=
ææ4 5
cmd
ææ6 9
.
ææ9 :
ExecuteReader
ææ: G
(
ææG H
)
ææH I
)
ææI J
{
çç 
while
èè !
(
èè" #
reader
èè# )
.
èè) *
Read
èè* .
(
èè. /
)
èè/ 0
)
èè0 1
{
éé 
displayList
êê  +
.
êê+ ,
Add
êê, /
(
êê/ 0
new
ëë$ '
Display
ëë( /
{
ìì$ %
ID
íí( *
=
íí+ ,
Convert
íí- 4
.
íí4 5
ToInt32
íí5 <
(
íí< =
reader
íí= C
[
ííC D
$str
ííD H
]
ííH I
.
ííI J
ToString
ííJ R
(
ííR S
)
ííS T
)
ííT U
,
ííU V
WageType
îî( 0
=
îî1 2
reader
îî3 9
[
îî9 :
$str
îî: D
]
îîD E
.
îîE F
ToString
îîF N
(
îîN O
)
îîO P
,
îîP Q
DisplayName
ïï( 3
=
ïï4 5
reader
ïï6 <
[
ïï< =
$str
ïï= J
]
ïïJ K
.
ïïK L
ToString
ïïL T
(
ïïT U
)
ïïU V
,
ïïV W
WageID
ğğ( .
=
ğğ/ 0
Convert
ğğ1 8
.
ğğ8 9
ToInt32
ğğ9 @
(
ğğ@ A
reader
ğğA G
[
ğğG H
$str
ğğH P
]
ğğP Q
)
ğğQ R
}
ññ$ %
)
óó  !
;
óó! "
}
ôô 
}
õõ 
}
öö 
}
÷÷ 
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû 
ex
ûû 
)
ûû  
{
üü 
Logger
ıı 
.
ıı 
Log
ıı 
(
ıı 
$str
ıı 6
+
ıı7 8
ex
ıı9 ;
.
ıı; <
ToString
ıı< D
(
ııD E
)
ııE F
)
ııF G
;
ııG H
}
şş 
return
ÿÿ 
displayList
ÿÿ 
;
ÿÿ 
}
 	
public
‚‚ 
bool
‚‚ 
deleteDisplyName
‚‚ $
(
‚‚$ %
int
‚‚% (
id
‚‚) +
)
‚‚+ ,
{
ƒƒ 	
try
„„ 
{
…… 
using
†† 
(
†† 
SqlConnection
†† $
sqlConn
††% ,
=
††- .

SqlConnect
††/ 9
(
††9 :
)
††: ;
)
††; <
{
‡‡ 
using
‰‰ 
(
‰‰ 

SqlCommand
‰‰ %
command
‰‰& -
=
‰‰. /
new
‰‰0 3

SqlCommand
‰‰4 >
(
‰‰> ?
$str
‰‰? R
,
‰‰R S
sqlConn
‰‰T [
)
‰‰[ \
)
‰‰\ ]
{
ŠŠ 
command
‹‹ 
.
‹‹  
CommandType
‹‹  +
=
‹‹, -
CommandType
‹‹. 9
.
‹‹9 :
StoredProcedure
‹‹: I
;
‹‹I J
command
ŒŒ 
.
ŒŒ  

Parameters
ŒŒ  *
.
ŒŒ* +
AddWithValue
ŒŒ+ 7
(
ŒŒ7 8
$str
ŒŒ8 =
,
ŒŒ= >
id
ŒŒ? A
)
ŒŒA B
;
ŒŒB C
command
 
.
  
ExecuteNonQuery
  /
(
/ 0
)
0 1
;
1 2
}
 
}
 
return
’’ 
true
’’ 
;
’’ 
}
”” 
catch
•• 
(
•• 
	Exception
•• 
ex
•• 
)
••  
{
–– 
Logger
—— 
.
—— 
Log
—— 
(
—— 
$str
—— 4
+
——5 6
ex
——7 9
.
——9 :
ToString
——: B
(
——B C
)
——C D
)
——D E
;
——E F
return
˜˜ 
false
˜˜ 
;
˜˜ 
}
™™ 
}
šš 	
public
œœ 
bool
œœ %
AddProductionUOMMapping
œœ +
(
œœ+ ,
int
œœ, /
productionUomId
œœ0 ?
,
œœ? @
int
œœA D
SolidawasteUomId
œœE U
)
œœU V
{
 	
try
 
{
ŸŸ 
using
   
(
   
SqlConnection
   $
sqlConn
  % ,
=
  - .

SqlConnect
  / 9
(
  9 :
)
  : ;
)
  ; <
{
¡¡ 
using
££ 
(
££ 

SqlCommand
££ %
command
££& -
=
££. /
new
££0 3

SqlCommand
££4 >
(
££> ?
$str
££? d
,
££d e
sqlConn
££f m
)
££m n
)
££n o
{
¤¤ 
command
¥¥ 
.
¥¥  
CommandType
¥¥  +
=
¥¥, -
CommandType
¥¥. 9
.
¥¥9 :
StoredProcedure
¥¥: I
;
¥¥I J
command
¦¦ 
.
¦¦  

Parameters
¦¦  *
.
¦¦* +
AddWithValue
¦¦+ 7
(
¦¦7 8
$str
¦¦8 B
,
¦¦B C
PlantId
¦¦D K
)
¦¦K L
;
¦¦L M
command
§§ 
.
§§  

Parameters
§§  *
.
§§* +
AddWithValue
§§+ 7
(
§§7 8
$str
§§8 J
,
§§J K
productionUomId
§§L [
)
§§[ \
;
§§\ ]
command
¨¨ 
.
¨¨  

Parameters
¨¨  *
.
¨¨* +
AddWithValue
¨¨+ 7
(
¨¨7 8
$str
¨¨8 J
,
¨¨J K
SolidawasteUomId
¨¨L \
)
¨¨\ ]
;
¨¨] ^
command
©© 
.
©©  
ExecuteNonQuery
©©  /
(
©©/ 0
)
©©0 1
;
©©1 2
}
ªª 
return
­­ 
true
­­ 
;
­­  
}
®® 
}
°° 
catch
±± 
(
±± 
	Exception
±± 
ex
±± 
)
±±  
{
²² 
Logger
³³ 
.
³³ 
Log
³³ 
(
³³ 
$str
³³ A
+
³³B C
ex
³³D F
.
³³F G
ToString
³³G O
(
³³O P
)
³³P Q
)
³³Q R
;
³³R S
return
´´ 
false
´´ 
;
´´ 
}
µµ 
}
¶¶ 	
public
¸¸ 
List
¸¸ 
<
¸¸ 
UOM
¸¸ 
>
¸¸ 
GetProductionUom
¸¸ )
(
¸¸) *
)
¸¸* +
{
¹¹ 	
List
ºº 
<
ºº 
UOM
ºº 
>
ºº 
productionuomlist
ºº '
=
ºº( )
new
ºº* -
List
ºº. 2
<
ºº2 3
UOM
ºº3 6
>
ºº6 7
(
ºº7 8
)
ºº8 9
;
ºº9 :
try
»» 
{
¼¼ 
using
½½ 
(
½½ 
SqlConnection
½½ $
sqlConn
½½% ,
=
½½- .

SqlConnect
½½/ 9
(
½½9 :
)
½½: ;
)
½½; <
{
¾¾ 
using
¿¿ 
(
¿¿ 

SqlCommand
¿¿ %
cmd
¿¿& )
=
¿¿* +
new
¿¿, /

SqlCommand
¿¿0 :
(
¿¿: ;
$str
¿¿; M
,
¿¿M N
sqlConn
¿¿O V
)
¿¿V W
)
¿¿W X
{
ÀÀ 
cmd
ÂÂ 
.
ÂÂ 
CommandType
ÂÂ '
=
ÂÂ( )
CommandType
ÂÂ* 5
.
ÂÂ5 6
StoredProcedure
ÂÂ6 E
;
ÂÂE F
cmd
ÃÃ 
.
ÃÃ 

Parameters
ÃÃ &
.
ÃÃ& '
AddWithValue
ÃÃ' 3
(
ÃÃ3 4
$str
ÃÃ4 >
,
ÃÃ> ?
PlantId
ÃÃ@ G
)
ÃÃG H
;
ÃÃH I
using
ÄÄ 
(
ÄÄ 
SqlDataReader
ÄÄ ,
reader
ÄÄ- 3
=
ÄÄ4 5
cmd
ÄÄ6 9
.
ÄÄ9 :
ExecuteReader
ÄÄ: G
(
ÄÄG H
)
ÄÄH I
)
ÄÄI J
{
ÅÅ 
while
ÆÆ !
(
ÆÆ" #
reader
ÆÆ# )
.
ÆÆ) *
Read
ÆÆ* .
(
ÆÆ. /
)
ÆÆ/ 0
)
ÆÆ0 1
{
ÇÇ 
productionuomlist
ÈÈ  1
.
ÈÈ1 2
Add
ÈÈ2 5
(
ÈÈ5 6
new
ÉÉ$ '
UOM
ÉÉ( +
{
ÊÊ$ %
ProductionID
ËË( 4
=
ËË5 6
Convert
ËË7 >
.
ËË> ?
ToInt32
ËË? F
(
ËËF G
reader
ËËG M
[
ËËM N
$str
ËËN ]
]
ËË] ^
)
ËË^ _
,
ËË_ `
SolidID
ÌÌ( /
=
ÌÌ0 1
Convert
ÌÌ2 9
.
ÌÌ9 :
ToInt32
ÌÌ: A
(
ÌÌA B
reader
ÌÌB H
[
ÌÌH I
$str
ÌÌI X
]
ÌÌX Y
)
ÌÌY Z
,
ÌÌZ [
}
ÍÍ$ %
)
ÏÏ  !
;
ÏÏ! "
}
ĞĞ 
}
ÑÑ 
}
ÒÒ 
}
ÓÓ 
}
ÕÕ 
catch
×× 
(
×× 
	Exception
×× 
ex
×× 
)
××  
{
ØØ 
Logger
ÙÙ 
.
ÙÙ 
Log
ÙÙ 
(
ÙÙ 
$str
ÙÙ :
+
ÙÙ; <
ex
ÙÙ= ?
.
ÙÙ? @
ToString
ÙÙ@ H
(
ÙÙH I
)
ÙÙI J
)
ÙÙJ K
;
ÙÙK L
}
ÚÚ 
return
ÛÛ 
productionuomlist
ÛÛ $
;
ÛÛ$ %
}
ÜÜ 	
public
ŞŞ 
int
ŞŞ 
CheckUOMMapping
ŞŞ "
(
ŞŞ" #
string
ŞŞ# )

energyname
ŞŞ* 4
,
ŞŞ4 5
int
ŞŞ6 9
type
ŞŞ: >
,
ŞŞ> ?
int
ŞŞ@ C
uom
ŞŞD G
)
ŞŞG H
{
ßß 	
int
àà 
Value
àà 
=
àà 
$num
àà 
;
àà 
try
áá 
{
ââ 
using
ãã 
(
ãã 
SqlConnection
ãã $
sqlConn
ãã% ,
=
ãã- .

SqlConnect
ãã/ 9
(
ãã9 :
)
ãã: ;
)
ãã; <
{
ää 
using
åå 
(
åå 

SqlCommand
åå %
cmd
åå& )
=
åå* +
new
åå, /

SqlCommand
åå0 :
(
åå: ;
$str
åå; L
,
ååL M
sqlConn
ååN U
)
ååU V
)
ååV W
{
ææ 
cmd
çç 
.
çç 
CommandType
çç '
=
çç( )
CommandType
çç* 5
.
çç5 6
StoredProcedure
çç6 E
;
ççE F
cmd
èè 
.
èè 

Parameters
èè &
.
èè& '
AddWithValue
èè' 3
(
èè3 4
$str
èè4 A
,
èèA B

energyname
èèC M
)
èèM N
;
èèN O
cmd
éé 
.
éé 

Parameters
éé &
.
éé& '
AddWithValue
éé' 3
(
éé3 4
$str
éé4 A
,
ééA B
type
ééC G
)
ééG H
;
ééH I
cmd
êê 
.
êê 

Parameters
êê &
.
êê& '
AddWithValue
êê' 3
(
êê3 4
$str
êê4 :
,
êê: ;
uom
êê< ?
)
êê? @
;
êê@ A
cmd
ëë 
.
ëë 

Parameters
ëë &
.
ëë& '
AddWithValue
ëë' 3
(
ëë3 4
$str
ëë4 >
,
ëë> ?
PlantId
ëë@ G
)
ëëG H
;
ëëH I
using
íí 
(
íí 
SqlDataReader
íí ,
reader
íí- 3
=
íí4 5
cmd
íí6 9
.
íí9 :
ExecuteReader
íí: G
(
ííG H
)
ííH I
)
ííI J
{
îî 
while
ïï !
(
ïï" #
reader
ïï# )
.
ïï) *
Read
ïï* .
(
ïï. /
)
ïï/ 0
)
ïï0 1
{
ğğ 
Value
ññ  %
=
ññ& '
Convert
ññ( /
.
ññ/ 0
ToInt32
ññ0 7
(
ññ7 8
reader
ññ8 >
[
ññ> ?
$str
ññ? F
]
ññF G
)
ññG H
;
ññH I
}
òò 
}
óó 
}
ôô 
}
õõ 
}
÷÷ 
catch
øø 
(
øø 
	Exception
øø 
ex
øø 
)
øø  
{
ùù 
Debug
úú 
.
úú 
	WriteLine
úú 
(
úú  
$str
úú  :
+
úú; <
ex
úú= ?
.
úú? @
ToString
úú@ H
(
úúH I
)
úúI J
)
úúJ K
;
úúK L
}
ûû 
return
üü 
Value
üü 
;
üü 
}
ıı 	
public
ÿÿ 
List
ÿÿ 
<
ÿÿ 
EmailLst
ÿÿ 
>
ÿÿ 
GetEmailAddress
ÿÿ -
(
ÿÿ- .
)
ÿÿ. /
{
€€ 	
List
 
<
 
EmailLst
 
>
 
usermappingList
 *
=
+ ,
new
- 0
List
1 5
<
5 6
EmailLst
6 >
>
> ?
(
? @
)
@ A
;
A B
try
‚‚ 
{
ƒƒ 
using
„„ 
(
„„ 
SqlConnection
„„ $
sqlConn
„„% ,
=
„„- .

SqlConnect
„„/ 9
(
„„9 :
)
„„: ;
)
„„; <
{
…… 
using
†† 
(
†† 

SqlCommand
†† %
cmd
††& )
=
††* +
new
††, /

SqlCommand
††0 :
(
††: ;
$str
††; L
,
††L M
sqlConn
††N U
)
††U V
)
††V W
{
‡‡ 
cmd
‰‰ 
.
‰‰ 
CommandType
‰‰ '
=
‰‰( )
CommandType
‰‰* 5
.
‰‰5 6
StoredProcedure
‰‰6 E
;
‰‰E F
using
‹‹ 
(
‹‹ 
SqlDataReader
‹‹ ,
reader
‹‹- 3
=
‹‹4 5
cmd
‹‹6 9
.
‹‹9 :
ExecuteReader
‹‹: G
(
‹‹G H
)
‹‹H I
)
‹‹I J
{
ŒŒ 
while
 !
(
" #
reader
# )
.
) *
Read
* .
(
. /
)
/ 0
)
0 1
{
 
usermappingList
  /
.
/ 0
Add
0 3
(
3 4
new
$ '
EmailLst
( 0
{
‘‘$ %
UserId
’’( .
=
’’/ 0
Convert
’’1 8
.
’’8 9
ToInt32
’’9 @
(
’’@ A
reader
’’A G
[
’’G H
$str
’’H P
]
’’P Q
)
’’Q R
,
’’R S
EmailId
““( /
=
““0 1
reader
““2 8
[
““8 9
$str
““9 B
]
““B C
.
““C D
ToString
““D L
(
““L M
)
““M N
,
““N O
RoleId
””( .
=
””/ 0
Convert
””1 8
.
””8 9
ToInt32
””9 @
(
””@ A
reader
””A G
[
””G H
$str
””H P
]
””P Q
)
””Q R
,
””R S
UserType
••( 0
=
••1 2
reader
••3 9
[
••9 :
$str
••: D
]
••D E
.
••E F
ToString
••F N
(
••N O
)
••O P
}
––$ %
)
˜˜  !
;
˜˜! "
}
™™ 
}
šš 
}
›› 
}
œœ 
}
 
catch
   
(
   
	Exception
   
ex
   
)
    
{
¡¡ 
Logger
¢¢ 
.
¢¢ 
Log
¢¢ 
(
¢¢ 
$str
¢¢ 6
+
¢¢7 8
ex
¢¢9 ;
.
¢¢; <
ToString
¢¢< D
(
¢¢D E
)
¢¢E F
)
¢¢F G
;
¢¢G H
}
££ 
return
¤¤ 
usermappingList
¤¤ "
;
¤¤" #
}
¥¥ 	
public
§§ 
bool
§§ 
AddEmailAddress
§§ #
(
§§# $
string
§§$ *
emailId
§§+ 2
,
§§2 3
int
§§4 7
roleId
§§8 >
,
§§> ?
int
§§@ C
Id
§§D F
)
§§F G
{
¨¨ 	
try
©© 
{
ªª 
using
«« 
(
«« 
SqlConnection
«« $
sqlConn
««% ,
=
««- .

SqlConnect
««/ 9
(
««9 :
)
««: ;
)
««; <
{
¬¬ 
using
®® 
(
®® 

SqlCommand
®® %
command
®®& -
=
®®. /
new
®®0 3

SqlCommand
®®4 >
(
®®> ?
$str
®®? L
,
®®L M
sqlConn
®®N U
)
®®U V
)
®®V W
{
¯¯ 
command
°° 
.
°°  
CommandType
°°  +
=
°°, -
CommandType
°°. 9
.
°°9 :
StoredProcedure
°°: I
;
°°I J
command
±± 
.
±±  

Parameters
±±  *
.
±±* +
AddWithValue
±±+ 7
(
±±7 8
$str
±±8 A
,
±±A B
Id
±±C E
)
±±E F
;
±±F G
command
²² 
.
²²  

Parameters
²²  *
.
²²* +
AddWithValue
²²+ 7
(
²²7 8
$str
²²8 B
,
²²B C
emailId
²²D K
)
²²K L
;
²²L M
command
³³ 
.
³³  

Parameters
³³  *
.
³³* +
AddWithValue
³³+ 7
(
³³7 8
$str
³³8 A
,
³³A B
roleId
³³C I
)
³³I J
;
³³J K
command
´´ 
.
´´  

Parameters
´´  *
.
´´* +
AddWithValue
´´+ 7
(
´´7 8
$str
´´8 D
,
´´D E
UserName
´´F N
)
´´N O
;
´´O P
command
¶¶ 
.
¶¶  
ExecuteNonQuery
¶¶  /
(
¶¶/ 0
)
¶¶0 1
;
¶¶1 2
}
·· 
return
ºº 
true
ºº 
;
ºº  
}
»» 
}
½½ 
catch
¾¾ 
(
¾¾ 
	Exception
¾¾ 
ex
¾¾ 
)
¾¾  
{
¿¿ 
Logger
ÀÀ 
.
ÀÀ 
Log
ÀÀ 
(
ÀÀ 
$str
ÀÀ A
+
ÀÀB C
ex
ÀÀD F
.
ÀÀF G
ToString
ÀÀG O
(
ÀÀO P
)
ÀÀP Q
)
ÀÀQ R
;
ÀÀR S
return
ÁÁ 
false
ÁÁ 
;
ÁÁ 
}
ÂÂ 
}
ÃÃ 	
public
ÅÅ 
bool
ÅÅ  
DeleteEmailAddress
ÅÅ &
(
ÅÅ& '
int
ÅÅ' *
Id
ÅÅ+ -
)
ÅÅ- .
{
ÆÆ 	
try
ÇÇ 
{
ÈÈ 
using
ÉÉ 
(
ÉÉ 
SqlConnection
ÉÉ $
sqlConn
ÉÉ% ,
=
ÉÉ- .

SqlConnect
ÉÉ/ 9
(
ÉÉ9 :
)
ÉÉ: ;
)
ÉÉ; <
{
ÊÊ 
using
ÌÌ 
(
ÌÌ 

SqlCommand
ÌÌ %
command
ÌÌ& -
=
ÌÌ. /
new
ÌÌ0 3

SqlCommand
ÌÌ4 >
(
ÌÌ> ?
$str
ÌÌ? R
,
ÌÌR S
sqlConn
ÌÌT [
)
ÌÌ[ \
)
ÌÌ\ ]
{
ÍÍ 
command
ÎÎ 
.
ÎÎ  
CommandType
ÎÎ  +
=
ÎÎ, -
CommandType
ÎÎ. 9
.
ÎÎ9 :
StoredProcedure
ÎÎ: I
;
ÎÎI J
command
ÏÏ 
.
ÏÏ  

Parameters
ÏÏ  *
.
ÏÏ* +
AddWithValue
ÏÏ+ 7
(
ÏÏ7 8
$str
ÏÏ8 A
,
ÏÏA B
Id
ÏÏC E
)
ÏÏE F
;
ÏÏF G
command
ĞĞ 
.
ĞĞ  

Parameters
ĞĞ  *
.
ĞĞ* +
AddWithValue
ĞĞ+ 7
(
ĞĞ7 8
$str
ĞĞ8 D
,
ĞĞD E
UserName
ĞĞF N
)
ĞĞN O
;
ĞĞO P
command
ÑÑ 
.
ÑÑ  
ExecuteNonQuery
ÑÑ  /
(
ÑÑ/ 0
)
ÑÑ0 1
;
ÑÑ1 2
}
ÒÒ 
}
ÓÓ 
return
ÕÕ 
true
ÕÕ 
;
ÕÕ 
}
×× 
catch
ØØ 
(
ØØ 
	Exception
ØØ 
ex
ØØ 
)
ØØ  
{
ÙÙ 
Logger
ÚÚ 
.
ÚÚ 
Log
ÚÚ 
(
ÚÚ 
$str
ÚÚ <
+
ÚÚ= >
ex
ÚÚ? A
.
ÚÚA B
ToString
ÚÚB J
(
ÚÚJ K
)
ÚÚK L
)
ÚÚL M
;
ÚÚM N
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÜÜ 
}
İİ 	
public
ßß 
bool
ßß 
DeleteUserMapping
ßß %
(
ßß% &
int
ßß& )
Id
ßß* ,
)
ßß, -
{
àà 	
try
áá 
{
ââ 
using
ãã 
(
ãã 
SqlConnection
ãã $
sqlConn
ãã% ,
=
ãã- .

SqlConnect
ãã/ 9
(
ãã9 :
)
ãã: ;
)
ãã; <
{
ää 
using
ææ 
(
ææ 

SqlCommand
ææ %
command
ææ& -
=
ææ. /
new
ææ0 3

SqlCommand
ææ4 >
(
ææ> ?
$str
ææ? O
,
ææO P
sqlConn
ææQ X
)
ææX Y
)
ææY Z
{
çç 
command
èè 
.
èè  
CommandType
èè  +
=
èè, -
CommandType
èè. 9
.
èè9 :
StoredProcedure
èè: I
;
èèI J
command
éé 
.
éé  

Parameters
éé  *
.
éé* +
AddWithValue
éé+ 7
(
éé7 8
$str
éé8 C
,
ééC D
Id
ééE G
)
ééG H
;
ééH I
command
ëë 
.
ëë  
ExecuteNonQuery
ëë  /
(
ëë/ 0
)
ëë0 1
;
ëë1 2
}
ìì 
}
íí 
return
ïï 
true
ïï 
;
ïï 
}
ññ 
catch
òò 
(
òò 
	Exception
òò 
ex
òò 
)
òò  
{
óó 
Logger
ôô 
.
ôô 
Log
ôô 
(
ôô 
$str
ôô ;
+
ôô< =
ex
ôô> @
.
ôô@ A
ToString
ôôA I
(
ôôI J
)
ôôJ K
)
ôôK L
;
ôôL M
return
õõ 
false
õõ 
;
õõ 
}
öö 
}
÷÷ 	
}
øø 
}ùù …+
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\PopulateDropDown.cs
	namespace 	
EMMS
 
. 

DataAccess 
{ 
public 

class 
PopulateDropDown !
:" #
IGetItemForCombobox$ 7
{ 
string 

connectionstring 
=  
ConfigurationManager 2
.2 3
ConnectionStrings3 D
[D E
$strE M
]M N
.N O
ConnectionStringO _
;_ `
public 
List 
< 
Wages 
> 
GetWages #
(# $
)$ %
{ 	
List 
< 
Wages 
> 
WageList  
=! "
new# &
List' +
<+ ,
Wages, 1
>1 2
(2 3
)3 4
;4 5
try 
{ 
using 
( 
SqlConnection $
conn% )
=* +
new, /
SqlConnection0 =
(= >
connectionstring> N
)N O
)O P
{ 
conn 
. 
Open 
( 
) 
;  
using 
( 

SqlCommand %
cmd& )
=* +
new, /

SqlCommand0 :
(: ;
$str; w
,w x
conny }
)} ~
)~ 
{ 
cmd 
. 
CommandType '
=( )
CommandType* 5
.5 6
Text6 :
;: ;
using 
( 
SqlDataReader ,
reader- 3
=4 5
cmd6 9
.9 :
ExecuteReader: G
(G H
)H I
)I J
{ 
while !
(" #
reader# )
.) *
Read* .
(. /
)/ 0
)0 1
{   
WageList!!  (
.!!( )
Add!!) ,
(!!, -
new""$ '
Wages""( -
{##$ %
ID$$( *
=$$+ ,
Convert$$- 4
.$$4 5
ToInt32$$5 <
($$< =
reader$$= C
[$$C D
$str$$D H
]$$H I
)$$I J
,$$J K
Name%%( ,
=%%- .
reader%%/ 5
[%%5 6
$str%%6 C
]%%C D
.%%D E
ToString%%E M
(%%M N
)%%N O
}&&$ %
)''$ %
;''% &
}(( 
})) 
}** 
}++ 
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
Debug// 
.// 
	WriteLine// 
(//  
$str//  0
)//0 1
;//1 2
}00 
return11 
WageList11 
;11 
}22 	
public44 
List44 
<44 
UOM44 
>44 
GetUOMs44  
(44  !
)44! "
{55 	
List66 
<66 
UOM66 
>66 
UOMList66 
=66 
new66  #
List66$ (
<66( )
UOM66) ,
>66, -
(66- .
)66. /
;66/ 0
try77 
{88 
using99 
(99 
SqlConnection99 $
conn99% )
=99* +
new99, /
SqlConnection990 =
(99= >
connectionstring99> N
)99N O
)99O P
{:: 
conn;; 
.;; 
Open;; 
(;; 
);; 
;;;  
using<< 
(<< 

SqlCommand<< %
cmd<<& )
=<<* +
new<<, /

SqlCommand<<0 :
(<<: ;
$str<<; z
,<<z {
conn	<<| €
)
<<€ 
)
<< ‚
{== 
cmd>> 
.>> 
CommandType>> '
=>>( )
CommandType>>* 5
.>>5 6
Text>>6 :
;>>: ;
using?? 
(?? 
SqlDataReader?? ,
reader??- 3
=??4 5
cmd??6 9
.??9 :
ExecuteReader??: G
(??G H
)??H I
)??I J
{@@ 
whileAA !
(AA" #
readerAA# )
.AA) *
ReadAA* .
(AA. /
)AA/ 0
)AA0 1
{BB 
UOMListCC  '
.CC' (
AddCC( +
(CC+ ,
newDD$ '
UOMDD( +
{EE$ %
IDFF( *
=FF+ ,
ConvertFF- 4
.FF4 5
ToInt32FF5 <
(FF< =
readerFF= C
[FFC D
$strFFD H
]FFH I
)FFI J
,FFJ K
NameGG( ,
=GG- .
readerGG/ 5
[GG5 6
$strGG6 C
]GGC D
.GGD E
ToStringGGE M
(GGM N
)GGN O
}HH$ %
)II$ %
;II% &
}JJ 
}KK 
}LL 
}MM 
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP 
DebugQQ 
.QQ 
	WriteLineQQ 
(QQ  
exQQ  "
.QQ" #
ToStringQQ# +
(QQ+ ,
)QQ, -
)QQ- .
;QQ. /
}RR 
returnSS 
UOMListSS 
;SS 
}TT 	
}UU 
}VV ®
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.DataAccess\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csì5
uD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\EncryptMac.cs
	namespace		 	
EMMS		
 
.		 

Encryption		 
{

 
public 

static 
class 

EncryptMac "
{ 
public 
static 
byte 
[ 
] $
EncryptStringToBytes_Aes 5
(5 6
string6 <
	plainText= F
,F G
byteH L
[L M
]M N
KeyO R
,R S
byteT X
[X Y
]Y Z
IV[ ]
)] ^
{ 	
if 
( 
	plainText 
== 
null !
||" $
	plainText% .
.. /
Length/ 5
<=6 8
$num9 :
): ;
throw 
new !
ArgumentNullException /
(/ 0
$str0 ;
); <
;< =
if 
( 
Key 
== 
null 
|| 
Key "
." #
Length# )
<=* ,
$num- .
). /
throw 
new !
ArgumentNullException /
(/ 0
$str0 5
)5 6
;6 7
if 
( 
IV 
== 
null 
|| 
IV  
.  !
Length! '
<=( *
$num+ ,
), -
throw 
new !
ArgumentNullException /
(/ 0
$str0 4
)4 5
;5 6
byte 
[ 
] 
	encrypted 
; 
using 
( 
Aes 
aesAlg 
= 
Aes  #
.# $
Create$ *
(* +
)+ ,
), -
{ 
aesAlg 
. 
Key 
= 
Key  
;  !
aesAlg 
. 
IV 
= 
IV 
; 
ICryptoTransform  
	encryptor! *
=+ ,
aesAlg- 3
.3 4
CreateEncryptor4 C
(C D
aesAlgD J
.J K
KeyK N
,N O
aesAlgP V
.V W
IVW Y
)Y Z
;Z [
using"" 
("" 
MemoryStream"" #
	msEncrypt""$ -
="". /
new""0 3
MemoryStream""4 @
(""@ A
)""A B
)""B C
{## 
using$$ 
($$ 
CryptoStream$$ '
	csEncrypt$$( 1
=$$2 3
new$$4 7
CryptoStream$$8 D
($$D E
	msEncrypt$$E N
,$$N O
	encryptor$$P Y
,$$Y Z
CryptoStreamMode$$[ k
.$$k l
Write$$l q
)$$q r
)$$r s
{%% 
using&& 
(&& 
StreamWriter&& +
	swEncrypt&&, 5
=&&6 7
new&&8 ;
StreamWriter&&< H
(&&H I
	csEncrypt&&I R
)&&R S
)&&S T
{'' 
	swEncrypt** %
.**% &
Write**& +
(**+ ,
	plainText**, 5
)**5 6
;**6 7
}++ 
	encrypted,, !
=,," #
	msEncrypt,,$ -
.,,- .
ToArray,,. 5
(,,5 6
),,6 7
;,,7 8
}-- 
}.. 
}// 
return33 
	encrypted33 
;33 
}55 	
public77 
static77 
string77 &
DecryptStringFromBytes_Aes77 7
(777 8
byte778 <
[77< =
]77= >

cipherText77? I
,77I J
byte77K O
[77O P
]77P Q
Key77R U
,77U V
byte77W [
[77[ \
]77\ ]
IV77^ `
)77` a
{88 	
if:: 
(:: 

cipherText:: 
==:: 
null:: "
||::# %

cipherText::& 0
.::0 1
Length::1 7
<=::8 :
$num::; <
)::< =
throw;; 
new;; !
ArgumentNullException;; /
(;;/ 0
$str;;0 <
);;< =
;;;= >
if<< 
(<< 
Key<< 
==<< 
null<< 
||<< 
Key<< "
.<<" #
Length<<# )
<=<<* ,
$num<<- .
)<<. /
throw== 
new== !
ArgumentNullException== /
(==/ 0
$str==0 5
)==5 6
;==6 7
if>> 
(>> 
IV>> 
==>> 
null>> 
||>> 
IV>>  
.>>  !
Length>>! '
<=>>( *
$num>>+ ,
)>>, -
throw?? 
new?? !
ArgumentNullException?? /
(??/ 0
$str??0 4
)??4 5
;??5 6
stringCC 
	plaintextCC 
=CC 
nullCC #
;CC# $
usingGG 
(GG 
AesGG 
aesAlgGG 
=GG 
AesGG  #
.GG# $
CreateGG$ *
(GG* +
)GG+ ,
)GG, -
{HH 
aesAlgII 
.II 
KeyII 
=II 
KeyII  
;II  !
aesAlgJJ 
.JJ 
IVJJ 
=JJ 
IVJJ 
;JJ 
ICryptoTransformMM  
	decryptorMM! *
=MM+ ,
aesAlgMM- 3
.MM3 4
CreateDecryptorMM4 C
(MMC D
aesAlgMMD J
.MMJ K
KeyMMK N
,MMN O
aesAlgMMP V
.MMV W
IVMMW Y
)MMY Z
;MMZ [
usingPP 
(PP 
MemoryStreamPP #
	msDecryptPP$ -
=PP. /
newPP0 3
MemoryStreamPP4 @
(PP@ A

cipherTextPPA K
)PPK L
)PPL M
{QQ 
usingRR 
(RR 
CryptoStreamRR '
	csDecryptRR( 1
=RR2 3
newRR4 7
CryptoStreamRR8 D
(RRD E
	msDecryptRRE N
,RRN O
	decryptorRRP Y
,RRY Z
CryptoStreamModeRR[ k
.RRk l
ReadRRl p
)RRp q
)RRq r
{SS 
usingTT 
(TT 
StreamReaderTT +
	srDecryptTT, 5
=TT6 7
newTT8 ;
StreamReaderTT< H
(TTH I
	csDecryptTTI R
)TTR S
)TTS T
{UU 
	plaintextZZ %
=ZZ& '
	srDecryptZZ( 1
.ZZ1 2
	ReadToEndZZ2 ;
(ZZ; <
)ZZ< =
;ZZ= >
}[[ 
}\\ 
}]] 
}__ 
returnaa 
	plaintextaa 
;aa 
}cc 	
}dd 
}ee ®
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs³
°D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csµ
²D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Encryption\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csÅ
|D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.IOC\NinjectControllerFactory.cs
	namespace 	
EMMS
 
. 
IOC 
{ 
public		 

class		 $
NinjectControllerFactory		 )
:		* +$
DefaultControllerFactory		, D
{

 
private 
IKernel 
ninjectKernel %
;% &
public $
NinjectControllerFactory '
(' (
)( )
{ 	
ninjectKernel 
= 
new 
StandardKernel  .
(. /
)/ 0
;0 1
AddBindings 
( 
) 
; 
} 	
	protected 
override 
IController &!
GetControllerInstance' <
(< =
RequestContext= K
requestContext 
, 
Type 
controllerType +
)+ ,
{ 	
return 
controllerType !
==" $
null% )
? 
null 
: 
( 
IController 
) 
ninjectKernel (
.( )
Get) ,
(, -
controllerType- ;
); <
;< =
} 	
private 
void 
AddBindings  
(  !
)! "
{ 	
ninjectKernel 
. 
Bind 
< 
IDataForDropdown /
>/ 0
(0 1
)1 2
.2 3
To3 5
<5 6
DataForDropDown6 E
>E F
(F G
)G H
;H I
ninjectKernel 
. 
Bind 
< 
IPlantSetUpManager 1
>1 2
(2 3
)3 4
.4 5
To5 7
<7 8
PlantSetUpManager8 I
>I J
(J K
)K L
;L M
ninjectKernel 
. 
Bind 
< 
IPlantSetUpManager 1
>1 2
(2 3
)3 4
.4 5
To5 7
<7 8
PlantSetUpManager8 I
>I J
(J K
)K L
;L M
} 	
} 
}   ¦
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.IOC\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.IOC\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.IOC\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.IOC\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs²
jD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\Logger.cs
	namespace 	
EMMS
 
. 
Log 
{ 
public 

static 
class 
Logger 
{ 
private		 
static		 
readonly		 
object		  &
_syncobject		' 2
=		3 4
new		5 8
object		9 ?
(		? @
)		@ A
;		A B
public

 
static

 
void

 
Log

 
(

 
string

 %

strmessage

& 0
)

0 1
{ 	
lock 
( 
_syncobject 
) 
{ 
string 
basePath 
=  !
	AppDomain" +
.+ ,
CurrentDomain, 9
.9 :
BaseDirectory: G
;G H
string 
fileName 
=  !
	Directory" +
.+ ,
GetFiles, 4
(4 5
basePath5 =
+> ?
$str@ K
)K L
.L M
FirstOrDefaultM [
([ \
f\ ]
=>^ `
fa b
.b c
Containsc k
(k l
$strl v
)v w
)w x
.x y
Splity ~
(~ 
$char	 ƒ
)
ƒ „
.
„ …
Last
… ‰
(
‰ Š
)
Š ‹
.
‹ Œ
ToString
Œ ”
(
” •
)
• –
;
– —
var 
fileSize 
= 
new "
FileInfo# +
(+ ,
basePath, 4
+5 6
$str7 C
+D E
fileNameF N
)N O
.O P
LengthP V
;V W
if 
( 
fileSize 
> 
$num #
*$ %
$num& *
)* +
{ 
File 
. 
Delete 
(  
basePath  (
+) *
$str+ 7
+8 9
fileName: B
)B C
;C D
fileName 
= 
$str )
+* +
String, 2
.2 3
Format3 9
(9 :
$str: F
,F G
DateTimeH P
.P Q
NowQ T
)T U
+V W
$strX ^
;^ _
} 
var 
sw 
= 
File 
. 

AppendText (
(( )
basePath) 1
+2 3
$str4 @
+A B
fileNameC K
)K L
;L M
try 
{ 
var 
logLine 
=  !
String" (
.( )
Format) /
(/ 0
$str0 =
,= >
DateTime? G
.G H
NowH K
,K L

strmessageM W
)W X
;X Y
sw 
. 
	WriteLine  
(  !
logLine! (
)( )
;) *
}   
finally!! 
{"" 
sw## 
.## 
Close## 
(## 
)## 
;## 
}$$ 
}%% 
}&& 	
}'' 
}(( ¦
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¬
©D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs®
«D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMS.Log\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csº
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication.Tests\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 6
)6 7
]7 8
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication.Tests\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication.Tests\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¿
¼D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication.Tests\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csÍ
ˆD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\AuthorizeApi .cs
	namespace 	!
EMMSClientApplication
 
.  
	App_Start  )
{ 
public 

class 
AuthorizeApi 
: (
AuthorizationFilterAttribute  <
{ 
public 
override 
void 
OnAuthorization ,
(, -
HttpActionContext- >
actionContext? L
)L M
{ 	
byte 
[ 
] 
encryptedMacID !
=" #
Convert$ +
.+ ,
FromBase64String, <
(< =
actionContext= J
.J K
RequestK R
.R S
HeadersS Z
.Z [
	GetValues[ d
(d e
$stre u
)u v
.v w
FirstOrDefault	w …
(
… †
)
† ‡
)
‡ ˆ
;
ˆ ‰
byte 
[ 
] 
key 
= 
Convert  
.  !
FromBase64String! 1
(1 2
actionContext2 ?
.? @
Request@ G
.G H
HeadersH O
.O P
	GetValuesP Y
(Y Z
$strZ _
)_ `
.` a
FirstOrDefaulta o
(o p
)p q
)q r
;r s
byte 
[ 
] 
IV 
= 
Convert 
.  
FromBase64String  0
(0 1
actionContext1 >
.> ?
Request? F
.F G
HeadersG N
.N O
	GetValuesO X
(X Y
$strY ]
)] ^
.^ _
FirstOrDefault_ m
(m n
)n o
)o p
;p q
string 
macID 
= 

EncryptMac %
.% &&
DecryptStringFromBytes_Aes& @
(@ A
encryptedMacIDA O
,O P
keyQ T
,T U
IVV X
)X Y
;Y Z
if 
( 
new 
	PlantInfo 
( 
) 
.  
IsDeviceAvailable  1
(1 2
macID2 7
)7 8
)8 9
{ 
base 
. 
OnAuthorization $
($ %
actionContext% 2
)2 3
;3 4
} 
else 
{ 
actionContext 
. 
Response &
=' (
new) ,
HttpResponseMessage- @
(@ A
SystemA G
.G H
NetH K
.K L
HttpStatusCodeL Z
.Z [
Unauthorized[ g
)g h
;h i
return 
; 
} 
}   	
}"" 
}## •
‡D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\BundleConfig.cs
	namespace 	
EMMS
 
. 
WebApplication 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
RegisterLayout 
( 
bundles "
)" #
;# $
} 	
private 
static 
void 
RegisterLayout *
(* +
BundleCollection+ ;
bundles< C
)C D
{ 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) B
)B C
.C D
IncludeD K
(K L
$str :
): ;
); <
;< =
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( B
)B C
.C D
IncludeD K
(K L
$str <
)< =
)= >
;> ?
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) =
)= >
.> ?
Include? F
(F G
$str +
)+ ,
), -
;- .
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( =
)= >
.> ?
Include? F
(F G
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( C
)C D
.D E
IncludeE L
(L M
$str >
)> ?
)? @
;@ A
bundles(( 
.(( 
Add(( 
((( 
new(( 
ScriptBundle(( (
(((( )
$str(() E
)((E F
.((F G
Include((G N
(((N O
$str))) X
,))X Y
$str**) _
,**_ `
$str++) \
,++\ ]
$str,,) c
),,c d
),,d e
;,,e f
bundles// 
.// 
Add// 
(// 
new// 
StyleBundle// '
(//' (
$str//( M
)//M N
.//N O
Include//O V
(//V W
$str00( b
)00b c
)00c d
;00d e
}22 	
}33 
}44 Ú
‡D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\FilterConfig.cs
	namespace 	
EMMS
 
. 
WebApplication 
{ 
public 

class 
FilterConfig 
{ 
public		 
static		 
void		 !
RegisterGlobalFilters		 0
(		0 1"
GlobalFilterCollection		1 G
filters		H O
)		O P
{

 	
filters 
. 
Add 
( 
new  
HandleErrorAttribute 0
(0 1
)1 2
)2 3
;3 4
} 	
} 
} 
‰D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\IdentityConfig.cs
	namespace 	
EMMS
 
. 
WebApplication 
{ 
public 

static 
class 
IdentityConfig &
{ 
public 
static 
Saml2Configuration (
Saml2Configuration) ;
{< =
get> A
;A B
privateC J
setK N
;N O
}P Q
=R S
newT W
Saml2ConfigurationX j
(j k
)k l
;l m
public 
static 
void 
RegisterIdentity +
(+ ,
), -
{ 	
AntiForgeryConfig 
. %
UniqueClaimTypeIdentifier 7
=8 9

ClaimTypes: D
.D E
NameIdentifierE S
;S T
Saml2Configuration 
. 
Issuer %
=& '
new( +
Uri, /
(/ 0 
ConfigurationManager0 D
.D E
AppSettingsE P
[P Q
$strQ _
]_ `
)` a
;a b
Saml2Configuration 
. 
AllowedAudienceUris 2
.2 3
Add3 6
(6 7
Saml2Configuration7 I
.I J
IssuerJ P
)P Q
;Q R
var 
entityDescriptor  
=! "
new# &
EntityDescriptor' 7
(7 8
)8 9
;9 :
string 
metadataPath 
=  !
HttpContext" -
.- .
Current. 5
.5 6
Server6 <
.< =
MapPath= D
(D E 
ConfigurationManagerE Y
.Y Z
AppSettingsZ e
[e f
$strf t
]t u
)u v
;v w
entityDescriptor!! 
.!! (
ReadIdPSsoDescriptorFromFile!! 9
(!!9 :
metadataPath!!: F
)!!F G
;!!G H
if%% 
(%% 
entityDescriptor%%  
.%%  !
IdPSsoDescriptor%%! 1
!=%%2 4
null%%5 9
)%%9 :
{&& 
Saml2Configuration'' "
.''" ##
SingleSignOnDestination''# :
=''; <
entityDescriptor''= M
.''M N
IdPSsoDescriptor''N ^
.''^ _ 
SingleSignOnServices''_ s
.''s t
First''t y
(''y z
)''z {
.''{ |
Location	''| „
;
''„ …
Saml2Configuration)) "
.))" #+
SignatureValidationCertificates))# B
.))B C
AddRange))C K
())K L
entityDescriptor))L \
.))\ ]
IdPSsoDescriptor))] m
.))m n 
SigningCertificates	))n 
)
)) ‚
;
))‚ ƒ
}** 
else++ 
{,, 
throw-- 
new-- 
	Exception-- #
(--# $
$str--$ P
)--P Q
;--Q R
}.. 
}// 	
}00 
}11 £
ŒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\MonthCustomBinder.cs
	namespace 	!
EMMSClientApplication
 
.  
	App_Start  )
{ 
public		 

class		 
MonthCustomBinder		 "
:		# $
IModelBinder		% 1
{

 
public 
bool 
	BindModel 
( (
ModelBindingExecutionContext :(
modelBindingExecutionContext; W
,W X
ModelBindingContextY l
bindingContextm {
){ |
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} ¬
†D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\RoleHandler.cs
	namespace 	!
EMMSClientApplication
 
.  
	App_Start  )
{		 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
|+ ,
AttributeTargets- =
.= >
Method> D
,D E
	InheritedF O
=P Q
trueR V
,V W
AllowMultipleX e
=f g
falseh m
)m n
]n o
public 

class %
CheckUserSessionAttribute *
:+ ,
System- 3
.3 4
Web4 7
.7 8
Mvc8 ;
.; <!
ActionFilterAttribute< Q
{ 
public 
static 
String 
LoginUrl %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
delegate 
bool  
CheckSessionDelegate 1
(1 2 
HttpSessionStateBase2 F
sessionG N
)N O
;O P
public 
static  
CheckSessionDelegate *
CheckSessionAlive+ <
;< =
public 
override 
void 
OnActionExecuting .
(. /"
ActionExecutingContext/ E
filterContextF S
)S T
{ 	 
HttpSessionStateBase  
session! (
=) *
filterContext+ 8
.8 9
HttpContext9 D
.D E
SessionE L
;L M
if 
( 
( 
CheckSessionAlive "
==# %
null& *
)* +
||, .
(/ 0
CheckSessionAlive0 A
(A B
sessionB I
)I J
)J K
)K L
return 
; 
var 
url 
= 
new 
	UrlHelper #
(# $
filterContext$ 1
.1 2
RequestContext2 @
)@ A
;A B
var 
loginUrl 
= 
url 
. 
Content &
(& '
LoginUrl' /
)/ 0
;0 1
if 
( 
session 
!= 
null 
)  
{ 
session 
. 
	RemoveAll !
(! "
)" #
;# $
session 
. 
Clear 
( 
) 
;  
session 
. 
Abandon 
(  
)  !
;! "
} 
filterContext   
.   
HttpContext   %
.  % &
Response  & .
.  . /

StatusCode  / 9
=  : ;
$num  < ?
;  ? @
filterContext!! 
.!! 
HttpContext!! %
.!!% &
Response!!& .
.!!. /
Redirect!!/ 7
(!!7 8
loginUrl!!8 @
,!!@ A
true!!B F
)!!F G
;!!G H
filterContext"" 
."" 
Result""  
=""! "
new""# &
EmptyResult""' 2
(""2 3
)""3 4
;""4 5
}## 	
}$$ 
}&& ¸	
†D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\RouteConfig.cs
	namespace 	
EMMS
 
. 
WebApplication 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- ;
,; <
action= C
=D E
$strF P
,P Q
idR T
=U V
UrlParameterW c
.c d
Optionald l
}m n
) 
; 
} 	
} 
} Ø
‡D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\App_Start\WebApiConfig.cs
	namespace 	
EMMS
 
. 
WebApplication 
{ 
public		 

static		 
class		 
WebApiConfig		 $
{

 
public 
static 
void 
Register #
(# $
HttpConfiguration$ 5
config6 <
)< =
{ 	
config 
. -
!SuppressDefaultHostAuthentication 4
(4 5
)5 6
;6 7
config 
. 
Filters 
. 
Add 
( 
new "'
HostAuthenticationAttribute# >
(> ?
$str? G
)G H
)H I
;I J
config 
. "
MapHttpAttributeRoutes )
() *
)* +
;+ ,
config 
. 
Routes 
. 
MapHttpRoute &
(& '
name 
: 
$str "
," #
routeTemplate 
: 
$str 6
,6 7
defaults 
: 
new 
{ 
id  "
=# $
RouteParameter% 3
.3 4
Optional4 <
}= >
) 
; 
} 	
} 
} „Q
ŒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\AdminController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public 
AdminController 
( 
IPlantSetUpManager 1
plantSetupdal2 ?
)? @
{ 	
this 
. 

plantSetup 
= 
plantSetupdal +
;+ ,
} 	
[ 	
CheckUserSession	 
] 
public 
ActionResult 
MacIDReg $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
CheckUserSession	 
] 
public 
ActionResult 
wagesUOMMapping +
(+ ,
), -
{ 	
return 
View 
( 
) 
; 
} 	
[   	
CheckUserSession  	 
]   
public!! 
ActionResult!! 
adminConfiguration!! .
(!!. /
)!!/ 0
{"" 	
return## 
View## 
(## 
)## 
;## 
}$$ 	
[%% 	
CheckUserSession%%	 
]%% 
public&& 
ActionResult&& 
userRegistration&& ,
(&&, -
)&&- .
{'' 	
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
[** 	
CheckUserSession**	 
]** 
public++ 
ActionResult++ 
userPlantMapping++ ,
(++, -
)++- .
{,, 	
return-- 
View-- 
(-- 
)-- 
;-- 
}.. 	
[// 	
HttpGet//	 
]// 
[00 	
CheckUserSession00	 
]00 
public11 

JsonResult11 
GetEmailAddress11 )
(11) *
)11* +
{22 	
List33 
<33 
EmailLst33 
>33 
	emailList33 $
=33% &

plantSetup33' 1
.331 2
GetEmailAddress332 A
(33A B
)33B C
;33C D
return44 
Json44 
(44 
	emailList44 !
,44! "
JsonRequestBehavior44# 6
.446 7
AllowGet447 ?
)44? @
;44@ A
}55 	
[66 	
HttpPost66	 
]66 
[77 	
CheckUserSession77	 
]77 
public88 
int88 
SaveEmailAddress88 #
(88# $
string88$ *
emailId88+ 2
,882 3
int884 7
roleId888 >
,88> ?
int88@ C
Id88D F
)88F G
{99 	
if;; 
(;; !
checkForDuplicateMail;; %
(;;% &
Id;;& (
,;;( )
emailId;;) 0
);;0 1
);;1 2
return<< 
$num<< 
;<< 
if== 
(== 
!== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
emailId==% ,
)==, -
&&==. 0

plantSetup==1 ;
.==; <
AddEmailAddress==< K
(==K L
emailId==L S
,==S T
roleId==U [
,==[ \
Id==] _
)==_ `
)==` a
{>> 
return?? 
$num?? 
;?? 
}@@ 
elseAA 
{BB 
returnCC 
$numCC 
;CC 
}DD 
}EE 	
[FF 	
CheckUserSessionFF	 
]FF 
publicGG 
intGG 
DeleteEmailAddressGG %
(GG% &
intGG& )
idGG* ,
)GG, -
{HH 	
ifII 
(II 
idII 
!=II 
$numII 
)II 
{JJ 

plantSetupKK 
.KK 
DeleteEmailAddressKK -
(KK- .
idKK. 0
)KK0 1
;KK1 2
returnLL 
$numLL 
;LL 
}MM 
elseNN 
{OO 
returnPP 
$numPP 
;PP 
}QQ 
}RR 	
	protectedSS 
overrideSS 
voidSS 

InitializeSS  *
(SS* +
RequestContextSS+ 9
requestContextSS: H
)SSH I
{TT 	
ifUU 
(UU 

plantSetupUU 
!=UU 
nullUU "
)UU" #
{VV 

plantSetupWW 
.WW 
PlantIdWW "
=WW# $
ConvertWW% ,
.WW, -
ToInt32WW- 4
(WW4 5
requestContextWW5 C
.WWC D
HttpContextWWD O
.WWO P
SessionWWP W
[WWW X
$strWWX a
]WWa b
)WWb c
;WWc d

plantSetupXX 
.XX 
UserNameXX #
=XX$ %
requestContextXX& 4
.XX4 5
HttpContextXX5 @
.XX@ A
SessionXXA H
[XXH I
$strXXI S
]XXS T
.XXT U
ToStringXXU ]
(XX] ^
)XX^ _
;XX_ `
}ZZ 
base[[ 
.[[ 

Initialize[[ 
([[ 
requestContext[[ *
)[[* +
;[[+ ,
}\\ 	
[]] 	
HttpGet]]	 
]]] 
[^^ 	
CheckUserSession^^	 
]^^ 
public__ 

JsonResult__ 
GetUserMappingList__ ,
(__, -
)__- .
{`` 	
Listaa 
<aa 
UserMappingaa 
>aa 
detailsaa %
=aa& '

plantSetupaa( 2
.aa2 3
GetUserMappingListaa3 E
(aaE F
)aaF G
;aaG H
returnbb 
Jsonbb 
(bb 
detailsbb 
,bb  
JsonRequestBehaviorbb! 4
.bb4 5
AllowGetbb5 =
)bb= >
;bb> ?
}cc 	
[dd 	
HttpPostdd	 
]dd 
[ee 	
CheckUserSessionee	 
]ee 
publicff 
intff 
DeleteUSerMappingff $
(ff$ %
intff% (
useridff) /
)ff/ 0
{gg 	
ifhh 
(hh 

plantSetuphh 
.hh 
DeleteUserMappinghh ,
(hh, -
useridhh- 3
)hh3 4
)hh4 5
returnii 
$numii 
;ii 
elsejj 
returnjj 
$numjj 
;jj 
}kk 	
[ll 	
HttpPostll	 
]ll 
[mm 	
CheckUserSessionmm	 
]mm 
publicnn 
intnn 
AddUserMappingnn !
(nn! "
intnn" %
userIdnn& ,
,nn, -
intnn. 1
[nn1 2
]nn2 3
plantidnn4 ;
)nn; <
{oo 	
stringqq 
resultqq 
=qq 
stringqq "
.qq" #
Joinqq# '
(qq' (
$strqq( +
,qq+ ,
plantidqq- 4
.qq4 5
Selectqq5 ;
(qq; <
itemqq< @
=>qqA C
itemqqD H
)qqI J
)qqJ K
;qqK L
ifrr 
(rr 

plantSetuprr 
.rr 
AddUserMappingrr )
(rr) *
userIdrr* 0
,rr0 1
resultrr2 8
)rr8 9
)rr9 :
returnss 
$numss 
;ss 
elsett 
returntt 
$numtt 
;tt 
}uu 	
[vv 	
	NonActionvv	 
]vv 
privateww 
boolww !
checkForDuplicateMailww *
(ww* +
intww+ .
idww/ 1
,ww1 2
stringww2 8
emailIdww9 @
)ww@ A
{xx 	
ifyy 
(yy 
stringyy 
.yy 
IsNullOrEmptyyy $
(yy$ %
emailIdyy% ,
)yy, -
)yy- .
returnzz 
truezz 
;zz 
if{{ 
({{ 
id{{ 
=={{ 
$num{{ 
){{ 
{|| 
if}} 
(}} 

plantSetup}} 
.}} 
GetEmailAddress}} -
(}}- .
)}}. /
.}}/ 0
Any}}0 3
(}}3 4
s}}4 5
=>}}6 8
s}}9 :
.}}: ;
EmailId}}; B
==}}C E
emailId}}F M
)}}M N
)}}N O
return~~ 
true~~ 
;~~  
else 
return
€€ 
false
€€ 
;
€€ 
}
 
else
ƒƒ 
{
„„ 
string
…… 
email
…… 
=
…… 

plantSetup
…… )
.
……) *
GetEmailAddress
……* 9
(
……9 :
)
……: ;
.
……; <
Where
……< A
(
……A B
s
……B C
=>
……D F
s
……G H
.
……H I
UserId
……I O
==
……P R
id
……S U
)
……U V
.
……V W
Select
……W ]
(
……] ^
s
……^ _
=>
……_ a
s
……a b
.
……b c
EmailId
……c j
)
……j k
.
……k l
FirstOrDefault
……l z
(
……z {
)
……{ |
.
……| }
ToString……} …
(……… †
)……† ‡
;……‡ ˆ
if
†† 
(
†† 
emailId
†† 
!=
†† 
email
†† $
&&
††% '

plantSetup
††( 2
.
††2 3
GetEmailAddress
††3 B
(
††B C
)
††C D
.
††D E
Any
††E H
(
††H I
s
††I J
=>
††K M
s
††N O
.
††O P
EmailId
††P W
==
††X Z
emailId
††[ b
)
††b c
)
††c d
return
‡‡ 
true
‡‡ 
;
‡‡  
else
ˆˆ 
return
‰‰ 
false
‰‰  
;
‰‰  !
}
‹‹ 
}
ŒŒ 	
}
 
} Ô
”D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\AlarmEnablingController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class #
AlarmEnablingController (
:) *

Controller+ 5
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public #
AlarmEnablingController &
(& '
IPlantSetUpManager' 9

plantSetup: D
)D E
{ 	
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
[ 	
CheckUserSession	 
] 
public 
ActionResult 
AlarmEnabling )
() *
)* +
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
CheckUserSession	 
] 
public 
int 
UpdateAlaramInfo #
(# $
List$ (
<( )

AlarmEnble) 3
>3 4

alaramInfo5 ?
)? @
{ 	
if 
( 

alaramInfo 
!= 
null "
)" #
{ 
if 
( 

plantSetup 
. 
UpdateAlarmInfo .
(. /

alaramInfo/ 9
)9 :
): ;
return!! 
$num!! 
;!! 
else## 
return## 
$num## 
;## 
}$$ 
return%% 
$num%% 
;%% 
}&& 	
['' 	
CheckUserSession''	 
]'' 
public(( 

JsonResult(( 
GetAlarmData(( &
(((& '
)((' (
{)) 	
List** 
<** 

AlarmEnble** 
>** 
	alramData** &
=**' (

plantSetup**) 3
.**3 4
GetAlaramData**4 A
(**A B
)**B C
;**C D
return++ 
Json++ 
(++ 
	alramData++ !
,++! "
JsonRequestBehavior++# 6
.++6 7
AllowGet++7 ?
)++? @
;++@ A
},, 	
	protected-- 
override-- 
void-- 

Initialize--  *
(--* +
RequestContext--+ 9
requestContext--: H
)--H I
{.. 	
if// 
(// 

plantSetup// 
!=// 
null// "
)//" #
{00 

plantSetup11 
.11 
PlantId11 "
=11# $
Convert11% ,
.11, -
ToInt3211- 4
(114 5
requestContext115 C
.11C D
HttpContext11D O
.11O P
Session11P W
[11W X
$str11X a
]11a b
)11b c
;11c d

plantSetup22 
.22 
UserName22 #
=22$ %
requestContext22& 4
.224 5
HttpContext225 @
.22@ A
Session22A H
[22H I
$str22I S
]22S T
.22T U
ToString22U ]
(22] ^
)22^ _
;22_ `
}44 
base55 
.55 

Initialize55 
(55 
requestContext55 *
)55* +
;55+ ,
}66 	
}77 
}88 ‡˜
‹D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\AuthController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
[ 
AllowAnonymous 
] 
public 

class 
AuthController 
:  !

Controller" ,
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
const 
string 
relayStateReturnUrl (
=) *
$str+ 6
;6 7
private 
readonly 
Saml2Configuration +
config, 2
;2 3
private 
string 
emaialID 
=  !
string" (
.( )
Empty) .
;. /
private 
string 
certificate "
=# $ 
ConfigurationManager% 9
.9 :
AppSettings: E
[E F
$strF S
]S T
;T U
public 
object 
SecurityAlgorithms (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public!! 
AuthController!! 
(!! 
IPlantSetUpManager!! 0

plantSetup!!1 ;
)!!; <
{"" 	
config## 
=## 
IdentityConfig## #
.### $
Saml2Configuration##$ 6
;##6 7
this$$ 
.$$ 

plantSetup$$ 
=$$ 

plantSetup$$ (
;$$( )
}%% 	
[&& 	
Route&&	 
(&& 
$str&& 
)&& 
]&& 
public'' 
ActionResult'' 
EmmsACS'' #
(''# $
)''$ %
{(( 	
User** 
user** 
=** 
new** 
User**  
(**  !
)**! "
;**" #
try++ 
{,, 
if-- 
(-- 
Request-- 
.-- 
QueryString-- '
[--' (
$str--( 8
]--8 9
!=--: <
null--= A
&&--B D
Request--E L
.--L M
QueryString--M X
[--X Y
$str--Y e
]--e f
!=--g i
null--j n
)--n o
{.. 
TempData// 
[// 
$str// -
]//- .
=/// 0
Request//1 8
.//8 9
QueryString//9 D
[//D E
$str//E U
]//U V
;//V W
TempData00 
[00 
$str00 )
]00) *
=00+ ,
Request00- 4
.004 5
QueryString005 @
[00@ A
$str00A M
]00M N
;00N O
}11 
string22 

controller22 !
=22" #
$str22$ &
;22& '
string33 
action33 
=33 
$str33  "
;33" #
if44 
(44 
TempData44 
[44 
$str44 -
]44- .
!=44/ 1
null442 6
&&447 9
TempData44: B
[44B C
$str44C O
]44O P
!=44Q S
null44T X
)44X Y
{55 
return66 
RedirectToAction66 +
(66+ ,

controller66, 6
,666 7
action668 >
)66> ?
;66? @
}77 
try@@ 
{AA 
userII 
.II 
UserNameII !
=II" #
$strII$ *
;II* +
userJJ 
.JJ 
emailJJ 
=JJ  
$strJJ! 5
;JJ5 6
userKK 
.KK 
	firstnameKK "
=KK# $
$strKK% +
;KK+ ,
userLL 
.LL 
lastnameLL !
=LL" #
$strLL$ *
;LL* +
userMM 
.MM 
countryMM  
=MM! "
$strMM# '
;MM' (
emaialIDNN 
=NN 
$strNN 3
;NN3 4
SessionOO 
[OO 
$strOO &
]OO& '
=OO( )
emaialIDOO* 2
;OO2 3
SessionPP 
[PP 
$strPP &
]PP& '
=PP( )
userPP* .
.PP. /
UserNamePP/ 7
;PP7 8
ListQQ 
<QQ 
AssetsQQ 
>QQ  
	asetsListQQ! *
=QQ+ ,

plantSetupQQ- 7
.QQ7 8
GetUserDetailsQQ8 F
(QQF G
(QQG H
emaialIDQQH P
)QQP Q
.QQQ R
TrimQQR V
(QQV W
)QQW X
)QQX Y
;QQY Z
ifRR 
(RR 
	asetsListRR !
==RR" $
nullRR% )
)RR) *
{RR+ ,
returnRR- 3
RedirectToActionRR4 D
(RRD E
$strRRE O
,RRO P
$strRRQ W
)RRW X
;RRX Y
}RRZ [
ifSS 
(SS 
	asetsListSS !
.SS! "
CountSS" '
>SS( )
$numSS* +
)SS+ ,
{TT 
intUU 
roleIdUU "
=UU# $
$numUU% &
;UU& '
foreachWW 
(WW  !
varWW! $
itemWW% )
inWW* ,
	asetsListWW- 6
)WW6 7
{XX 
roleIdYY "
=YY# $
	asetsListYY% .
.YY. /
MaxYY/ 2
(YY2 3
rYY3 4
=>YY5 7
rYY8 9
.YY9 :
RoleIdYY: @
)YY@ A
;YYA B
}ZZ 
Session[[ 
[[[  
$str[[  (
][[( )
=[[* +
roleId[[, 2
;[[2 3
return]] 
RedirectToAction]] /
(]]/ 0
$str]]0 ;
,]]; <
$str]]= C
)]]C D
;]]D E
}__ 
else`` 
if`` 
(`` 
	asetsList`` &
.``& '
Count``' ,
>``- .
$num``/ 0
)``0 1
{aa 
foreachcc 
(cc  !
varcc! $
itemcc% )
incc* ,
	asetsListcc- 6
)cc6 7
{dd 
Sessionee #
[ee# $
$stree$ -
]ee- .
=ee/ 0
itemee1 5
.ee5 6
PlantIDee6 =
;ee= >
Sessiongg #
[gg# $
$strgg$ /
]gg/ 0
=gg1 2
itemgg3 7
.gg7 8
	PlantNamegg8 A
;ggA B
Sessionhh #
[hh# $
$strhh$ ,
]hh, -
=hh. /
itemhh0 4
.hh4 5
RoleIdhh5 ;
;hh; <
}ii 
ifjj 
(jj 
Sessionjj #
[jj# $
$strjj$ -
]jj- .
.jj. /
ToStringjj/ 7
(jj7 8
)jj8 9
==jj: <
$strjj= @
)jj@ A
{kk 
returnll "
RedirectToActionll# 3
(ll3 4
$strll4 H
,llH I
$strllJ Q
)llQ R
;llR S
}mm 
elsenn 
ifnn 
(nn  !
(nn! "
Sessionnn" )
[nn) *
$strnn* 3
]nn3 4
.nn4 5
ToStringnn5 =
(nn= >
)nn> ?
!=nn@ B
$strnnC F
)nnF G
)nnG H
{oo 
returnpp "
RedirectToActionpp# 3
(pp3 4
$strpp4 >
,pp> ?
$strpp@ J
)ppJ K
;ppK L
}qq 
}rr 
elsess 
{tt 
returnuu 
RedirectToActionuu /
(uu/ 0
$struu0 :
,uu: ;
$struu< B
)uuB C
;uuC D
}vv 
}ww 
catchxx 
(xx 
	Exceptionxx  
exxx! #
)xx# $
{yy 
Loggerzz 
.zz 
Logzz 
(zz 
$strzz C
+zzD E
exzzF H
.zzH I
ToStringzzI Q
(zzQ R
)zzR S
)zzS T
;zzT U
user}} 
.}} 
Error}} 
=}}  
ex}}! #
.}}# $
Message}}$ +
;}}+ ,
} 
}
…… 
catch
†† 
(
†† 
	Exception
†† 
ex
†† 
)
††  
{
‡‡ 
return
ˆˆ 
RedirectToAction
ˆˆ '
(
ˆˆ' (
$str
ˆˆ( 2
,
ˆˆ2 3
$str
ˆˆ4 :
)
ˆˆ: ;
;
ˆˆ; <
user
‰‰ 
.
‰‰ 
Error
‰‰ 
=
‰‰ 
$str
‰‰ +
;
‰‰+ ,
}
ŠŠ 
return
ŒŒ 
RedirectToAction
ŒŒ #
(
ŒŒ# $
$str
ŒŒ$ .
,
ŒŒ. /
$str
ŒŒ0 6
)
ŒŒ6 7
;
ŒŒ7 8
}
 	
[
 	
Route
	 
(
 
$str
 
)
 
]
 
public
 
ActionResult
 
Logout
 "
(
" #
)
# $
{
‘‘ 	
Response
™™ 
.
™™ 
Cache
™™ 
.
™™ 

SetExpires
™™ %
(
™™% &
DateTime
™™& .
.
™™. /
UtcNow
™™/ 5
.
™™5 6
AddHours
™™6 >
(
™™> ?
-
™™? @
$num
™™@ A
)
™™A B
)
™™B C
;
™™C D
Response
šš 
.
šš 
Cache
šš 
.
šš 
SetCacheability
šš *
(
šš* +
System
šš+ 1
.
šš1 2
Web
šš2 5
.
šš5 6
HttpCacheability
šš6 F
.
ššF G
NoCache
ššG N
)
ššN O
;
ššO P
Response
›› 
.
›› 
Cache
›› 
.
›› 

SetNoStore
›› %
(
››% &
)
››& '
;
››' (
Session
œœ 
[
œœ 
$str
œœ 
]
œœ 
=
œœ  !
string
œœ" (
.
œœ( )
Empty
œœ) .
;
œœ. /
Session
 
[
 
$str
 
]
 
=
  
string
! '
.
' (
Empty
( -
;
- .
Session
 
[
 
$str
 
]
 
=
 
string
  &
.
& '
Empty
' ,
;
, -
Session
ŸŸ 
[
ŸŸ 
$str
ŸŸ 
]
ŸŸ 
=
ŸŸ  !
string
ŸŸ" (
.
ŸŸ( )
Empty
ŸŸ) .
;
ŸŸ. /
Session
   
.
   
Clear
   
(
   
)
   
;
   
Response
¡¡ 
.
¡¡ 
Cookies
¡¡ 
.
¡¡ 
Clear
¡¡ "
(
¡¡" #
)
¡¡# $
;
¡¡$ %
Session
¢¢ 
.
¢¢ 
Clear
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
Response
££ 
.
££ 
Cookies
££ 
.
££ 
Clear
££ "
(
££" #
)
££# $
;
££$ %
Session
¤¤ 
.
¤¤ 
	RemoveAll
¤¤ 
(
¤¤ 
)
¤¤ 
;
¤¤  
Session
¥¥ 
.
¥¥ 
Abandon
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ %
FederatedAuthentication
¦¦ #
.
¦¦# $)
SessionAuthenticationModule
¦¦$ ?
.
¦¦? @&
DeleteSessionTokenCookie
¦¦@ X
(
¦¦X Y
)
¦¦Y Z
;
¦¦Z [%
FederatedAuthentication
§§ #
.
§§# $)
SessionAuthenticationModule
§§$ ?
.
§§? @
SignOut
§§@ G
(
§§G H
)
§§H I
;
§§I J
return
¨¨ 
RedirectToAction
¨¨ #
(
¨¨# $
$str
¨¨$ .
,
¨¨. /
$str
¨¨0 >
)
¨¨> ?
;
¨¨? @
}
¸¸ 	
[
¹¹ 	
Route
¹¹	 
(
¹¹ 
$str
¹¹ 
)
¹¹ 
]
¹¹ 
public
ºº 
ActionResult
ºº 
	LoggedOut
ºº %
(
ºº% &
)
ºº& '
{
»» 	
var
¼¼ 
binding
¼¼ 
=
¼¼ 
new
¼¼ 
Saml2PostBinding
¼¼ .
(
¼¼. /
)
¼¼/ 0
;
¼¼0 1
binding
½½ 
.
½½ 
Unbind
½½ 
(
½½ 
Request
½½ "
.
½½" #"
ToGenericHttpRequest
½½# 7
(
½½7 8
)
½½8 9
,
½½9 :
new
½½; >!
Saml2LogoutResponse
½½? R
(
½½R S
config
½½S Y
)
½½Y Z
)
½½Z [
;
½½[ \%
FederatedAuthentication
¿¿ #
.
¿¿# $)
SessionAuthenticationModule
¿¿$ ?
.
¿¿? @&
DeleteSessionTokenCookie
¿¿@ X
(
¿¿X Y
)
¿¿Y Z
;
¿¿Z [%
FederatedAuthentication
ÀÀ #
.
ÀÀ# $)
SessionAuthenticationModule
ÀÀ$ ?
.
ÀÀ? @
SignOut
ÀÀ@ G
(
ÀÀG H
)
ÀÀH I
;
ÀÀI J
return
ÂÂ 
Redirect
ÂÂ 
(
ÂÂ 
Url
ÂÂ 
.
ÂÂ  
Content
ÂÂ  '
(
ÂÂ' (
$str
ÂÂ( ,
)
ÂÂ, -
)
ÂÂ- .
;
ÂÂ. /
}
ÃÃ 	
[
ÄÄ 	
Route
ÄÄ	 
(
ÄÄ 
$str
ÄÄ 
)
ÄÄ 
]
ÄÄ 
public
ÅÅ 
ActionResult
ÅÅ 
SingleLogout
ÅÅ (
(
ÅÅ( )
)
ÅÅ) *
{
ÆÆ 	
Saml2StatusCodes
ÇÇ 
status
ÇÇ #
;
ÇÇ# $
var
ÈÈ 
requestBinding
ÈÈ 
=
ÈÈ  
new
ÈÈ! $
Saml2PostBinding
ÈÈ% 5
(
ÈÈ5 6
)
ÈÈ6 7
;
ÈÈ7 8
var
ÉÉ 
logoutRequest
ÉÉ 
=
ÉÉ 
new
ÉÉ  # 
Saml2LogoutRequest
ÉÉ$ 6
(
ÉÉ6 7
config
ÉÉ7 =
,
ÉÉ= >
ClaimsPrincipal
ÉÉ? N
.
ÉÉN O
Current
ÉÉO V
)
ÉÉV W
;
ÉÉW X
try
ÊÊ 
{
ËË 
requestBinding
ÌÌ 
.
ÌÌ 
Unbind
ÌÌ %
(
ÌÌ% &
Request
ÌÌ& -
.
ÌÌ- ."
ToGenericHttpRequest
ÌÌ. B
(
ÌÌB C
)
ÌÌC D
,
ÌÌD E
logoutRequest
ÌÌF S
)
ÌÌS T
;
ÌÌT U
status
ÍÍ 
=
ÍÍ 
Saml2StatusCodes
ÍÍ )
.
ÍÍ) *
Success
ÍÍ* 1
;
ÍÍ1 2
logoutRequest
ÎÎ 
.
ÎÎ 
DeleteSession
ÎÎ +
(
ÎÎ+ ,
)
ÎÎ, -
;
ÎÎ- .
}
ÏÏ 
catch
ĞĞ 
(
ĞĞ 
	Exception
ĞĞ 
exc
ĞĞ  
)
ĞĞ  !
{
ÑÑ 
Debug
ÓÓ 
.
ÓÓ 
	WriteLine
ÓÓ 
(
ÓÓ  
$str
ÓÓ  6
+
ÓÓ7 8
exc
ÓÓ9 <
.
ÓÓ< =
ToString
ÓÓ= E
(
ÓÓE F
)
ÓÓF G
)
ÓÓG H
;
ÓÓH I
status
ÔÔ 
=
ÔÔ 
Saml2StatusCodes
ÔÔ )
.
ÔÔ) *
RequestDenied
ÔÔ* 7
;
ÔÔ7 8
}
ÕÕ 
var
×× 
responsebinding
×× 
=
××  !
new
××" %
Saml2PostBinding
××& 6
(
××6 7
)
××7 8
;
××8 9
responsebinding
ØØ 
.
ØØ 

RelayState
ØØ &
=
ØØ' (
requestBinding
ØØ) 7
.
ØØ7 8

RelayState
ØØ8 B
;
ØØB C
var
ÙÙ !
saml2LogoutResponse
ÙÙ #
=
ÙÙ$ %
new
ÙÙ& )!
Saml2LogoutResponse
ÙÙ* =
(
ÙÙ= >
config
ÙÙ> D
)
ÙÙD E
{
ÚÚ "
InResponseToAsString
ÛÛ $
=
ÛÛ% &
logoutRequest
ÛÛ' 4
.
ÛÛ4 5

IdAsString
ÛÛ5 ?
,
ÛÛ? @
Status
ÜÜ 
=
ÜÜ 
status
ÜÜ 
,
ÜÜ  
}
İİ 
;
İİ 
return
ŞŞ 
responsebinding
ŞŞ "
.
ŞŞ" #
Bind
ŞŞ# '
(
ŞŞ' (!
saml2LogoutResponse
ŞŞ( ;
)
ŞŞ; <
.
ŞŞ< =
ToActionResult
ŞŞ= K
(
ŞŞK L
)
ŞŞL M
;
ŞŞM N
}
ßß 	
[
àà 	
HttpGet
àà	 
]
àà 
[
áá 	
CheckUserSession
áá	 
]
áá 
public
ââ 
ActionResult
ââ 
	PlantList
ââ %
(
ââ% &
)
ââ& '
{
ãã 	
int
ää 
plantId
ää 
=
ää 
Convert
ää !
.
ää! "
ToInt32
ää" )
(
ää) *
Session
ää* 1
[
ää1 2
$str
ää2 ;
]
ää; <
)
ää< =
;
ää= >
if
åå 
(
åå 
plantId
åå 
!=
åå 
$num
åå 
)
åå 
{
ææ 
return
èè 
RedirectToAction
èè '
(
èè' (
$str
èè( 2
,
èè2 3
$str
èè4 >
)
èè> ?
;
èè? @
}
éé 
else
êê 
{
ëë 
return
ìì 
View
ìì 
(
ìì 
)
ìì 
;
ìì 
}
íí 
}
îî 	
[
ïï 	
CheckUserSession
ïï	 
]
ïï 
public
ğğ 

JsonResult
ğğ 
GetPlantListNames
ğğ +
(
ğğ+ ,
)
ğğ, -
{
ññ 	
List
òò 
<
òò 
Assets
òò 
>
òò 
	asetsList
òò "
=
òò# $

plantSetup
òò% /
.
òò/ 0
GetUserDetails
òò0 >
(
òò> ?
Session
òò? F
[
òòF G
$str
òòG Q
]
òòQ R
.
òòR S
ToString
òòS [
(
òò[ \
)
òò\ ]
)
òò] ^
;
òò^ _
return
óó 
Json
óó 
(
óó 
	asetsList
óó !
,
óó! "!
JsonRequestBehavior
óó# 6
.
óó6 7
AllowGet
óó7 ?
)
óó? @
;
óó@ A
}
ôô 	
[
õõ 	
HttpPost
õõ	 
]
õõ 
[
öö 	
CheckUserSession
öö	 
]
öö 
public
÷÷ 
ActionResult
÷÷ !
UpdateSelectedPalnt
÷÷ /
(
÷÷/ 0
int
÷÷0 3
plantID
÷÷4 ;
,
÷÷; <
string
÷÷= C
	plantName
÷÷D M
)
÷÷M N
{
øø 	
if
úú 
(
úú 
	plantName
úú 
!=
úú 
$str
úú +
&&
úú, .
plantID
úú/ 6
!=
úú7 9
$num
úú: ;
)
úú; <
{
ûû 
Session
üü 
[
üü 
$str
üü !
]
üü! "
=
üü# $
plantID
üü% ,
;
üü, -
Session
ıı 
[
ıı 
$str
ıı #
]
ıı# $
=
ıı% &
	plantName
ıı' 0
;
ıı0 1
return
şş 
RedirectToAction
şş '
(
şş' (
$str
şş( 2
,
şş2 3
$str
şş4 >
)
şş> ?
;
şş? @
}
ÿÿ 
else
 
{
‚‚ 
return
ƒƒ 
RedirectToAction
ƒƒ '
(
ƒƒ' (
$str
ƒƒ( 3
,
ƒƒ3 4
$str
ƒƒ5 ;
)
ƒƒ; <
;
ƒƒ< =
}
„„ 
}
†† 	
public
‡‡ 
ActionResult
‡‡ 
ErrorMsg
‡‡ $
(
‡‡$ %
)
‡‡% &
{
ˆˆ 	
return
‰‰ 
View
‰‰ 
(
‰‰ 
)
‰‰ 
;
‰‰ 
}
ŠŠ 	
}
‹‹ 
}ŒŒ Îí
”D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\ConfigurationController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class #
ConfigurationController (
:) *

Controller+ 5
{ 
private 
IDataForDropdown  
dropdownlist! -
;- .
private 
IPlantSetUpManager "

plantSetup# -
;- .
public #
ConfigurationController &
(& '
IDataForDropdown' 7
dropdownlist8 D
,D E
IPlantSetUpManagerF X

plantSetupY c
)c d
{ 	
this 
. 
dropdownlist 
= 
dropdownlist  ,
;, -
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
[ 	
CheckUserSession	 
] 
public 
ActionResult 
Configurations *
(* +
)+ ,
{ 	
ViewBag   
.   
WageList   
=   
new   "

SelectList  # -
(  - .
dropdownlist  . :
.  : ;
GetWages  ; C
(  C D
)  D E
,  E F
$str  G K
,  K L
$str  M S
)  S T
;  T U
ViewBag!! 
.!! 
UOMList!! 
=!! 
new!! !

SelectList!!" ,
(!!, -
dropdownlist!!- 9
.!!9 :
GetUOMs!!: A
(!!A B
)!!B C
,!!C D
$str!!E I
,!!I J
$str!!K Q
)!!Q R
;!!R S
return## 
View## 
(## 
)## 
;## 
}$$ 	
[&& 	
HttpPost&&	 
]&& 
['' 	
CheckUserSession''	 
]'' 
public(( 
int(( 
Configurations(( !
(((! "
string((" (

EnergyName(() 3
,((3 4
string((5 ;

EnergyType((< F
,((F G
string((H N
UOM((O R
,((R S
string((T Z
id(([ ]
)((] ^
{)) 	
if** 
(** 
!** 
string** 
.** 
IsNullOrEmpty** %
(**% &

EnergyName**& 0
)**0 1
&&**2 4
!**5 6
string**6 <
.**< =
IsNullOrEmpty**= J
(**J K

EnergyType**K U
)**U V
&&**W Y
!**Z [
string**[ a
.**a b
IsNullOrEmpty**b o
(**o p
UOM**p s
)**s t
)**t u
{++ 
int,, 
energyTypeId,,  
,,,  !
UOMId,," '
,,,' (
ID,,) +
;,,+ ,
if-- 
(-- 
int-- 
.-- 
TryParse--  
(--  !

EnergyType--! +
,--+ ,
out--- 0
energyTypeId--1 =
)--= >
&&--? A
int--B E
.--E F
TryParse--F N
(--N O
UOM--O R
,--R S
out--T W
UOMId--X ]
)--] ^
&&--_ a
int--b e
.--e f
TryParse--f n
(--n o
id--o q
,--q r
out--s v
ID--w y
)--y z
)--z {
{.. 
string// 

expctedUom// %
=//& '

plantSetup//( 2
.//2 3
GetWageMapping//3 A
(//A B
)//B C
.//C D
Where//D I
(//I J
s//J K
=>//L N
s//O P
.//P Q
EnergyTypeID//Q ]
==//^ `
energyTypeId//a m
)//m n
.//n o
Select//o u
(//u v
s//v w
=>//x z
s//{ |
.//| }
UOMID	//} ‚
)
//‚ ƒ
.
//ƒ „
FirstOrDefault
//„ ’
(
//’ “
)
//“ ”
.
//” •
ToString
//• 
(
// 
)
// Ÿ
;
//Ÿ  
if00 
(00 

expctedUom00 "
!=00# %
UOM00& )
)00) *
return11 
$num11  
;11  !
int22 
Value22 
=22 

plantSetup22  *
.22* +
CheckUOMMapping22+ :
(22: ;

EnergyName22; E
,22E F
energyTypeId22G S
,22S T
UOMId22U Z
)22Z [
;22[ \
if33 
(33 
Value33 
!=33  
$num33! "
)33" #
{44 
if55 
(55 

plantSetup55 &
.55& '
SaveWageMapping55' 6
(556 7

EnergyName557 A
,55A B
energyTypeId55C O
,55O P
UOMId55Q V
,55V W
ID55X Z
)55Z [
)55[ \
return66 "
$num66# $
;66$ %
else77 
return88 "
$num88# $
;88$ %
}99 
else:: 
{;; 
return<< 
$num<<  
;<<  !
}== 
}>> 
else?? 
return@@ 
$num@@ 
;@@ 
}AA 
elseBB 
returnCC 
$numCC 
;CC 
}DD 	
[EE 	
CheckUserSessionEE	 
]EE 
publicFF 

JsonResultFF 
GetWageMappingFF (
(FF( )
)FF) *
{GG 	
ListHH 
<HH 
WageUomMappingHH 
>HH  
wagemappingHH! ,
=HH- .

plantSetupHH/ 9
.HH9 :
GetWageMappingHH: H
(HHH I
)HHI J
;HHJ K
returnII 
JsonII 
(II 
wagemappingII #
,II# $
JsonRequestBehaviorII% 8
.II8 9
AllowGetII9 A
)IIA B
;IIB C
}JJ 	
[KK 	
CheckUserSessionKK	 
]KK 
publicLL 
intLL 
EditConfigurationLL $
(LL$ %
WageUomMappingLL% 3
wagesLL4 9
)LL9 :
{MM 	
ifNN 
(NN 
wagesNN 
!=NN 
nullNN 
)NN 
{OO 
ifPP 
(PP 

plantSetupPP 
.PP 
EditConfigurationPP 0
(PP0 1
wagesPP1 6
)PP6 7
)PP7 8
returnQQ 
$numQQ 
;QQ 
elseRR 
returnSS 
$numSS 
;SS 
}TT 
returnUU 
$numUU 
;UU 
}VV 	
[WW 	
ChildActionOnlyWW	 
]WW 
[XX 	
CheckUserSessionXX	 
]XX 
publicYY 
PartialViewResultYY  
BaseYearSelectionYY! 2
(YY2 3
)YY3 4
{ZZ 	
List[[ 
<[[ 
int[[ 
>[[ 
years[[ 
=[[ 

plantSetup[[ (
.[[( )
GetYearsLists[[) 6
([[6 7
)[[7 8
;[[8 9
return\\ 
PartialView\\ 
(\\ 
$str\\ )
,\\) *
years\\+ 0
)\\0 1
;\\1 2
}]] 	
[^^ 	
ChildActionOnly^^	 
]^^ 
[__ 	
CheckUserSession__	 
]__ 
public`` 
PartialViewResult``  
currencySelection``! 2
(``2 3
)``3 4
{aa 	
Listbb 
<bb 
intbb 
>bb 
currencybb 
=bb  

plantSetupbb! +
.bb+ ,
GetYearsListsbb, 9
(bb9 :
)bb: ;
;bb; <
returncc 
PartialViewcc 
(cc 
$strcc 2
,cc2 3
currencycc4 <
)cc< =
;cc= >
}dd 	
[ee 	
HttpPostee	 
]ee 
[ff 	
CheckUserSessionff	 
]ff 
publicgg 
intgg 
SaveBaseYeargg 
(gg  
stringgg  &
Yeargg' +
)gg+ ,
{hh 	
ifii 
(ii 
!ii 
stringii 
.ii 
IsNullOrEmptyii %
(ii% &
Yearii& *
)ii* +
&&ii, .

plantSetupii/ 9
.ii9 :
SaveBaseYearii: F
(iiF G
YeariiG K
)iiK L
)iiL M
{jj 
returnmm 
$nummm 
;mm 
}nn 
elseoo 
{pp 
returnqq 
$numqq 
;qq 
}rr 
}ss 	
[uu 	
HttpGetuu	 
]uu 
[vv 	
CheckUserSessionvv	 
]vv 
publicww 
stringww 
GetBaseYearww !
(ww! "
)ww" #
{xx 	
stringyy 
baseYearyy 
=yy 
stringyy $
.yy$ %
Emptyyy% *
;yy* +
baseYear{{ 
={{ 
Convert{{ 
.{{ 
ToString{{ '
({{' (

plantSetup{{( 2
.{{2 3
GetCurrentBaseYear{{3 E
({{E F
){{F G
){{G H
;{{H I
return|| 
baseYear|| 
;|| 
}}} 	
[~~ 	
CheckUserSession~~	 
]~~ 
public 

JsonResult 
GetCurrency %
(% &
)& '
{
€€ 	
List
 
<
 
Currency
 
>
 
currency
 #
=
$ %

plantSetup
& 0
.
0 1
GetCurrency
1 <
(
< =
)
= >
;
> ?
return
‚‚ 
Json
‚‚ 
(
‚‚ 
currency
‚‚  
,
‚‚  !!
JsonRequestBehavior
‚‚" 5
.
‚‚5 6
AllowGet
‚‚6 >
)
‚‚> ?
;
‚‚? @
}
ƒƒ 	
[
„„ 	
CheckUserSession
„„	 
]
„„ 
public
…… 
string
……  
GetUpdatedCurrency
…… (
(
……( )
)
……) *
{
†† 	
string
‡‡ 
currency
‡‡ 
=
‡‡ 

plantSetup
‡‡ (
.
‡‡( ) 
GetUpdatedCurrency
‡‡) ;
(
‡‡; <
)
‡‡< =
;
‡‡= >
return
ˆˆ 
currency
ˆˆ 
;
ˆˆ 
}
‰‰ 	
[
ŠŠ 	
CheckUserSession
ŠŠ	 
]
ŠŠ 
public
‹‹ 
int
‹‹ 
UpdateCurrency
‹‹ !
(
‹‹! "
string
‹‹" (
currency
‹‹) 1
)
‹‹1 2
{
ŒŒ 	
if
 
(
 
currency
 
!=
 
null
  
)
  !
{
 

plantSetup
 
.
 
UpdateCurrency
 )
(
) *
currency
* 2
)
2 3
;
3 4
return
 
$num
 
;
 
}
‘‘ 
else
’’ 
{
““ 
return
”” 
$num
”” 
;
”” 
}
•• 
}
–– 	
[
—— 	
CheckUserSession
——	 
]
—— 
public
˜˜ 

JsonResult
˜˜ 
GetUOMs
˜˜ !
(
˜˜! "
)
˜˜" #
{
™™ 	
List
šš 
<
šš 
Details
šš 
>
šš 
uoms
šš 
=
šš  

plantSetup
šš! +
.
šš+ ,
GetUOMs
šš, 3
(
šš3 4
)
šš4 5
;
šš5 6
return
›› 
Json
›› 
(
›› 
uoms
›› 
,
›› !
JsonRequestBehavior
›› 1
.
››1 2
AllowGet
››2 :
)
››: ;
;
››; <
}
œœ 	
[
 	
CheckUserSession
	 
]
 
public
 

JsonResult
 
GetDeviceID
 %
(
% &
)
& '
{
ŸŸ 	
List
   
<
   
Details
   
>
   
deviceid
   "
=
  # $

plantSetup
  % /
.
  / 0
GetDeviceID
  0 ;
(
  ; <
)
  < =
;
  = >
return
¡¡ 
Json
¡¡ 
(
¡¡ 
deviceid
¡¡  
,
¡¡  !!
JsonRequestBehavior
¡¡" 5
.
¡¡5 6
AllowGet
¡¡6 >
)
¡¡> ?
;
¡¡? @
}
¢¢ 	
[
££ 	
HttpPost
££	 
]
££ 
[
¤¤ 	
CheckUserSession
¤¤	 
]
¤¤ 
public
¥¥ 
int
¥¥ 
SaveUOM
¥¥ 
(
¥¥ 
int
¥¥ 
id
¥¥ !
,
¥¥! "
string
¥¥# )
uom
¥¥* -
)
¥¥- .
{
¦¦ 	
if
§§ 
(
§§ 
id
§§ 
!=
§§ 
$num
§§ 
)
§§ 
{
¨¨ 
if
©© 
(
©© 
new
©© 
	PlantInfo
©© !
(
©©! "
)
©©" #
.
©©# $
GetUOM
©©$ *
(
©©* +
)
©©+ ,
.
©©, -
Any
©©- 0
(
©©0 1
UOM
©©1 4
=>
©©5 7
UOM
©©8 ;
==
©©< >
uom
©©? B
)
©©B C
)
©©C D
return
ªª 
$num
ªª 
;
ªª 
else
«« 
if
«« 
(
«« 

plantSetup
«« #
.
««# $
	UpdateUOM
««$ -
(
««- .
id
««. 0
,
««0 1
uom
««2 5
)
««5 6
)
««6 7
return
¬¬ 
$num
¬¬ 
;
¬¬ 
else
­­ 
return
®® 
$num
®® 
;
®® 
}
°° 
else
±± 
if
±± 
(
±± 
new
±± 
	PlantInfo
±± "
(
±±" #
)
±±# $
.
±±$ %
GetUOM
±±% +
(
±±+ ,
)
±±, -
.
±±- .
Any
±±. 1
(
±±1 2
UOM
±±2 5
=>
±±6 8
UOM
±±9 <
==
±±= ?
uom
±±@ C
)
±±C D
)
±±D E
return
²² 
$num
²² 
;
²² 
else
³³ 
if
³³ 
(
³³ 
!
³³ 
string
³³ 
.
³³ 
IsNullOrEmpty
³³ *
(
³³* +
uom
³³+ .
)
³³. /
&&
³³0 2

plantSetup
³³3 =
.
³³= >
AddUom
³³> D
(
³³D E
uom
³³E H
)
³³H I
)
³³I J
return
´´ 
$num
´´ 
;
´´ 
else
µµ 
return
¶¶ 
$num
¶¶ 
;
¶¶ 
}
¸¸ 	
[
¹¹ 	
CheckUserSession
¹¹	 
]
¹¹ 
[
ºº 	
HttpPost
ºº	 
]
ºº 
public
»» 
int
»» 
AddDeviceId
»» 
(
»» 
int
»» "
id
»»# %
,
»»% &
string
»»' -
deviceid
»». 6
)
»»6 7
{
¼¼ 	
Regex
½½ 
rgx
½½ 
=
½½ 
new
½½ 
Regex
½½ !
(
½½! "
$str½½" ”
)½½” •
;½½• –
if
¾¾ 
(
¾¾ 
!
¾¾ 
rgx
¾¾ 
.
¾¾ 
IsMatch
¾¾ 
(
¾¾ 
deviceid
¾¾ %
)
¾¾% &
)
¾¾& '
return
¿¿ 
$num
¿¿ 
;
¿¿ 
if
ÀÀ 
(
ÀÀ 

plantSetup
ÀÀ 
.
ÀÀ 
GetMacID
ÀÀ #
(
ÀÀ# $
)
ÀÀ$ %
.
ÀÀ% &
Any
ÀÀ& )
(
ÀÀ) *
macid
ÀÀ* /
=>
ÀÀ0 2
macid
ÀÀ3 8
==
ÀÀ9 ;
deviceid
ÀÀ< D
)
ÀÀD E
)
ÀÀE F
return
ÁÁ 
$num
ÁÁ 
;
ÁÁ 
if
ÂÂ 
(
ÂÂ 
deviceid
ÂÂ 
.
ÂÂ 
Contains
ÂÂ !
(
ÂÂ! "
$str
ÂÂ" %
)
ÂÂ% &
||
ÂÂ' )
deviceid
ÂÂ* 2
.
ÂÂ2 3
Contains
ÂÂ3 ;
(
ÂÂ; <
$str
ÂÂ< ?
)
ÂÂ? @
)
ÂÂ@ A
deviceid
ÃÃ 
=
ÃÃ 
String
ÃÃ !
.
ÃÃ! "
Join
ÃÃ" &
(
ÃÃ& '
$str
ÃÃ' )
,
ÃÃ) *
deviceid
ÃÃ+ 3
.
ÃÃ3 4
Split
ÃÃ4 9
(
ÃÃ9 :
$char
ÃÃ: =
,
ÃÃ= >
$char
ÃÃ? B
)
ÃÃB C
)
ÃÃC D
;
ÃÃD E
if
ÄÄ 
(
ÄÄ 
id
ÄÄ 
!=
ÄÄ 
$num
ÄÄ 
)
ÄÄ 
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 

plantSetup
ÇÇ 
.
ÇÇ 
UpdateDevice
ÇÇ +
(
ÇÇ+ ,
id
ÇÇ, .
,
ÇÇ. /
deviceid
ÇÇ0 8
)
ÇÇ8 9
)
ÇÇ9 :
return
ÈÈ 
$num
ÈÈ 
;
ÈÈ 
else
ÉÉ 
return
ÊÊ 
$num
ÊÊ 
;
ÊÊ 
}
ÌÌ 
else
ÍÍ 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
string
ÍÍ 
.
ÍÍ 
IsNullOrEmpty
ÍÍ *
(
ÍÍ* +
deviceid
ÍÍ+ 3
)
ÍÍ3 4
&&
ÍÍ5 7

plantSetup
ÍÍ8 B
.
ÍÍB C
AddDeviceId
ÍÍC N
(
ÍÍN O
deviceid
ÍÍO W
)
ÍÍW X
)
ÍÍX Y
return
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
else
ĞĞ 
return
ÑÑ 
$num
ÑÑ 
;
ÑÑ 
}
ÒÒ 	
[
ÔÔ 	
HttpPost
ÔÔ	 
]
ÔÔ 
[
ÕÕ 	
CheckUserSession
ÕÕ	 
]
ÕÕ 
public
ÖÖ 
int
ÖÖ 
AddEmailConfig
ÖÖ !
(
ÖÖ! "
List
ÖÖ" &
<
ÖÖ& ' 
EmailConfiguration
ÖÖ' 9
>
ÖÖ9 :
emailConfig
ÖÖ; F
)
ÖÖF G
{
×× 	
if
ØØ 
(
ØØ 

plantSetup
ØØ 
.
ØØ 
AddEmailConfig
ØØ )
(
ØØ) *
emailConfig
ØØ* 5
)
ØØ5 6
)
ØØ6 7
{
ÙÙ 
return
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
}
ÛÛ 
else
ÜÜ 
{
İİ 
return
ŞŞ 
$num
ŞŞ 
;
ŞŞ 
}
ßß 
}
àà 	
[
áá 	
HttpPost
áá	 
]
áá 
[
ââ 	
CheckUserSession
ââ	 
]
ââ 
public
ãã 
int
ãã 
AddEmailList
ãã 
(
ãã  
string
ãã  &
[
ãã& '
]
ãã' (
email
ãã) .
,
ãã. /
int
ãã0 3
id
ãã4 6
)
ãã6 7
{
ää 	
if
ææ 
(
ææ 

plantSetup
ææ 
.
ææ 
GetEmailList
ææ '
(
ææ' (
)
ææ( )
.
ææ) *
Any
ææ* -
(
ææ- .
s
ææ. /
=>
ææ0 2
s
ææ3 4
.
ææ4 5
Name
ææ5 9
==
ææ: <
email
ææ= B
[
ææB C
$num
ææC D
]
ææD E
)
ææE F
)
ææF G
return
çç 
$num
çç 
;
çç 
if
éé 
(
éé 

plantSetup
éé 
.
éé 
AddEmailList
éé '
(
éé' (
email
éé( -
,
éé- .
id
éé/ 1
)
éé1 2
)
éé2 3
{
êê 
return
ëë 
$num
ëë 
;
ëë 
}
ìì 
else
íí 
{
îî 
return
ïï 
$num
ïï 
;
ïï 
}
ğğ 
}
ññ 	
[
òò 	
HttpGet
òò	 
]
òò 
[
óó 	
CheckUserSession
óó	 
]
óó 
public
ôô 

JsonResult
ôô #
GetEmailConfiguration
ôô /
(
ôô/ 0
)
ôô0 1
{
õõ 	
List
öö 
<
öö  
EmailConfiguration
öö #
>
öö# $
emailConfig
öö% 0
=
öö1 2
new
öö3 6
List
öö7 ;
<
öö; < 
EmailConfiguration
öö< N
>
ööN O
(
ööO P
)
ööP Q
;
ööQ R
emailConfig
÷÷ 
=
÷÷ 

plantSetup
÷÷ $
.
÷÷$ %
GetEmailConfig
÷÷% 3
(
÷÷3 4
)
÷÷4 5
;
÷÷5 6
return
øø 
Json
øø 
(
øø 
emailConfig
øø #
,
øø# $!
JsonRequestBehavior
øø% 8
.
øø8 9
AllowGet
øø9 A
)
øøA B
;
øøB C
}
ùù 	
[
úú 	
HttpGet
úú	 
]
úú 
[
ûû 	
CheckUserSession
ûû	 
]
ûû 
public
üü 

JsonResult
üü 
GetPlantNames
üü '
(
üü' (
)
üü( )
{
ıı 	
List
şş 
<
şş 
Details
şş 
>
şş 
details
şş !
=
şş" #

plantSetup
şş$ .
.
şş. /
GetPlantNames
şş/ <
(
şş< =
)
şş= >
;
şş> ?
return
ÿÿ 
Json
ÿÿ 
(
ÿÿ 
details
ÿÿ 
,
ÿÿ  !
JsonRequestBehavior
ÿÿ! 4
.
ÿÿ4 5
AllowGet
ÿÿ5 =
)
ÿÿ= >
;
ÿÿ> ?
}
€€ 	
[
‚‚ 	
HttpPost
‚‚	 
]
‚‚ 
[
ƒƒ 	
CheckUserSession
ƒƒ	 
]
ƒƒ 
public
„„ 
int
„„ 
DeleteEmail
„„ 
(
„„ 
int
„„ "
id
„„# %
)
„„% &
{
…… 	
if
†† 
(
†† 

plantSetup
†† 
.
†† 
DeleteEmail
†† &
(
††& '
id
††' )
)
††) *
)
††* +
return
‡‡ 
$num
‡‡ 
;
‡‡ 
else
ˆˆ 
return
ˆˆ 
$num
ˆˆ 
;
ˆˆ 
}
‰‰ 	
[
‹‹ 	
HttpGet
‹‹	 
]
‹‹ 
[
ŒŒ 	
CheckUserSession
ŒŒ	 
]
ŒŒ 
public
 

JsonResult
 
GetEmailList
 &
(
& '
)
' (
{
 	
List
 
<
 
Details
 
>
 
details
 !
=
" #

plantSetup
$ .
.
. /
GetEmailList
/ ;
(
; <
)
< =
;
= >
return
 
Json
 
(
 
details
 
,
  !
JsonRequestBehavior
! 4
.
4 5
AllowGet
5 =
)
= >
;
> ?
}
‘‘ 	
[
’’ 	
HttpGet
’’	 
]
’’ 
[
““ 	
CheckUserSession
““	 
]
““ 
public
”” 

JsonResult
”” 
GetAdmin
”” "
(
””" #
)
””# $
{
•• 	
List
–– 
<
–– 
UserMapping
–– 
>
–– 
details
–– %
=
––& '

plantSetup
––( 2
.
––2 3
GetAdminList
––3 ?
(
––? @
)
––@ A
;
––A B
return
—— 
Json
—— 
(
—— 
details
—— 
,
——  !
JsonRequestBehavior
——! 4
.
——4 5
AllowGet
——5 =
)
——= >
;
——> ?
}
˜˜ 	
[
™™ 	
HttpPost
™™	 
]
™™ 
[
šš 	
CheckUserSession
šš	 
]
šš 
public
›› 
int
›› 

DeleteUSer
›› 
(
›› 
int
›› !
userid
››" (
)
››( )
{
œœ 	
if
 
(
 

plantSetup
 
.
 

DeleteUSer
 %
(
% &
userid
& ,
)
, -
)
- .
return
 
$num
 
;
 
else
ŸŸ 
return
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
}
   	
[
¡¡ 	
HttpPost
¡¡	 
]
¡¡ 
[
¢¢ 	
CheckUserSession
¢¢	 
]
¢¢ 
public
££ 
int
££ 
displayNames
££ 
(
££  
int
££  #
wages
££$ )
,
££) *
string
££+ 1
displayName
££2 =
,
££= >
int
££? B
id
££C E
)
££E F
{
¤¤ 	
if
¥¥ 
(
¥¥ 
!
¥¥ 
string
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ %
(
¥¥% &
wages
¥¥& +
.
¥¥+ ,
ToString
¥¥, 4
(
¥¥4 5
)
¥¥5 6
)
¥¥6 7
&&
¥¥8 :
!
¥¥; <
string
¥¥< B
.
¥¥B C
IsNullOrEmpty
¥¥C P
(
¥¥P Q
displayName
¥¥Q \
)
¥¥\ ]
)
¥¥] ^
{
¦¦ 
if
§§ 
(
§§ 
id
§§ 
==
§§ 
$num
§§ 
&&
§§ 

plantSetup
§§ )
.
§§) *
getDisplayNames
§§* 9
(
§§9 :
)
§§: ;
.
§§; <
Any
§§< ?
(
§§? @
s
§§@ A
=>
§§B D
s
§§E F
.
§§F G
WageID
§§G M
==
§§N P
wages
§§Q V
)
§§V W
)
§§W X
return
¨¨ 
$num
¨¨ 
;
¨¨ 
if
©© 
(
©© 

plantSetup
©© 
.
©© 
saveDisplayName
©© .
(
©©. /
wages
©©/ 4
,
©©4 5
displayName
©©6 A
,
©©A B
id
©©C E
)
©©E F
)
©©F G
return
ªª 
$num
ªª 
;
ªª 
else
«« 
return
¬¬ 
$num
¬¬ 
;
¬¬ 
}
­­ 
else
®® 
return
¯¯ 
$num
¯¯ 
;
¯¯ 
}
°° 	
[
²² 	
HttpGet
²²	 
]
²² 
[
³³ 	
CheckUserSession
³³	 
]
³³ 
public
´´ 

JsonResult
´´ 
getDisplayNames
´´ )
(
´´) *
)
´´* +
{
µµ 	
List
¶¶ 
<
¶¶ 
Display
¶¶ 
>
¶¶ 
details
¶¶ !
=
¶¶" #

plantSetup
¶¶$ .
.
¶¶. /
getDisplayNames
¶¶/ >
(
¶¶> ?
)
¶¶? @
;
¶¶@ A
return
·· 
Json
·· 
(
·· 
details
·· 
,
··  !
JsonRequestBehavior
··! 4
.
··4 5
AllowGet
··5 =
)
··= >
;
··> ?
}
¸¸ 	
[
ºº 	
HttpPost
ºº	 
]
ºº 
[
»» 	
CheckUserSession
»»	 
]
»» 
public
¼¼ 
int
¼¼ 
deleteDisplayName
¼¼ $
(
¼¼$ %
int
¼¼% (
id
¼¼) +
)
¼¼+ ,
{
½½ 	
if
¾¾ 
(
¾¾ 
!
¾¾ 
string
¾¾ 
.
¾¾ 
IsNullOrEmpty
¾¾ %
(
¾¾% &
id
¾¾& (
.
¾¾( )
ToString
¾¾) 1
(
¾¾1 2
)
¾¾2 3
)
¾¾3 4
)
¾¾4 5
{
¿¿ 
if
ÀÀ 
(
ÀÀ 

plantSetup
ÀÀ 
.
ÀÀ 
deleteDisplyName
ÀÀ /
(
ÀÀ/ 0
id
ÀÀ0 2
)
ÀÀ2 3
)
ÀÀ3 4
return
ÁÁ 
$num
ÁÁ 
;
ÁÁ 
else
ÂÂ 
return
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
}
ÄÄ 
else
ÅÅ 
return
ÆÆ 
$num
ÆÆ 
;
ÆÆ 
}
ÇÇ 	
[
ÈÈ 	
CheckUserSession
ÈÈ	 
]
ÈÈ 
[
ÉÉ 	
HttpPost
ÉÉ	 
]
ÉÉ 
public
ÊÊ 
int
ÊÊ 
SaveProdUOM
ÊÊ 
(
ÊÊ 
int
ÊÊ "
pID
ÊÊ# &
,
ÊÊ& '
int
ÊÊ( +
sID
ÊÊ, /
)
ÊÊ/ 0
{
ËË 	
if
ÌÌ 
(
ÌÌ 
pID
ÌÌ 
!=
ÌÌ 
$num
ÌÌ 
&&
ÌÌ 
sID
ÌÌ 
!=
ÌÌ  "
$num
ÌÌ# $
)
ÌÌ$ %
{
ÍÍ 

plantSetup
ÎÎ 
.
ÎÎ %
AddProductionUOMMapping
ÎÎ 2
(
ÎÎ2 3
pID
ÎÎ3 6
,
ÎÎ6 7
sID
ÎÎ8 ;
)
ÎÎ; <
;
ÎÎ< =
return
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
}
ĞĞ 
else
ÑÑ 
{
ÒÒ 
return
ÓÓ 
$num
ÓÓ 
;
ÓÓ 
}
ÔÔ 
}
ÕÕ 	
[
ÖÖ 	
HttpGet
ÖÖ	 
]
ÖÖ 
[
×× 	
CheckUserSession
××	 
]
×× 
public
ØØ 

JsonResult
ØØ 
getProductionUom
ØØ *
(
ØØ* +
)
ØØ+ ,
{
ÙÙ 	
List
ÚÚ 
<
ÚÚ 
UOM
ÚÚ 
>
ÚÚ 
details
ÚÚ 
=
ÚÚ 

plantSetup
ÚÚ  *
.
ÚÚ* +
GetProductionUom
ÚÚ+ ;
(
ÚÚ; <
)
ÚÚ< =
;
ÚÚ= >
return
ÛÛ 
Json
ÛÛ 
(
ÛÛ 
details
ÛÛ 
,
ÛÛ  !
JsonRequestBehavior
ÛÛ! 4
.
ÛÛ4 5
AllowGet
ÛÛ5 =
)
ÛÛ= >
;
ÛÛ> ?
}
ÜÜ 	
	protected
İİ 
override
İİ 
void
İİ 

Initialize
İİ  *
(
İİ* +
RequestContext
İİ+ 9
requestContext
İİ: H
)
İİH I
{
ŞŞ 	
if
ßß 
(
ßß 

plantSetup
ßß 
!=
ßß 
null
ßß "
)
ßß" #
{
àà 

plantSetup
áá 
.
áá 
PlantId
áá "
=
áá# $
Convert
áá% ,
.
áá, -
ToInt32
áá- 4
(
áá4 5
requestContext
áá5 C
.
ááC D
HttpContext
ááD O
.
ááO P
Session
ááP W
[
ááW X
$str
ááX a
]
ááa b
)
ááb c
;
áác d

plantSetup
ââ 
.
ââ 
UserName
ââ #
=
ââ$ %
requestContext
ââ& 4
.
ââ4 5
HttpContext
ââ5 @
.
ââ@ A
Session
ââA H
[
ââH I
$str
ââI S
]
ââS T
.
ââT U
ToString
ââU ]
(
ââ] ^
)
ââ^ _
;
ââ_ `
}
ää 
base
åå 
.
åå 

Initialize
åå 
(
åå 
requestContext
åå *
)
åå* +
;
åå+ ,
}
ææ 	
}
çç 
}èè È]
˜D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\ConsuProdBudgetedController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class '
ConsuProdBudgetedController ,
:- .

Controller/ 9
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public '
ConsuProdBudgetedController *
(* +
IPlantSetUpManager+ =

plantSetup> H
)H I
{ 	
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
[ 	
CheckUserSession	 
] 
public 
ActionResult 
ConsuProdBudgeted -
(- .
). /
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
[ 	
CheckUserSession	 
] 
public 
int !
AddBudgetedConsumtion (
(( )
List) -
<- .
AnnualDetails. ;
>; <
Consumption= H
,H I
ListI M
<M N
AnnualDetailsN [
>[ \
Cost] a
,a b
stringc i
yearj n
,n o
intp s
wagest y
)y z
{ 	
if 
( 
Consumption 
!= 
null #
)# $
{   
if!! 
(!! 

plantSetup!! 
.!!  
AddConsumptionActual!! 3
(!!3 4
Consumption!!4 ?
,!!? @
year!!A E
,!!E F
wages!!G L
,!!L M
$str!!N f
)!!f g
&&!!h j

plantSetup!!k u
.!!u v!
AddConsumptionActual	!!v Š
(
!!Š ‹
Cost
!!‹ 
,
!! 
year
!!‘ •
,
!!• –
wages
!!— œ
,
!!œ 
$str
!! º
)
!!º »
)
!!» ¼
return"" 
$num"" 
;"" 
else## 
return$$ 
$num$$ 
;$$ 
}%% 
return&& 
$num&& 
;&& 
}'' 	
[(( 	
HttpPost((	 
](( 
[)) 	
CheckUserSession))	 
])) 
public** 
int** !
AddProductionBudgeted** (
(**( )
List**) -
<**- .
AnnualDetails**. ;
>**; <

production**= G
,**G H
string**I O
year**P T
)**T U
{++ 	
if-- 
(-- 

production-- 
!=-- 
null-- "
)--" #
{.. 
if// 
(// 

plantSetup// 
.// 
AddProductionActual// 2
(//2 3

production//3 =
,//= >
year//? C
,//C D
$str//E \
)//\ ]
)//] ^
return00 
$num00 
;00 
else11 
return22 
$num22 
;22 
}33 
return44 
$num44 
;44 
}55 	
[66 	
CheckUserSession66	 
]66 
public77 

JsonResult77 !
GetBudgetedConsumtion77 /
(77/ 0
int770 3
year774 8
,778 9
string77: @
wagesID77A H
)77H I
{88 	
List99 
<99 
AnnualDetails99 
>99 
budgetedconsumlist99  2
=993 4

plantSetup995 ?
.99? @ 
GetConsumptionActual99@ T
(99T U
year99U Y
,99Y Z
Convert99Z a
.99a b
ToInt3299b i
(99i j
wagesID99j q
)99q r
,99r s
$str	99t Œ
)
99Œ 
;
99 
List:: 
<:: 
AnnualDetails:: 
>:: 
budgetedcostlist::  0
=::1 2

plantSetup::3 =
.::= > 
GetConsumptionActual::> R
(::R S
year::S W
,::W X
Convert::Y `
.::` a
ToInt32::a h
(::h i
wagesID::i p
)::p q
,::q r
$str	::s „
)
::„ …
;
::… †
var;; 
consumptionAndCost;; "
=;;# $
new;;% (
{;;) *
Budgetedconsumlist;;+ =
=;;> ?
budgetedconsumlist;;@ R
,;;R S
Budgetedcostlist;;T d
=;;e f
budgetedcostlist;;g w
};;x y
;;;y z
return<< 
Json<< 
(<< 
consumptionAndCost<< *
,<<* +
JsonRequestBehavior<<, ?
.<<? @
AllowGet<<@ H
)<<H I
;<<I J
}== 	
[>> 	
CheckUserSession>>	 
]>> 
public?? 

JsonResult?? 
GetBudgetedCost?? )
(??) *
int??* -
year??. 2
,??2 3
string??3 9
wagesID??: A
)??A B
{@@ 	
ListAA 
<AA 
AnnualDetailsAA 
>AA 
budgetedcostlistAA  0
=AA1 2

plantSetupAA3 =
.AA= > 
GetConsumptionActualAA> R
(AAR S
yearAAS W
,AAW X
ConvertAAY `
.AA` a
ToInt32AAa h
(AAh i
wagesIDAAi p
)AAp q
,AAq r
$str	AAs ‚
)
AA‚ ƒ
;
AAƒ „
returnBB 
JsonBB 
(BB 
budgetedcostlistBB (
,BB( )
JsonRequestBehaviorBB* =
.BB= >
AllowGetBB> F
)BBF G
;BBG H
}CC 	
[DD 	
CheckUserSessionDD	 
]DD 
publicEE 

JsonResultEE !
GetBudgetedProductionEE /
(EE/ 0
intEE0 3
yearEE4 8
)EE8 9
{FF 	
ListGG 
<GG 
AnnualDetailsGG 
>GG 
budgetedcostlistGG  0
=GG1 2

plantSetupGG3 =
.GG= >
GetProductionActualGG> Q
(GGQ R
yearGGR V
,GGV W
$strGGX o
)GGo p
;GGp q
returnHH 
JsonHH 
(HH 
budgetedcostlistHH (
,HH( )
JsonRequestBehaviorHH* =
.HH= >
AllowGetHH> F
)HHF G
;HHG H
}II 	
[JJ 	
HttpPostJJ	 
]JJ 
[KK 	
CheckUserSessionKK	 
]KK 
publicLL 

JsonResultLL  
GetSolidWasteBudgtedLL .
(LL. /
stringLL/ 5
yearLL6 :
)LL: ;
{MM 	
tryNN 
{OO 
ListPP 
<PP 
AnnualDetailsPP "
>PP" #

solidwastePP$ .
=PP/ 0

plantSetupPP1 ;
.PP; <
GetSolidWastePP< I
(PPI J
ConvertPPJ Q
.PPQ R
ToInt32PPR Y
(PPY Z
yearPPZ ^
)PP^ _
,PP_ `
$strPPa x
)PPx y
;PPy z
ListQQ 
<QQ 
AnnualDetailsQQ "
>QQ" #
solidwastecostQQ$ 2
=QQ3 4

plantSetupQQ5 ?
.QQ? @
GetSolidWasteQQ@ M
(QQM N
ConvertQQN U
.QQU V
ToInt32QQV ]
(QQ] ^
yearQQ^ b
)QQb c
,QQc d
$str	QQe €
)
QQ€ 
;
QQ ‚
varRR %
budgetedsolidwastevalCostRR -
=RR. /
newRR0 3
{RR4 5

solidwasteRR6 @
=RRA B

solidwasteRRC M
,RRM N
solidwastecostRRO ]
=RR^ _
solidwastecostRR` n
}RRo p
;RRp q
returnSS 
JsonSS 
(SS %
budgetedsolidwastevalCostSS 5
,SS5 6
JsonRequestBehaviorSS7 J
.SSJ K
AllowGetSSK S
)SSS T
;SST U
}TT 
catchUU 
(UU 
	ExceptionUU 
exUU 
)UU  
{VV 
returnWW 
nullWW 
;WW 
}XX 
}YY 	
[ZZ 	
HttpPostZZ	 
]ZZ 
[[[ 	
CheckUserSession[[	 
][[ 
public\\ 
int\\ 

AddUSDRate\\ 
(\\ 
double\\ $
rate\\% )
,\\) *
int\\+ .
year\\/ 3
)\\3 4
{]] 	
if^^ 
(^^ 
rate^^ 
!=^^ 
$num^^ 
)^^ 
{__ 
if`` 
(`` 

plantSetup`` 
.`` 
AddUSDExchnageRate`` 1
(``1 2
rate``2 6
,``6 7
year``8 <
)``< =
)``= >
returnaa 
$numaa 
;aa 
elsebb 
returncc 
$numcc 
;cc 
}dd 
returnee 
$numee 
;ee 
}ff 	
[gg 	
HttpPostgg	 
]gg 
[hh 	
CheckUserSessionhh	 
]hh 
publicii 
intii !
AddBudgetedSolidwasteii (
(ii( )
Listii) -
<ii- .
AnnualDetailsii. ;
>ii; <
Consumptionii= H
,iiH I
ListiiJ N
<iiN O
AnnualDetailsiiO \
>ii\ ]
Costii^ b
,iib c
stringiid j
yeariik o
)iio p
{jj 	
ifll 
(ll 
Consumptionll 
!=ll 
nullll #
)ll# $
{mm 
ifnn 
(nn 

plantSetupnn 
.nn  
AddCSolidwasteActualnn 3
(nn3 4
Consumptionnn4 ?
,nn? @
yearnnA E
,nnE F
$strnnG _
)nn_ `
&&nna c

plantSetupnnd n
.nnn o!
AddCSolidwasteActual	nno ƒ
(
nnƒ „
Cost
nn„ ˆ
,
nnˆ ‰
year
nnŠ 
,
nn 
$str
nn ¬
)
nn¬ ­
)
nn­ ®
returnoo 
$numoo 
;oo 
elsepp 
returnqq 
$numqq 
;qq 
}rr 
returnss 
$numss 
;ss 
}tt 	
[uu 	
CheckUserSessionuu	 
]uu 
publicvv 
doublevv 

GetUSDRatevv  
(vv  !
)vv! "
{ww 	
returnxx 

plantSetupxx 
.xx 

GetUSDRatexx (
(xx( )
)xx) *
;xx* +
}yy 	
	protected{{ 
override{{ 
void{{ 

Initialize{{  *
({{* +
RequestContext{{+ 9
requestContext{{: H
){{H I
{|| 	
if}} 
(}} 

plantSetup}} 
!=}} 
null}} "
)}}" #
{~~ 

plantSetup 
. 
PlantId "
=# $
Convert% ,
., -
ToInt32- 4
(4 5
requestContext5 C
.C D
HttpContextD O
.O P
SessionP W
[W X
$strX a
]a b
)b c
;c d

plantSetup
€€ 
.
€€ 
UserName
€€ #
=
€€$ %
requestContext
€€& 4
.
€€4 5
HttpContext
€€5 @
.
€€@ A
Session
€€A H
[
€€H I
$str
€€I S
]
€€S T
.
€€T U
ToString
€€U ]
(
€€] ^
)
€€^ _
;
€€_ `
}
‚‚ 
base
ƒƒ 
.
ƒƒ 

Initialize
ƒƒ 
(
ƒƒ 
requestContext
ƒƒ *
)
ƒƒ* +
;
ƒƒ+ ,
}
„„ 	
}
…… 
}†† Ñ#
–D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\DailyProductionController.cs
	namespace

 	!
EMMSClientApplication


 
.

  
Controllers

  +
{ 
public 

class %
DailyProductionController *
:+ ,

Controller- 7
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public %
DailyProductionController (
(( )
IPlantSetUpManager) ;

plantSetup< F
)F G
{ 	
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
public 
ActionResult 
DailyProduction +
(+ ,
), -
{ 	
return 
View 
( 
) 
; 
} 	
[$$ 	
HttpPost$$	 
]$$ 
public%% 

JsonResult%% 
GetDailyProduction%% ,
(%%, -
string%%- 3
date%%4 8
)%%8 9
{&& 	
List'' 
<'' 
ProductionDaily''  
>''  !
prodlist''" *
=''+ ,

plantSetup''- 7
.''7 8
GetDailyProduction''8 J
(''J K
date''K O
)''O P
;''P Q
return(( 
Json(( 
((( 
prodlist((  
,((  !
JsonRequestBehavior((" 5
.((5 6
AllowGet((6 >
)((> ?
;((? @
})) 	
public// 

JsonResult// 
GetSolidwasteDaily// ,
(//, -
string//- 3
date//4 8
)//8 9
{00 	
List11 
<11 
ProductionDaily11  
>11  !
	solidaily11" +
=11, -

plantSetup11. 8
.118 9
GetSolidWasteDaily119 K
(11K L
date11L P
)11P Q
;11Q R
return22 
Json22 
(22 
	solidaily22 !
,22! "
JsonRequestBehavior22# 6
.226 7
AllowGet227 ?
)22? @
;22@ A
}33 	
[44 	
HttpPost44	 
]44 
public55 
int55 !
AddProductonDailydata55 (
(55( )
List55) -
<55- .
ProductionDaily55. =
>55= >

production55? I
,55I J
string55K Q
date55R V
,55V W
double55X ^

solidWaste55_ i
)55i j
{66 	
if<< 
(<< 

production<< 
!=<< 
null<< "
)<<" #
{== 
if>> 
(>> 
(>> 

plantSetup>> 
.>>  
AddProductonDaily>>  1
(>>1 2

production>>2 <
,>>< =
date>>> B
)>>B C
)>>C D
&&>>E G

plantSetup>>H R
.>>R S
AddSolidwasteDaily>>S e
(>>e f

production>>f p
,>>p q

solidWaste>>q {
,>>{ |
date	>>} 
)
>> ‚
)
>>‚ ƒ
return?? 
$num?? 
;?? 
else@@ 
returnAA 
$numAA 
;AA 
}BB 
returnCC 
$numCC 
;CC 
}DD 	
	protectedEE 
overrideEE 
voidEE 

InitializeEE  *
(EE* +
RequestContextEE+ 9
requestContextEE: H
)EEH I
{FF 	
ifGG 
(GG 

plantSetupGG 
!=GG 
nullGG "
)GG" #
{HH 

plantSetupII 
.II 
PlantIdII "
=II# $
ConvertII% ,
.II, -
ToInt32II- 4
(II4 5
requestContextII5 C
.IIC D
HttpContextIID O
.IIO P
SessionIIP W
[IIW X
$strIIX a
]IIa b
)IIb c
;IIc d

plantSetupJJ 
.JJ 
UserNameJJ #
=JJ$ %
requestContextJJ& 4
.JJ4 5
HttpContextJJ5 @
.JJ@ A
SessionJJA H
[JJH I
$strJJI S
]JJS T
.JJT U
ToStringJJU ]
(JJ] ^
)JJ^ _
;JJ_ `
}LL 
baseMM 
.MM 

InitializeMM 
(MM 
requestContextMM *
)MM* +
;MM+ ,
}NN 	
}PP 
}QQ Ğ
˜D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\DashboardSettingsController.cs
	namespace		 	!
EMMSClientApplication		
 
.		  
Controllers		  +
{

 
public 

class '
DashboardSettingsController ,
:- .

Controller/ 9
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public '
DashboardSettingsController *
(* +
IPlantSetUpManager+ =

plantSetup> H
)H I
{ 	
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
public 
ActionResult 
DashBoardSettings -
(- .
). /
{ 	
ViewBag 
. 
Years 
= 
new 

SelectList  *
(* +

plantSetup+ 5
.5 6
GetYearsLists6 C
(C D
)D E
)E F
;F G
return 
View 
( 
) 
; 
} 	
	protected 
override 
void 

Initialize  *
(* +
RequestContext+ 9
requestContext: H
)H I
{ 	
if 
( 

plantSetup 
!= 
null "
)" #
{ 

plantSetup 
. 
PlantId "
=# $
Convert% ,
., -
ToInt32- 4
(4 5
requestContext5 C
.C D
HttpContextD O
.O P
SessionP W
[W X
$strX a
]a b
)b c
;c d

plantSetup 
. 
UserName #
=$ %
requestContext& 4
.4 5
HttpContext5 @
.@ A
SessionA H
[H I
$strI S
]S T
.T U
ToStringU ]
(] ^
)^ _
;_ `
}   
base!! 
.!! 

Initialize!! 
(!! 
requestContext!! *
)!!* +
;!!+ ,
}"" 	
}## 
}$$ •4
™D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\DeviceRegistrationController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class (
DeviceRegistrationController -
:. /
ApiController0 =
{   
private!! 
	PlantInfo!! 
_info!! 
=!!  !
new!!" %
	PlantInfo!!& /
(!!/ 0
)!!0 1
;!!1 2
[(( 	
HttpPost((	 
](( 
public** 
async** 
Task** 
<** 
IHttpActionResult** +
>**+ ,
DeviceRegistration**- ?
(**? @
[**@ A
FromBody**A I
]**I J
string**J P
value**Q V
)**V W
{++ 	
string,, 
token,, 
=,, 
$str,, 
;,, 
string-- 
str-- 
=-- 
$str-- 
;-- 
string.. 
connectionString.. #
=..$ % 
ConfigurationManager..& :
...: ;
AppSettings..; F
[..F G
$str..G _
].._ `
;..` a
if11 
(11 
_info11 
.11 
IsDeviceAvailable11 '
(11' (
value11( -
)11- .
)11. /
{22 
GetSASToken33 
gtToken33 #
=33$ %
new33& )
GetSASToken33* 5
(335 6
)336 7
;337 8
if44 
(44 
!44 
string44 
.44 
IsNullOrEmpty44 )
(44) *
connectionString44* :
)44: ;
)44; <
{55 
str66 
=66 
gtToken66 !
.66! "$
sanitizeConnectionString66" :
(66: ;
connectionString66; K
)66K L
;66L M
}88 
var99 
registryManager99 #
=99$ %
RegistryManager99& 5
.995 6&
CreateFromConnectionString996 P
(99P Q 
ConfigurationManager99Q e
.99e f
AppSettings99f q
[99q r
$str	99r Š
]
99Š ‹
)
99‹ Œ
;
99Œ 
try:: 
{;; 
var<< 
device<< 
=<<  
await<<! &
registryManager<<' 6
.<<6 7
AddDeviceAsync<<7 E
(<<E F
new<<F I
Device<<J P
(<<P Q
value<<Q V
)<<V W
)<<W X
;<<X Y
token== 
=== 
gtToken== #
.==# $'
parseIoTHubConnectionString==$ ?
(==? @
str==@ C
,==C D
device==E K
)==K L
;==L M
var>> )
iotHubConnectionStringBuilder>> 5
=>>6 7)
IotHubConnectionStringBuilder>>8 U
.>>U V
Create>>V \
(>>\ ] 
ConfigurationManager>>] q
.>>q r
AppSettings>>r }
[>>} ~
$str	>>~ –
]
>>– —
)
>>— ˜
;
>>˜ ™
return?? 
Ok?? 
(?? 
(?? 
new?? "
	Utilities??# ,
{@@ 
HostNameAA  
=AA! ")
iotHubConnectionStringBuilderAA# @
.AA@ A
HostNameAAA I
,AAI J
DeviceIdBB  
=BB! "
deviceBB# )
.BB) *
IdBB* ,
,BB, -
DevicePrimaryKeyCC (
=CC) *
deviceCC+ 1
.CC1 2
AuthenticationCC2 @
.CC@ A
SymmetricKeyCCA M
.CCM N

PrimaryKeyCCN X
.CCX Y
ToStringCCY a
(CCa b
)CCb c
,CCc d!
SharedAccessSignatureDD -
=DD. /
tokenDD0 5
??DD6 8
$strDD9 Q
}EE 
)EE 
)EE 
;EE 
}FF 
catchGG 
(GG (
DeviceAlreadyExistsExceptionGG 3
exGG4 6
)GG6 7
{HH 
varJJ 
deviceJJ 
=JJ  
awaitJJ! &
registryManagerJJ' 6
.JJ6 7
GetDeviceAsyncJJ7 E
(JJE F
valueJJF K
)JJK L
;JJL M
tokenLL 
=LL 
gtTokenLL #
.LL# $'
parseIoTHubConnectionStringLL$ ?
(LL? @
strLL@ C
,LLC D
deviceLLE K
)LLK L
;LLL M
varMM )
iotHubConnectionStringBuilderMM 5
=MM6 7)
IotHubConnectionStringBuilderMM8 U
.MMU V
CreateMMV \
(MM\ ] 
ConfigurationManagerMM] q
.MMq r
AppSettingsMMr }
[MM} ~
$str	MM~ –
]
MM– —
)
MM— ˜
;
MM˜ ™
returnNN 
OkNN 
(NN 
newNN !
	UtilitiesNN" +
{OO 
HostNamePP  
=PP! ")
iotHubConnectionStringBuilderPP# @
.PP@ A
HostNamePPA I
,PPI J
DeviceIdQQ  
=QQ! "
deviceQQ# )
.QQ) *
IdQQ* ,
,QQ, -
DevicePrimaryKeyRR (
=RR) *
deviceRR+ 1
.RR1 2
AuthenticationRR2 @
.RR@ A
SymmetricKeyRRA M
.RRM N

PrimaryKeyRRN X
.RRX Y
ToStringRRY a
(RRa b
)RRb c
,RRc d!
SharedAccessSignatureSS -
=SS. /
tokenSS0 5
??SS6 8
$strSS9 Q
}UU 
)UU 
;UU 
}VV 
catchXX 
(XX (
IotHubCommunicationExceptionXX 3
exXX4 6
)XX6 7
{YY 
LoggerZZ 
.ZZ 
LogZZ 
(ZZ 
exZZ !
.ZZ! "
ToStringZZ" *
(ZZ* +
)ZZ+ ,
)ZZ, -
;ZZ- .
return[[ 

BadRequest[[ %
([[% &
ex[[& (
.[[( )
Message[[) 0
)[[0 1
;[[1 2
}\\ 
catch]] 
(]] 
	Exception]]  
ex]]! #
)]]# $
{^^ 
Logger__ 
.__ 
Log__ 
(__ 
ex__ !
.__! "
ToString__" *
(__* +
)__+ ,
)__, -
;__- .
return`` 

BadRequest`` %
(``% &
ex``& (
.``( )
Message``) 0
)``0 1
;``1 2
}aa 
}bb 
elsedd 
returnee 

BadRequestee !
(ee! "
$stree" 2
)ee2 3
;ee3 4
}ff 	
}gg 
}hh Ì	
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\HomePageController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{		 
public

 

class

 
HomePageController

 #
:

$ %

Controller

& 0
{ 
[ 	
CheckUserSession	 
] 
public 
ActionResult 
HomePage $
($ %
)% &
{ 	
int 
plantId 
= 
Convert !
.! "
ToInt32" )
() *
Session* 1
[1 2
$str2 ;
]; <
)< =
;= >
if 
( 
plantId 
!= 
$num 
) 
{ 
return 
View 
( 
) 
; 
} 
else 
{ 
return 
RedirectToAction '
(' (
$str( 3
,3 4
$str5 ;
); <
;< =
} 
} 	
} 
} ğ/
“D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\IdPInitiatedController.cs
	namespace 	
EMMS
 
. 
WebApplication 
{ 
[ 
AllowAnonymous 
] 
public 

class "
IdPInitiatedController '
:( )

Controller* 4
{ 
public 
ActionResult 
Initiate $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
InitiateLogin )
() *
User* .
user/ 3
)3 4
{ 	
var  
serviceProviderRealm $
=% & 
ConfigurationManager' ;
.; <
AppSettings< G
[G H
$strH ^
]^ _
;_ `
var!! 
binding!! 
=!! 
new!! 
Saml2PostBinding!! .
(!!. /
)!!/ 0
;!!0 1
binding"" 
."" 

RelayState"" 
=""  
$"""! #
RPID=""# (
{""( )
Uri"") ,
."", -
EscapeDataString""- =
(""= > 
serviceProviderRealm""> R
)""R S
}""S T
"""T U
;""U V
var$$ 
config$$ 
=$$ 
new$$ 
Saml2Configuration$$ /
($$/ 0
)$$0 1
;$$1 2
config&& 
.&& 
Issuer&& 
=&& 
new&& 
Uri&&  #
(&&# $ 
ConfigurationManager&&$ 8
.&&8 9
AppSettings&&9 D
[&&D E
$str&&E M
]&&M N
)&&N O
;&&O P
config'' 
.'' #
SingleSignOnDestination'' *
=''+ ,
new''- 0
Uri''1 4
(''4 5 
ConfigurationManager''5 I
.''I J
AppSettings''J U
[''U V
$str''V o
]''o p
)''p q
;''q r
var++ 
entityDescriptor++  
=++! "
new++# &
EntityDescriptor++' 7
(++7 8
)++8 9
;++9 :
string-- 
metadataPath-- 
=--  !
System--" (
.--( )
Web--) ,
.--, -
HttpContext--- 8
.--8 9
Current--9 @
.--@ A
Server--A G
.--G H
MapPath--H O
(--O P 
ConfigurationManager--P d
.--d e
AppSettings--e p
[--p q
$str--q 
]	-- €
)
--€ 
;
-- ‚
entityDescriptor// 
.// (
ReadIdPSsoDescriptorFromFile// 9
(//9 :
metadataPath//: F
)//F G
;//G H
if11 
(11 
entityDescriptor11  
.11  !
IdPSsoDescriptor11! 1
!=112 4
null115 9
)119 :
{22 
config33 
.33 +
SignatureValidationCertificates33 6
.336 7
AddRange337 ?
(33? @
entityDescriptor33@ P
.33P Q
IdPSsoDescriptor33Q a
.33a b
SigningCertificates33b u
)33u v
;33v w
}44 
var77 
appliesToAddress77  
=77! "
new77# &
Uri77' *
(77* + 
ConfigurationManager77+ ?
.77? @
AppSettings77@ K
[77K L
$str77L ^
]77^ _
)77_ `
;77` a
var99 
response99 
=99 
new99 
Saml2AuthnResponse99 1
(991 2
config992 8
)998 9
;999 :
response:: 
.:: 
Status:: 
=:: 
Saml2StatusCodes:: .
.::. /
Success::/ 6
;::6 7
var<< 
claimsIdentity<< 
=<<  
new<<! $
ClaimsIdentity<<% 3
(<<3 4
CreateClaims<<4 @
(<<@ A
)<<A B
)<<B C
;<<C D
response== 
.== 
NameId== 
=== 
new== !
Saml2NameIdentifier==" 5
(==5 6
claimsIdentity==6 D
.==D E
Claims==E K
.==K L
Where==L Q
(==Q R
c==R S
=>==T V
c==W X
.==X Y
Type==Y ]
====^ `

ClaimTypes==a k
.==k l
NameIdentifier==l z
)==z {
.=={ |
Select	==| ‚
(
==‚ ƒ
c
==ƒ „
=>
==… ‡
c
==ˆ ‰
.
==‰ Š
Value
==Š 
)
== 
.
== ‘
Single
==‘ —
(
==— ˜
)
==˜ ™
,
==™ š#
NameIdentifierFormats
==› °
.
==° ±

Persistent
==± »
)
==» ¼
;
==¼ ½
response>> 
.>> 
ClaimsIdentity>> #
=>>$ %
claimsIdentity>>& 4
;>>4 5
var?? 
token?? 
=?? 
response??  
.??  !
CreateSecurityToken??! 4
(??4 5
appliesToAddress??5 E
)??E F
;??F G
returnAA 
bindingAA 
.AA 
BindAA 
(AA  
responseAA  (
)AA( )
.AA) *
ToActionResultAA* 8
(AA8 9
)AA9 :
;AA: ;
}CC 	
privateDD 
IEnumerableDD 
<DD 
ClaimDD !
>DD! "
CreateClaimsDD# /
(DD/ 0
)DD0 1
{EE 	
yieldFF 
returnFF 
newFF 
ClaimFF "
(FF" #

ClaimTypesFF# -
.FF- .
NameIdentifierFF. <
,FF< =
$strFF> R
)FFR S
;FFS T
yieldGG 
returnGG 
newGG 
ClaimGG "
(GG" #

ClaimTypesGG# -
.GG- .
EmailGG. 3
,GG3 4
$strGG5 K
)GGK L
;GGL M
}HH 	
}II 
}JJ Œ­
™D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\PlantConfigurationController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public%% 

class%% (
PlantConfigurationController%% -
:%%. /
ApiController%%0 =
{&& 
private'' 
	PlantInfo'' 
_info'' 
=''  !
new''" %
	PlantInfo''& /
(''/ 0
)''0 1
;''1 2
[00 	
HttpGet00	 
]00 
public22 
IHttpActionResult22  
GetPlantDetails22! 0
(220 1
)221 2
{33 	
List44 
<44 
PlantInfoModel44 
>44  
	plantList44! *
=44+ ,
_info44- 2
.442 3
RetrievePlantInfo443 D
(44D E
)44E F
;44F G
if55 
(55 
	plantList55 
!=55 
null55 !
)55! "
return66 
Ok66 
(66 
	plantList66 #
)66# $
;66$ %
else77 
return88 
NotFound88 
(88  
)88  !
;88! "
}:: 	
publicBB 
IHttpActionResultBB  
GetPlantDetailBB! /
(BB/ 0
stringBB0 6
idBB7 9
)BB9 :
{CC 	
PlantInfoModelDD 
_plantDD !
=DD" #
_infoDD$ )
.DD) *#
retrieveSinglePlantInfoDD* A
(DDA B
idDDB D
)DDD E
;DDE F
ifEE 
(EE 
_plantEE 
!=EE 
nullEE 
)EE 
returnFF 
OkFF 
(FF 
_plantFF  
)FF  !
;FF! "
elseGG 
returnHH 
NotFoundHH 
(HH  
)HH  !
;HH! "
}II 	
[PP 	
HttpPostPP	 
]PP 
publicRR 
IHttpActionResultRR  
AddPlantDetailsRR! 0
(RR0 1
[RR1 2
FromBodyRR2 :
]RR: ;
PlantInfoModelRR< J
plantRRK P
)RRP Q
{SS 	
ifTT 
(TT 

ModelStateTT 
.TT 
IsValidTT "
&&TT# %
plantTT& +
!=TT, .
nullTT/ 3
)TT3 4
{UU 
ifVV 
(VV 
_infoVV 
.VV 
RetrievePlantInfoVV +
(VV+ ,
)VV, -
.VV- .
AnyVV. 1
(VV1 2
plntVV2 6
=>VV7 9
plntVV: >
.VV> ?
	PlantNameVV? H
==VVI K
plantVVL Q
.VVQ R
	PlantNameVVR [
)VV[ \
)VV\ ]
{WW 
returnXX 

BadRequestXX %
(XX% &
plantXX& +
.XX+ ,
	PlantNameXX, 5
+XX6 7
$strXX8 P
)XXP Q
;XXQ R
}YY 
intZZ 
plantIdZZ 
=ZZ 
_infoZZ #
.ZZ# $
AddPlantInfoZZ$ 0
(ZZ0 1
plantZZ1 6
)ZZ6 7
;ZZ7 8
if[[ 
([[ 
plantId[[ 
>[[ 
$num[[ 
)[[  
return\\ 
Created\\ "
(\\" #
$str\\# <
,\\< =
plantId\\> E
.\\E F
ToString\\F N
(\\N O
)\\O P
)\\P Q
;\\Q R
else]] 
return^^ 

BadRequest^^ %
(^^% &
$str^^& a
)^^a b
;^^b c
}__ 
else`` 
returnaa 

BadRequestaa !
(aa! "
$straa" :
)aa: ;
;aa; <
}cc 	
[nn 	
HttpPutnn	 
]nn 
[oo 	
Routeoo	 
(oo 
$stroo C
)ooC D
]ooD E
publicpp 
IHttpActionResultpp  
EditPlantDetailspp! 1
(pp1 2
intpp2 5
?pp5 6
plantIdpp7 >
,pp> ?
[pp@ A
FromBodyppA I
]ppI J
PlantInfoModelppJ X
plantppY ^
)pp^ _
{qq 	
ifrr 
(rr 

ModelStaterr 
.rr 
IsValidrr "
&&rr# %
plantrr& +
!=rr, .
nullrr/ 3
)rr3 4
{ss 
iftt 
(tt 
_infott 
.tt 
UpdatePlantInfott )
(tt) *
plantIdtt* 1
,tt1 2
planttt3 8
)tt8 9
)tt9 :
returnuu 
Okuu 
(uu 
)uu 
;uu  
elsevv 

BadRequestww 
(ww 
$strww Z
)wwZ [
;ww[ \
}yy 
return{{ 

BadRequest{{ 
({{ 
$str{{ 9
){{9 :
;{{: ;
}|| 	
[
ƒƒ 	
HttpGet
ƒƒ	 
]
ƒƒ 
[
„„ 	
Route
„„	 
(
„„ 
$str
„„ @
)
„„@ A
]
„„A B
public
…… 
IHttpActionResult
……  
GetDepartment
……! .
(
……. /
int
……/ 2
?
……2 3
plantId
……4 ;
)
……; <
{
†† 	
if
‡‡ 
(
‡‡ 
!
‡‡ 
plantId
‡‡ 
.
‡‡ 
HasValue
‡‡ !
)
‡‡! "
return
ˆˆ 

BadRequest
ˆˆ !
(
ˆˆ! "
$str
ˆˆ" :
)
ˆˆ: ;
;
ˆˆ; <
List
‰‰ 
<
‰‰ 
string
‰‰ 
>
‰‰ 
departmentList
‰‰ '
=
‰‰( )
_info
‰‰* /
.
‰‰/ 0&
RetriveDepartmentDetails
‰‰0 H
(
‰‰H I
plantId
‰‰I P
)
‰‰P Q
;
‰‰Q R
if
ŠŠ 
(
ŠŠ 
departmentList
ŠŠ 
.
ŠŠ 
Count
ŠŠ $
>
ŠŠ% &
$num
ŠŠ' (
)
ŠŠ( )
return
‹‹ 
Ok
‹‹ 
(
‹‹ 
departmentList
‹‹ (
)
‹‹( )
;
‹‹) *
else
ŒŒ 
return
 

BadRequest
 !
(
! "
$str
" J
)
J K
;
K L
}
 	
[
—— 	
HttpPost
——	 
]
—— 
[
˜˜ 	
Route
˜˜	 
(
˜˜ 
$str
˜˜ 2
)
˜˜2 3
]
˜˜3 4
public
™™ 
IHttpActionResult
™™  
AddDepartment
™™! .
(
™™. /
[
™™/ 0
FromBody
™™0 8
]
™™8 9

Department
™™9 C

department
™™D N
)
™™N O
{
šš 	
if
›› 
(
›› 

ModelState
›› 
.
›› 
IsValid
›› "
&&
››# %

department
››& 0
!=
››1 3
null
››4 8
)
››8 9
{
œœ 
if
 
(
 
_info
 
.
 
RetrieveAsset
 '
(
' (
)
( )
.
) *
Any
* -
(
- .
item
. 2
=>
3 5
item
6 :
.
: ;
Name
; ?
==
@ B

department
C M
.
M N
DepartmentName
N \
&&
] _
item
` d
.
d e
Plant_ID
e m
==
n p

department
q {
.
{ |
PlantId| ƒ
)ƒ „
)„ …
return
ŸŸ 

BadRequest
ŸŸ %
(
ŸŸ% &

department
ŸŸ& 0
.
ŸŸ0 1
DepartmentName
ŸŸ1 ?
+
ŸŸ@ A
$str
ŸŸB ^
)
ŸŸ^ _
;
ŸŸ_ `
int
¡¡ 
assetId
¡¡ 
=
¡¡ 
_info
¡¡ #
.
¡¡# $
AddDepartment
¡¡$ 1
(
¡¡1 2

department
¡¡2 <
)
¡¡< =
;
¡¡= >
if
¢¢ 
(
¢¢ 
assetId
¢¢ 
>
¢¢ 
$num
¢¢ 
)
¢¢  
return
££ 
Created
££ "
(
££" #
$str
££# F
,
££F G
assetId
££H O
.
££O P
ToString
££P X
(
££X Y
)
££Y Z
)
££Z [
;
££[ \
else
¤¤ 
return
¥¥ 

BadRequest
¥¥ %
(
¥¥% &
$str
¥¥& k
)
¥¥k l
;
¥¥l m
}
§§ 
return
¨¨ 

BadRequest
¨¨ 
(
¨¨ 
$str
¨¨ <
)
¨¨< =
;
¨¨= >
}
©© 	
[
ÁÁ 	
HttpGet
ÁÁ	 
]
ÁÁ 
[
ÂÂ 	
Route
ÂÂ	 
(
ÂÂ 
$str
ÂÂ 8
)
ÂÂ8 9
]
ÂÂ9 :
public
ÃÃ 
IHttpActionResult
ÃÃ  
GetEquipmentType
ÃÃ! 1
(
ÃÃ1 2
)
ÃÃ2 3
{
ÄÄ 	
List
ÅÅ 
<
ÅÅ 
string
ÅÅ 
>
ÅÅ 
equipmentList
ÅÅ &
=
ÅÅ' (
_info
ÅÅ) .
.
ÅÅ. /
GetEquipmentType
ÅÅ/ ?
(
ÅÅ? @
)
ÅÅ@ A
;
ÅÅA B
if
ÆÆ 
(
ÆÆ 
equipmentList
ÆÆ 
.
ÆÆ 
Count
ÆÆ #
>
ÆÆ$ %
$num
ÆÆ& '
)
ÆÆ' (
return
ÇÇ 
Ok
ÇÇ 
(
ÇÇ 
equipmentList
ÇÇ '
)
ÇÇ' (
;
ÇÇ( )
else
ÈÈ 
return
ÉÉ 

BadRequest
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" ;
)
ÉÉ; <
;
ÉÉ< =
}
ÊÊ 	
[
ĞĞ 	
HttpGet
ĞĞ	 
]
ĞĞ 
[
ÑÑ 	
Route
ÑÑ	 
(
ÑÑ 
$str
ÑÑ 5
)
ÑÑ5 6
]
ÑÑ6 7
public
ÒÒ 
IHttpActionResult
ÒÒ  
getEnergyType
ÒÒ! .
(
ÒÒ. /
)
ÒÒ/ 0
{
ÓÓ 	
List
ÔÔ 
<
ÔÔ 
string
ÔÔ 
>
ÔÔ 
energyTypeList
ÔÔ '
=
ÔÔ( )
_info
ÔÔ* /
.
ÔÔ/ 0
GetEnergyType
ÔÔ0 =
(
ÔÔ= >
)
ÔÔ> ?
;
ÔÔ? @
if
ÕÕ 
(
ÕÕ 
energyTypeList
ÕÕ 
.
ÕÕ 
Count
ÕÕ $
>
ÕÕ% &
$num
ÕÕ' (
)
ÕÕ( )
return
ÖÖ 
Ok
ÖÖ 
(
ÖÖ 
energyTypeList
ÖÖ (
)
ÖÖ( )
;
ÖÖ) *
else
×× 
return
ØØ 

BadRequest
ØØ !
(
ØØ! "
$str
ØØ" =
)
ØØ= >
;
ØØ> ?
}
ÙÙ 	
[
àà 	
HttpGet
àà	 
]
àà 
[
áá 	
Route
áá	 
(
áá 
$str
áá /
)
áá/ 0
]
áá0 1
public
ãã 
IHttpActionResult
ãã  
getZone
ãã! (
(
ãã( )
)
ãã) *
{
ää 	
List
åå 
<
åå 
string
åå 
>
åå 
zoneList
åå !
=
åå" #
_info
åå$ )
.
åå) *
GetZone
åå* 1
(
åå1 2
)
åå2 3
;
åå3 4
if
ææ 
(
ææ 
zoneList
ææ 
.
ææ 
Count
ææ 
>
ææ  
$num
ææ! "
)
ææ" #
return
çç 
Ok
çç 
(
çç 
zoneList
çç "
)
çç" #
;
çç# $
else
èè 
return
éé 

BadRequest
éé !
(
éé! "
$str
éé" =
)
éé= >
;
éé> ?
}
êê 	
[
ññ 	
HttpGet
ññ	 
]
ññ 
[
òò 	
Route
òò	 
(
òò 
$str
òò .
)
òò. /
]
òò/ 0
public
ôô 
IHttpActionResult
ôô  
getUOM
ôô! '
(
ôô' (
)
ôô( )
{
õõ 	
List
öö 
<
öö 
string
öö 
>
öö 
uOMList
öö  
=
öö! "
_info
öö# (
.
öö( )
GetUOM
öö) /
(
öö/ 0
)
öö0 1
;
öö1 2
if
÷÷ 
(
÷÷ 
uOMList
÷÷ 
.
÷÷ 
Count
÷÷ 
>
÷÷ 
$num
÷÷  !
)
÷÷! "
return
øø 
Ok
øø 
(
øø 
uOMList
øø !
)
øø! "
;
øø" #
else
ùù 
return
úú 

BadRequest
úú !
(
úú! "
$str
úú" 5
)
úú5 6
;
úú6 7
}
ûû 	
[
€€ 	
HttpGet
€€	 
]
€€ 
[
 	
Route
	 
(
 
$str
 2
)
2 3
]
3 4
public
‚‚ 
IHttpActionResult
‚‚  

GetCountry
‚‚! +
(
‚‚+ ,
)
‚‚, -
{
ƒƒ 	
List
…… 
<
…… 
string
…… 
>
…… 
countryList
…… $
=
……% &
_info
……' ,
.
……, -

GetCountry
……- 7
(
……7 8
)
……8 9
;
……9 :
if
†† 
(
†† 
countryList
†† 
.
†† 
Count
†† !
>
††" #
$num
††$ %
)
††% &
return
‡‡ 
Ok
‡‡ 
(
‡‡ 
countryList
‡‡ %
)
‡‡% &
;
‡‡& '
else
ˆˆ 
return
‰‰ 

BadRequest
‰‰ !
(
‰‰! "
$str
‰‰" 9
)
‰‰9 :
;
‰‰: ;
}
ŠŠ 	
[
”” 	
HttpPost
””	 
]
”” 
[
•• 	
Route
••	 
(
•• 
$str
•• 0
)
••0 1
]
••1 2
public
–– 
IHttpActionResult
––  
AddBuilding
––! ,
(
––, -
[
––- .
FromBody
––. 6
]
––6 7
Building
––7 ?
building
––@ H
)
––H I
{
—— 	
if
˜˜ 
(
˜˜ 

ModelState
˜˜ 
.
˜˜ 
IsValid
˜˜ "
&&
˜˜# %
building
˜˜& .
!=
˜˜/ 1
null
˜˜2 6
)
˜˜6 7
{
™™ 
if
šš 
(
šš 
_info
šš 
.
šš 
RetrieveAsset
šš '
(
šš' (
)
šš( )
.
šš) *
Any
šš* -
(
šš- .
item
šš. 2
=>
šš3 5
item
šš6 :
.
šš: ;
Name
šš; ?
==
šš@ B
building
ššC K
.
ššK L
BuildingName
ššL X
&&
ššY [
item
šš\ `
.
šš` a
Plant_ID
šša i
==
ššj l
building
ššm u
.
ššu v
PlantId
ššv }
)
šš} ~
)
šš~ 
return
œœ 

BadRequest
œœ %
(
œœ% &
building
œœ& .
.
œœ. /
BuildingName
œœ/ ;
+
œœ< =
$str
œœ> X
)
œœX Y
;
œœY Z
int
 
assetId
 
=
 
_info
 #
.
# $
AddBuilding
$ /
(
/ 0
building
0 8
)
8 9
;
9 :
if
 
(
 
assetId
 
>
 
$num
 
)
  
return
ŸŸ 
Created
ŸŸ "
(
ŸŸ" #
$str
ŸŸ# D
,
ŸŸD E
assetId
ŸŸF M
.
ŸŸM N
ToString
ŸŸN V
(
ŸŸV W
)
ŸŸW X
)
ŸŸX Y
;
ŸŸY Z
else
   
return
¡¡ 

BadRequest
¡¡ %
(
¡¡% &
$str
¡¡& k
)
¡¡k l
;
¡¡l m
}
££ 
return
¤¤ 

BadRequest
¤¤ 
(
¤¤ 
$str
¤¤ <
)
¤¤< =
;
¤¤= >
}
¦¦ 	
[
®® 	
HttpGet
®®	 
]
®® 
[
¯¯ 	
Route
¯¯	 
(
¯¯ 
$str
¯¯ >
)
¯¯> ?
]
¯¯? @
public
°° 
IHttpActionResult
°°  
RetieveBuilding
°°! 0
(
°°0 1
int
°°1 4
?
°°4 5
plantId
°°6 =
)
°°= >
{
±± 	
if
²² 
(
²² 
!
²² 
plantId
²² 
.
²² 
HasValue
²² !
)
²²! "
return
³³ 

BadRequest
³³ !
(
³³! "
$str
³³" :
)
³³: ;
;
³³; <
List
´´ 
<
´´ 
string
´´ 
>
´´ 
buildingList
´´ %
=
´´& '
_info
´´( -
.
´´- .
RetrieveBuilding
´´. >
(
´´> ?
plantId
´´? F
)
´´F G
;
´´G H
if
µµ 
(
µµ 
buildingList
µµ 
.
µµ 
Count
µµ "
>
µµ# $
$num
µµ% &
)
µµ& '
return
¶¶ 
Ok
¶¶ 
(
¶¶ 
buildingList
¶¶ &
)
¶¶& '
;
¶¶' (
else
·· 
return
¸¸ 

BadRequest
¸¸ !
(
¸¸! "
$str
¸¸" H
)
¸¸H I
;
¸¸I J
}
¹¹ 	
[
ÀÀ 	
HttpGet
ÀÀ	 
]
ÀÀ 
[
ÁÁ 	
Route
ÁÁ	 
(
ÁÁ 
$str
ÁÁ ?
)
ÁÁ? @
]
ÁÁ@ A
public
ÂÂ 
IHttpActionResult
ÂÂ  &
RetrieveEquipmentDetails
ÂÂ! 9
(
ÂÂ9 :
int
ÂÂ: =
?
ÂÂ= >
plantId
ÂÂ? F
)
ÂÂF G
{
ÃÃ 	
List
ÄÄ 
<
ÄÄ 
string
ÄÄ 
>
ÄÄ 
equipmentList
ÄÄ &
=
ÄÄ' (
new
ÄÄ) ,
List
ÄÄ- 1
<
ÄÄ1 2
string
ÄÄ2 8
>
ÄÄ8 9
(
ÄÄ9 :
)
ÄÄ: ;
;
ÄÄ; <
equipmentList
ÅÅ 
=
ÅÅ 
_info
ÅÅ !
.
ÅÅ! "#
RetrieveEquipmentInfo
ÅÅ" 7
(
ÅÅ7 8
plantId
ÅÅ8 ?
)
ÅÅ? @
;
ÅÅ@ A
if
ÆÆ 
(
ÆÆ 
equipmentList
ÆÆ 
.
ÆÆ 
Count
ÆÆ #
>
ÆÆ$ %
$num
ÆÆ& '
)
ÆÆ' (
return
ÇÇ 
Ok
ÇÇ 
(
ÇÇ 
equipmentList
ÇÇ '
)
ÇÇ' (
;
ÇÇ( )
else
ÈÈ 
return
ÉÉ 

BadRequest
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" ;
)
ÉÉ; <
;
ÉÉ< =
}
ÊÊ 	
[
ÑÑ 	
HttpPost
ÑÑ	 
]
ÑÑ 
[
ÒÒ 	
Route
ÒÒ	 
(
ÒÒ 
$str
ÒÒ 1
)
ÒÒ1 2
]
ÒÒ2 3
public
ÓÓ 
IHttpActionResult
ÓÓ  
AddEquipment
ÓÓ! -
(
ÓÓ- .
[
ÓÓ. /
FromBody
ÓÓ/ 7
]
ÓÓ7 8
	Equipment
ÓÓ8 A
	equipment
ÓÓB K
)
ÓÓK L
{
ÔÔ 	
if
ÕÕ 
(
ÕÕ 

ModelState
ÕÕ 
.
ÕÕ 
IsValid
ÕÕ "
&&
ÕÕ# %
	equipment
ÕÕ& /
!=
ÕÕ0 2
null
ÕÕ3 7
)
ÕÕ7 8
{
ÖÖ 
if
×× 
(
×× 
_info
×× 
.
×× 
RetrieveAsset
×× '
(
××' (
)
××( )
.
××) *
Any
××* -
(
××- .
item
××. 2
=>
××3 5
item
××6 :
.
××: ;
Name
××; ?
==
××@ B
	equipment
××C L
.
××L M
EquipmentName
××M Z
&&
××[ ]
item
××^ b
.
××b c
Plant_ID
××c k
==
××l n
	equipment
××o x
.
××x y
PlantId××y €
)××€ 
)×× ‚
return
ØØ 

BadRequest
ØØ %
(
ØØ% &
	equipment
ØØ& /
.
ØØ/ 0
EquipmentName
ØØ0 =
+
ØØ> ?
$str
ØØ@ [
)
ØØ[ \
;
ØØ\ ]
int
ÙÙ 
assetId
ÙÙ 
=
ÙÙ 
_info
ÙÙ #
.
ÙÙ# $
AddEquipmentInfo
ÙÙ$ 4
(
ÙÙ4 5
	equipment
ÙÙ5 >
)
ÙÙ> ?
;
ÙÙ? @
if
ÚÚ 
(
ÚÚ 
assetId
ÚÚ 
>
ÚÚ 
$num
ÚÚ 
)
ÚÚ  
return
ÛÛ 
Created
ÛÛ "
(
ÛÛ" #
$str
ÛÛ# E
,
ÛÛE F
assetId
ÛÛG N
.
ÛÛN O
ToString
ÛÛO W
(
ÛÛW X
)
ÛÛX Y
)
ÛÛY Z
;
ÛÛZ [
else
ÜÜ 
return
İİ 

BadRequest
İİ %
(
İİ% &
$str
İİ& k
)
İİk l
;
İİl m
}
ßß 
return
àà 

BadRequest
àà 
(
àà 
$str
àà <
)
àà< =
;
àà= >
}
ââ 	
[
éé 	
HttpGet
éé	 
]
éé 
[
êê 	
Route
êê	 
(
êê 
$str
êê 4
)
êê4 5
]
êê5 6
public
ëë 
IHttpActionResult
ëë  
GetAssetType
ëë! -
(
ëë- .
)
ëë. /
{
ìì 	
List
íí 
<
íí 
string
íí 
>
íí 
assetTypeList
íí &
=
íí' (
_info
íí) .
.
íí. /
RetrieveAssetType
íí/ @
(
íí@ A
)
ííA B
;
ííB C
if
îî 
(
îî 
assetTypeList
îî 
.
îî 
Count
îî #
>
îî$ %
$num
îî& '
)
îî' (
return
ïï 
Ok
ïï 
(
ïï 
assetTypeList
ïï '
)
ïï' (
;
ïï( )
else
ğğ 
return
ññ 

BadRequest
ññ !
(
ññ! "
$str
ññ" ;
)
ññ; <
;
ññ< =
}
òò 	
[
úú 	
HttpGet
úú	 
]
úú 
[
ûû 	
Route
ûû	 
(
ûû 
$str
ûû <
)
ûû< =
]
ûû= >
public
üü 
IHttpActionResult
üü  
getAsset
üü! )
(
üü) *
string
üü* 0
	assetType
üü1 :
)
üü: ;
{
ıı 	
List
şş 
<
şş 
string
şş 
>
şş 
assetTypeList
şş &
=
şş' (
_info
şş) .
.
şş. /
RetrieveAsset
şş/ <
(
şş< =
	assetType
şş= F
)
şşF G
;
şşG H
if
ÿÿ 
(
ÿÿ 
assetTypeList
ÿÿ 
.
ÿÿ 
Count
ÿÿ #
>
ÿÿ$ %
$num
ÿÿ& '
)
ÿÿ' (
return
€€ 
Ok
€€ 
(
€€ 
assetTypeList
€€ '
)
€€' (
;
€€( )
else
 
return
‚‚ 

BadRequest
‚‚ !
(
‚‚! "
$str
‚‚" ;
)
‚‚; <
;
‚‚< =
}
ƒƒ 	
[
ŠŠ 	
HttpGet
ŠŠ	 
]
ŠŠ 
[
‹‹ 	
Route
‹‹	 
(
‹‹ 
$str
‹‹ E
)
‹‹E F
]
‹‹F G
public
ŒŒ 
IHttpActionResult
ŒŒ  
getAsset
ŒŒ! )
(
ŒŒ) *
string
ŒŒ* 0
	assetType
ŒŒ1 :
,
ŒŒ: ;
int
ŒŒ< ?
id
ŒŒ@ B
)
ŒŒB C
{
 	
List
 
<
 
string
 
>
 
assetTypeList
 &
=
' (
_info
) .
.
. /$
RetrieveAssetByPlantId
/ E
(
E F
	assetType
F O
,
O P
id
Q S
)
S T
;
T U
if
 
(
 
assetTypeList
 
.
 
Count
 #
>
$ %
$num
& '
)
' (
return
 
Ok
 
(
 
assetTypeList
 '
)
' (
;
( )
else
‘‘ 
return
’’ 

BadRequest
’’ !
(
’’! "
$str
’’" 7
)
’’7 8
;
’’8 9
}
““ 	
[
šš 	
HttpPost
šš	 
]
šš 
[
›› 	
Route
››	 
(
›› 
$str
›› -
)
››- .
]
››. /
public
œœ 
IHttpActionResult
œœ  
AddShiftDetails
œœ! 0
(
œœ0 1
[
œœ1 2
FromBody
œœ2 :
]
œœ: ;
Shift
œœ; @
shift
œœA F
)
œœF G
{
 	
if
 
(
 

ModelState
 
.
 
IsValid
 "
&&
# %
shift
& +
!=
, .
null
/ 3
)
3 4
{
ŸŸ 
if
   
(
   
_info
   
.
   
AddShiftInfo
   &
(
  & '
shift
  ' ,
)
  , -
)
  - .
{
¡¡ 
return
¢¢ 
Created
¢¢ "
(
¢¢" #
$str
¢¢# A
,
¢¢A B
shift
¢¢C H
)
¢¢H I
;
¢¢I J
}
££ 
else
¤¤ 
return
¦¦ 

BadRequest
¦¦ %
(
¦¦% &
$str
¦¦& z
)
¦¦z {
;
¦¦{ |
}
§§ 
return
¨¨ 

BadRequest
¨¨ 
(
¨¨ 
$str
¨¨ B
)
¨¨B C
;
¨¨C D
}
ªª 	
[
±± 	
HttpGet
±±	 
]
±± 
[
²² 	
Route
²²	 
(
²² 
$str
²² -
)
²²- .
]
²². /
public
³³ 
IHttpActionResult
³³  #
RetrieveShifttDetails
³³! 6
(
³³6 7
)
³³7 8
{
´´ 	
List
µµ 
<
µµ 
Shift
µµ 
>
µµ 

shifttList
µµ "
=
µµ# $
_info
µµ% *
.
µµ* +
RetrieveShiftInfo
µµ+ <
(
µµ< =
)
µµ= >
;
µµ> ?
if
¶¶ 
(
¶¶ 

shifttList
¶¶ 
.
¶¶ 
Count
¶¶  
>
¶¶! "
$num
¶¶# $
)
¶¶$ %
return
·· 
Ok
·· 
(
·· 

shifttList
·· $
)
··$ %
;
··% &
else
¸¸ 
return
¹¹ 

BadRequest
¹¹ !
(
¹¹! "
$str
¹¹" J
)
¹¹J K
;
¹¹K L
}
ºº 	
[
ÃÃ 	
HttpPost
ÃÃ	 
]
ÃÃ 
[
ÄÄ 	
Route
ÄÄ	 
(
ÄÄ 
$str
ÄÄ /
)
ÄÄ/ 0
]
ÄÄ0 1
public
ÅÅ 
IHttpActionResult
ÅÅ  
PostTagDetails
ÅÅ! /
(
ÅÅ/ 0
[
ÅÅ0 1
FromBody
ÅÅ1 9
]
ÅÅ9 :
Tags
ÅÅ: >
tag
ÅÅ? B
)
ÅÅB C
{
ÆÆ 	
if
ÈÈ 
(
ÈÈ 

ModelState
ÈÈ 
.
ÈÈ 
IsValid
ÈÈ "
)
ÈÈ" #
{
ÉÉ 
try
ÊÊ 
{
ËË 
List
ÍÍ 
<
ÍÍ 
Tag
ÍÍ 
>
ÍÍ 
tagIDs
ÍÍ $
=
ÍÍ% &
_info
ÍÍ' ,
.
ÍÍ, -"
AddTagMappingDetails
ÍÍ- A
(
ÍÍA B
tag
ÍÍB E
)
ÍÍE F
;
ÍÍF G
if
ÎÎ 
(
ÎÎ 
tagIDs
ÎÎ 
.
ÎÎ 
Count
ÎÎ $
>
ÎÎ% &
$num
ÎÎ' (
)
ÎÎ( )
{
ÏÏ 
return
ĞĞ 
Created
ĞĞ &
(
ĞĞ& '
$str
ĞĞ' G
,
ĞĞG H
tagIDs
ĞĞI O
)
ĞĞO P
;
ĞĞP Q
}
ÑÑ 
else
ÒÒ 
return
ÓÓ 

BadRequest
ÓÓ )
(
ÓÓ) *
$str
ÓÓ* y
)
ÓÓy z
;
ÓÓz {
}
ÕÕ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ  
ex
ÖÖ! #
)
ÖÖ# $
{
×× 
return
ØØ 

BadRequest
ØØ %
(
ØØ% &
$str
ØØ& ?
)
ØØ? @
;
ØØ@ A
}
ÙÙ 
}
ÛÛ 
return
ÜÜ 

BadRequest
ÜÜ 
(
ÜÜ 
$str
ÜÜ *
)
ÜÜ* +
;
ÜÜ+ ,
}
İİ 	
[
ŞŞ 	
HttpPut
ŞŞ	 
]
ŞŞ 
[
ßß 	
Route
ßß	 
(
ßß 
$str
ßß G
)
ßßG H
]
ßßH I
public
àà 
IHttpActionResult
àà  
EditTagDetails
àà! /
(
àà/ 0
int
àà0 3
?
àà3 4
id
àà5 7
,
àà7 8
Tags
àà9 =
tag
àà> A
)
ààA B
{
áá 	
if
ââ 
(
ââ 
!
ââ 
id
ââ 
.
ââ 
HasValue
ââ 
)
ââ 
return
ãã 

BadRequest
ãã !
(
ãã! "
$str
ãã" >
)
ãã> ?
;
ãã? @
if
ää 
(
ää 
_info
ää 
.
ää 
UpdateTagInfo
ää #
(
ää# $
id
ää$ &
,
ää& '
tag
ää( +
)
ää+ ,
)
ää, -
return
åå 
Ok
åå 
(
åå 
)
åå 
;
åå 
else
ææ 
return
çç 

BadRequest
çç !
(
çç! "
$str
çç" ?
)
çç? @
;
çç@ A
}
èè 	
[
ïï 	
HttpGet
ïï	 
]
ïï 
[
ğğ 	
Route
ğğ	 
(
ğğ 
$str
ğğ 9
)
ğğ9 :
]
ğğ: ;
public
ññ 
IHttpActionResult
ññ  "
GetTagmappingDetails
ññ! 5
(
ññ5 6
int
ññ6 9
id
ññ: <
)
ññ< =
{
òò 	
List
óó 
<
óó 
TagMappingDetails
óó "
>
óó" #
tagmappingList
óó$ 2
=
óó3 4
_info
óó5 :
.
óó: ;+
GetTagMappingDetailsOnPlantId
óó; X
(
óóX Y
id
óóY [
)
óó[ \
;
óó\ ]
if
ôô 
(
ôô 
tagmappingList
ôô 
.
ôô 
Count
ôô $
>
ôô% &
$num
ôô' (
)
ôô( )
return
õõ 
Ok
õõ 
(
õõ 
tagmappingList
õõ (
)
õõ( )
;
õõ) *
else
öö 
return
÷÷ 

BadRequest
÷÷ !
(
÷÷! "
$str
÷÷" <
)
÷÷< =
;
÷÷= >
}
øø 	
[
şş 	
HttpGet
şş	 
]
şş 
[
ÿÿ 	
Route
ÿÿ	 
(
ÿÿ 
$str
ÿÿ A
)
ÿÿA B
]
ÿÿB C
public
€€ 
IHttpActionResult
€€  
GetTAlarmDetails
€€! 1
(
€€1 2
int
€€2 5
id
€€6 8
)
€€8 9
{
 	
List
‚‚ 
<
‚‚ 

AlarmEnble
‚‚ 
>
‚‚ 
	alarmList
‚‚ &
=
‚‚' (
_info
‚‚) .
.
‚‚. /
GetAlaramData
‚‚/ <
(
‚‚< =
id
‚‚= ?
)
‚‚? @
;
‚‚@ A
if
ƒƒ 
(
ƒƒ 
	alarmList
ƒƒ 
.
ƒƒ 
Count
ƒƒ 
>
ƒƒ  !
$num
ƒƒ" #
)
ƒƒ# $
return
„„ 
Ok
„„ 
(
„„ 
	alarmList
„„ #
)
„„# $
;
„„$ %
else
…… 
return
†† 

BadRequest
†† !
(
††! "
$str
††" 7
)
††7 8
;
††8 9
}
‡‡ 	
[
 	
HttpPost
	 
]
 
[
 	
Route
	 
(
 
$str
 1
)
1 2
]
2 3
public
 
IHttpActionResult
  
AddTagId
! )
(
) *
[
* +
FromBody
+ 3
]
3 4
Alarms
5 ;
alarm
< A
)
A B
{
 	
if
‘‘ 
(
‘‘ 

ModelState
‘‘ 
.
‘‘ 
IsValid
‘‘ "
&&
‘‘# %
alarm
‘‘& +
!=
‘‘, .
null
‘‘/ 3
)
‘‘3 4
{
’’ 
bool
““ 
flag
““ 
=
““ 
_info
““ !
.
““! "
AddAlarmInfo
““" .
(
““. /
alarm
““/ 4
)
““4 5
;
““5 6
List
”” 
<
”” 
	EmailInfo
”” 
>
”” 
email
””  %
=
””& '
_info
””( -
.
””- .
GetPlantName
””. :
(
””: ;
alarm
””; @
)
””@ A
;
””A B
if
•• 
(
•• 
email
•• 
.
•• 
Count
•• 
>
••  !
$num
••" #
)
••# $
{
–– 
_info
—— 
.
—— #
SendEmailNotification
—— /
(
——/ 0
email
——0 5
,
——5 6
alarm
——7 <
.
——< =
Value
——= B
,
——B C
alarm
——C H
.
——H I
	TimeStamp
——I R
)
——R S
;
——S T
return
˜˜ 
Created
˜˜ "
(
˜˜" #
$str
˜˜# ,
,
˜˜, -
alarm
˜˜. 3
)
˜˜3 4
;
˜˜4 5
}
™™ 
else
šš 
return
œœ 

BadRequest
œœ %
(
œœ% &
$str
œœ& /
)
œœ/ 0
;
œœ0 1
}
 
return
 

BadRequest
 
(
 
$str
 :
)
: ;
;
; <
}
   	
[
¢¢ 	
HttpPost
¢¢	 
]
¢¢ 
[
££ 	
Route
££	 
(
££ 
$str
££ 7
)
££7 8
]
££8 9
public
¤¤ 
IHttpActionResult
¤¤  
SaveXmlDocument
¤¤! 0
(
¤¤0 1 
HttpRequestMessage
¤¤1 C
request
¤¤D K
)
¤¤K L
{
¥¥ 	
string
¦¦ 
incomingText
¦¦ 
=
¦¦  !
request
¦¦" )
.
¦¦) *
Content
¦¦* 1
.
¦¦1 2
ReadAsStringAsync
¦¦2 C
(
¦¦C D
)
¦¦D E
.
¦¦E F
Result
¦¦F L
;
¦¦L M
XElement
§§ 
incomingXml
§§  
=
§§! "
XElement
§§# +
.
§§+ ,
Parse
§§, 1
(
§§1 2
incomingText
§§2 >
)
§§> ?
;
§§? @
var
¨¨ 
user
¨¨ 
=
¨¨ 
incomingXml
¨¨ "
.
¨¨" #
Elements
¨¨# +
(
¨¨+ ,
$str
¨¨, @
)
¨¨@ A
.
¨¨A B

Attributes
¨¨B L
(
¨¨L M
$str
¨¨M S
)
¨¨S T
.
¨¨T U
Select
¨¨U [
(
¨¨[ \
i
¨¨\ ]
=>
¨¨] _
i
¨¨_ `
.
¨¨` a
Value
¨¨a f
)
¨¨f g
.
¨¨g h
FirstOrDefault
¨¨h v
(
¨¨v w
)
¨¨w x
;
¨¨x y
var
©© 
datetime
©© 
=
©© 
incomingXml
©© &
.
©©& '
Elements
©©' /
(
©©/ 0
$str
©©0 D
)
©©D E
.
©©E F

Attributes
©©F P
(
©©P Q
$str
©©Q [
)
©©[ \
.
©©\ ]
Select
©©] c
(
©©c d
i
©©d e
=>
©©e g
i
©©g h
.
©©h i
Value
©©i n
)
©©n o
.
©©o p
FirstOrDefault
©©p ~
(
©©~ 
)©© €
;©©€ 
var
ªª 
plantId
ªª 
=
ªª 
incomingXml
ªª %
.
ªª% &
Elements
ªª& .
(
ªª. /
$str
ªª/ C
)
ªªC D
.
ªªD E
Elements
ªªE M
(
ªªM N
$str
ªªN Y
)
ªªY Z
.
ªªZ [
Elements
ªª[ c
(
ªªc d
$str
ªªd k
)
ªªk l
.
ªªl m

Attributes
«« 
(
«« 
$str
«« $
)
««$ %
.
««% &
Select
««& ,
(
««, -
i
««- .
=>
««/ 1
i
««2 3
.
««3 4
Value
««4 9
)
««9 :
.
««: ;
FirstOrDefault
««; I
(
««I J
)
««J K
;
««K L
if
­­ 
(
­­ 
_info
­­ 
.
­­ 
SaveXmlDocument
­­ %
(
­­% &
incomingXml
­­& 1
,
­­1 2
user
­­3 7
,
­­7 8
datetime
­­9 A
,
­­A B
plantId
­­C J
)
­­J K
)
­­K L
return
¯¯ 
Ok
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
else
°° 
return
±± 

BadRequest
±± "
(
±±" #
$str
±±# :
)
±±: ;
;
±±; <
}
²² 	
[
´´ 	
HttpGet
´´	 
]
´´ 
[
µµ 	
Route
µµ	 
(
µµ 
$str
µµ D
)
µµD E
]
µµE F
public
¶¶ 
IHttpActionResult
¶¶  
GetXmlDocument
¶¶! /
(
¶¶/ 0
int
¶¶0 3
plantid
¶¶4 ;
)
¶¶; <
{
·· 	
string
¸¸ 
xmldocs
¸¸ 
=
¸¸ 
_info
¸¸ "
.
¸¸" #
getXmlDocument
¸¸# 1
(
¸¸1 2
plantid
¸¸2 9
)
¸¸9 :
;
¸¸: ;
if
¹¹ 
(
¹¹ 
!
¹¹ 
string
¹¹ 
.
¹¹ 
IsNullOrEmpty
¹¹ %
(
¹¹% &
xmldocs
¹¹& -
)
¹¹- .
)
¹¹. /
return
ºº 
Ok
ºº 
(
ºº 
xmldocs
ºº !
)
ºº! "
;
ºº" #
else
»» 
return
¼¼ 

BadRequest
¼¼ !
(
¼¼! "
$str
¼¼" <
)
¼¼< =
;
¼¼= >
}
¾¾ 	
[
ÀÀ 	
HttpPost
ÀÀ	 
]
ÀÀ 
[
ÁÁ 	
Route
ÁÁ	 
(
ÁÁ 
$str
ÁÁ 4
)
ÁÁ4 5
]
ÁÁ5 6
public
ÂÂ 
IHttpActionResult
ÂÂ  
SaveLastSync
ÂÂ! -
(
ÂÂ- .
[
ÂÂ. /
FromBody
ÂÂ/ 7
]
ÂÂ7 8
Sync
ÂÂ9 =
sync
ÂÂ> B
)
ÂÂB C
{
ÃÃ 	
int
ÄÄ 
plantId
ÄÄ 
;
ÄÄ 
DateTime
ÅÅ 
lastSync
ÅÅ 
;
ÅÅ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
int
ÆÆ 
.
ÆÆ 
TryParse
ÆÆ 
(
ÆÆ 
sync
ÆÆ "
.
ÆÆ" #
PlantID
ÆÆ# *
,
ÆÆ* +
out
ÆÆ, /
plantId
ÆÆ0 7
)
ÆÆ7 8
||
ÆÆ9 ;
!
ÆÆ< =
DateTime
ÆÆ= E
.
ÆÆE F
TryParse
ÆÆF N
(
ÆÆN O
sync
ÆÆO S
.
ÆÆS T
Date
ÆÆT X
,
ÆÆX Y
out
ÆÆZ ]
lastSync
ÆÆ^ f
)
ÆÆf g
)
ÆÆg h
return
ÇÇ 

BadRequest
ÇÇ !
(
ÇÇ! "
$str
ÇÇ" :
)
ÇÇ: ;
;
ÇÇ; <
if
ÈÈ 
(
ÈÈ 
_info
ÈÈ 
.
ÈÈ 
UpdateLastSync
ÈÈ $
(
ÈÈ$ %
plantId
ÈÈ% ,
,
ÈÈ, -
lastSync
ÈÈ. 6
)
ÈÈ6 7
)
ÈÈ7 8
return
ÉÉ 
Ok
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
else
ÊÊ 
return
ËË 

BadRequest
ËË !
(
ËË! "
$str
ËË" 7
)
ËË7 8
;
ËË8 9
}
ÌÌ 	
}
ÍÍ 
}ÎÎ ©h
‘D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Controllers\PlantSetUPController.cs
	namespace 	!
EMMSClientApplication
 
.  
Controllers  +
{ 
public 

class  
PlantSetUPController %
:& '

Controller( 2
{ 
private 
IPlantSetUpManager "

plantSetup# -
;- .
public  
PlantSetUPController #
(# $
IPlantSetUpManager$ 6

plantSetup7 A
)A B
{ 	
this 
. 

plantSetup 
= 

plantSetup (
;( )
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
ProductionBudgeted .
(. /
ProductionBudget/ ?

production@ J
)J K
{ 	
return 
View 
( 
) 
; 
} 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
ActionResult%% 
ConsumptionActual%% -
(%%- .
)%%. /
{&& 	
try'' 
{(( 
return** 
View** 
(** 
)** 
;** 
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
return.. 
null.. 
;.. 
}// 
}00 	
[66 	
HttpPost66	 
]66 
public77 

JsonResult77  
GetConsumptionActual77 .
(77. /
string77/ 5
year776 :
,77: ;
string77< B
wagesID77C J
)77J K
{88 	
try99 
{:: 
List;; 
<;; 
AnnualDetails;; "
>;;" #
consumptionTotal;;$ 4
=;;5 6

plantSetup;;7 A
.;;A B 
GetConsumptionActual;;B V
(;;V W
Convert;;W ^
.;;^ _
ToInt32;;_ f
(;;f g
year;;g k
);;k l
,;;l m
Convert;;n u
.;;u v
ToInt32;;v }
(;;} ~
wagesID	;;~ …
)
;;… †
,
;;† ‡
$str
;;ˆ •
)
;;• –
;
;;– —
List<< 
<<< 
AnnualDetails<< "
><<" #

costActual<<$ .
=<</ 0

plantSetup<<1 ;
.<<; < 
GetConsumptionActual<<< P
(<<P Q
Convert<<Q X
.<<X Y
ToInt32<<Y `
(<<` a
year<<a e
)<<e f
,<<f g
Convert<<h o
.<<o p
ToInt32<<p w
(<<w x
wagesID<<x 
)	<< €
,
<<€ 
$str
<<‚ ˆ
)
<<ˆ ‰
;
<<‰ Š
var== 
consumptionAndCost== &
===' (
new==) ,
{==- .
consumptionTotal==/ ?
===@ A
consumptionTotal==B R
,==R S

costActual==T ^
===_ `

costActual==a k
}==l m
;==m n
return>> 
Json>> 
(>> 
consumptionAndCost>> .
,>>. /
JsonRequestBehavior>>0 C
.>>C D
AllowGet>>D L
)>>L M
;>>M N
}?? 
catch@@ 
(@@ 
	Exception@@ 
ex@@ 
)@@  
{AA 
returnBB 
nullBB 
;BB 
}CC 
}DD 	
[KK 	
HttpPostKK	 
]KK 
publicLL 

JsonResultLL 
GetCostActualLL '
(LL' (
stringLL( .
yearLL/ 3
,LL3 4
stringLL5 ;
wagesIDLL< C
)LLC D
{MM 	
tryNN 
{OO 
ListPP 
<PP 
AnnualDetailsPP "
>PP" #

costActualPP$ .
=PP/ 0

plantSetupPP1 ;
.PP; < 
GetConsumptionActualPP< P
(PPP Q
ConvertPPQ X
.PPX Y
ToInt32PPY `
(PP` a
yearPPa e
)PPe f
,PPf g
ConvertPPh o
.PPo p
ToInt32PPp w
(PPw x
wagesIDPPx 
)	PP €
,
PP€ 
$str
PP‚ ˆ
)
PPˆ ‰
;
PP‰ Š
returnQQ 
JsonQQ 
(QQ 

costActualQQ &
,QQ& '
JsonRequestBehaviorQQ( ;
.QQ; <
AllowGetQQ< D
)QQD E
;QQE F
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
returnUU 
nullUU 
;UU 
}VV 
}WW 	
[XX 	
HttpPostXX	 
]XX 
publicYY 

JsonResultYY 
GetSolidWasteYY '
(YY' (
stringYY( .
yearYY/ 3
)YY3 4
{ZZ 	
try[[ 
{\\ 
List]] 
<]] 
AnnualDetails]] "
>]]" #

solidwaste]]$ .
=]]/ 0

plantSetup]]1 ;
.]]; <
GetSolidWaste]]< I
(]]I J
Convert]]J Q
.]]Q R
ToInt32]]R Y
(]]Y Z
year]]Z ^
)]]^ _
,]]_ `
$str]]a m
)]]m n
;]]n o
List^^ 
<^^ 
AnnualDetails^^ "
>^^" #
solidwastecost^^$ 2
=^^3 4

plantSetup^^5 ?
.^^? @
GetSolidWaste^^@ M
(^^M N
Convert^^N U
.^^U V
ToInt32^^V ]
(^^] ^
year^^^ b
)^^b c
,^^c d
$str^^e u
)^^u v
;^^v w
var__ 
solidwastevalCost__ %
=__& '
new__( +
{__, -

solidwaste__. 8
=__9 :

solidwaste__; E
,__E F
solidwastecost__G U
=__V W
solidwastecost__X f
}__g h
;__h i
return`` 
Json`` 
(`` 
solidwastevalCost`` -
,``- .
JsonRequestBehavior``/ B
.``B C
AllowGet``C K
)``K L
;``L M
}aa 
catchbb 
(bb 
	Exceptionbb 
exbb 
)bb  
{cc 
returndd 
nulldd 
;dd 
}ee 
}ff 	
[mm 	
HttpPostmm	 
]mm 
publicnn 

JsonResultnn 
GetProductionActualnn -
(nn- .
stringnn. 4
yearnn5 9
)nn9 :
{oo 	
trypp 
{qq 
Listrr 
<rr 
AnnualDetailsrr "
>rr" #
ProdcostActualrr$ 2
=rr3 4

plantSetuprr5 ?
.rr? @
GetProductionActualrr@ S
(rrS T
ConvertrrT [
.rr[ \
ToInt32rr\ c
(rrc d
yearrrd h
)rrh i
,rri j
$str	rrk €
)
rr€ 
;
rr ‚
returnss 
Jsonss 
(ss 
ProdcostActualss *
,ss* +
JsonRequestBehaviorss, ?
.ss? @
AllowGetss@ H
)ssH I
;ssI J
}tt 
catchuu 
(uu 
	Exceptionuu 
exuu 
)uu  
{vv 
returnww 
nullww 
;ww 
}xx 
}yy 	
[~~ 	
HttpGet~~	 
]~~ 
public 

JsonResult 
GetDepartmentNames ,
(, -
)- .
{
€€ 	
try
 
{
‚‚ 
List
ƒƒ 
<
ƒƒ 
Details
ƒƒ 
>
ƒƒ 
depart
ƒƒ $
=
ƒƒ% &

plantSetup
ƒƒ' 1
.
ƒƒ1 2
GetDepartment
ƒƒ2 ?
(
ƒƒ? @
)
ƒƒ@ A
;
ƒƒA B
return
„„ 
Json
„„ 
(
„„ 
depart
„„ "
,
„„" #!
JsonRequestBehavior
„„$ 7
.
„„7 8
AllowGet
„„8 @
)
„„@ A
;
„„A B
}
…… 
catch
†† 
(
†† 
	Exception
†† 
ex
†† 
)
††  
{
‡‡ 
return
ˆˆ 
null
ˆˆ 
;
ˆˆ 
}
‰‰ 
}
ŠŠ 	
[
 	
HttpPost
	 
]
 
public
 
int
 
AddConsumtionData
 $
(
$ %
List
% )
<
) *
AnnualDetails
* 7
>
7 8
Consumption
9 D
,
D E
List
F J
<
J K
AnnualDetails
K X
>
X Y
Cost
Z ^
,
^ _
string
` f
year
g k
,
k l
int
m p
wages
q v
)
v w
{
‘‘ 	
if
““ 
(
““ 
Consumption
““ 
!=
““ 
null
““ #
)
““# $
{
”” 
if
•• 
(
•• 

plantSetup
•• 
.
•• "
AddConsumptionActual
•• 3
(
••3 4
Consumption
••4 ?
,
••? @
year
••A E
,
••E F
wages
••G L
,
••L M
$str
••N d
)
••d e
&&
••f h

plantSetup
••i s
.
••s t#
AddConsumptionActual••t ˆ
(••ˆ ‰
Cost••‰ 
,•• 
year•• “
,••“ ”
wages••• š
,••š ›
$str••œ ¶
)••¶ ·
)••· ¸
return
–– 
$num
–– 
;
–– 
else
—— 
return
˜˜ 
$num
˜˜ 
;
˜˜ 
}
™™ 
return
šš 
$num
šš 
;
šš 
}
›› 	
[
¤¤ 	
HttpPost
¤¤	 
]
¤¤ 
public
¥¥ 
int
¥¥ %
AddactualSolidwasteData
¥¥ *
(
¥¥* +
List
¥¥+ /
<
¥¥/ 0
AnnualDetails
¥¥0 =
>
¥¥= >
Consumption
¥¥? J
,
¥¥J K
List
¥¥L P
<
¥¥P Q
AnnualDetails
¥¥Q ^
>
¥¥^ _
Cost
¥¥` d
,
¥¥d e
string
¥¥f l
year
¥¥m q
)
¥¥q r
{
¦¦ 	
if
¨¨ 
(
¨¨ 
Consumption
¨¨ 
!=
¨¨ 
null
¨¨ #
)
¨¨# $
{
©© 
if
ªª 
(
ªª 

plantSetup
ªª 
.
ªª "
AddCSolidwasteActual
ªª 3
(
ªª3 4
Consumption
ªª4 ?
,
ªª? @
year
ªªA E
,
ªªE F
$str
ªªG ]
)
ªª] ^
&&
¬¬ 

plantSetup
¬¬ "
.
¬¬" #"
AddCSolidwasteActual
¬¬# 7
(
¬¬7 8
Cost
¬¬8 <
,
¬¬< =
year
¬¬> B
,
¬¬B C
$str
¬¬D \
)
¬¬\ ]
)
¬¬] ^
return
­­ 
$num
­­ 
;
­­ 
else
®® 
return
¯¯ 
$num
¯¯ 
;
¯¯ 
}
°° 
return
±± 
$num
±± 
;
±± 
}
²² 	
[
´´ 	
HttpPost
´´	 
]
´´ 
public
µµ 
int
µµ !
AddProductionActual
µµ &
(
µµ& '
List
µµ' +
<
µµ+ ,
AnnualDetails
µµ, 9
>
µµ9 :

production
µµ; E
,
µµE F
string
µµG M
year
µµN R
)
µµR S
{
¶¶ 	
if
¸¸ 
(
¸¸ 

production
¸¸ 
!=
¸¸ 
null
¸¸ "
)
¸¸" #
{
¹¹ 
if
ºº 
(
ºº 

plantSetup
ºº 
.
ºº !
AddProductionActual
ºº 2
(
ºº2 3

production
ºº3 =
,
ºº= >
year
ºº? C
,
ººC D
$str
ººE Z
)
ººZ [
)
ºº[ \
return
¼¼ 
$num
¼¼ 
;
¼¼ 
else
½½ 
return
¿¿ 
$num
¿¿ 
;
¿¿ 
}
ÀÀ 
return
ÁÁ 
$num
ÁÁ 
;
ÁÁ 
}
ÂÂ 	
	protected
ÄÄ 
override
ÄÄ 
void
ÄÄ 

Initialize
ÄÄ  *
(
ÄÄ* +
RequestContext
ÄÄ+ 9
requestContext
ÄÄ: H
)
ÄÄH I
{
ÅÅ 	
if
ÆÆ 
(
ÆÆ 

plantSetup
ÆÆ 
!=
ÆÆ 
null
ÆÆ "
)
ÆÆ" #
{
ÇÇ 

plantSetup
ÈÈ 
.
ÈÈ 
PlantId
ÈÈ "
=
ÈÈ# $
Convert
ÈÈ% ,
.
ÈÈ, -
ToInt32
ÈÈ- 4
(
ÈÈ4 5
requestContext
ÈÈ5 C
.
ÈÈC D
HttpContext
ÈÈD O
.
ÈÈO P
Session
ÈÈP W
[
ÈÈW X
$str
ÈÈX a
]
ÈÈa b
)
ÈÈb c
;
ÈÈc d

plantSetup
ÉÉ 
.
ÉÉ 
UserName
ÉÉ #
=
ÉÉ$ %
requestContext
ÉÉ& 4
.
ÉÉ4 5
HttpContext
ÉÉ5 @
.
ÉÉ@ A
Session
ÉÉA H
[
ÉÉH I
$str
ÉÉI S
]
ÉÉS T
.
ÉÉT U
ToString
ÉÉU ]
(
ÉÉ] ^
)
ÉÉ^ _
;
ÉÉ_ `
}
ËË 
base
ÌÌ 
.
ÌÌ 

Initialize
ÌÌ 
(
ÌÌ 
requestContext
ÌÌ *
)
ÌÌ* +
;
ÌÌ+ ,
}
ÍÍ 	
}
ĞĞ 
}ÑÑ Ê«	
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\EMMSDAL\PlantInfo.cs
	namespace 	!
EMMSClientApplication
 
.  
EMMSDAL  '
{ 
public 

class 
	PlantInfo 
{ 
string   
_connectionstring    
=  ! " 
ConfigurationManager  # 7
.  7 8
ConnectionStrings  8 I
[  I J
$str  J R
]  R S
.  S T
ConnectionString  T d
;  d e
public&& 
List&& 
<&& 
PlantInfoModel&& "
>&&" #
RetrievePlantInfo&&$ 5
(&&5 6
)&&6 7
{'' 	
List)) 
<)) 
PlantInfoModel)) 
>))  
plantInfoList))! .
=))/ 0
new))1 4
List))5 9
<))9 :
PlantInfoModel)): H
>))H I
())I J
)))J K
;))K L
try** 
{++ 
using,, 
(,, 
SqlConnection,, $
conn,,% )
=,,* +
new,,, /
SqlConnection,,0 =
(,,= >
_connectionstring,,> O
),,O P
),,P Q
{-- 
conn.. 
... 
Open.. 
(.. 
).. 
;..  

SqlCommand// 
command// &
=//' (
new//) ,

SqlCommand//- 7
(//7 8
$str//8 ^
,//^ _
conn//` d
)//d e
;//e f
command00 
.00 
CommandType00 '
=00( )
CommandType00* 5
.005 6
Text006 :
;00: ;
using11 
(11 
SqlDataReader11 (
reader11) /
=110 1
command112 9
.119 :
ExecuteReader11: G
(11G H
)11H I
)11I J
{22 
if33 
(33 
reader33 "
.33" #
HasRows33# *
)33* +
{44 
while55 !
(55" #
reader55# )
.55) *
Read55* .
(55. /
)55/ 0
)550 1
{66 
plantInfoList77  -
.77- .
Add77. 1
(771 2
new88$ '
PlantInfoModel88( 6
{99$ %
PlantID::( /
=::0 1
Convert::2 9
.::9 :
ToInt32::: A
(::A B
reader::B H
[::H I
$str::I M
]::M N
)::N O
,::O P
	PlantName;;( 1
=;;2 3
reader;;4 :
[;;: ;
$str;;; G
];;G H
.;;H I
ToString;;I Q
(;;Q R
);;R S
,;;S T
	Longitude<<( 1
=<<2 3
reader<<4 :
[<<: ;
$str<<; D
]<<D E
.<<E F
ToString<<F N
(<<N O
)<<O P
,<<P Q
	Lattitude==( 1
===2 3
reader==4 :
[==: ;
$str==; D
]==D E
.==E F
ToString==F N
(==N O
)==O P
,==P Q
Location>>( 0
=>>1 2
reader>>3 9
[>>9 :
$str>>: C
]>>C D
.>>D E
ToString>>E M
(>>M N
)>>N O
,>>O P
Active??( .
=??/ 0
reader??1 7
[??7 8
$str??8 @
]??@ A
.??A B
ToString??B J
(??J K
)??K L
,??L M
	CreatedDt@@( 1
=@@2 3
Convert@@4 ;
.@@; <

ToDateTime@@< F
(@@F G
reader@@G M
[@@M N
$str@@N Z
]@@Z [
)@@[ \
,@@\ ]
	CreatedByAA( 1
=AA2 3
readerAA4 :
[AA: ;
$strAA; G
]AAG H
.AAH I
ToStringAAI Q
(AAQ R
)AAR S
,AAS T

ModifiedbyBB( 2
=BB3 4
readerBB5 ;
[BB; <
$strBB< I
]BBI J
.BBJ K
ToStringBBK S
(BBS T
)BBT U
,BBU V

ModifiedDtCC( 2
=CC3 4
!CC5 6
stringCC6 <
.CC< =
IsNullOrEmptyCC= J
(CCJ K
readerCCK Q
[CCQ R
$strCCR _
]CC_ `
.CC` a
ToStringCCa i
(CCi j
)CCj k
)CCk l
?CCm n
ConvertCCo v
.CCv w

ToDateTime	CCw 
(
CC ‚
reader
CC‚ ˆ
[
CCˆ ‰
$str
CC‰ –
]
CC– —
)
CC— ˜
:
CC™ š
DateTime
CC› £
.
CC£ ¤
Now
CC¤ §
}DD$ %
)EE$ %
;EE% &
}FF 
}HH 
}II 
}LL 
}MM 
catchNN 
(NN 
	ExceptionNN 
exNN 
)NN  
{OO 
LoggerPP 
.PP 
LogPP 
(PP 
exPP 
.PP 
ToStringPP &
(PP& '
)PP' (
)PP( )
;PP) *
}QQ 
returnRR 
plantInfoListRR  
;RR  !
}SS 	
publicYY 
PlantInfoModelYY #
retrieveSinglePlantInfoYY 5
(YY5 6
stringYY6 <
idYY= ?
)YY? @
{ZZ 	
PlantInfoModel[[ 
_plant[[ !
=[[" #
new[[$ '
PlantInfoModel[[( 6
([[6 7
)[[7 8
;[[8 9
try\\ 
{]] 
using^^ 
(^^ 
SqlConnection^^ $
conn^^% )
=^^* +
new^^, /
SqlConnection^^0 =
(^^= >
_connectionstring^^> O
)^^O P
)^^P Q
{__ 
conn`` 
.`` 
Open`` 
(`` 
)`` 
;``  

SqlCommandaa 
commandaa &
=aa' (
newaa) ,

SqlCommandaa- 7
(aa7 8
$straa8 Q
,aaQ R
connaaS W
)aaW X
;aaX Y
commandbb 
.bb 
CommandTypebb '
=bb( )
CommandTypebb* 5
.bb5 6
StoredProcedurebb6 E
;bbE F
commandcc 
.cc 

Parameterscc &
.cc& '
AddWithValuecc' 3
(cc3 4
$strcc4 >
,cc> ?
idcc@ B
)ccB C
;ccC D
usingdd 
(dd 
SqlDataReaderdd (
readerdd) /
=dd0 1
commanddd2 9
.dd9 :
ExecuteReaderdd: G
(ddG H
)ddH I
)ddI J
{ee 
ifff 
(ff 
readerff "
.ff" #
Readff# '
(ff' (
)ff( )
)ff) *
{gg 
_planthh "
=hh# $
newhh% (
PlantInfoModelhh) 7
{ii 
	PlantNamejj  )
=jj* +
readerjj, 2
[jj2 3
$strjj3 ?
]jj? @
.jj@ A
ToStringjjA I
(jjI J
)jjJ K
,jjK L
ZoneNamekk  (
=kk) *
stringkk+ 1
.kk1 2
IsNullOrEmptykk2 ?
(kk? @
readerkk@ F
[kkF G
$strkkG Q
]kkQ R
.kkR S
ToStringkkS [
(kk[ \
)kk\ ]
)kk] ^
?kk_ `
$strkka c
:kkd e
readerkkf l
[kkl m
$strkkm w
]kkw x
.kkx y
ToString	kky 
(
kk ‚
)
kk‚ ƒ
,
kkƒ „
	Longitudell  )
=ll* +
stringll, 2
.ll2 3
IsNullOrEmptyll3 @
(ll@ A
readerllA G
[llG H
$strllH Q
]llQ R
.llR S
ToStringllS [
(ll[ \
)ll\ ]
)ll] ^
?ll_ `
$strlla c
:lld e
readerllf l
[lll m
$strllm v
]llv w
.llw x
ToString	llx €
(
ll€ 
)
ll ‚
,
ll‚ ƒ
	Lattitudemm  )
=mm* +
stringmm, 2
.mm2 3
IsNullOrEmptymm3 @
(mm@ A
readermmA G
[mmG H
$strmmH Q
]mmQ R
.mmR S
ToStringmmS [
(mm[ \
)mm\ ]
)mm] ^
?mm_ `
$strmma c
:mmd e
readermmf l
[mml m
$strmmm v
]mmv w
.mmw x
ToString	mmx €
(
mm€ 
)
mm ‚
,
mm‚ ƒ
Locationnn  (
=nn) *
stringnn+ 1
.nn1 2
IsNullOrEmptynn2 ?
(nn? @
readernn@ F
[nnF G
$strnnG P
]nnP Q
.nnQ R
ToStringnnR Z
(nnZ [
)nn[ \
)nn\ ]
?nn^ _
$strnn` b
:nnc d
readernne k
[nnk l
$strnnl u
]nnu v
.nnv w
ToStringnnw 
(	nn €
)
nn€ 
,
nn ‚
Countryoo  '
=oo( )
readeroo* 0
[oo0 1
$stroo1 >
]oo> ?
.oo? @
ToStringoo@ H
(ooH I
)ooI J
,ooJ K
Activepp  &
=pp' (
readerpp) /
[pp/ 0
$strpp0 8
]pp8 9
.pp9 :
ToStringpp: B
(ppB C
)ppC D
}qq 
;qq 
}rr 
}ss 
}tt 
}uu 
catchvv 
(vv 
	Exceptionvv 
exvv 
)vv  
{ww 
Loggerxx 
.xx 
Logxx 
(xx 
exxx 
.xx 
ToStringxx &
(xx& '
)xx' (
)xx( )
;xx) *
}yy 
return{{ 
_plant{{ 
;{{ 
}|| 	
public
‚‚ 
int
‚‚ 
AddPlantInfo
‚‚ 
(
‚‚  
PlantInfoModel
‚‚  .
info
‚‚/ 3
)
‚‚3 4
{
ƒƒ 	
try
…… 
{
†† 
using
ˆˆ 
(
ˆˆ 
SqlConnection
ˆˆ $
conn
ˆˆ% )
=
ˆˆ* +
new
ˆˆ, /
SqlConnection
ˆˆ0 =
(
ˆˆ= >
_connectionstring
ˆˆ> O
)
ˆˆO P
)
ˆˆP Q
{
‰‰ 
conn
ŠŠ 
.
ŠŠ 
Open
ŠŠ 
(
ŠŠ 
)
ŠŠ 
;
ŠŠ  
using
ŒŒ 
(
ŒŒ 

SqlCommand
ŒŒ %
command
ŒŒ& -
=
ŒŒ. /
new
ŒŒ0 3

SqlCommand
ŒŒ4 >
(
ŒŒ> ?
$str
ŒŒ? P
,
ŒŒP Q
conn
ŒŒR V
)
ŒŒV W
)
ŒŒW X
{
 
command
 
.
  
CommandType
  +
=
, -
CommandType
. 9
.
9 :
StoredProcedure
: I
;
I J
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 E
,
E F
info
G K
.
K L
	PlantName
L U
)
U V
;
V W
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 D
,
D E
info
F J
.
J K
ZoneName
K S
)
S T
;
T U
command
‘‘ 
.
‘‘  

Parameters
‘‘  *
.
‘‘* +
AddWithValue
‘‘+ 7
(
‘‘7 8
$str
‘‘8 B
,
‘‘B C
info
‘‘D H
.
‘‘H I
	Longitude
‘‘I R
)
‘‘R S
;
‘‘S T
command
’’ 
.
’’  

Parameters
’’  *
.
’’* +
AddWithValue
’’+ 7
(
’’7 8
$str
’’8 B
,
’’B C
info
’’D H
.
’’H I
	Lattitude
’’I R
)
’’R S
;
’’S T
command
““ 
.
““  

Parameters
““  *
.
““* +
AddWithValue
““+ 7
(
““7 8
$str
““8 B
,
““B C
info
““D H
.
““H I
Location
““I Q
)
““Q R
;
““R S
command
”” 
.
””  

Parameters
””  *
.
””* +
AddWithValue
””+ 7
(
””7 8
$str
””8 G
,
””G H
info
””I M
.
””M N
Country
””N U
)
””U V
;
””V W
command
•• 
.
••  

Parameters
••  *
.
••* +
AddWithValue
••+ 7
(
••7 8
$str
••8 A
,
••A B
$str
••C F
)
••F G
;
••G H
command
–– 
.
––  

Parameters
––  *
.
––* +
AddWithValue
––+ 7
(
––7 8
$str
––8 E
,
––E F
DateTime
––G O
.
––O P
Now
––P S
)
––S T
;
––T U
command
—— 
.
——  

Parameters
——  *
.
——* +
AddWithValue
——+ 7
(
——7 8
$str
——8 E
,
——E F
info
——G K
.
——K L
	CreatedBy
——L U
)
——U V
;
——V W
command
˜˜ 
.
˜˜  

Parameters
˜˜  *
.
˜˜* +
AddWithValue
˜˜+ 7
(
˜˜7 8
$str
˜˜8 F
,
˜˜F G
info
˜˜H L
.
˜˜L M

Modifiedby
˜˜M W
)
˜˜W X
;
˜˜X Y
command
™™ 
.
™™  

Parameters
™™  *
.
™™* +
AddWithValue
™™+ 7
(
™™7 8
$str
™™8 F
,
™™F G
DateTime
™™H P
.
™™P Q
Now
™™Q T
)
™™T U
;
™™U V
command
šš 
.
šš  

Parameters
šš  *
.
šš* +
Add
šš+ .
(
šš. /
$str
šš/ 4
,
šš4 5
	SqlDbType
šš6 ?
.
šš? @
Int
šš@ C
)
ššC D
.
ššD E
	Direction
ššE N
=
ššO P 
ParameterDirection
ššQ c
.
ššc d
Output
ššd j
;
ššj k
command
›› 
.
››  
ExecuteNonQuery
››  /
(
››/ 0
)
››0 1
;
››1 2
string
œœ 
str
œœ "
=
œœ# $
command
œœ% ,
.
œœ, -

Parameters
œœ- 7
[
œœ7 8
$str
œœ8 =
]
œœ= >
.
œœ> ?
Value
œœ? D
.
œœD E
ToString
œœE M
(
œœM N
)
œœN O
;
œœO P
int
 
i
 
;
 
if
 
(
 
!
 
string
 #
.
# $
IsNullOrEmpty
$ 1
(
1 2
str
2 5
)
5 6
&&
7 9
int
: =
.
= >
TryParse
> F
(
F G
str
G J
,
J K
out
L O
i
P Q
)
Q R
)
R S
return
ŸŸ "
i
ŸŸ# $
;
ŸŸ$ %
}
   
}
¡¡ 
}
¢¢ 
catch
¤¤ 
(
¤¤ 
	Exception
¤¤ 
ex
¤¤ 
)
¤¤  
{
¥¥ 
Logger
¦¦ 
.
¦¦ 
Log
¦¦ 
(
¦¦ 
ex
¦¦ 
.
¦¦ 
ToString
¦¦ &
(
¦¦& '
)
¦¦' (
)
¦¦( )
;
¦¦) *
return
§§ 
$num
§§ 
;
§§ 
}
¨¨ 
return
©© 
$num
©© 
;
©© 
}
ªª 	
public
±± 
bool
±± 
UpdatePlantInfo
±± #
(
±±# $
int
±±$ '
?
±±' (
id
±±) +
,
±±+ ,
PlantInfoModel
±±- ;
info
±±< @
)
±±@ A
{
²² 	
try
³³ 
{
´´ 
using
µµ 
(
µµ 
SqlConnection
µµ $
conn
µµ% )
=
µµ* +
new
µµ, /
SqlConnection
µµ0 =
(
µµ= >
_connectionstring
µµ> O
)
µµO P
)
µµP Q
{
¶¶ 
conn
·· 
.
·· 
Open
·· 
(
·· 
)
·· 
;
··  
using
¹¹ 
(
¹¹ 

SqlCommand
¹¹ %
command
¹¹& -
=
¹¹. /
new
¹¹0 3

SqlCommand
¹¹4 >
(
¹¹> ?
$str
¹¹? P
,
¹¹P Q
conn
¹¹R V
)
¹¹V W
)
¹¹W X
{
ºº 
command
»» 
.
»»  
CommandType
»»  +
=
»», -
CommandType
»». 9
.
»»9 :
StoredProcedure
»»: I
;
»»I J
command
¼¼ 
.
¼¼  

Parameters
¼¼  *
.
¼¼* +
AddWithValue
¼¼+ 7
(
¼¼7 8
$str
¼¼8 =
,
¼¼= >
id
¼¼? A
)
¼¼A B
;
¼¼B C
command
½½ 
.
½½  

Parameters
½½  *
.
½½* +
AddWithValue
½½+ 7
(
½½7 8
$str
½½8 E
,
½½E F
info
½½G K
.
½½K L
	PlantName
½½L U
)
½½U V
;
½½V W
command
¾¾ 
.
¾¾  

Parameters
¾¾  *
.
¾¾* +
AddWithValue
¾¾+ 7
(
¾¾7 8
$str
¾¾8 D
,
¾¾D E
info
¾¾F J
.
¾¾J K
ZoneName
¾¾K S
)
¾¾S T
;
¾¾T U
command
¿¿ 
.
¿¿  

Parameters
¿¿  *
.
¿¿* +
AddWithValue
¿¿+ 7
(
¿¿7 8
$str
¿¿8 B
,
¿¿B C
info
¿¿D H
.
¿¿H I
	Longitude
¿¿I R
)
¿¿R S
;
¿¿S T
command
ÀÀ 
.
ÀÀ  

Parameters
ÀÀ  *
.
ÀÀ* +
AddWithValue
ÀÀ+ 7
(
ÀÀ7 8
$str
ÀÀ8 B
,
ÀÀB C
info
ÀÀD H
.
ÀÀH I
	Lattitude
ÀÀI R
)
ÀÀR S
;
ÀÀS T
command
ÁÁ 
.
ÁÁ  

Parameters
ÁÁ  *
.
ÁÁ* +
AddWithValue
ÁÁ+ 7
(
ÁÁ7 8
$str
ÁÁ8 B
,
ÁÁB C
info
ÁÁD H
.
ÁÁH I
Location
ÁÁI Q
)
ÁÁQ R
;
ÁÁR S
command
ÂÂ 
.
ÂÂ  

Parameters
ÂÂ  *
.
ÂÂ* +
AddWithValue
ÂÂ+ 7
(
ÂÂ7 8
$str
ÂÂ8 G
,
ÂÂG H
info
ÂÂI M
.
ÂÂM N
Country
ÂÂN U
)
ÂÂU V
;
ÂÂV W
command
ÃÃ 
.
ÃÃ  

Parameters
ÃÃ  *
.
ÃÃ* +
AddWithValue
ÃÃ+ 7
(
ÃÃ7 8
$str
ÃÃ8 A
,
ÃÃA B
$str
ÃÃC F
)
ÃÃF G
;
ÃÃG H
command
ÄÄ 
.
ÄÄ  

Parameters
ÄÄ  *
.
ÄÄ* +
AddWithValue
ÄÄ+ 7
(
ÄÄ7 8
$str
ÄÄ8 E
,
ÄÄE F
DateTime
ÄÄG O
.
ÄÄO P
Now
ÄÄP S
)
ÄÄS T
;
ÄÄT U
command
ÅÅ 
.
ÅÅ  

Parameters
ÅÅ  *
.
ÅÅ* +
AddWithValue
ÅÅ+ 7
(
ÅÅ7 8
$str
ÅÅ8 E
,
ÅÅE F
info
ÅÅG K
.
ÅÅK L
	CreatedBy
ÅÅL U
)
ÅÅU V
;
ÅÅV W
command
ÆÆ 
.
ÆÆ  

Parameters
ÆÆ  *
.
ÆÆ* +
AddWithValue
ÆÆ+ 7
(
ÆÆ7 8
$str
ÆÆ8 F
,
ÆÆF G
info
ÆÆH L
.
ÆÆL M

Modifiedby
ÆÆM W
)
ÆÆW X
;
ÆÆX Y
command
ÇÇ 
.
ÇÇ  

Parameters
ÇÇ  *
.
ÇÇ* +
AddWithValue
ÇÇ+ 7
(
ÇÇ7 8
$str
ÇÇ8 F
,
ÇÇF G
DateTime
ÇÇH P
.
ÇÇP Q
Now
ÇÇQ T
)
ÇÇT U
;
ÇÇU V
command
ÈÈ 
.
ÈÈ  
ExecuteNonQuery
ÈÈ  /
(
ÈÈ/ 0
)
ÈÈ0 1
;
ÈÈ1 2
}
ÉÉ 
}
ÊÊ 
return
ËË 
true
ËË 
;
ËË 
}
ÌÌ 
catch
ÎÎ 
(
ÎÎ 
	Exception
ÎÎ 
ex
ÎÎ 
)
ÎÎ  
{
ÏÏ 
Logger
ĞĞ 
.
ĞĞ 
Log
ĞĞ 
(
ĞĞ 
ex
ĞĞ 
.
ĞĞ 
ToString
ĞĞ &
(
ĞĞ& '
)
ĞĞ' (
)
ĞĞ( )
;
ĞĞ) *
return
ÑÑ 
false
ÑÑ 
;
ÑÑ 
}
ÒÒ 
}
ÔÔ 	
public
ÚÚ 
List
ÚÚ 
<
ÚÚ 
string
ÚÚ 
>
ÚÚ 

GetCountry
ÚÚ &
(
ÚÚ& '
)
ÚÚ' (
{
ÛÛ 	
List
ÜÜ 
<
ÜÜ 
string
ÜÜ 
>
ÜÜ 
CountryList
ÜÜ $
=
ÜÜ% &
new
ÜÜ' *
List
ÜÜ+ /
<
ÜÜ/ 0
string
ÜÜ0 6
>
ÜÜ6 7
(
ÜÜ7 8
)
ÜÜ8 9
;
ÜÜ9 :
try
İİ 
{
ŞŞ 
using
ßß 
(
ßß 
SqlConnection
ßß $
conn
ßß% )
=
ßß* +
new
ßß, /
SqlConnection
ßß0 =
(
ßß= >
_connectionstring
ßß> O
)
ßßO P
)
ßßP Q
{
àà 
conn
áá 
.
áá 
Open
áá 
(
áá 
)
áá 
;
áá  
using
ââ 
(
ââ 

SqlCommand
ââ %
cmd
ââ& )
=
ââ* +
new
ââ, /

SqlCommand
ââ0 :
(
ââ: ;
$str
ââ; r
,
ââr s
conn
âât x
)
ââx y
)
âây z
{
ãã 
cmd
ää 
.
ää 
CommandType
ää '
=
ää( )
CommandType
ää* 5
.
ää5 6
Text
ää6 :
;
ää: ;
using
åå 
(
åå 
SqlDataReader
åå ,
reader
åå- 3
=
åå4 5
cmd
åå6 9
.
åå9 :
ExecuteReader
åå: G
(
ååG H
)
ååH I
)
ååI J
{
ææ 
while
çç !
(
çç" #
reader
çç# )
.
çç) *
Read
çç* .
(
çç. /
)
çç/ 0
)
çç0 1
{
èè 
CountryList
éé  +
.
éé+ ,
Add
éé, /
(
éé/ 0
reader
éé0 6
[
éé6 7
$str
éé7 =
]
éé= >
.
éé> ?
ToString
éé? G
(
ééG H
)
ééH I
)
ééI J
;
ééJ K
}
êê 
}
ëë 
}
ìì 
}
íí 
}
îî 
catch
ïï 
(
ïï 
	Exception
ïï 
ex
ïï 
)
ïï  
{
ğğ 
Logger
ññ 
.
ññ 
Log
ññ 
(
ññ 
ex
ññ 
.
ññ 
ToString
ññ &
(
ññ& '
)
ññ' (
)
ññ( )
;
ññ) *
}
òò 
return
óó 
CountryList
óó 
;
óó 
}
ôô 	
public
úú 
List
úú 
<
úú 
string
úú 
>
úú &
RetriveDepartmentDetails
úú 4
(
úú4 5
int
úú5 8
?
úú8 9
plantId
úú: A
)
úúA B
{
ûû 	
List
üü 
<
üü 
string
üü 
>
üü 
departmentList
üü '
=
üü( )
new
üü* -
List
üü. 2
<
üü2 3
string
üü3 9
>
üü9 :
(
üü: ;
)
üü; <
;
üü< =
try
ıı 
{
şş 
using
ÿÿ 
(
ÿÿ 
SqlConnection
ÿÿ $

connection
ÿÿ% /
=
ÿÿ0 1
new
ÿÿ2 5
SqlConnection
ÿÿ6 C
(
ÿÿC D
_connectionstring
ÿÿD U
)
ÿÿU V
)
ÿÿV W
{
€€ 

connection
 
.
 
Open
 #
(
# $
)
$ %
;
% &
using
‚‚ 
(
‚‚ 

SqlCommand
‚‚ %
command
‚‚& -
=
‚‚. /
new
‚‚0 3

SqlCommand
‚‚4 >
(
ƒƒ 
$strƒƒ –
,
„„ 

connection
„„ $
)
„„$ %
)
„„% &
{
…… 
command
†† 
.
††  
CommandType
††  +
=
††, -
CommandType
††. 9
.
††9 :
Text
††: >
;
††> ?
command
‡‡ 
.
‡‡  

Parameters
‡‡  *
.
‡‡* +
AddWithValue
‡‡+ 7
(
‡‡7 8
$str
‡‡8 B
,
‡‡B C
plantId
‡‡D K
)
‡‡K L
;
‡‡L M
using
ˆˆ 
(
ˆˆ 
SqlDataReader
ˆˆ ,
reader
ˆˆ- 3
=
ˆˆ4 5
command
ˆˆ6 =
.
ˆˆ= >
ExecuteReader
ˆˆ> K
(
ˆˆK L
)
ˆˆL M
)
ˆˆM N
{
‰‰ 
while
ŠŠ !
(
ŠŠ" #
reader
ŠŠ# )
.
ŠŠ) *
Read
ŠŠ* .
(
ŠŠ. /
)
ŠŠ/ 0
)
ŠŠ0 1
{
‹‹ 
departmentList
ŒŒ  .
.
ŒŒ. /
Add
ŒŒ/ 2
(
ŒŒ2 3
reader
ŒŒ3 9
[
ŒŒ9 :
$str
ŒŒ: @
]
ŒŒ@ A
.
ŒŒA B
ToString
ŒŒB J
(
ŒŒJ K
)
ŒŒK L
)
ŒŒL M
;
ŒŒM N
}
 
}
 
}
 
}
‘‘ 
}
““ 
catch
”” 
(
”” 
	Exception
”” 
ex
”” 
)
””  
{
•• 
Logger
–– 
.
–– 
Log
–– 
(
–– 
ex
–– 
.
–– 
ToString
–– &
(
––& '
)
––' (
)
––( )
;
––) *
}
—— 
return
˜˜ 
departmentList
˜˜ !
;
˜˜! "
}
™™ 	
public
ŸŸ 
List
ŸŸ 
<
ŸŸ 
Asset
ŸŸ 
>
ŸŸ 
RetrieveAsset
ŸŸ (
(
ŸŸ( )
)
ŸŸ) *
{
   	
List
¡¡ 
<
¡¡ 
Asset
¡¡ 
>
¡¡ 
	assetList
¡¡ !
=
¡¡" #
new
¡¡$ '
List
¡¡( ,
<
¡¡, -
Asset
¡¡- 2
>
¡¡2 3
(
¡¡3 4
)
¡¡4 5
;
¡¡5 6
try
¢¢ 
{
££ 
int
¤¤ 
tempVal
¤¤ 
;
¤¤ 
using
¥¥ 
(
¥¥ 
SqlConnection
¥¥ $

connection
¥¥% /
=
¥¥0 1
new
¥¥2 5
SqlConnection
¥¥6 C
(
¥¥C D
_connectionstring
¥¥D U
)
¥¥U V
)
¥¥V W
{
¦¦ 

connection
§§ 
.
§§ 
Open
§§ #
(
§§# $
)
§§$ %
;
§§% &
using
¨¨ 
(
¨¨ 

SqlCommand
¨¨ %
command
¨¨& -
=
¨¨. /
new
¨¨0 3

SqlCommand
¨¨4 >
(
¨¨> ?
$str
¨¨? l
,
¨¨l m

connection
¨¨n x
)
¨¨x y
)
¨¨y z
{
©© 
command
ªª 
.
ªª  
CommandType
ªª  +
=
ªª, -
CommandType
ªª. 9
.
ªª9 :
Text
ªª: >
;
ªª> ?
using
¬¬ 
(
¬¬ 
SqlDataReader
¬¬ ,
reader
¬¬- 3
=
¬¬4 5
command
¬¬6 =
.
¬¬= >
ExecuteReader
¬¬> K
(
¬¬K L
)
¬¬L M
)
¬¬M N
{
­­ 
while
®® !
(
®®" #
reader
®®# )
.
®®) *
Read
®®* .
(
®®. /
)
®®/ 0
)
®®0 1
{
¯¯ 
	assetList
°°  )
.
°°) *
Add
°°* -
(
±±$ %
new
²²$ '
Asset
²²( -
{
³³$ %
ID
´´( *
=
´´+ ,
int
´´- 0
.
´´0 1
TryParse
´´1 9
(
´´9 :
reader
´´: @
[
´´@ A
$str
´´A E
]
´´E F
.
´´F G
ToString
´´G O
(
´´O P
)
´´P Q
,
´´Q R
out
´´S V
tempVal
´´W ^
)
´´^ _
?
´´` a
tempVal
´´b i
:
´´j k
(
´´l m
int
´´m p
?
´´p q
)
´´q r
null
´´r v
,
´´v w
Name
µµ( ,
=
µµ- .
reader
µµ/ 5
[
µµ5 6
$str
µµ6 <
]
µµ< =
.
µµ= >
ToString
µµ> F
(
µµF G
)
µµG H
,
µµH I
Description
¶¶( 3
=
¶¶4 5
reader
¶¶6 <
[
¶¶< =
$str
¶¶= J
]
¶¶J K
.
¶¶K L
ToString
¶¶L T
(
¶¶T U
)
¶¶U V
,
¶¶V W
Plant_ID
··( 0
=
··1 2
Convert
··3 :
.
··: ;
ToInt32
··; B
(
··B C
reader
··C I
[
··I J
$str
··J T
]
··T U
)
··U V
,
··V W
	CreatedDt
¸¸( 1
=
¸¸2 3
Convert
¸¸4 ;
.
¸¸; <

ToDateTime
¸¸< F
(
¸¸F G
reader
¸¸G M
[
¸¸M N
$str
¸¸N Z
]
¸¸Z [
)
¸¸[ \
,
¸¸\ ]
	CreatedBy
¹¹( 1
=
¹¹2 3
reader
¹¹4 :
[
¹¹: ;
$str
¹¹; G
]
¹¹G H
.
¹¹H I
ToString
¹¹I Q
(
¹¹Q R
)
¹¹R S
,
¹¹S T

ModifiedBy
ºº( 2
=
ºº3 4
reader
ºº5 ;
[
ºº; <
$str
ºº< I
]
ººI J
.
ººJ K
ToString
ººK S
(
ººS T
)
ººT U
,
ººU V
Active
»»( .
=
»»/ 0
reader
»»1 7
[
»»7 8
$str
»»8 @
]
»»@ A
.
»»A B
ToString
»»B J
(
»»J K
)
»»K L
}
¼¼$ %
)
½½$ %
;
½½% &
}
¾¾ 
}
¿¿ 
}
ÀÀ 
}
ÂÂ 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
	Exception
ÅÅ 
ex
ÅÅ 
)
ÅÅ  
{
ÆÆ 
Logger
ÇÇ 
.
ÇÇ 
Log
ÇÇ 
(
ÇÇ 
ex
ÇÇ 
.
ÇÇ 
ToString
ÇÇ &
(
ÇÇ& '
)
ÇÇ' (
)
ÇÇ( )
;
ÇÇ) *
}
ÈÈ 
return
ÉÉ 
	assetList
ÉÉ 
;
ÉÉ 
}
ÊÊ 	
public
ĞĞ 
List
ĞĞ 
<
ĞĞ 
Asset
ĞĞ 
>
ĞĞ )
RetrieveAssetBasedOnPlantId
ĞĞ 6
(
ĞĞ6 7
int
ĞĞ7 :
id
ĞĞ; =
)
ĞĞ= >
{
ÑÑ 	
List
ÒÒ 
<
ÒÒ 
Asset
ÒÒ 
>
ÒÒ 
	assetList
ÒÒ !
=
ÒÒ" #
new
ÒÒ$ '
List
ÒÒ( ,
<
ÒÒ, -
Asset
ÒÒ- 2
>
ÒÒ2 3
(
ÒÒ3 4
)
ÒÒ4 5
;
ÒÒ5 6
try
ÓÓ 
{
ÔÔ 
int
ÕÕ 
tempVal
ÕÕ 
;
ÕÕ 
using
ÖÖ 
(
ÖÖ 
SqlConnection
ÖÖ $

connection
ÖÖ% /
=
ÖÖ0 1
new
ÖÖ2 5
SqlConnection
ÖÖ6 C
(
ÖÖC D
_connectionstring
ÖÖD U
)
ÖÖU V
)
ÖÖV W
{
×× 

connection
ØØ 
.
ØØ 
Open
ØØ #
(
ØØ# $
)
ØØ$ %
;
ØØ% &
using
ÙÙ 
(
ÙÙ 

SqlCommand
ÙÙ %
command
ÙÙ& -
=
ÙÙ. /
new
ÙÙ0 3

SqlCommand
ÙÙ4 >
(
ÙÙ> ?
$str
ÙÙ? [
,
ÙÙ[ \

connection
ÙÙ] g
)
ÙÙg h
)
ÙÙh i
{
ÚÚ 
command
ÛÛ 
.
ÛÛ  
CommandType
ÛÛ  +
=
ÛÛ, -
CommandType
ÛÛ. 9
.
ÛÛ9 :
StoredProcedure
ÛÛ: I
;
ÛÛI J
command
ÜÜ 
.
ÜÜ  

Parameters
ÜÜ  *
.
ÜÜ* +
AddWithValue
ÜÜ+ 7
(
ÜÜ7 8
$str
ÜÜ8 B
,
ÜÜB C
id
ÜÜD F
)
ÜÜF G
;
ÜÜG H
using
İİ 
(
İİ 
SqlDataReader
İİ ,
reader
İİ- 3
=
İİ4 5
command
İİ6 =
.
İİ= >
ExecuteReader
İİ> K
(
İİK L
)
İİL M
)
İİM N
{
ŞŞ 
while
ßß !
(
ßß" #
reader
ßß# )
.
ßß) *
Read
ßß* .
(
ßß. /
)
ßß/ 0
)
ßß0 1
{
àà 
	assetList
áá  )
.
áá) *
Add
áá* -
(
ââ$ %
new
ãã$ '
Asset
ãã( -
{
ää$ %
ID
åå( *
=
åå+ ,
int
åå- 0
.
åå0 1
TryParse
åå1 9
(
åå9 :
reader
åå: @
[
åå@ A
$str
ååA E
]
ååE F
.
ååF G
ToString
ååG O
(
ååO P
)
ååP Q
,
ååQ R
out
ååS V
tempVal
ååW ^
)
åå^ _
?
åå` a
tempVal
ååb i
:
ååj k
(
åål m
int
ååm p
?
ååp q
)
ååq r
null
åår v
,
ååv w
Name
ææ( ,
=
ææ- .
reader
ææ/ 5
[
ææ5 6
$str
ææ6 <
]
ææ< =
.
ææ= >
ToString
ææ> F
(
ææF G
)
ææG H
,
ææH I
Description
çç( 3
=
çç4 5
reader
çç6 <
[
çç< =
$str
çç= J
]
ççJ K
.
ççK L
ToString
ççL T
(
ççT U
)
ççU V
,
ççV W
Plant_ID
èè( 0
=
èè1 2
Convert
èè3 :
.
èè: ;
ToInt32
èè; B
(
èèB C
reader
èèC I
[
èèI J
$str
èèJ T
]
èèT U
)
èèU V
,
èèV W
	CreatedDt
éé( 1
=
éé2 3
Convert
éé4 ;
.
éé; <

ToDateTime
éé< F
(
ééF G
reader
ééG M
[
ééM N
$str
ééN Z
]
ééZ [
)
éé[ \
,
éé\ ]
	CreatedBy
êê( 1
=
êê2 3
reader
êê4 :
[
êê: ;
$str
êê; G
]
êêG H
.
êêH I
ToString
êêI Q
(
êêQ R
)
êêR S
,
êêS T

ModifiedBy
ëë( 2
=
ëë3 4
reader
ëë5 ;
[
ëë; <
$str
ëë< I
]
ëëI J
.
ëëJ K
ToString
ëëK S
(
ëëS T
)
ëëT U
,
ëëU V
Active
ìì( .
=
ìì/ 0
reader
ìì1 7
[
ìì7 8
$str
ìì8 @
]
ìì@ A
.
ììA B
ToString
ììB J
(
ììJ K
)
ììK L
}
íí$ %
)
îî$ %
;
îî% &
}
ïï 
}
ğğ 
}
ññ 
}
óó 
}
õõ 
catch
öö 
(
öö 
	Exception
öö 
ex
öö 
)
öö  
{
÷÷ 
Logger
øø 
.
øø 
Log
øø 
(
øø 
ex
øø 
.
øø 
ToString
øø &
(
øø& '
)
øø' (
)
øø( )
;
øø) *
}
ùù 
return
úú 
	assetList
úú 
;
úú 
}
üü 	
public
‚‚ 
int
‚‚ 
AddDepartment
‚‚  
(
‚‚  !

Department
‚‚! +
asset
‚‚, 1
)
‚‚1 2
{
ƒƒ 	
try
„„ 
{
…… 
using
†† 
(
†† 
SqlConnection
†† $
conn
††% )
=
††* +
new
††, /
SqlConnection
††0 =
(
††= >
_connectionstring
††> O
)
††O P
)
††P Q
{
‡‡ 
conn
ˆˆ 
.
ˆˆ 
Open
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ  
using
ŠŠ 
(
ŠŠ 

SqlCommand
ŠŠ %
command
ŠŠ& -
=
ŠŠ. /
new
ŠŠ0 3

SqlCommand
ŠŠ4 >
(
ŠŠ> ?
$str
ŠŠ? ^
,
ŠŠ^ _
conn
ŠŠ` d
)
ŠŠd e
)
ŠŠe f
{
‹‹ 
command
ŒŒ 
.
ŒŒ  
CommandType
ŒŒ  +
=
ŒŒ, -
CommandType
ŒŒ. 9
.
ŒŒ9 :
StoredProcedure
ŒŒ: I
;
ŒŒI J
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 ?
,
? @
asset
A F
.
F G
DepartmentName
G U
)
U V
;
V W
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 F
,
F G
$str
H T
)
T U
;
U V
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 C
,
C D
asset
E J
.
J K
PlantId
K R
)
R S
;
S T
command
‘‘ 
.
‘‘  

Parameters
‘‘  *
.
‘‘* +
AddWithValue
‘‘+ 7
(
‘‘7 8
$str
‘‘8 E
,
‘‘E F
DateTime
‘‘G O
.
‘‘O P
Now
‘‘P S
)
‘‘S T
;
‘‘T U
command
’’ 
.
’’  

Parameters
’’  *
.
’’* +
AddWithValue
’’+ 7
(
’’7 8
$str
’’8 E
,
’’E F
asset
’’G L
.
’’L M
	CreatedBy
’’M V
)
’’V W
;
’’W X
command
““ 
.
““  

Parameters
““  *
.
““* +
AddWithValue
““+ 7
(
““7 8
$str
““8 F
,
““F G
asset
““H M
.
““M N

ModifiedBy
““N X
)
““X Y
;
““Y Z
command
”” 
.
””  

Parameters
””  *
.
””* +
AddWithValue
””+ 7
(
””7 8
$str
””8 F
,
””F G
DateTime
””H P
.
””P Q
Now
””Q T
)
””T U
;
””U V
command
•• 
.
••  

Parameters
••  *
.
••* +
AddWithValue
••+ 7
(
••7 8
$str
••8 A
,
••A B
$str
••C F
)
••F G
;
••G H
command
–– 
.
––  

Parameters
––  *
.
––* +
Add
––+ .
(
––. /
$str
––/ 4
,
––4 5
	SqlDbType
––6 ?
.
––? @
Int
––@ C
)
––C D
.
––D E
	Direction
––E N
=
––O P 
ParameterDirection
––Q c
.
––c d
Output
––d j
;
––j k
command
—— 
.
——  
ExecuteNonQuery
——  /
(
——/ 0
)
——0 1
;
——1 2
string
˜˜ 
str
˜˜ "
=
˜˜# $
command
˜˜% ,
.
˜˜, -

Parameters
˜˜- 7
[
˜˜7 8
$str
˜˜8 =
]
˜˜= >
.
˜˜> ?
Value
˜˜? D
.
˜˜D E
ToString
˜˜E M
(
˜˜M N
)
˜˜N O
;
˜˜O P
int
™™ 
assetId
™™ #
;
™™# $
if
šš 
(
šš 
!
šš 
string
šš #
.
šš# $
IsNullOrEmpty
šš$ 1
(
šš1 2
str
šš2 5
)
šš5 6
&&
šš7 9
int
šš: =
.
šš= >
TryParse
šš> F
(
ššF G
str
ššG J
,
ššJ K
out
ššL O
assetId
ššP W
)
ššW X
)
ššX Y
return
›› "
assetId
››# *
;
››* +
}
 
}
 
return
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
}
   
catch
¢¢ 
(
¢¢ 
	Exception
¢¢ 
ex
¢¢ 
)
¢¢  
{
££ 
Logger
¤¤ 
.
¤¤ 
Log
¤¤ 
(
¤¤ 
ex
¤¤ 
.
¤¤ 
ToString
¤¤ &
(
¤¤& '
)
¤¤' (
)
¤¤( )
;
¤¤) *
return
¥¥ 
$num
¥¥ 
;
¥¥ 
}
¦¦ 
}
©© 	
public
«« 
bool
«« 
UpdateTagInfo
«« !
(
««! "
int
««" %
?
««% &
id
««' )
,
««) *
Tags
««+ /
tag
««0 3
)
««3 4
{
¬¬ 	
try
­­ 
{
®® 
using
¯¯ 
(
¯¯ 
SqlConnection
¯¯ $
conn
¯¯% )
=
¯¯* +
new
¯¯, /
SqlConnection
¯¯0 =
(
¯¯= >
_connectionstring
¯¯> O
)
¯¯O P
)
¯¯P Q
{
°° 
conn
±± 
.
±± 
Open
±± 
(
±± 
)
±± 
;
±±  
using
³³ 
(
³³ 

SqlCommand
³³ %
command
³³& -
=
³³. /
new
³³0 3

SqlCommand
³³4 >
(
³³> ?
$str
³³? N
,
³³N O
conn
³³P T
)
³³T U
)
³³U V
{
´´ 
command
µµ 
.
µµ  
CommandType
µµ  +
=
µµ, -
CommandType
µµ. 9
.
µµ9 :
StoredProcedure
µµ: I
;
µµI J
command
¶¶ 
.
¶¶  

Parameters
¶¶  *
.
¶¶* +
AddWithValue
¶¶+ 7
(
¶¶7 8
$str
¶¶8 =
,
¶¶= >
id
¶¶? A
)
¶¶A B
;
¶¶B C
command
·· 
.
··  

Parameters
··  *
.
··* +
AddWithValue
··+ 7
(
··7 8
$str
··8 D
,
··D E
tag
··F I
.
··I J
	AssetName
··J S
)
··S T
;
··T U
command
¸¸ 
.
¸¸  

Parameters
¸¸  *
.
¸¸* +
AddWithValue
¸¸+ 7
(
¸¸7 8
$str
¸¸8 H
,
¸¸H I
tag
¸¸J M
.
¸¸M N
TagName
¸¸N U
)
¸¸U V
;
¸¸V W
command
¹¹ 
.
¹¹  

Parameters
¹¹  *
.
¹¹* +
AddWithValue
¹¹+ 7
(
¹¹7 8
$str
¹¹8 B
,
¹¹B C
tag
¹¹D G
.
¹¹G H
UOM
¹¹H K
)
¹¹K L
;
¹¹L M
command
ºº 
.
ºº  

Parameters
ºº  *
.
ºº* +
AddWithValue
ºº+ 7
(
ºº7 8
$str
ºº8 G
,
ººG H
tag
ººI L
.
ººL M

EnergyType
ººM W
)
ººW X
;
ººX Y
command
»» 
.
»»  

Parameters
»»  *
.
»»* +
AddWithValue
»»+ 7
(
»»7 8
$str
»»8 H
,
»»H I
tag
»»J M
.
»»M N
IsExponential
»»N [
)
»»[ \
;
»»\ ]
command
¼¼ 
.
¼¼  

Parameters
¼¼  *
.
¼¼* +
AddWithValue
¼¼+ 7
(
¼¼7 8
$str
¼¼8 D
,
¼¼D E
tag
¼¼F I
.
¼¼I J
	IsEnabled
¼¼J S
)
¼¼S T
;
¼¼T U
command
½½ 
.
½½  

Parameters
½½  *
.
½½* +
AddWithValue
½½+ 7
(
½½7 8
$str
½½8 A
,
½½A B
tag
½½C F
.
½½F G
Target
½½G M
)
½½M N
;
½½N O
command
¾¾ 
.
¾¾  
ExecuteNonQuery
¾¾  /
(
¾¾/ 0
)
¾¾0 1
;
¾¾1 2
}
¿¿ 
}
ÀÀ 
return
ÁÁ 
true
ÁÁ 
;
ÁÁ 
}
ÂÂ 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
ex
ÄÄ 
)
ÄÄ  
{
ÅÅ 
Logger
ÆÆ 
.
ÆÆ 
Log
ÆÆ 
(
ÆÆ 
ex
ÆÆ 
.
ÆÆ 
ToString
ÆÆ &
(
ÆÆ& '
)
ÆÆ' (
)
ÆÆ( )
;
ÆÆ) *
return
ÇÇ 
false
ÇÇ 
;
ÇÇ 
}
ÈÈ 
}
ÉÉ 	
public
ÑÑ 
bool
ÑÑ 
AddAsset
ÑÑ 
(
ÑÑ 
Asset
ÑÑ "
asset
ÑÑ# (
,
ÑÑ( )
string
ÑÑ* 0
Description
ÑÑ1 <
)
ÑÑ< =
{
ÒÒ 	
try
ÓÓ 
{
ÔÔ 
using
ÕÕ 
(
ÕÕ 
SqlConnection
ÕÕ $
conn
ÕÕ% )
=
ÕÕ* +
new
ÕÕ, /
SqlConnection
ÕÕ0 =
(
ÕÕ= >
_connectionstring
ÕÕ> O
)
ÕÕO P
)
ÕÕP Q
{
ÖÖ 
conn
×× 
.
×× 
Open
×× 
(
×× 
)
×× 
;
××  
using
ÙÙ 
(
ÙÙ 

SqlCommand
ÙÙ %
command
ÙÙ& -
=
ÙÙ. /
new
ÙÙ0 3

SqlCommand
ÙÙ4 >
(
ÙÙ> ?
$str
ÙÙ? ^
,
ÙÙ^ _
conn
ÙÙ` d
)
ÙÙd e
)
ÙÙe f
{
ÚÚ 
command
ÛÛ 
.
ÛÛ  
CommandType
ÛÛ  +
=
ÛÛ, -
CommandType
ÛÛ. 9
.
ÛÛ9 :
StoredProcedure
ÛÛ: I
;
ÛÛI J
command
İİ 
.
İİ  

Parameters
İİ  *
.
İİ* +
AddWithValue
İİ+ 7
(
İİ7 8
$str
İİ8 ?
,
İİ? @
asset
İİA F
.
İİF G
Name
İİG K
)
İİK L
;
İİL M
command
ŞŞ 
.
ŞŞ  

Parameters
ŞŞ  *
.
ŞŞ* +
AddWithValue
ŞŞ+ 7
(
ŞŞ7 8
$str
ŞŞ8 F
,
ŞŞF G
Description
ŞŞH S
)
ŞŞS T
;
ŞŞT U
command
ßß 
.
ßß  

Parameters
ßß  *
.
ßß* +
AddWithValue
ßß+ 7
(
ßß7 8
$str
ßß8 C
,
ßßC D
asset
ßßE J
.
ßßJ K
Plant_ID
ßßK S
)
ßßS T
;
ßßT U
command
àà 
.
àà  

Parameters
àà  *
.
àà* +
AddWithValue
àà+ 7
(
àà7 8
$str
àà8 E
,
ààE F
asset
ààG L
.
ààL M
	CreatedDt
ààM V
)
ààV W
;
ààW X
command
áá 
.
áá  

Parameters
áá  *
.
áá* +
AddWithValue
áá+ 7
(
áá7 8
$str
áá8 E
,
ááE F
asset
ááG L
.
ááL M
	CreatedBy
ááM V
)
ááV W
;
ááW X
command
ââ 
.
ââ  

Parameters
ââ  *
.
ââ* +
AddWithValue
ââ+ 7
(
ââ7 8
$str
ââ8 F
,
ââF G
asset
ââH M
.
ââM N

ModifiedBy
ââN X
)
ââX Y
;
ââY Z
command
ãã 
.
ãã  

Parameters
ãã  *
.
ãã* +
AddWithValue
ãã+ 7
(
ãã7 8
$str
ãã8 F
,
ããF G
asset
ããH M
.
ããM N

ModifiedDt
ããN X
)
ããX Y
;
ããY Z
command
ää 
.
ää  

Parameters
ää  *
.
ää* +
AddWithValue
ää+ 7
(
ää7 8
$str
ää8 A
,
ääA B
$str
ääC F
)
ääF G
;
ääG H
command
åå 
.
åå  
ExecuteNonQuery
åå  /
(
åå/ 0
)
åå0 1
;
åå1 2
}
çç 
}
èè 
return
éé 
true
éé 
;
éé 
}
êê 
catch
ìì 
(
ìì 
	Exception
ìì 
ex
ìì 
)
ìì  
{
íí 
Logger
îî 
.
îî 
Log
îî 
(
îî 
ex
îî 
.
îî 
ToString
îî &
(
îî& '
)
îî' (
)
îî( )
;
îî) *
return
ïï 
false
ïï 
;
ïï 
}
ğğ 
}
ññ 	
public
óó 
bool
óó 
UpdateLastSync
óó "
(
óó" #
int
óó# &
plantId
óó' .
,
óó. /
DateTime
óó0 8
lastSync
óó9 A
)
óóA B
{
ôô 	
try
õõ 
{
öö 
using
øø 
(
øø 
SqlConnection
øø $
conn
øø% )
=
øø* +
new
øø, /
SqlConnection
øø0 =
(
øø= >
_connectionstring
øø> O
)
øøO P
)
øøP Q
{
ùù 
conn
úú 
.
úú 
Open
úú 
(
úú 
)
úú 
;
úú  
string
ûû 
commandstring
ûû (
=
ûû) *
$str
ûû+ v
;
ûûv w
using
üü 
(
üü 

SqlCommand
üü %
command
üü& -
=
üü. /
new
üü0 3

SqlCommand
üü4 >
(
üü> ?
commandstring
üü? L
,
üüL M
conn
üüN R
)
üüR S
)
üüS T
{
ıı 
command
şş 
.
şş  
CommandType
şş  +
=
şş, -
CommandType
şş. 9
.
şş9 :
Text
şş: >
;
şş> ?
command
ÿÿ 
.
ÿÿ  

Parameters
ÿÿ  *
.
ÿÿ* +
AddWithValue
ÿÿ+ 7
(
ÿÿ7 8
$str
ÿÿ8 B
,
ÿÿB C
plantId
ÿÿD K
)
ÿÿK L
;
ÿÿL M
command
€€ 
.
€€  

Parameters
€€  *
.
€€* +
AddWithValue
€€+ 7
(
€€7 8
$str
€€8 @
,
€€@ A
lastSync
€€B J
)
€€J K
;
€€K L
command
 
.
  
ExecuteNonQuery
  /
(
/ 0
)
0 1
;
1 2
}
‚‚ 
}
„„ 
return
…… 
true
…… 
;
…… 
}
†† 
catch
‡‡ 
(
‡‡ 
	Exception
‡‡ 
ex
‡‡ 
)
‡‡  
{
ˆˆ 
Logger
‰‰ 
.
‰‰ 
Log
‰‰ 
(
‰‰ 
ex
‰‰ 
.
‰‰ 
ToString
‰‰ &
(
‰‰& '
)
‰‰' (
)
‰‰( )
;
‰‰) *
return
ŠŠ 
false
ŠŠ 
;
ŠŠ 
}
‹‹ 
}
ŒŒ 	
public
““ 
int
““ 
AddBuilding
““ 
(
““ 
Building
““ '
building
““( 0
)
““0 1
{
”” 	
try
•• 
{
–– 
using
—— 
(
—— 
SqlConnection
—— $
conn
——% )
=
——* +
new
——, /
SqlConnection
——0 =
(
——= >
_connectionstring
——> O
)
——O P
)
——P Q
{
˜˜ 
conn
™™ 
.
™™ 
Open
™™ 
(
™™ 
)
™™ 
;
™™  
using
›› 
(
›› 

SqlCommand
›› %
command
››& -
=
››. /
new
››0 3

SqlCommand
››4 >
(
››> ?
$str
››? ^
,
››^ _
conn
››` d
)
››d e
)
››e f
{
œœ 
command
 
.
  
CommandType
  +
=
, -
CommandType
. 9
.
9 :
StoredProcedure
: I
;
I J
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 ?
,
? @
building
A I
.
I J
BuildingName
J V
)
V W
;
W X
command
ŸŸ 
.
ŸŸ  

Parameters
ŸŸ  *
.
ŸŸ* +
AddWithValue
ŸŸ+ 7
(
ŸŸ7 8
$str
ŸŸ8 F
,
ŸŸF G
$str
ŸŸH R
)
ŸŸR S
;
ŸŸS T
command
   
.
    

Parameters
    *
.
  * +
AddWithValue
  + 7
(
  7 8
$str
  8 C
,
  C D
building
  E M
.
  M N
PlantId
  N U
)
  U V
;
  V W
command
¡¡ 
.
¡¡  

Parameters
¡¡  *
.
¡¡* +
AddWithValue
¡¡+ 7
(
¡¡7 8
$str
¡¡8 E
,
¡¡E F
DateTime
¡¡G O
.
¡¡O P
Now
¡¡P S
)
¡¡S T
;
¡¡T U
command
¢¢ 
.
¢¢  

Parameters
¢¢  *
.
¢¢* +
AddWithValue
¢¢+ 7
(
¢¢7 8
$str
¢¢8 E
,
¢¢E F
building
¢¢G O
.
¢¢O P
	CreatedBy
¢¢P Y
)
¢¢Y Z
;
¢¢Z [
command
££ 
.
££  

Parameters
££  *
.
££* +
AddWithValue
££+ 7
(
££7 8
$str
££8 F
,
££F G
building
££H P
.
££P Q

ModifiedBy
££Q [
)
££[ \
;
££\ ]
command
¤¤ 
.
¤¤  

Parameters
¤¤  *
.
¤¤* +
AddWithValue
¤¤+ 7
(
¤¤7 8
$str
¤¤8 F
,
¤¤F G
DateTime
¤¤H P
.
¤¤P Q
Now
¤¤Q T
)
¤¤T U
;
¤¤U V
command
¥¥ 
.
¥¥  

Parameters
¥¥  *
.
¥¥* +
AddWithValue
¥¥+ 7
(
¥¥7 8
$str
¥¥8 A
,
¥¥A B
$str
¥¥C F
)
¥¥F G
;
¥¥G H
command
¦¦ 
.
¦¦  

Parameters
¦¦  *
.
¦¦* +
Add
¦¦+ .
(
¦¦. /
$str
¦¦/ 4
,
¦¦4 5
	SqlDbType
¦¦6 ?
.
¦¦? @
Int
¦¦@ C
)
¦¦C D
.
¦¦D E
	Direction
¦¦E N
=
¦¦O P 
ParameterDirection
¦¦Q c
.
¦¦c d
Output
¦¦d j
;
¦¦j k
command
§§ 
.
§§  
ExecuteNonQuery
§§  /
(
§§/ 0
)
§§0 1
;
§§1 2
string
¨¨ 
str
¨¨ "
=
¨¨# $
command
¨¨% ,
.
¨¨, -

Parameters
¨¨- 7
[
¨¨7 8
$str
¨¨8 =
]
¨¨= >
.
¨¨> ?
Value
¨¨? D
.
¨¨D E
ToString
¨¨E M
(
¨¨M N
)
¨¨N O
;
¨¨O P
int
©© 
assetId
©© #
;
©©# $
if
ªª 
(
ªª 
!
ªª 
string
ªª #
.
ªª# $
IsNullOrEmpty
ªª$ 1
(
ªª1 2
str
ªª2 5
)
ªª5 6
&&
ªª7 9
int
ªª: =
.
ªª= >
TryParse
ªª> F
(
ªªF G
str
ªªG J
,
ªªJ K
out
ªªL O
assetId
ªªP W
)
ªªW X
)
ªªX Y
return
«« "
assetId
««# *
;
««* +
}
¬¬ 
}
­­ 
return
®® 
$num
®® 
;
®® 
}
¯¯ 
catch
±± 
(
±± 
	Exception
±± 
ex
±± 
)
±±  
{
²² 
Logger
³³ 
.
³³ 
Log
³³ 
(
³³ 
ex
³³ 
.
³³ 
ToString
³³ &
(
³³& '
)
³³' (
)
³³( )
;
³³) *
return
´´ 
$num
´´ 
;
´´ 
}
µµ 
}
·· 	
public
½½ 
List
½½ 
<
½½ 
string
½½ 
>
½½ 
RetrieveBuilding
½½ ,
(
½½, -
int
½½- 0
?
½½0 1
plantId
½½2 9
)
½½9 :
{
¾¾ 	
List
¿¿ 
<
¿¿ 
string
¿¿ 
>
¿¿ 
buildingList
¿¿ %
=
¿¿& '
new
¿¿( +
List
¿¿, 0
<
¿¿0 1
string
¿¿1 7
>
¿¿7 8
(
¿¿8 9
)
¿¿9 :
;
¿¿: ;
try
ÀÀ 
{
ÁÁ 
using
ÂÂ 
(
ÂÂ 
SqlConnection
ÂÂ $

connection
ÂÂ% /
=
ÂÂ0 1
new
ÂÂ2 5
SqlConnection
ÂÂ6 C
(
ÂÂC D
_connectionstring
ÂÂD U
)
ÂÂU V
)
ÂÂV W
{
ÃÃ 

connection
ÄÄ 
.
ÄÄ 
Open
ÄÄ #
(
ÄÄ# $
)
ÄÄ$ %
;
ÄÄ% &
using
ÅÅ 
(
ÅÅ 

SqlCommand
ÅÅ %
command
ÅÅ& -
=
ÅÅ. /
new
ÅÅ0 3

SqlCommand
ÅÅ4 >
(
ÆÆ 
$str
ÆÆ u
,
ÆÆu v

connectionÆÆw 
)ÆÆ ‚
)ÆÆ‚ ƒ
{
ÇÇ 
command
ÈÈ 
.
ÈÈ  
CommandType
ÈÈ  +
=
ÈÈ, -
CommandType
ÈÈ. 9
.
ÈÈ9 :
Text
ÈÈ: >
;
ÈÈ> ?
command
ÉÉ 
.
ÉÉ  

Parameters
ÉÉ  *
.
ÉÉ* +
AddWithValue
ÉÉ+ 7
(
ÉÉ7 8
$str
ÉÉ8 B
,
ÉÉB C
plantId
ÉÉD K
)
ÉÉK L
;
ÉÉL M
using
ÊÊ 
(
ÊÊ 
SqlDataReader
ÊÊ ,
reader
ÊÊ- 3
=
ÊÊ4 5
command
ÊÊ6 =
.
ÊÊ= >
ExecuteReader
ÊÊ> K
(
ÊÊK L
)
ÊÊL M
)
ÊÊM N
{
ËË 
while
ÌÌ !
(
ÌÌ" #
reader
ÌÌ# )
.
ÌÌ) *
Read
ÌÌ* .
(
ÌÌ. /
)
ÌÌ/ 0
)
ÌÌ0 1
{
ÍÍ 
buildingList
ÎÎ  ,
.
ÎÎ, -
Add
ÎÎ- 0
(
ÎÎ0 1
reader
ÎÎ1 7
[
ÎÎ7 8
$str
ÎÎ8 >
]
ÎÎ> ?
.
ÎÎ? @
ToString
ÎÎ@ H
(
ÎÎH I
)
ÎÎI J
)
ÎÎJ K
;
ÎÎK L
}
ÏÏ 
}
ĞĞ 
}
ÑÑ 
}
ÓÓ 
}
ÕÕ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ 
ex
ÖÖ 
)
ÖÖ  
{
×× 
Logger
ØØ 
.
ØØ 
Log
ØØ 
(
ØØ 
ex
ØØ 
.
ØØ 
ToString
ØØ &
(
ØØ& '
)
ØØ' (
)
ØØ( )
;
ØØ) *
}
ÙÙ 
return
ÚÚ 
buildingList
ÚÚ 
;
ÚÚ  
}
ÛÛ 	
public
áá 
List
áá 
<
áá 
string
áá 
>
áá 
GetEquipmentType
áá ,
(
áá, -
)
áá- .
{
ââ 	
List
ãã 
<
ãã 
string
ãã 
>
ãã 
EquipmentList
ãã &
=
ãã' (
new
ãã) ,
List
ãã- 1
<
ãã1 2
string
ãã2 8
>
ãã8 9
(
ãã9 :
)
ãã: ;
;
ãã; <
try
ää 
{
åå 
using
ææ 
(
ææ 
SqlConnection
ææ $
conn
ææ% )
=
ææ* +
new
ææ, /
SqlConnection
ææ0 =
(
ææ= >
_connectionstring
ææ> O
)
ææO P
)
ææP Q
{
çç 
conn
èè 
.
èè 
Open
èè 
(
èè 
)
èè 
;
èè  
using
éé 
(
éé 

SqlCommand
éé %
cmd
éé& )
=
éé* +
new
éé, /

SqlCommand
éé0 :
(
éé: ;
$stréé; ‰
,éé‰ Š
connéé‹ 
)éé 
)éé ‘
{
êê 
cmd
ëë 
.
ëë 
CommandType
ëë '
=
ëë( )
CommandType
ëë* 5
.
ëë5 6
Text
ëë6 :
;
ëë: ;
using
ìì 
(
ìì 
SqlDataReader
ìì ,
reader
ìì- 3
=
ìì4 5
cmd
ìì6 9
.
ìì9 :
ExecuteReader
ìì: G
(
ììG H
)
ììH I
)
ììI J
{
íí 
while
îî !
(
îî" #
reader
îî# )
.
îî) *
Read
îî* .
(
îî. /
)
îî/ 0
)
îî0 1
{
ïï 
EquipmentList
ğğ  -
.
ğğ- .
Add
ğğ. 1
(
ğğ1 2
reader
ğğ2 8
[
ğğ8 9
$str
ğğ9 ?
]
ğğ? @
.
ğğ@ A
ToString
ğğA I
(
ğğI J
)
ğğJ K
)
ğğK L
;
ğğL M
}
ññ 
}
òò 
}
óó 
}
ôô 
}
õõ 
catch
öö 
(
öö 
	Exception
öö 
ex
öö 
)
öö  
{
÷÷ 
Logger
øø 
.
øø 
Log
øø 
(
øø 
ex
øø 
.
øø 
ToString
øø &
(
øø& '
)
øø' (
)
øø( )
;
øø) *
}
ùù 
return
úú 
EquipmentList
úú  
;
úú  !
}
ûû 	
public
 
List
 
<
 
string
 
>
 
GetUOM
 "
(
" #
)
# $
{
‚‚ 	
List
ƒƒ 
<
ƒƒ 
string
ƒƒ 
>
ƒƒ 
UOMList
ƒƒ  
=
ƒƒ! "
new
ƒƒ# &
List
ƒƒ' +
<
ƒƒ+ ,
string
ƒƒ, 2
>
ƒƒ2 3
(
ƒƒ3 4
)
ƒƒ4 5
;
ƒƒ5 6
try
„„ 
{
…… 
using
†† 
(
†† 
SqlConnection
†† $
conn
††% )
=
††* +
new
††, /
SqlConnection
††0 =
(
††= >
_connectionstring
††> O
)
††O P
)
††P Q
{
‡‡ 
conn
ˆˆ 
.
ˆˆ 
Open
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ  
using
‰‰ 
(
‰‰ 

SqlCommand
‰‰ %
cmd
‰‰& )
=
‰‰* +
new
‰‰, /

SqlCommand
‰‰0 :
(
‰‰: ;
$str
‰‰; }
,
‰‰} ~
conn‰‰ ƒ
)‰‰ƒ „
)‰‰„ …
{
ŠŠ 
cmd
‹‹ 
.
‹‹ 
CommandType
‹‹ '
=
‹‹( )
CommandType
‹‹* 5
.
‹‹5 6
Text
‹‹6 :
;
‹‹: ;
using
ŒŒ 
(
ŒŒ 
SqlDataReader
ŒŒ ,
reader
ŒŒ- 3
=
ŒŒ4 5
cmd
ŒŒ6 9
.
ŒŒ9 :
ExecuteReader
ŒŒ: G
(
ŒŒG H
)
ŒŒH I
)
ŒŒI J
{
 
while
 !
(
" #
reader
# )
.
) *
Read
* .
(
. /
)
/ 0
)
0 1
{
 
UOMList
  '
.
' (
Add
( +
(
+ ,
reader
, 2
[
2 3
$str
3 @
]
@ A
.
A B
ToString
B J
(
J K
)
K L
)
L M
;
M N
}
‘‘ 
}
’’ 
}
““ 
}
”” 
}
•• 
catch
–– 
(
–– 
	Exception
–– 
ex
–– 
)
––  
{
—— 
Logger
˜˜ 
.
˜˜ 
Log
˜˜ 
(
˜˜ 
ex
˜˜ 
.
˜˜ 
ToString
˜˜ &
(
˜˜& '
)
˜˜' (
)
˜˜( )
;
˜˜) *
}
™™ 
return
šš 
UOMList
šš 
;
šš 
}
›› 	
public
¡¡ 
List
¡¡ 
<
¡¡ 
string
¡¡ 
>
¡¡ 
GetEnergyType
¡¡ )
(
¡¡) *
)
¡¡* +
{
¢¢ 	
List
££ 
<
££ 
string
££ 
>
££ 
EnergyTypeList
££ '
=
££( )
new
££* -
List
££. 2
<
££2 3
string
££3 9
>
££9 :
(
££: ;
)
££; <
;
££< =
try
¤¤ 
{
¥¥ 
using
¦¦ 
(
¦¦ 
SqlConnection
¦¦ $
conn
¦¦% )
=
¦¦* +
new
¦¦, /
SqlConnection
¦¦0 =
(
¦¦= >
_connectionstring
¦¦> O
)
¦¦O P
)
¦¦P Q
{
§§ 
conn
¨¨ 
.
¨¨ 
Open
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨  
using
©© 
(
©© 

SqlCommand
©© %
cmd
©©& )
=
©©* +
new
©©, /

SqlCommand
©©0 :
(
©©: ;
$str
©©; |
,
©©| }
conn©©~ ‚
)©©‚ ƒ
)©©ƒ „
{
ªª 
cmd
«« 
.
«« 
CommandType
«« '
=
««( )
CommandType
««* 5
.
««5 6
Text
««6 :
;
««: ;
using
¬¬ 
(
¬¬ 
SqlDataReader
¬¬ ,
reader
¬¬- 3
=
¬¬4 5
cmd
¬¬6 9
.
¬¬9 :
ExecuteReader
¬¬: G
(
¬¬G H
)
¬¬H I
)
¬¬I J
{
­­ 
while
®® !
(
®®" #
reader
®®# )
.
®®) *
Read
®®* .
(
®®. /
)
®®/ 0
)
®®0 1
{
¯¯ 
EnergyTypeList
°°  .
.
°°. /
Add
°°/ 2
(
°°2 3
reader
°°3 9
[
°°9 :
$str
°°: G
]
°°G H
.
°°H I
ToString
°°I Q
(
°°Q R
)
°°R S
)
°°S T
;
°°T U
}
±± 
}
²² 
}
³³ 
}
´´ 
}
µµ 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
ex
¶¶ 
)
¶¶  
{
·· 
Logger
¸¸ 
.
¸¸ 
Log
¸¸ 
(
¸¸ 
ex
¸¸ 
.
¸¸ 
ToString
¸¸ &
(
¸¸& '
)
¸¸' (
)
¸¸( )
;
¸¸) *
}
¹¹ 
return
ºº 
EnergyTypeList
ºº !
;
ºº! "
}
»» 	
public
ÁÁ 
List
ÁÁ 
<
ÁÁ 
string
ÁÁ 
>
ÁÁ 
GetZone
ÁÁ #
(
ÁÁ# $
)
ÁÁ$ %
{
ÂÂ 	
List
ÃÃ 
<
ÃÃ 
string
ÃÃ 
>
ÃÃ 
EnergyTypeList
ÃÃ '
=
ÃÃ( )
new
ÃÃ* -
List
ÃÃ. 2
<
ÃÃ2 3
string
ÃÃ3 9
>
ÃÃ9 :
(
ÃÃ: ;
)
ÃÃ; <
;
ÃÃ< =
try
ÄÄ 
{
ÅÅ 
using
ÆÆ 
(
ÆÆ 
SqlConnection
ÆÆ $
conn
ÆÆ% )
=
ÆÆ* +
new
ÆÆ, /
SqlConnection
ÆÆ0 =
(
ÆÆ= >
_connectionstring
ÆÆ> O
)
ÆÆO P
)
ÆÆP Q
{
ÇÇ 
conn
ÈÈ 
.
ÈÈ 
Open
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ  
using
ÉÉ 
(
ÉÉ 

SqlCommand
ÉÉ %
cmd
ÉÉ& )
=
ÉÉ* +
new
ÉÉ, /

SqlCommand
ÉÉ0 :
(
ÉÉ: ;
$str
ÉÉ; o
,
ÉÉo p
conn
ÉÉq u
)
ÉÉu v
)
ÉÉv w
{
ÊÊ 
cmd
ËË 
.
ËË 
CommandType
ËË '
=
ËË( )
CommandType
ËË* 5
.
ËË5 6
Text
ËË6 :
;
ËË: ;
using
ÌÌ 
(
ÌÌ 
SqlDataReader
ÌÌ ,
reader
ÌÌ- 3
=
ÌÌ4 5
cmd
ÌÌ6 9
.
ÌÌ9 :
ExecuteReader
ÌÌ: G
(
ÌÌG H
)
ÌÌH I
)
ÌÌI J
{
ÍÍ 
while
ÎÎ !
(
ÎÎ" #
reader
ÎÎ# )
.
ÎÎ) *
Read
ÎÎ* .
(
ÎÎ. /
)
ÎÎ/ 0
)
ÎÎ0 1
{
ÏÏ 
EnergyTypeList
ĞĞ  .
.
ĞĞ. /
Add
ĞĞ/ 2
(
ĞĞ2 3
reader
ĞĞ3 9
[
ĞĞ9 :
$str
ĞĞ: @
]
ĞĞ@ A
.
ĞĞA B
ToString
ĞĞB J
(
ĞĞJ K
)
ĞĞK L
)
ĞĞL M
;
ĞĞM N
}
ÑÑ 
}
ÒÒ 
}
ÓÓ 
}
ÔÔ 
}
ÕÕ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ 
ex
ÖÖ 
)
ÖÖ  
{
×× 
Logger
ØØ 
.
ØØ 
Log
ØØ 
(
ØØ 
ex
ØØ 
.
ØØ 
ToString
ØØ &
(
ØØ& '
)
ØØ' (
)
ØØ( )
;
ØØ) *
}
ÙÙ 
return
ÚÚ 
EnergyTypeList
ÚÚ !
;
ÚÚ! "
}
ÛÛ 	
public
ãã 
bool
ãã %
AddProductionActualInfo
ãã +
(
ãã+ ,

Production
ãã, 6
product
ãã7 >
)
ãã> ?
{
ää 	
try
åå 
{
ææ 
using
çç 
(
çç 
SqlConnection
çç $
conn
çç% )
=
çç* +
new
çç, /
SqlConnection
çç0 =
(
çç= >
_connectionstring
çç> O
)
ççO P
)
ççP Q
{
èè 
conn
éé 
.
éé 
Open
éé 
(
éé 
)
éé 
;
éé  
using
ëë 
(
ëë 

SqlCommand
ëë %
command
ëë& -
=
ëë. /
new
ëë0 3

SqlCommand
ëë4 >
(
ëë> ?
$str
ëë? X
,
ëëX Y
conn
ëëZ ^
)
ëë^ _
)
ëë_ `
{
ìì 
command
íí 
.
íí  
CommandType
íí  +
=
íí, -
CommandType
íí. 9
.
íí9 :
StoredProcedure
íí: I
;
ííI J
command
ïï 
.
ïï  

Parameters
ïï  *
.
ïï* +
AddWithValue
ïï+ 7
(
ïï7 8
$str
ïï8 @
,
ïï@ A
product
ïïB I
.
ïïI J
MonthID
ïïJ Q
)
ïïQ R
;
ïïR S
command
ğğ 
.
ğğ  

Parameters
ğğ  *
.
ğğ* +
AddWithValue
ğğ+ 7
(
ğğ7 8
$str
ğğ8 ?
,
ğğ? @
product
ğğA H
.
ğğH I
YearID
ğğI O
)
ğğO P
;
ğğP Q
command
ññ 
.
ññ  

Parameters
ññ  *
.
ññ* +
AddWithValue
ññ+ 7
(
ññ7 8
$str
ññ8 C
,
ññC D
product
ññE L
.
ññL M
Plant_id
ññM U
)
ññU V
;
ññV W
command
òò 
.
òò  

Parameters
òò  *
.
òò* +
AddWithValue
òò+ 7
(
òò7 8
$str
òò8 @
,
òò@ A
product
òòB I
.
òòI J
Value
òòJ O
)
òòO P
;
òòP Q
command
óó 
.
óó  

Parameters
óó  *
.
óó* +
AddWithValue
óó+ 7
(
óó7 8
$str
óó8 C
,
óóC D
product
óóE L
.
óóL M
Asset_id
óóM U
)
óóU V
;
óóV W
command
ôô 
.
ôô  

Parameters
ôô  *
.
ôô* +
AddWithValue
ôô+ 7
(
ôô7 8
$str
ôô8 >
,
ôô> ?
product
ôô@ G
.
ôôG H
UOM
ôôH K
)
ôôK L
;
ôôL M
int
öö 
i
öö 
=
öö 
command
öö  '
.
öö' (
ExecuteNonQuery
öö( 7
(
öö7 8
)
öö8 9
;
öö9 :
if
÷÷ 
(
÷÷ 
i
÷÷ 
>=
÷÷  
$num
÷÷! "
)
÷÷" #
return
øø "
true
øø# '
;
øø' (
else
ùù 
return
úú "
false
úú# (
;
úú( )
}
ûû 
}
üü 
}
ıı 
catch
ÿÿ 
(
ÿÿ 
	Exception
ÿÿ 
ex
ÿÿ 
)
ÿÿ  
{
€€ 
Logger
 
.
 
Log
 
(
 
ex
 
.
 
ToString
 &
(
& '
)
' (
)
( )
;
) *
}
‚‚ 
return
ƒƒ 
false
ƒƒ 
;
ƒƒ 
}
„„ 	
public
‹‹ 
bool
‹‹ '
AddProductionBudgetedInfo
‹‹ -
(
‹‹- .
	DataTable
‹‹. 7
productionTbl
‹‹8 E
)
‹‹E F
{
ŒŒ 	
try
 
{
 
using
 
(
 
SqlConnection
 $
conn
% )
=
* +
new
, /
SqlConnection
0 =
(
= >
_connectionstring
> O
)
O P
)
P Q
{
 
conn
‘‘ 
.
‘‘ 
Open
‘‘ 
(
‘‘ 
)
‘‘ 
;
‘‘  
if
’’ 
(
’’ 
productionTbl
’’ %
!=
’’& (
null
’’) -
)
’’- .
{
““ 
SqlDataAdapter
”” &
da
””' )
=
””* +
new
””, /
SqlDataAdapter
””0 >
(
””> ?
)
””? @
;
””@ A

SqlCommand
•• "
InsCmd
••# )
=
••* +
conn
••, 0
.
••0 1
CreateCommand
••1 >
(
••> ?
)
••? @
;
••@ A
InsCmd
–– 
.
–– 
CommandText
–– *
=
––+ ,
$str––- ˜
;––˜ ™
InsCmd
—— 
.
—— 

Parameters
—— )
.
——) *
Add
——* -
(
——- .
$str
——. 6
,
——6 7
	SqlDbType
——8 A
.
——A B
VarChar
——B I
)
——I J
.
——J K
SourceColumn
——K W
=
——X Y
$str
——Z a
;
——a b
InsCmd
˜˜ 
.
˜˜ 

Parameters
˜˜ )
.
˜˜) *
Add
˜˜* -
(
˜˜- .
$str
˜˜. 5
,
˜˜5 6
	SqlDbType
˜˜7 @
.
˜˜@ A
Int
˜˜A D
)
˜˜D E
.
˜˜E F
SourceColumn
˜˜F R
=
˜˜S T
$str
˜˜U [
;
˜˜[ \
InsCmd
™™ 
.
™™ 

Parameters
™™ )
.
™™) *
Add
™™* -
(
™™- .
$str
™™. 6
,
™™6 7
	SqlDbType
™™8 A
.
™™A B
VarChar
™™B I
)
™™I J
.
™™J K
SourceColumn
™™K W
=
™™X Y
$str
™™Z a
;
™™a b
InsCmd
šš 
.
šš 

Parameters
šš )
.
šš) *
Add
šš* -
(
šš- .
$str
šš. ;
,
šš; <
	SqlDbType
šš= F
.
ššF G
VarChar
ššG N
)
ššN O
.
ššO P
SourceColumn
ššP \
=
šš] ^
$str
šš_ k
;
ššk l
da
›› 
.
›› 
InsertCommand
›› (
=
››) *
InsCmd
››+ 1
;
››1 2
da
œœ 
.
œœ 
Update
œœ !
(
œœ! "
productionTbl
œœ" /
)
œœ/ 0
;
œœ0 1
return
 
true
 #
;
# $
}
 
}
   
}
¡¡ 
catch
££ 
(
££ 
	Exception
££ 
ex
££ 
)
££  
{
¤¤ 
Logger
¥¥ 
.
¥¥ 
Log
¥¥ 
(
¥¥ 
ex
¥¥ 
.
¥¥ 
ToString
¥¥ &
(
¥¥& '
)
¥¥' (
)
¥¥( )
;
¥¥) *
}
¦¦ 
return
§§ 
false
§§ 
;
§§ 
}
¨¨ 	
public
ªª 
List
ªª 
<
ªª 
Tag
ªª 
>
ªª "
AddTagMappingDetails
ªª -
(
ªª- .
Tags
ªª. 2
tag
ªª3 6
)
ªª6 7
{
«« 	
List
¬¬ 
<
¬¬ 
Tag
¬¬ 
>
¬¬ 
	tagIdList
¬¬ 
=
¬¬  !
new
¬¬" %
List
¬¬& *
<
¬¬* +
Tag
¬¬+ .
>
¬¬. /
(
¬¬/ 0
)
¬¬0 1
;
¬¬1 2
List
­­ 
<
­­ 
string
­­ 
>
­­ 
listTagName
­­ $
=
­­% &
tag
­­' *
.
­­* +
TagName
­­+ 2
.
­­2 3
Split
­­3 8
(
­­8 9
$char
­­9 <
)
­­< =
.
­­= >
ToList
­­> D
(
­­D E
)
­­E F
;
­­F G
try
®® 
{
¯¯ 
using
°° 
(
°° 
SqlConnection
°° $
conn
°°% )
=
°°* +
new
°°, /
SqlConnection
°°0 =
(
°°= >
_connectionstring
°°> O
)
°°O P
)
°°P Q
{
±± 
conn
²² 
.
²² 
Open
²² 
(
²² 
)
²² 
;
²²  
foreach
³³ 
(
³³ 
string
³³ #
tagName
³³$ +
in
³³, .
listTagName
³³/ :
)
³³: ;
{
´´ 
using
µµ 
(
µµ 

SqlCommand
µµ )
command
µµ* 1
=
µµ2 3
new
µµ4 7

SqlCommand
µµ8 B
(
µµB C
$str
µµC Y
,
µµY Z
conn
µµ[ _
)
µµ_ `
)
µµ` a
{
¶¶ 
command
·· #
.
··# $
CommandType
··$ /
=
··0 1
CommandType
··2 =
.
··= >
StoredProcedure
··> M
;
··M N
command
¸¸ #
.
¸¸# $

Parameters
¸¸$ .
.
¸¸. /
AddWithValue
¸¸/ ;
(
¸¸; <
$str
¸¸< B
,
¸¸B C
$str
¸¸D F
)
¸¸F G
;
¸¸G H
command
¹¹ #
.
¹¹# $

Parameters
¹¹$ .
.
¹¹. /
AddWithValue
¹¹/ ;
(
¹¹; <
$str
¹¹< H
,
¹¹H I
tag
¹¹J M
.
¹¹M N
	AssetName
¹¹N W
)
¹¹W X
;
¹¹X Y
command
ºº #
.
ºº# $

Parameters
ºº$ .
.
ºº. /
AddWithValue
ºº/ ;
(
ºº; <
$str
ºº< L
,
ººL M
tagName
ººN U
)
ººU V
;
ººV W
command
»» #
.
»»# $

Parameters
»»$ .
.
»». /
AddWithValue
»»/ ;
(
»»; <
$str
»»< F
,
»»F G
tag
»»H K
.
»»K L
UOM
»»L O
)
»»O P
;
»»P Q
command
¼¼ #
.
¼¼# $

Parameters
¼¼$ .
.
¼¼. /
AddWithValue
¼¼/ ;
(
¼¼; <
$str
¼¼< K
,
¼¼K L
tag
¼¼M P
.
¼¼P Q

EnergyType
¼¼Q [
)
¼¼[ \
;
¼¼\ ]
command
½½ #
.
½½# $

Parameters
½½$ .
.
½½. /
AddWithValue
½½/ ;
(
½½; <
$str
½½< L
,
½½L M
tag
½½N Q
.
½½Q R
IsExponential
½½R _
)
½½_ `
;
½½` a
command
¾¾ #
.
¾¾# $

Parameters
¾¾$ .
.
¾¾. /
AddWithValue
¾¾/ ;
(
¾¾; <
$str
¾¾< H
,
¾¾H I
tag
¾¾J M
.
¾¾M N
	IsEnabled
¾¾N W
)
¾¾W X
;
¾¾X Y
command
¿¿ #
.
¿¿# $

Parameters
¿¿$ .
.
¿¿. /
AddWithValue
¿¿/ ;
(
¿¿; <
$str
¿¿< E
,
¿¿E F
tag
¿¿G J
.
¿¿J K
Target
¿¿K Q
)
¿¿Q R
;
¿¿R S
command
ÀÀ #
.
ÀÀ# $

Parameters
ÀÀ$ .
.
ÀÀ. /
Add
ÀÀ/ 2
(
ÀÀ2 3
$str
ÀÀ3 8
,
ÀÀ8 9
	SqlDbType
ÀÀ: C
.
ÀÀC D
NVarChar
ÀÀD L
,
ÀÀL M
size
ÀÀN R
:
ÀÀR S
$num
ÀÀT V
)
ÀÀV W
.
ÀÀW X
	Direction
ÀÀX a
=
ÀÀb c 
ParameterDirection
ÀÀd v
.
ÀÀv w
Output
ÀÀw }
;
ÀÀ} ~
command
ÁÁ #
.
ÁÁ# $
ExecuteNonQuery
ÁÁ$ 3
(
ÁÁ3 4
)
ÁÁ4 5
;
ÁÁ5 6
string
ÂÂ "
str
ÂÂ# &
=
ÂÂ' (
command
ÂÂ) 0
.
ÂÂ0 1

Parameters
ÂÂ1 ;
[
ÂÂ; <
$str
ÂÂ< A
]
ÂÂA B
.
ÂÂB C
Value
ÂÂC H
.
ÂÂH I
ToString
ÂÂI Q
(
ÂÂQ R
)
ÂÂR S
;
ÂÂS T
	tagIdList
ÃÃ %
.
ÃÃ% &
Add
ÃÃ& )
(
ÄÄ  !
new
ÄÄ! $
Tag
ÄÄ% (
{
ÄÄ) *
TagID
ÄÄ+ 0
=
ÄÄ1 2
str
ÄÄ3 6
??
ÄÄ7 9
$str
ÄÄ: <
,
ÄÄ< =
TagName
ÄÄ> E
=
ÄÄF G
tagName
ÄÄH O
}
ÄÄP Q
)
ÅÅ  !
;
ÅÅ! "
}
ÇÇ 
}
ÈÈ 
}
ÉÉ 
}
ËË 
catch
ÌÌ 
(
ÌÌ 
	Exception
ÌÌ 
ex
ÌÌ 
)
ÌÌ  
{
ÍÍ 
Logger
ÎÎ 
.
ÎÎ 
Log
ÎÎ 
(
ÎÎ 
ex
ÎÎ 
.
ÎÎ 
ToString
ÎÎ &
(
ÎÎ& '
)
ÎÎ' (
)
ÎÎ( )
;
ÎÎ) *
}
ĞĞ 
return
ÑÑ 
	tagIdList
ÑÑ 
;
ÑÑ 
}
ÒÒ 	
public
ÙÙ 
bool
ÙÙ $
AddProductionDailyInfo
ÙÙ *
(
ÙÙ* +
ProductionDaily
ÙÙ+ :
product
ÙÙ; B
)
ÙÙB C
{
ÚÚ 	
try
ÛÛ 
{
ÜÜ 
using
İİ 
(
İİ 
SqlConnection
İİ $
conn
İİ% )
=
İİ* +
new
İİ, /
SqlConnection
İİ0 =
(
İİ= >
_connectionstring
İİ> O
)
İİO P
)
İİP Q
{
ŞŞ 
conn
ßß 
.
ßß 
Open
ßß 
(
ßß 
)
ßß 
;
ßß  
using
áá 
(
áá 

SqlCommand
áá %
command
áá& -
=
áá. /
new
áá0 3

SqlCommand
áá4 >
(
áá> ?
$stráá? Ä
,ááÄ Å
connááÆ Ê
)ááÊ Ë
)ááË Ì
{
ââ 
command
ãã 
.
ãã  
CommandType
ãã  +
=
ãã, -
CommandType
ãã. 9
.
ãã9 :
Text
ãã: >
;
ãã> ?
command
åå 
.
åå  

Parameters
åå  *
.
åå* +
AddWithValue
åå+ 7
(
åå7 8
$str
åå8 C
,
ååC D
product
ååE L
.
ååL M
	Date_Time
ååM V
)
ååV W
;
ååW X
command
ææ 
.
ææ  

Parameters
ææ  *
.
ææ* +
AddWithValue
ææ+ 7
(
ææ7 8
$str
ææ8 B
,
ææB C
product
ææD K
.
ææK L
Shift_ID
ææL T
)
ææT U
;
ææU V
command
çç 
.
çç  

Parameters
çç  *
.
çç* +
AddWithValue
çç+ 7
(
çç7 8
$str
çç8 >
,
çç> ?
product
çç@ G
.
ççG H
URL
ççH K
)
ççK L
;
ççL M
command
èè 
.
èè  

Parameters
èè  *
.
èè* +
AddWithValue
èè+ 7
(
èè7 8
$str
èè8 @
,
èè@ A
product
èèB I
.
èèI J
Value
èèJ O
)
èèO P
;
èèP Q
command
éé 
.
éé  

Parameters
éé  *
.
éé* +
AddWithValue
éé+ 7
(
éé7 8
$str
éé8 >
,
éé> ?
product
éé@ G
.
ééG H
UOM
ééH K
)
ééK L
;
ééL M
command
êê 
.
êê  

Parameters
êê  *
.
êê* +
AddWithValue
êê+ 7
(
êê7 8
$str
êê8 B
,
êêB C
product
êêD K
.
êêK L
Asset_ID
êêL T
)
êêT U
;
êêU V
int
ìì 
i
ìì 
=
ìì 
command
ìì  '
.
ìì' (
ExecuteNonQuery
ìì( 7
(
ìì7 8
)
ìì8 9
;
ìì9 :
if
íí 
(
íí 
i
íí 
>=
íí  
$num
íí! "
)
íí" #
return
îî "
true
îî# '
;
îî' (
else
ïï 
return
ğğ "
false
ğğ# (
;
ğğ( )
}
ññ 
}
òò 
}
óó 
catch
õõ 
(
õõ 
	Exception
õõ 
ex
õõ 
)
õõ  
{
öö 
Logger
÷÷ 
.
÷÷ 
Log
÷÷ 
(
÷÷ 
ex
÷÷ 
.
÷÷ 
ToString
÷÷ &
(
÷÷& '
)
÷÷' (
)
÷÷( )
;
÷÷) *
}
øø 
return
ùù 
false
ùù 
;
ùù 
}
úú 	
public
 
bool
 $
AddSolidWasteDailyInfo
 *
(
* +
SolidWasteDaily
+ :
Solid
; @
)
@ A
{
‚‚ 	
try
ƒƒ 
{
„„ 
using
…… 
(
…… 
SqlConnection
…… $
conn
……% )
=
……* +
new
……, /
SqlConnection
……0 =
(
……= >
_connectionstring
……> O
)
……O P
)
……P Q
{
†† 
conn
‡‡ 
.
‡‡ 
Open
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡  
using
‰‰ 
(
‰‰ 

SqlCommand
‰‰ %
command
‰‰& -
=
‰‰. /
new
‰‰0 3

SqlCommand
‰‰4 >
(
‰‰> ?
$str
‰‰? W
,
‰‰W X
conn
‰‰Y ]
)
‰‰] ^
)
‰‰^ _
{
ŠŠ 
command
‹‹ 
.
‹‹  
CommandType
‹‹  +
=
‹‹, -
CommandType
‹‹. 9
.
‹‹9 :
StoredProcedure
‹‹: I
;
‹‹I J
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 C
,
C D
Solid
E J
.
J K
	Date_Time
K T
)
T U
;
U V
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 B
,
B C
Solid
D I
.
I J
Shift_ID
J R
)
R S
;
S T
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 >
,
> ?
Solid
@ E
.
E F
URL
F I
)
I J
;
J K
command
 
.
  

Parameters
  *
.
* +
AddWithValue
+ 7
(
7 8
$str
8 @
,
@ A
Solid
B G
.
G H
Value
H M
)
M N
;
N O
command
‘‘ 
.
‘‘  

Parameters
‘‘  *
.
‘‘* +
AddWithValue
‘‘+ 7
(
‘‘7 8
$str
‘‘8 >
,
‘‘> ?
Solid
‘‘@ E
.
‘‘E F
UOM
‘‘F I
)
‘‘I J
;
‘‘J K
command
’’ 
.
’’  

Parameters
’’  *
.
’’* +
AddWithValue
’’+ 7
(
’’7 8
$str
’’8 B
,
’’B C
Solid
’’D I
.
’’I J
Asset_ID
’’J R
)
’’R S
;
’’S T
int
”” 
i
”” 
=
”” 
command
””  '
.
””' (
ExecuteNonQuery
””( 7
(
””7 8
)
””8 9
;
””9 :
if
•• 
(
•• 
i
•• 
>=
••  
$num
••! "
)
••" #
return
–– "
true
––# '
;
––' (
else
—— 
return
˜˜ "
false
˜˜# (
;
˜˜( )
}
™™ 
}
šš 
}
›› 
catch
 
(
 
	Exception
 
ex
 
)
  
{
 
Logger
ŸŸ 
.
ŸŸ 
Log
ŸŸ 
(
ŸŸ 
ex
ŸŸ 
.
ŸŸ 
ToString
ŸŸ &
(
ŸŸ& '
)
ŸŸ' (
)
ŸŸ( )
;
ŸŸ) *
}
   
return
¡¡ 
false
¡¡ 
;
¡¡ 
}
¢¢ 	
public
ªª 
bool
ªª &
AddConsumptionActualInfo
ªª ,
(
ªª, -
EnergyConsumption
ªª- >
wage
ªª? C
)
ªªC D
{
«« 	
try
­­ 
{
®® 
using
¯¯ 
(
¯¯ 
SqlConnection
¯¯ $
conn
¯¯% )
=
¯¯* +
new
¯¯, /
SqlConnection
¯¯0 =
(
¯¯= >
_connectionstring
¯¯> O
)
¯¯O P
)
¯¯P Q
{
°° 
conn
±± 
.
±± 
Open
±± 
(
±± 
)
±± 
;
±±  
using
³³ 
(
³³ 

SqlCommand
³³ %
command
³³& -
=
³³. /
new
³³0 3

SqlCommand
³³4 >
(
³³> ?
$str
³³? Y
,
³³Y Z
conn
³³[ _
)
³³_ `
)
³³` a
{
´´ 
command
µµ 
.
µµ  
CommandType
µµ  +
=
µµ, -
CommandType
µµ. 9
.
µµ9 :
StoredProcedure
µµ: I
;
µµI J
command
·· 
.
··  

Parameters
··  *
.
··* +
AddWithValue
··+ 7
(
··7 8
$str
··8 @
,
··@ A
wage
··B F
.
··F G
MonthID
··G N
)
··N O
;
··O P
command
¸¸ 
.
¸¸  

Parameters
¸¸  *
.
¸¸* +
AddWithValue
¸¸+ 7
(
¸¸7 8
$str
¸¸8 ?
,
¸¸? @
wage
¸¸A E
.
¸¸E F
YearID
¸¸F L
)
¸¸L M
;
¸¸M N
command
¹¹ 
.
¹¹  

Parameters
¹¹  *
.
¹¹* +
AddWithValue
¹¹+ 7
(
¹¹7 8
$str
¹¹8 A
,
¹¹A B
wage
¹¹C G
.
¹¹G H
WageID
¹¹H N
)
¹¹N O
;
¹¹O P
command
ºº 
.
ºº  

Parameters
ºº  *
.
ºº* +
AddWithValue
ºº+ 7
(
ºº7 8
$str
ºº8 C
,
ººC D
wage
ººE I
.
ººI J
plant_id
ººJ R
)
ººR S
;
ººS T
command
»» 
.
»»  

Parameters
»»  *
.
»»* +
AddWithValue
»»+ 7
(
»»7 8
$str
»»8 F
,
»»F G
wage
»»H L
.
»»L M
Consumption
»»M X
)
»»X Y
;
»»Y Z
command
¼¼ 
.
¼¼  

Parameters
¼¼  *
.
¼¼* +
AddWithValue
¼¼+ 7
(
¼¼7 8
$str
¼¼8 >
,
¼¼> ?
wage
¼¼@ D
.
¼¼D E
UOM
¼¼E H
)
¼¼H I
;
¼¼I J
int
¿¿ 
i
¿¿ 
=
¿¿ 
command
¿¿  '
.
¿¿' (
ExecuteNonQuery
¿¿( 7
(
¿¿7 8
)
¿¿8 9
;
¿¿9 :
if
ÀÀ 
(
ÀÀ 
i
ÀÀ 
>=
ÀÀ  
$num
ÀÀ! "
)
ÀÀ" #
return
ÁÁ "
true
ÁÁ# '
;
ÁÁ' (
else
ÂÂ 
return
ÃÃ "
false
ÃÃ# (
;
ÃÃ( )
}
ÄÄ 
}
ÅÅ 
}
ÆÆ 
catch
ÈÈ 
(
ÈÈ 
	Exception
ÈÈ 
ex
ÈÈ 
)
ÈÈ  
{
ÉÉ 
Logger
ÊÊ 
.
ÊÊ 
Log
ÊÊ 
(
ÊÊ 
ex
ÊÊ 
.
ÊÊ 
ToString
ÊÊ &
(
ÊÊ& '
)
ÊÊ' (
)
ÊÊ( )
;
ÊÊ) *
}
ËË 
return
ÌÌ 
false
ÌÌ 
;
ÌÌ 
}
ÎÎ 	
public
ÖÖ 
bool
ÖÖ (
AddConsumptionBudgetedInfo
ÖÖ .
(
ÖÖ. /
	DataTable
ÖÖ/ 8
tblConsumption
ÖÖ9 G
)
ÖÖG H
{
×× 	
try
ÙÙ 
{
ÚÚ 
using
ÛÛ 
(
ÛÛ 
SqlConnection
ÛÛ $
conn
ÛÛ% )
=
ÛÛ* +
new
ÛÛ, /
SqlConnection
ÛÛ0 =
(
ÛÛ= >
_connectionstring
ÛÛ> O
)
ÛÛO P
)
ÛÛP Q
{
ÜÜ 
conn
ŞŞ 
.
ŞŞ 
Open
ŞŞ 
(
ŞŞ 
)
ŞŞ 
;
ŞŞ  
if
ßß 
(
ßß 
tblConsumption
ßß &
!=
ßß' )
null
ßß* .
)
ßß. /
{
àà 
SqlDataAdapter
áá &
da
áá' )
=
áá* +
new
áá, /
SqlDataAdapter
áá0 >
(
áá> ?
)
áá? @
;
áá@ A

SqlCommand
ââ "
InsCmd
ââ# )
=
ââ* +
conn
ââ, 0
.
ââ0 1
CreateCommand
ââ1 >
(
ââ> ?
)
ââ? @
;
ââ@ A
InsCmd
ãã 
.
ãã 
CommandText
ãã *
=
ãã+ ,
$strãã- Ì
;ããÌ Í
InsCmd
ää 
.
ää 

Parameters
ää )
.
ää) *
Add
ää* -
(
ää- .
$str
ää. 6
,
ää6 7
	SqlDbType
ää8 A
.
ääA B
VarChar
ääB I
)
ääI J
.
ääJ K
SourceColumn
ääK W
=
ääX Y
$str
ääZ a
;
ääa b
InsCmd
åå 
.
åå 

Parameters
åå )
.
åå) *
Add
åå* -
(
åå- .
$str
åå. 5
,
åå5 6
	SqlDbType
åå7 @
.
åå@ A
Int
ååA D
)
ååD E
.
ååE F
SourceColumn
ååF R
=
ååS T
$str
ååU [
;
åå[ \
InsCmd
ææ 
.
ææ 

Parameters
ææ )
.
ææ) *
Add
ææ* -
(
ææ- .
$str
ææ. ;
,
ææ; <
	SqlDbType
ææ= F
.
ææF G
VarChar
ææG N
)
ææN O
.
ææO P
SourceColumn
ææP \
=
ææ] ^
$str
ææ_ k
;
ææk l
InsCmd
çç 
.
çç 

Parameters
çç )
.
çç) *
Add
çç* -
(
çç- .
$str
çç. <
,
çç< =
	SqlDbType
çç> G
.
ççG H
VarChar
ççH O
)
ççO P
.
ççP Q
SourceColumn
ççQ ]
=
çç^ _
$str
çç` s
;
ççs t
InsCmd
èè 
.
èè 

Parameters
èè )
.
èè) *
Add
èè* -
(
èè- .
$str
èè. <
,
èè< =
	SqlDbType
èè> G
.
èèG H
VarChar
èèH O
)
èèO P
.
èèP Q
SourceColumn
èèQ ]
=
èè^ _
$str
èè` l
;
èèl m
da
êê 
.
êê 
InsertCommand
êê (
=
êê) *
InsCmd
êê+ 1
;
êê1 2
da
íí 
.
íí 
Update
íí !
(
íí! "
tblConsumption
íí" 0
)
íí0 1
;
íí1 2
return
îî 
true
îî #
;
îî# $
}
ïï 
}
òò 
return
óó 
true
óó 
;
óó 
}
ôô 
catch
öö 
(
öö 
	Exception
öö 
ex
öö 
)
öö  
{
÷÷ 
Logger
øø 
.
øø 
Log
øø 
(
øø 
ex
øø 
.
øø 
ToString
øø &
(
øø& '
)
øø' (
)
øø( )
;
øø) *
return
ùù 
false
ùù 
;
ùù 
}
úú 
}
ıı 	
public
şş 
List
şş 
<
şş 
string
şş 
>
şş #
RetrieveEquipmentInfo
şş 1
(
şş1 2
int
şş2 5
?
şş5 6
plantId
şş7 >
)
şş> ?
{
ÿÿ 	
List
€€ 
<
€€ 
string
€€ 
>
€€ 
equipmentList
€€ &
=
€€' (
new
€€) ,
List
€€- 1
<
€€1 2
string
€€2 8
>
€€8 9
(
€€9 :
)
€€: ;
;
€€; <
try
 
{
‚‚ 
using
ƒƒ 
(
ƒƒ 
SqlConnection
ƒƒ $

connection
ƒƒ% /
=
ƒƒ0 1
new
ƒƒ2 5
SqlConnection
ƒƒ6 C
(
ƒƒC D
_connectionstring
ƒƒD U
)
ƒƒU V
)
ƒƒV W
{
„„ 

connection
…… 
.
…… 
Open
…… #
(
……# $
)
……$ %
;
……% &
using
†† 
(
†† 

SqlCommand
†† %
command
††& -
=
††. /
new
††0 3

SqlCommand
††4 >
(
‡‡ 
$str‡‡ ¹
,
ˆˆ 

connection
ˆˆ $
)
ˆˆ$ %
)
ˆˆ% &
{
‰‰ 
command
ŠŠ 
.
ŠŠ  
CommandType
ŠŠ  +
=
ŠŠ, -
CommandType
ŠŠ. 9
.
ŠŠ9 :
Text
ŠŠ: >
;
ŠŠ> ?
command
‹‹ 
.
‹‹  

Parameters
‹‹  *
.
‹‹* +
AddWithValue
‹‹+ 7
(
‹‹7 8
$str
‹‹8 B
,
‹‹B C
plantId
‹‹D K
)
‹‹K L
;
‹‹L M
using
ŒŒ 
(
ŒŒ 
SqlDataReader
ŒŒ ,
reader
ŒŒ- 3
=
ŒŒ4 5
command
ŒŒ6 =
.
ŒŒ= >
ExecuteReader
ŒŒ> K
(
ŒŒK L
)
ŒŒL M
)
ŒŒM N
{
 
while
 !
(
" #
reader
# )
.
) *
Read
* .
(
. /
)
/ 0
)
0 1
{
 
equipmentList
  -
.
- .
Add
. 1
(
1 2
reader
2 8
[
8 9
$str
9 ?
]
? @
.
@ A
ToString
A I
(
I J
)
J K
)
K L
;
L M
}
‘‘ 
}
’’ 
}
““ 
}
•• 
}
—— 
catch
˜˜ 
(
˜˜ 
	Exception
˜˜ 
ex
˜˜ 
)
˜˜  
{
™™ 
Logger
šš 
.
šš 
Log
šš 
(
šš 
ex
šš 
.
šš 
ToString
šš &
(
šš& '
)
šš' (
)
šš( )
;
šš) *
}
›› 
return
œœ 
equipmentList
œœ  
;
œœ  !
}
 	
public
   
List
   
<
   
string
   
>
   
RetrieveAssetType
   -
(
  - .
)
  . /
{
¡¡ 	
List
¢¢ 
<
¢¢ 
string
¢¢ 
>
¢¢ 
assetTypeList
¢¢ &
=
¢¢' (
new
¢¢) ,
List
¢¢- 1
<
¢¢1 2
string
¢¢2 8
>
¢¢8 9
(
¢¢9 :
)
¢¢: ;
;
¢¢; <
try
££ 
{
¤¤ 
using
¥¥ 
(
¥¥ 
SqlConnection
¥¥ $

connection
¥¥% /
=
¥¥0 1
new
¥¥2 5
SqlConnection
¥¥6 C
(
¥¥C D
_connectionstring
¥¥D U
)
¥¥U V
)
¥¥V W
{
¦¦ 

connection
§§ 
.
§§ 
Open
§§ #
(
§§# $
)
§§$ %
;
§§% &
using
¨¨ 
(
¨¨ 

SqlCommand
¨¨ %
command
¨¨& -
=
¨¨. /
new
¨¨0 3

SqlCommand
¨¨4 >
(
©© 
$str
©© G
,
ªª 

connection
ªª $
)
ªª$ %
)
ªª% &
{
«« 
command
¬¬ 
.
¬¬  
CommandType
¬¬  +
=
¬¬, -
CommandType
¬¬. 9
.
¬¬9 :
Text
¬¬: >
;
¬¬> ?
using
­­ 
(
­­ 
SqlDataReader
­­ ,
reader
­­- 3
=
­­4 5
command
­­6 =
.
­­= >
ExecuteReader
­­> K
(
­­K L
)
­­L M
)
­­M N
{
®® 
while
¯¯ !
(
¯¯" #
reader
¯¯# )
.
¯¯) *
Read
¯¯* .
(
¯¯. /
)
¯¯/ 0
)
¯¯0 1
{
°° 
assetTypeList
±±  -
.
±±- .
Add
±±. 1
(
±±1 2
reader
±±2 8
[
±±8 9
$str
±±9 ?
]
±±? @
.
±±@ A
ToString
±±A I
(
±±I J
)
±±J K
)
±±K L
;
±±L M
}
²² 
}
³³ 
}
´´ 
}
¶¶ 
}
¸¸ 
catch
¹¹ 
(
¹¹ 
	Exception
¹¹ 
ex
¹¹ 
)
¹¹  
{
ºº 
Logger
»» 
.
»» 
Log
»» 
(
»» 
ex
»» 
.
»» 
ToString
»» &
(
»»& '
)
»»' (
)
»»( )
;
»») *
}
¼¼ 
return
½½ 
assetTypeList
½½  
;
½½  !
}
¾¾ 	
public
ÀÀ 
List
ÀÀ 
<
ÀÀ 
string
ÀÀ 
>
ÀÀ 
RetrieveAsset
ÀÀ )
(
ÀÀ) *
string
ÀÀ* 0
	assetType
ÀÀ1 :
)
ÀÀ: ;
{
ÁÁ 	
List
ÂÂ 
<
ÂÂ 
string
ÂÂ 
>
ÂÂ 
	assetList
ÂÂ "
=
ÂÂ# $
new
ÂÂ% (
List
ÂÂ) -
<
ÂÂ- .
string
ÂÂ. 4
>
ÂÂ4 5
(
ÂÂ5 6
)
ÂÂ6 7
;
ÂÂ7 8
try
ÃÃ 
{
ÄÄ 
using
ÅÅ 
(
ÅÅ 
SqlConnection
ÅÅ $

connection
ÅÅ% /
=
ÅÅ0 1
new
ÅÅ2 5
SqlConnection
ÅÅ6 C
(
ÅÅC D
_connectionstring
ÅÅD U
)
ÅÅU V
)
ÅÅV W
{
ÆÆ 

connection
ÇÇ 
.
ÇÇ 
Open
ÇÇ #
(
ÇÇ# $
)
ÇÇ$ %
;
ÇÇ% &
using
ÈÈ 
(
ÈÈ 

SqlCommand
ÈÈ %
command
ÈÈ& -
=
ÈÈ. /
new
ÈÈ0 3

SqlCommand
ÈÈ4 >
(
ÉÉ 
$strÉÉ ¤
,
ÊÊ 

connection
ÊÊ $
)
ÊÊ$ %
)
ÊÊ% &
{
ËË 
command
ÌÌ 
.
ÌÌ  
CommandType
ÌÌ  +
=
ÌÌ, -
CommandType
ÌÌ. 9
.
ÌÌ9 :
Text
ÌÌ: >
;
ÌÌ> ?
command
ÍÍ 
.
ÍÍ  

Parameters
ÍÍ  *
.
ÍÍ* +
AddWithValue
ÍÍ+ 7
(
ÍÍ7 8
$str
ÍÍ8 ?
,
ÍÍ? @
	assetType
ÍÍA J
)
ÍÍJ K
;
ÍÍK L
using
ÎÎ 
(
ÎÎ 
SqlDataReader
ÎÎ ,
reader
ÎÎ- 3
=
ÎÎ4 5
command
ÎÎ6 =
.
ÎÎ= >
ExecuteReader
ÎÎ> K
(
ÎÎK L
)
ÎÎL M
)
ÎÎM N
{
ÏÏ 
while
ĞĞ !
(
ĞĞ" #
reader
ĞĞ# )
.
ĞĞ) *
Read
ĞĞ* .
(
ĞĞ. /
)
ĞĞ/ 0
)
ĞĞ0 1
{
ÑÑ 
	assetList
ÒÒ  )
.
ÒÒ) *
Add
ÒÒ* -
(
ÒÒ- .
reader
ÒÒ. 4
[
ÒÒ4 5
$str
ÒÒ5 ;
]
ÒÒ; <
.
ÒÒ< =
ToString
ÒÒ= E
(
ÒÒE F
)
ÒÒF G
)
ÒÒG H
;
ÒÒH I
}
ÓÓ 
}
ÔÔ 
}
ÕÕ 
}
×× 
}
ÙÙ 
catch
ÚÚ 
(
ÚÚ 
	Exception
ÚÚ 
ex
ÚÚ 
)
ÚÚ  
{
ÛÛ 
Logger
ÜÜ 
.
ÜÜ 
Log
ÜÜ 
(
ÜÜ 
ex
ÜÜ 
.
ÜÜ 
ToString
ÜÜ &
(
ÜÜ& '
)
ÜÜ' (
)
ÜÜ( )
;
ÜÜ) *
}
İİ 
return
ŞŞ 
	assetList
ŞŞ 
;
ŞŞ 
}
ßß 	
public
åå 
List
åå 
<
åå 
string
åå 
>
åå $
RetrieveAssetByPlantId
åå 2
(
åå2 3
string
åå3 9
	assetType
åå: C
,
ååC D
int
ååE H
id
ååI K
)
ååK L
{
ææ 	
List
çç 
<
çç 
string
çç 
>
çç 
	assetList
çç "
=
çç# $
new
çç% (
List
çç) -
<
çç- .
string
çç. 4
>
çç4 5
(
çç5 6
)
çç6 7
;
çç7 8
try
èè 
{
éé 
using
êê 
(
êê 
SqlConnection
êê $

connection
êê% /
=
êê0 1
new
êê2 5
SqlConnection
êê6 C
(
êêC D
_connectionstring
êêD U
)
êêU V
)
êêV W
{
ëë 

connection
ìì 
.
ìì 
Open
ìì #
(
ìì# $
)
ìì$ %
;
ìì% &
using
íí 
(
íí 

SqlCommand
íí %
command
íí& -
=
íí. /
new
íí0 3

SqlCommand
íí4 >
(
íí> ?
$str
íí? I
,
ííI J

connection
ííK U
)
ííU V
)
ííV W
{
îî 
command
ïï 
.
ïï  
CommandType
ïï  +
=
ïï, -
CommandType
ïï. 9
.
ïï9 :
StoredProcedure
ïï: I
;
ïïI J
command
ğğ 
.
ğğ  

Parameters
ğğ  *
.
ğğ* +
AddWithValue
ğğ+ 7
(
ğğ7 8
$str
ğğ8 D
,
ğğD E
	assetType
ğğF O
)
ğğO P
;
ğğP Q
command
ññ 
.
ññ  

Parameters
ññ  *
.
ññ* +
AddWithValue
ññ+ 7
(
ññ7 8
$str
ññ8 B
,
ññB C
id
ññD F
)
ññF G
;
ññG H
using
òò 
(
òò 
SqlDataReader
òò ,
reader
òò- 3
=
òò4 5
command
òò6 =
.
òò= >
ExecuteReader
òò> K
(
òòK L
)
òòL M
)
òòM N
{
óó 
while
ôô !
(
ôô" #
reader
ôô# )
.
ôô) *
Read
ôô* .
(
ôô. /
)
ôô/ 0
)
ôô0 1
{
õõ 
	assetList
öö  )
.
öö) *
Add
öö* -
(
öö- .
reader
öö. 4
[
öö4 5
$str
öö5 ;
]
öö; <
.
öö< =
ToString
öö= E
(
ööE F
)
ööF G
)
ööG H
;
ööH I
}
÷÷ 
}
øø 
}
ùù 
}
ûû 
}
ıı 
catch
şş 
(
şş 
	Exception
şş 
ex
şş 
)
şş  
{
ÿÿ 
Logger
€	€	 
.
€	€	 
Log
€	€	 
(
€	€	 
ex
€	€	 
.
€	€	 
ToString
€	€	 &
(
€	€	& '
)
€	€	' (
)
€	€	( )
;
€	€	) *
}
		 
return
‚	‚	 
	assetList
‚	‚	 
;
‚	‚	 
}
ƒ	ƒ	 	
public
„	„	 
int
„	„	 
AddEquipmentInfo
„	„	 #
(
„	„	# $
	Equipment
„	„	$ -
	equipment
„	„	. 7
)
„	„	7 8
{
…	…	 	
try
†	†	 
{
‡	‡	 
using
ˆ	ˆ	 
(
ˆ	ˆ	 
SqlConnection
ˆ	ˆ	 $
conn
ˆ	ˆ	% )
=
ˆ	ˆ	* +
new
ˆ	ˆ	, /
SqlConnection
ˆ	ˆ	0 =
(
ˆ	ˆ	= >
_connectionstring
ˆ	ˆ	> O
)
ˆ	ˆ	O P
)
ˆ	ˆ	P Q
{
‰	‰	 
conn
Š	Š	 
.
Š	Š	 
Open
Š	Š	 
(
Š	Š	 
)
Š	Š	 
;
Š	Š	  
using
Œ	Œ	 
(
Œ	Œ	 

SqlCommand
Œ	Œ	 %
command
Œ	Œ	& -
=
Œ	Œ	. /
new
Œ	Œ	0 3

SqlCommand
Œ	Œ	4 >
(
Œ	Œ	> ?
$str
Œ	Œ	? ^
,
Œ	Œ	^ _
conn
Œ	Œ	` d
)
Œ	Œ	d e
)
Œ	Œ	e f
{
		 
command
		 
.
		  
CommandType
		  +
=
		, -
CommandType
		. 9
.
		9 :
StoredProcedure
		: I
;
		I J
command
		 
.
		  

Parameters
		  *
.
		* +
AddWithValue
		+ 7
(
		7 8
$str
		8 ?
,
		? @
	equipment
		A J
.
		J K
EquipmentName
		K X
)
		X Y
;
		Y Z
command
‘	‘	 
.
‘	‘	  

Parameters
‘	‘	  *
.
‘	‘	* +
AddWithValue
‘	‘	+ 7
(
‘	‘	7 8
$str
‘	‘	8 F
,
‘	‘	F G
	equipment
‘	‘	H Q
.
‘	‘	Q R
EquipmentType
‘	‘	R _
)
‘	‘	_ `
;
‘	‘	` a
command
’	’	 
.
’	’	  

Parameters
’	’	  *
.
’	’	* +
AddWithValue
’	’	+ 7
(
’	’	7 8
$str
’	’	8 C
,
’	’	C D
	equipment
’	’	E N
.
’	’	N O
PlantId
’	’	O V
)
’	’	V W
;
’	’	W X
command
“	“	 
.
“	“	  

Parameters
“	“	  *
.
“	“	* +
AddWithValue
“	“	+ 7
(
“	“	7 8
$str
“	“	8 E
,
“	“	E F
DateTime
“	“	G O
.
“	“	O P
Now
“	“	P S
)
“	“	S T
;
“	“	T U
command
”	”	 
.
”	”	  

Parameters
”	”	  *
.
”	”	* +
AddWithValue
”	”	+ 7
(
”	”	7 8
$str
”	”	8 E
,
”	”	E F
	equipment
”	”	G P
.
”	”	P Q
	CreatedBy
”	”	Q Z
)
”	”	Z [
;
”	”	[ \
command
•	•	 
.
•	•	  

Parameters
•	•	  *
.
•	•	* +
AddWithValue
•	•	+ 7
(
•	•	7 8
$str
•	•	8 F
,
•	•	F G
	equipment
•	•	H Q
.
•	•	Q R

ModifiedBy
•	•	R \
)
•	•	\ ]
;
•	•	] ^
command
–	–	 
.
–	–	  

Parameters
–	–	  *
.
–	–	* +
AddWithValue
–	–	+ 7
(
–	–	7 8
$str
–	–	8 F
,
–	–	F G
DateTime
–	–	H P
.
–	–	P Q
Now
–	–	Q T
)
–	–	T U
;
–	–	U V
command
—	—	 
.
—	—	  

Parameters
—	—	  *
.
—	—	* +
AddWithValue
—	—	+ 7
(
—	—	7 8
$str
—	—	8 A
,
—	—	A B
$str
—	—	C F
)
—	—	F G
;
—	—	G H
command
˜	˜	 
.
˜	˜	  

Parameters
˜	˜	  *
.
˜	˜	* +
Add
˜	˜	+ .
(
˜	˜	. /
$str
˜	˜	/ 4
,
˜	˜	4 5
	SqlDbType
˜	˜	6 ?
.
˜	˜	? @
Int
˜	˜	@ C
)
˜	˜	C D
.
˜	˜	D E
	Direction
˜	˜	E N
=
˜	˜	O P 
ParameterDirection
˜	˜	Q c
.
˜	˜	c d
Output
˜	˜	d j
;
˜	˜	j k
command
™	™	 
.
™	™	  
ExecuteNonQuery
™	™	  /
(
™	™	/ 0
)
™	™	0 1
;
™	™	1 2
int
š	š	 
assetId
š	š	 #
;
š	š	# $
string
›	›	 
str
›	›	 "
=
›	›	# $
command
›	›	% ,
.
›	›	, -

Parameters
›	›	- 7
[
›	›	7 8
$str
›	›	8 =
]
›	›	= >
.
›	›	> ?
Value
›	›	? D
.
›	›	D E
ToString
›	›	E M
(
›	›	M N
)
›	›	N O
;
›	›	O P
if
œ	œ	 
(
œ	œ	 
!
œ	œ	 
string
œ	œ	 #
.
œ	œ	# $
IsNullOrEmpty
œ	œ	$ 1
(
œ	œ	1 2
str
œ	œ	2 5
)
œ	œ	5 6
&&
œ	œ	7 9
int
œ	œ	: =
.
œ	œ	= >
TryParse
œ	œ	> F
(
œ	œ	F G
str
œ	œ	G J
,
œ	œ	J K
out
œ	œ	L O
assetId
œ	œ	P W
)
œ	œ	W X
)
œ	œ	X Y
return
		 "
assetId
		# *
;
		* +
}
		 
}
Ÿ	Ÿ	 
return
 	 	 
$num
 	 	 
;
 	 	 
}
¡	¡	 
catch
£	£	 
(
£	£	 
	Exception
£	£	 
ex
£	£	 
)
£	£	  
{
¤	¤	 
Logger
¥	¥	 
.
¥	¥	 
Log
¥	¥	 
(
¥	¥	 
ex
¥	¥	 
.
¥	¥	 
ToString
¥	¥	 &
(
¥	¥	& '
)
¥	¥	' (
)
¥	¥	( )
;
¥	¥	) *
return
¦	¦	 
$num
¦	¦	 
;
¦	¦	 
}
§	§	 
}
©	©	 	
public
ª	ª	 
bool
ª	ª	 
AddShiftInfo
ª	ª	  
(
ª	ª	  !
Shift
ª	ª	! &
shift
ª	ª	' ,
)
ª	ª	, -
{
«	«	 	
try
¬	¬	 
{
­	­	 
using
®	®	 
(
®	®	 
SqlConnection
®	®	 $
conn
®	®	% )
=
®	®	* +
new
®	®	, /
SqlConnection
®	®	0 =
(
®	®	= >
_connectionstring
®	®	> O
)
®	®	O P
)
®	®	P Q
{
¯	¯	 
conn
°	°	 
.
°	°	 
Open
°	°	 
(
°	°	 
)
°	°	 
;
°	°	  
using
²	²	 
(
²	²	 

SqlCommand
²	²	 %
command
²	²	& -
=
²	²	. /
new
²	²	0 3

SqlCommand
²	²	4 >
(
²	²	> ?
$str
²	²	? U
,
²	²	U V
conn
²	²	W [
)
²	²	[ \
)
²	²	\ ]
{
³	³	 
command
´	´	 
.
´	´	  
CommandType
´	´	  +
=
´	´	, -
CommandType
´	´	. 9
.
´	´	9 :
StoredProcedure
´	´	: I
;
´	´	I J
command
¶	¶	 
.
¶	¶	  

Parameters
¶	¶	  *
.
¶	¶	* +
AddWithValue
¶	¶	+ 7
(
¶	¶	7 8
$str
¶	¶	8 B
,
¶	¶	B C
shift
¶	¶	D I
.
¶	¶	I J
PlantId
¶	¶	J Q
)
¶	¶	Q R
;
¶	¶	R S
command
·	·	 
.
·	·	  

Parameters
·	·	  *
.
·	·	* +
AddWithValue
·	·	+ 7
(
·	·	7 8
$str
·	·	8 D
,
·	·	D E
shift
·	·	F K
.
·	·	K L
	ShiftName
·	·	L U
)
·	·	U V
;
·	·	V W
command
¸	¸	 
.
¸	¸	  

Parameters
¸	¸	  *
.
¸	¸	* +
AddWithValue
¸	¸	+ 7
(
¸	¸	7 8
$str
¸	¸	8 D
,
¸	¸	D E
shift
¸	¸	F K
.
¸	¸	K L
	StartDate
¸	¸	L U
)
¸	¸	U V
;
¸	¸	V W
command
¹	¹	 
.
¹	¹	  

Parameters
¹	¹	  *
.
¹	¹	* +
AddWithValue
¹	¹	+ 7
(
¹	¹	7 8
$str
¹	¹	8 B
,
¹	¹	B C
shift
¹	¹	D I
.
¹	¹	I J
EndDate
¹	¹	J Q
)
¹	¹	Q R
;
¹	¹	R S
command
º	º	 
.
º	º	  

Parameters
º	º	  *
.
º	º	* +
AddWithValue
º	º	+ 7
(
º	º	7 8
$str
º	º	8 D
,
º	º	D E
shift
º	º	F K
.
º	º	K L
	StartHour
º	º	L U
)
º	º	U V
;
º	º	V W
command
»	»	 
.
»	»	  

Parameters
»	»	  *
.
»	»	* +
AddWithValue
»	»	+ 7
(
»	»	7 8
$str
»	»	8 B
,
»	»	B C
shift
»	»	D I
.
»	»	I J
EndHour
»	»	J Q
)
»	»	Q R
;
»	»	R S
command
¼	¼	 
.
¼	¼	  

Parameters
¼	¼	  *
.
¼	¼	* +
AddWithValue
¼	¼	+ 7
(
¼	¼	7 8
$str
¼	¼	8 A
,
¼	¼	A B
shift
¼	¼	C H
.
¼	¼	H I
Active
¼	¼	I O
)
¼	¼	O P
;
¼	¼	P Q
command
½	½	 
.
½	½	  

Parameters
½	½	  *
.
½	½	* +
AddWithValue
½	½	+ 7
(
½	½	7 8
$str
½	½	8 D
,
½	½	D E
shift
½	½	F K
.
½	½	K L
	CreatedDt
½	½	L U
)
½	½	U V
;
½	½	V W
command
¾	¾	 
.
¾	¾	  

Parameters
¾	¾	  *
.
¾	¾	* +
AddWithValue
¾	¾	+ 7
(
¾	¾	7 8
$str
¾	¾	8 D
,
¾	¾	D E
shift
¾	¾	F K
.
¾	¾	K L
	CreatedBy
¾	¾	L U
)
¾	¾	U V
;
¾	¾	V W
command
¿	¿	 
.
¿	¿	  

Parameters
¿	¿	  *
.
¿	¿	* +
AddWithValue
¿	¿	+ 7
(
¿	¿	7 8
$str
¿	¿	8 E
,
¿	¿	E F
shift
¿	¿	G L
.
¿	¿	L M

ModifiedBy
¿	¿	M W
)
¿	¿	W X
;
¿	¿	X Y
command
À	À	 
.
À	À	  

Parameters
À	À	  *
.
À	À	* +
AddWithValue
À	À	+ 7
(
À	À	7 8
$str
À	À	8 E
,
À	À	E F
shift
À	À	G L
.
À	À	L M

ModifiedDt
À	À	M W
)
À	À	W X
;
À	À	X Y
command
Á	Á	 
.
Á	Á	  
ExecuteNonQuery
Á	Á	  /
(
Á	Á	/ 0
)
Á	Á	0 1
;
Á	Á	1 2
}
Â	Â	 
}
Ã	Ã	 
return
Ä	Ä	 
true
Ä	Ä	 
;
Ä	Ä	 
}
Å	Å	 
catch
Ç	Ç	 
(
Ç	Ç	 
	Exception
Ç	Ç	 
ex
Ç	Ç	 
)
Ç	Ç	  
{
È	È	 
Logger
É	É	 
.
É	É	 
Log
É	É	 
(
É	É	 
ex
É	É	 
.
É	É	 
ToString
É	É	 &
(
É	É	& '
)
É	É	' (
)
É	É	( )
;
É	É	) *
return
Ê	Ê	 
false
Ê	Ê	 
;
Ê	Ê	 
}
Ë	Ë	 
}
Í	Í	 	
public
Ï	Ï	 
List
Ï	Ï	 
<
Ï	Ï	 
Shift
Ï	Ï	 
>
Ï	Ï	 
RetrieveShiftInfo
Ï	Ï	 ,
(
Ï	Ï	, -
)
Ï	Ï	- .
{
Ğ	Ğ	 	
List
Ñ	Ñ	 
<
Ñ	Ñ	 
Shift
Ñ	Ñ	 
>
Ñ	Ñ	 
	ShiftList
Ñ	Ñ	 !
=
Ñ	Ñ	" #
new
Ñ	Ñ	$ '
List
Ñ	Ñ	( ,
<
Ñ	Ñ	, -
Shift
Ñ	Ñ	- 2
>
Ñ	Ñ	2 3
(
Ñ	Ñ	3 4
)
Ñ	Ñ	4 5
;
Ñ	Ñ	5 6
try
Ò	Ò	 
{
Ó	Ó	 
int
Ô	Ô	 
shiftID
Ô	Ô	 
;
Ô	Ô	 
int
Õ	Õ	 
plantId
Õ	Õ	 
;
Õ	Õ	 
using
Ö	Ö	 
(
Ö	Ö	 
SqlConnection
Ö	Ö	 $

connection
Ö	Ö	% /
=
Ö	Ö	0 1
new
Ö	Ö	2 5
SqlConnection
Ö	Ö	6 C
(
Ö	Ö	C D
_connectionstring
Ö	Ö	D U
)
Ö	Ö	U V
)
Ö	Ö	V W
{
×	×	 

connection
Ø	Ø	 
.
Ø	Ø	 
Open
Ø	Ø	 #
(
Ø	Ø	# $
)
Ø	Ø	$ %
;
Ø	Ø	% &
using
Ù	Ù	 
(
Ù	Ù	 

SqlCommand
Ù	Ù	 %
command
Ù	Ù	& -
=
Ù	Ù	. /
new
Ù	Ù	0 3

SqlCommand
Ù	Ù	4 >
(
Ù	Ù	> ?
$str
Ù	Ù	? g
,
Ù	Ù	g h

connection
Ù	Ù	i s
)
Ù	Ù	s t
)
Ù	Ù	t u
{
Ú	Ú	 
command
Û	Û	 
.
Û	Û	  
CommandType
Û	Û	  +
=
Û	Û	, -
CommandType
Û	Û	. 9
.
Û	Û	9 :
Text
Û	Û	: >
;
Û	Û	> ?
using
Ü	Ü	 
(
Ü	Ü	 
SqlDataReader
Ü	Ü	 ,
reader
Ü	Ü	- 3
=
Ü	Ü	4 5
command
Ü	Ü	6 =
.
Ü	Ü	= >
ExecuteReader
Ü	Ü	> K
(
Ü	Ü	K L
)
Ü	Ü	L M
)
Ü	Ü	M N
{
İ	İ	 
while
Ş	Ş	 !
(
Ş	Ş	" #
reader
Ş	Ş	# )
.
Ş	Ş	) *
Read
Ş	Ş	* .
(
Ş	Ş	. /
)
Ş	Ş	/ 0
)
Ş	Ş	0 1
{
ß	ß	 
	ShiftList
à	à	  )
.
à	à	) *
Add
à	à	* -
(
á	á	$ %
new
â	â	$ '
Shift
â	â	( -
{
ã	ã	$ %
ShiftId
ä	ä	( /
=
ä	ä	0 1
int
ä	ä	2 5
.
ä	ä	5 6
TryParse
ä	ä	6 >
(
ä	ä	> ?
reader
ä	ä	? E
[
ä	ä	E F
$str
ä	ä	F J
]
ä	ä	J K
.
ä	ä	K L
ToString
ä	ä	L T
(
ä	ä	T U
)
ä	ä	U V
,
ä	ä	V W
out
ä	ä	X [
shiftID
ä	ä	\ c
)
ä	ä	c d
?
ä	ä	e f
shiftID
ä	ä	g n
:
ä	ä	o p
(
ä	ä	q r
int
ä	ä	r u
?
ä	ä	u v
)
ä	ä	v w
null
ä	ä	w {
,
ä	ä	{ |
PlantId
å	å	( /
=
å	å	0 1
int
å	å	2 5
.
å	å	5 6
TryParse
å	å	6 >
(
å	å	> ?
reader
å	å	? E
[
å	å	E F
$str
å	å	F P
]
å	å	P Q
.
å	å	Q R
ToString
å	å	R Z
(
å	å	Z [
)
å	å	[ \
,
å	å	\ ]
out
å	å	^ a
plantId
å	å	b i
)
å	å	i j
?
å	å	k l
plantId
å	å	m t
:
å	å	u v
(
å	å	w x
int
å	å	x {
?
å	å	{ |
)
å	å	| }
nullå	å	} 
,å	å	 ‚
	ShiftName
æ	æ	( 1
=
æ	æ	2 3
reader
æ	æ	4 :
[
æ	æ	: ;
$str
æ	æ	; A
]
æ	æ	A B
.
æ	æ	B C
ToString
æ	æ	C K
(
æ	æ	K L
)
æ	æ	L M
,
æ	æ	M N
	StartDate
ç	ç	( 1
=
ç	ç	2 3
Convert
ç	ç	4 ;
.
ç	ç	; <

ToDateTime
ç	ç	< F
(
ç	ç	F G
reader
ç	ç	G M
[
ç	ç	M N
$str
ç	ç	N Z
]
ç	ç	Z [
)
ç	ç	[ \
,
ç	ç	\ ]
EndDate
è	è	( /
=
è	è	0 1
Convert
è	è	2 9
.
è	è	9 :

ToDateTime
è	è	: D
(
è	è	D E
reader
è	è	E K
[
è	è	K L
$str
è	è	L V
]
è	è	V W
)
è	è	W X
,
è	è	X Y
	StartHour
é	é	( 1
=
é	é	2 3
Convert
é	é	4 ;
.
é	é	; <
ToInt32
é	é	< C
(
é	é	C D
reader
é	é	D J
[
é	é	J K
$str
é	é	K W
]
é	é	W X
)
é	é	X Y
,
é	é	Y Z
EndHour
ê	ê	( /
=
ê	ê	0 1
Convert
ê	ê	2 9
.
ê	ê	9 :
ToInt32
ê	ê	: A
(
ê	ê	A B
reader
ê	ê	B H
[
ê	ê	H I
$str
ê	ê	I S
]
ê	ê	S T
)
ê	ê	T U
,
ê	ê	U V
Active
ë	ë	( .
=
ë	ë	/ 0
reader
ë	ë	1 7
[
ë	ë	7 8
$str
ë	ë	8 @
]
ë	ë	@ A
.
ë	ë	A B
ToString
ë	ë	B J
(
ë	ë	J K
)
ë	ë	K L
}
í	í	$ %
)
î	î	$ %
;
î	î	% &
}
ï	ï	 
}
ğ	ğ	 
}
ñ	ñ	 
}
ó	ó	 
}
õ	õ	 
catch
ö	ö	 
(
ö	ö	 
	Exception
ö	ö	 
ex
ö	ö	 
)
ö	ö	  
{
÷	÷	 
Logger
ø	ø	 
.
ø	ø	 
Log
ø	ø	 
(
ø	ø	 
ex
ø	ø	 
.
ø	ø	 
ToString
ø	ø	 &
(
ø	ø	& '
)
ø	ø	' (
)
ø	ø	( )
;
ø	ø	) *
}
ù	ù	 
return
ú	ú	 
	ShiftList
ú	ú	 
;
ú	ú	 
}
û	û	 	
public
ı	ı	 
bool
ı	ı	 
AddDataSource
ı	ı	 !
(
ı	ı	! "

DataSource
ı	ı	" ,
source
ı	ı	- 3
)
ı	ı	3 4
{
ş	ş	 	
try
ÿ	ÿ	 
{
€
€
 
using


 
(


 
SqlConnection


 $
conn


% )
=


* +
new


, /
SqlConnection


0 =
(


= >
_connectionstring


> O
)


O P
)


P Q
{
‚
‚
 
conn
ƒ
ƒ
 
.
ƒ
ƒ
 
Open
ƒ
ƒ
 
(
ƒ
ƒ
 
)
ƒ
ƒ
 
;
ƒ
ƒ
  
using
…
…
 
(
…
…
 

SqlCommand
…
…
 %
command
…
…
& -
=
…
…
. /
new
…
…
0 3

SqlCommand
…
…
4 >
(
…
…
> ?
$str
…
…
? R
,
…
…
R S
conn
…
…
T X
)
…
…
X Y
)
…
…
Y Z
{
†
†
 
command
‡
‡
 
.
‡
‡
  
CommandType
‡
‡
  +
=
‡
‡
, -
CommandType
‡
‡
. 9
.
‡
‡
9 :
StoredProcedure
‡
‡
: I
;
‡
‡
I J
command
‰
‰
 
.
‰
‰
  

Parameters
‰
‰
  *
.
‰
‰
* +
AddWithValue
‰
‰
+ 7
(
‰
‰
7 8
$str
‰
‰
8 I
,
‰
‰
I J
source
‰
‰
K Q
.
‰
‰
Q R
HistorianType
‰
‰
R _
)
‰
‰
_ `
;
‰
‰
` a
command
Š
Š
 
.
Š
Š
  

Parameters
Š
Š
  *
.
Š
Š
* +
AddWithValue
Š
Š
+ 7
(
Š
Š
7 8
$str
Š
Š
8 F
,
Š
Š
F G
source
Š
Š
H N
.
Š
Š
N O

ServerName
Š
Š
O Y
)
Š
Š
Y Z
;
Š
Š
Z [
command
‹
‹
 
.
‹
‹
  
ExecuteNonQuery
‹
‹
  /
(
‹
‹
/ 0
)
‹
‹
0 1
;
‹
‹
1 2
}
Œ
Œ
 
}


 
return


 
true


 
;


 
}


 
catch
‘
‘
 
(
‘
‘
 
	Exception
‘
‘
 
ex
‘
‘
 
)
‘
‘
  
{
’
’
 
Logger
“
“
 
.
“
“
 
Log
“
“
 
(
“
“
 
ex
“
“
 
.
“
“
 
ToString
“
“
 &
(
“
“
& '
)
“
“
' (
)
“
“
( )
;
“
“
) *
return
”
”
 
false
”
”
 
;
”
”
 
}
•
•
 
}
—
—
 	
public
™
™
 
bool
™
™
 
IsDeviceAvailable
™
™
 %
(
™
™
% &
string
™
™
& ,
macID
™
™
- 2
)
™
™
2 3
{
š
š
 	
try
œ
œ
 
{


 
if
Ÿ
Ÿ
 
(
Ÿ
Ÿ
 
!
Ÿ
Ÿ
 
string
Ÿ
Ÿ
 
.
Ÿ
Ÿ
 
IsNullOrEmpty
Ÿ
Ÿ
 )
(
Ÿ
Ÿ
) *
_connectionstring
Ÿ
Ÿ
* ;
)
Ÿ
Ÿ
; <
)
Ÿ
Ÿ
< =
{
 
 
 
using
¡
¡
 
(
¡
¡
 
SqlConnection
¡
¡
 (
con
¡
¡
) ,
=
¡
¡
- .
new
¡
¡
/ 2
SqlConnection
¡
¡
3 @
(
¡
¡
@ A
_connectionstring
¡
¡
A R
)
¡
¡
R S
)
¡
¡
S T
{
¢
¢
 

SqlCommand
¤
¤
 "
command
¤
¤
# *
=
¤
¤
+ ,
new
¤
¤
- 0

SqlCommand
¤
¤
1 ;
(
¤
¤
; <
$str
¤
¤
< q
,
¤
¤
q r
con
¤
¤
s v
)
¤
¤
v w
;
¤
¤
w x
SqlParameter
¥
¥
 $
param
¥
¥
% *
=
¥
¥
+ ,
new
¥
¥
- 0
SqlParameter
¥
¥
1 =
(
¥
¥
= >
)
¥
¥
> ?
;
¥
¥
? @
param
¦
¦
 
.
¦
¦
 
ParameterName
¦
¦
 +
=
¦
¦
, -
$str
¦
¦
. 3
;
¦
¦
3 4
param
§
§
 
.
§
§
 
Value
§
§
 #
=
§
§
$ %
macID
§
§
& +
;
§
§
+ ,
command
¨
¨
 
.
¨
¨
  

Parameters
¨
¨
  *
.
¨
¨
* +
Add
¨
¨
+ .
(
¨
¨
. /
param
¨
¨
/ 4
)
¨
¨
4 5
;
¨
¨
5 6
con
©
©
 
.
©
©
 
Open
©
©
  
(
©
©
  !
)
©
©
! "
;
©
©
" #
int
ª
ª
 
i
ª
ª
 
=
ª
ª
 
Convert
ª
ª
  '
.
ª
ª
' (
ToInt32
ª
ª
( /
(
ª
ª
/ 0
command
ª
ª
0 7
.
ª
ª
7 8
ExecuteScalar
ª
ª
8 E
(
ª
ª
E F
)
ª
ª
F G
)
ª
ª
G H
;
ª
ª
H I
if
«
«
 
(
«
«
 
i
«
«
 
>
«
«
 
$num
«
«
  !
)
«
«
! "
return
¬
¬
 "
true
¬
¬
# '
;
¬
¬
' (
else
­
­
 
return
®
®
 "
false
®
®
# (
;
®
®
( )
}
¯
¯
 
}
°
°
 
}
³
³
 
catch
´
´
 
(
´
´
 
SqlException
´
´
 
ex
´
´
  "
)
´
´
" #
{
µ
µ
 
Logger
¶
¶
 
.
¶
¶
 
Log
¶
¶
 
(
¶
¶
 
ex
¶
¶
 
.
¶
¶
 
ToString
¶
¶
 &
(
¶
¶
& '
)
¶
¶
' (
)
¶
¶
( )
;
¶
¶
) *
}
·
·
 
return
¸
¸
 
false
¸
¸
 
;
¸
¸
 
}
º
º
 	
public
¼
¼
 
string
¼
¼
 
getRolesInfo
¼
¼
 "
(
¼
¼
" #
string
¼
¼
# )
userName
¼
¼
* 2
)
¼
¼
2 3
{
½
½
 	
string
¾
¾
 
roles
¾
¾
 
;
¾
¾
 
using
¿
¿
 
(
¿
¿
 
SqlConnection
¿
¿
  
con
¿
¿
! $
=
¿
¿
% &
new
¿
¿
' *
SqlConnection
¿
¿
+ 8
(
¿
¿
8 9
_connectionstring
¿
¿
9 J
)
¿
¿
J K
)
¿
¿
K L
{
À
À
 

SqlCommand
Â
Â
 
command
Â
Â
 "
=
Â
Â
# $
new
Â
Â
% (

SqlCommand
Â
Â
) 3
(
Â
Â
3 4
$str
Â
Â
4 e
,
Â
Â
e f
con
Â
Â
g j
)
Â
Â
j k
;
Â
Â
k l
SqlParameter
Ã
Ã
 
param
Ã
Ã
 "
=
Ã
Ã
# $
new
Ã
Ã
% (
SqlParameter
Ã
Ã
) 5
(
Ã
Ã
5 6
)
Ã
Ã
6 7
;
Ã
Ã
7 8
param
Ä
Ä
 
.
Ä
Ä
 
ParameterName
Ä
Ä
 #
=
Ä
Ä
$ %
$str
Ä
Ä
& +
;
Ä
Ä
+ ,
param
Å
Å
 
.
Å
Å
 
Value
Å
Å
 
=
Å
Å
 
userName
Å
Å
 &
;
Å
Å
& '
command
Æ
Æ
 
.
Æ
Æ
 

Parameters
Æ
Æ
 "
.
Æ
Æ
" #
Add
Æ
Æ
# &
(
Æ
Æ
& '
param
Æ
Æ
' ,
)
Æ
Æ
, -
;
Æ
Æ
- .
con
Ç
Ç
 
.
Ç
Ç
 
Open
Ç
Ç
 
(
Ç
Ç
 
)
Ç
Ç
 
;
Ç
Ç
 
roles
È
È
 
=
È
È
 
command
È
È
 
.
È
È
  
ExecuteScalar
È
È
  -
(
È
È
- .
)
È
È
. /
.
È
È
/ 0
ToString
È
È
0 8
(
È
È
8 9
)
È
È
9 :
;
È
È
: ;
if
É
É
 
(
É
É
 
!
É
É
 
string
É
É
 
.
É
É
 
IsNullOrEmpty
É
É
 )
(
É
É
) *
roles
É
É
* /
)
É
É
/ 0
)
É
É
0 1
return
Ê
Ê
 
roles
Ê
Ê
  
;
Ê
Ê
  !
else
Ë
Ë
 
return
Ì
Ì
 
$str
Ì
Ì
 
;
Ì
Ì
 
}
Î
Î
 
}
Ğ
Ğ
 	
public
Ö
Ö
 
List
Ö
Ö
 
<
Ö
Ö
 
TagMappingDetails
Ö
Ö
 %
>
Ö
Ö
% &+
GetTagMappingDetailsOnPlantId
Ö
Ö
' D
(
Ö
Ö
D E
int
Ö
Ö
E H
id
Ö
Ö
I K
)
Ö
Ö
K L
{
×
×
 	
List
Ø
Ø
 
<
Ø
Ø
 
TagMappingDetails
Ø
Ø
 "
>
Ø
Ø
" #
	assetList
Ø
Ø
$ -
=
Ø
Ø
. /
new
Ø
Ø
0 3
List
Ø
Ø
4 8
<
Ø
Ø
8 9
TagMappingDetails
Ø
Ø
9 J
>
Ø
Ø
J K
(
Ø
Ø
K L
)
Ø
Ø
L M
;
Ø
Ø
M N
try
Ù
Ù
 
{
Ú
Ú
 
using
Û
Û
 
(
Û
Û
 
SqlConnection
Û
Û
 $

connection
Û
Û
% /
=
Û
Û
0 1
new
Û
Û
2 5
SqlConnection
Û
Û
6 C
(
Û
Û
C D
_connectionstring
Û
Û
D U
)
Û
Û
U V
)
Û
Û
V W
{
Ü
Ü
 

connection
İ
İ
 
.
İ
İ
 
Open
İ
İ
 #
(
İ
İ
# $
)
İ
İ
$ %
;
İ
İ
% &
using
Ş
Ş
 
(
Ş
Ş
 

SqlCommand
Ş
Ş
 %
command
Ş
Ş
& -
=
Ş
Ş
. /
new
Ş
Ş
0 3

SqlCommand
Ş
Ş
4 >
(
Ş
Ş
> ?
$str
Ş
Ş
? W
,
Ş
Ş
W X

connection
Ş
Ş
Y c
)
Ş
Ş
c d
)
Ş
Ş
d e
{
ß
ß
 
command
à
à
 
.
à
à
  
CommandType
à
à
  +
=
à
à
, -
CommandType
à
à
. 9
.
à
à
9 :
StoredProcedure
à
à
: I
;
à
à
I J
command
á
á
 
.
á
á
  

Parameters
á
á
  *
.
á
á
* +
AddWithValue
á
á
+ 7
(
á
á
7 8
$str
á
á
8 B
,
á
á
B C
id
á
á
D F
)
á
á
F G
;
á
á
G H
using
â
â
 
(
â
â
 
SqlDataReader
â
â
 ,
reader
â
â
- 3
=
â
â
4 5
command
â
â
6 =
.
â
â
= >
ExecuteReader
â
â
> K
(
â
â
K L
)
â
â
L M
)
â
â
M N
{
ã
ã
 
while
ä
ä
 !
(
ä
ä
" #
reader
ä
ä
# )
.
ä
ä
) *
Read
ä
ä
* .
(
ä
ä
. /
)
ä
ä
/ 0
)
ä
ä
0 1
{
å
å
 
	assetList
æ
æ
  )
.
æ
æ
) *
Add
æ
æ
* -
(
ç
ç
$ %
new
è
è
$ '
TagMappingDetails
è
è
( 9
{
é
é
$ %
TagName
ë
ë
( /
=
ë
ë
0 1
reader
ë
ë
2 8
[
ë
ë
8 9
$str
ë
ë
9 B
]
ë
ë
B C
.
ë
ë
C D
ToString
ë
ë
D L
(
ë
ë
L M
)
ë
ë
M N
,
ë
ë
N O
	AssetName
ì
ì
( 1
=
ì
ì
2 3
reader
ì
ì
4 :
[
ì
ì
: ;
$str
ì
ì
; F
]
ì
ì
F G
.
ì
ì
G H
ToString
ì
ì
H P
(
ì
ì
P Q
)
ì
ì
Q R
,
ì
ì
R S
	AssetType
í
í
( 1
=
í
í
2 3
reader
í
í
4 :
[
í
í
: ;
$str
í
í
; F
]
í
í
F G
.
í
í
G H
ToString
í
í
H P
(
í
í
P Q
)
í
í
Q R
}
ï
ï
$ %
)
ğ
ğ
$ %
;
ğ
ğ
% &
}
ñ
ñ
 
}
ò
ò
 
}
ó
ó
 
}
õ
õ
 
}
÷
÷
 
catch
ø
ø
 
(
ø
ø
 
	Exception
ø
ø
 
ex
ø
ø
 
)
ø
ø
  
{
ù
ù
 
Logger
ú
ú
 
.
ú
ú
 
Log
ú
ú
 
(
ú
ú
 
ex
ú
ú
 
.
ú
ú
 
ToString
ú
ú
 &
(
ú
ú
& '
)
ú
ú
' (
)
ú
ú
( )
;
ú
ú
) *
}
û
û
 
return
ü
ü
 
	assetList
ü
ü
 
;
ü
ü
 
}
ş
ş
 	
public
ÿ
ÿ
 
List
ÿ
ÿ
 
<
ÿ
ÿ
 

AlarmEnble
ÿ
ÿ
 
>
ÿ
ÿ
 
GetAlaramData
ÿ
ÿ
  -
(
ÿ
ÿ
- .
int
ÿ
ÿ
. 1
id
ÿ
ÿ
2 4
)
ÿ
ÿ
4 5
{
€€ 	
List
 
<
 

AlarmEnble
 
>
 
	getalarms
 &
=
' (
new
) ,
List
- 1
<
1 2

AlarmEnble
2 <
>
< =
(
= >
)
> ?
;
? @
try
‚‚ 
{
ƒƒ 
using
„„ 
(
„„ 
SqlConnection
„„ $
conn
„„% )
=
„„* +
new
„„, /
SqlConnection
„„0 =
(
„„= >
_connectionstring
„„> O
)
„„O P
)
„„P Q
{
…… 
conn
†† 
.
†† 
Open
†† 
(
†† 
)
†† 
;
††  
using
‡‡ 
(
‡‡ 

SqlCommand
‡‡ %
cmd
‡‡& )
=
‡‡* +
new
‡‡, /

SqlCommand
‡‡0 :
(
‡‡: ;
$str
‡‡; V
,
‡‡V W
conn
‡‡X \
)
‡‡\ ]
)
‡‡] ^
{
ˆˆ 
cmd
‰‰ 
.
‰‰ 
CommandType
‰‰ '
=
‰‰( )
CommandType
‰‰* 5
.
‰‰5 6
StoredProcedure
‰‰6 E
;
‰‰E F
cmd
ŠŠ 
.
ŠŠ 

Parameters
ŠŠ &
.
ŠŠ& '
AddWithValue
ŠŠ' 3
(
ŠŠ3 4
$str
ŠŠ4 >
,
ŠŠ> ?
id
ŠŠ@ B
)
ŠŠB C
;
ŠŠC D
using
ŒŒ 
(
ŒŒ 
SqlDataReader
ŒŒ ,
reader
ŒŒ- 3
=
ŒŒ4 5
cmd
ŒŒ6 9
.
ŒŒ9 :
ExecuteReader
ŒŒ: G
(
ŒŒG H
)
ŒŒH I
)
ŒŒI J
{
 
while
 !
(
" #
reader
# )
.
) *
Read
* .
(
. /
)
/ 0
)
0 1
{
 
	getalarms
  )
.
) *
Add
* -
(
- .
new
‘‘$ '

AlarmEnble
‘‘( 2
{
’’$ %
TagID
““( -
=
““. /
Convert
““0 7
.
““7 8
ToInt32
““8 ?
(
““? @
reader
““@ F
[
““F G
$str
““G N
]
““N O
)
““O P
,
““P Q
AssetID
””( /
=
””0 1
Convert
””2 9
.
””9 :
ToInt32
””: A
(
””A B
reader
””B H
[
””H I
$str
””I R
]
””R S
)
””S T
,
””T U
TagName
••( /
=
••0 1
reader
••2 8
[
••8 9
$str
••9 B
]
••B C
.
••C D
ToString
••D L
(
••L M
)
••M N
,
••N O
	AssetName
––( 1
=
––2 3
reader
––4 :
[
––: ;
$str
––; F
]
––F G
.
––G H
ToString
––H P
(
––P Q
)
––Q R
,
––R S
	isEnabled
——( 1
=
——2 3
reader
——4 :
[
——: ;
$str
——; F
]
——F G
.
——G H
ToString
——H P
(
——P Q
)
——Q R
,
——R S
Target
˜˜( .
=
˜˜/ 0
!
˜˜1 2
string
˜˜2 8
.
˜˜8 9
IsNullOrEmpty
˜˜9 F
(
˜˜F G
reader
˜˜G M
[
˜˜M N
$str
˜˜N V
]
˜˜V W
.
˜˜W X
ToString
˜˜X `
(
˜˜` a
)
˜˜a b
)
˜˜b c
?
˜˜d e
Convert
˜˜f m
.
˜˜m n
ToDouble
˜˜n v
(
˜˜v w
reader
˜˜w }
[
˜˜} ~
$str˜˜~ †
]˜˜† ‡
.˜˜‡ ˆ
ToString˜˜ˆ 
(˜˜ ‘
)˜˜‘ ’
)˜˜’ “
:˜˜” •
$num˜˜– —
}
™™$ %
)
™™% &
;
™™& '
}
šš 
}
›› 
}
œœ 
}
 
}
 
catch
ŸŸ 
(
ŸŸ 
	Exception
ŸŸ 
ex
ŸŸ 
)
ŸŸ  
{
   
Debug
¡¡ 
.
¡¡ 
	WriteLine
¡¡ 
(
¡¡  
$str
¡¡  8
+
¡¡9 :
ex
¡¡; =
.
¡¡= >
Message
¡¡> E
)
¡¡E F
;
¡¡F G
}
¢¢ 
return
££ 
	getalarms
££ 
;
££ 
}
¤¤ 	
public
ªª 
List
ªª 
<
ªª 
	EmailInfo
ªª 
>
ªª 
GetPlantName
ªª +
(
ªª+ ,
Alarms
ªª, 2
alarms
ªª3 9
)
ªª9 :
{
«« 	
List
¬¬ 
<
¬¬ 
	EmailInfo
¬¬ 
>
¬¬ 
	listUsers
¬¬ %
=
¬¬& '
new
¬¬( +
List
¬¬, 0
<
¬¬0 1
	EmailInfo
¬¬1 :
>
¬¬: ;
(
¬¬; <
)
¬¬< =
;
¬¬= >
try
­­ 
{
®® 
using
¯¯ 
(
¯¯ 
SqlConnection
¯¯ $
conn
¯¯% )
=
¯¯* +
new
¯¯, /
SqlConnection
¯¯0 =
(
¯¯= >
_connectionstring
¯¯> O
)
¯¯O P
)
¯¯P Q
{
°° 
conn
±± 
.
±± 
Open
±± 
(
±± 
)
±± 
;
±±  
using
²² 
(
²² 

SqlCommand
²² %
cmd
²²& )
=
²²* +
new
²², /

SqlCommand
²²0 :
(
²²: ;
$str
²²; Q
,
²²Q R
conn
²²S W
)
²²W X
)
²²X Y
{
³³ 
cmd
´´ 
.
´´ 
CommandType
´´ '
=
´´( )
CommandType
´´* 5
.
´´5 6
StoredProcedure
´´6 E
;
´´E F
cmd
µµ 
.
µµ 

Parameters
µµ &
.
µµ& '
AddWithValue
µµ' 3
(
µµ3 4
$str
µµ4 <
,
µµ< =
alarms
µµ> D
.
µµD E
TagID
µµE J
)
µµJ K
;
µµK L
using
·· 
(
·· 
SqlDataReader
·· ,
reader
··- 3
=
··4 5
cmd
··6 9
.
··9 :
ExecuteReader
··: G
(
··G H
)
··H I
)
··I J
{
¸¸ 
while
¹¹ !
(
¹¹" #
reader
¹¹# )
.
¹¹) *
Read
¹¹* .
(
¹¹. /
)
¹¹/ 0
)
¹¹0 1
{
ºº 
	listUsers
»»  )
.
»») *
Add
»»* -
(
»»- .
new
¼¼$ '
	EmailInfo
¼¼( 1
{
½½$ %
TagID
¾¾( -
=
¾¾. /
Convert
¾¾0 7
.
¾¾7 8
ToInt32
¾¾8 ?
(
¾¾? @
reader
¾¾@ F
[
¾¾F G
$str
¾¾G N
]
¾¾N O
.
¾¾O P
ToString
¾¾P X
(
¾¾X Y
)
¾¾Y Z
)
¾¾Z [
,
¾¾[ \
EmailID
¿¿( /
=
¿¿0 1
reader
¿¿2 8
[
¿¿8 9
$str
¿¿9 B
]
¿¿B C
.
¿¿C D
ToString
¿¿D L
(
¿¿L M
)
¿¿M N
,
¿¿N O
	PlantName
ÀÀ( 1
=
ÀÀ2 3
reader
ÀÀ4 :
[
ÀÀ: ;
$str
ÀÀ; F
]
ÀÀF G
.
ÀÀG H
ToString
ÀÀH P
(
ÀÀP Q
)
ÀÀQ R
,
ÀÀR S
TagName
ÁÁ( /
=
ÁÁ0 1
reader
ÁÁ2 8
[
ÁÁ8 9
$str
ÁÁ9 B
]
ÁÁB C
.
ÁÁC D
ToString
ÁÁD L
(
ÁÁL M
)
ÁÁM N
,
ÁÁN O
PlantId
ÂÂ( /
=
ÂÂ0 1
Convert
ÂÂ2 9
.
ÂÂ9 :
ToInt32
ÂÂ: A
(
ÂÂA B
reader
ÂÂB H
[
ÂÂH I
$str
ÂÂI R
]
ÂÂR S
.
ÂÂS T
ToString
ÂÂT \
(
ÂÂ\ ]
)
ÂÂ] ^
)
ÂÂ^ _
}
ÃÃ$ %
)
ÃÃ% &
;
ÃÃ& '
}
ÄÄ 
}
ÅÅ 
}
ÆÆ 
}
ÇÇ 
}
ÈÈ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
ex
ÉÉ 
)
ÉÉ  
{
ÊÊ 
Debug
ËË 
.
ËË 
	WriteLine
ËË 
(
ËË  
$str
ËË  7
+
ËË8 9
ex
ËË: <
.
ËË< =
Message
ËË= D
)
ËËD E
;
ËËE F
}
ÌÌ 
return
ÍÍ 
	listUsers
ÍÍ 
;
ÍÍ 
}
ÏÏ 	
public
ÔÔ 
	DataTable
ÔÔ 
	GetConfig
ÔÔ "
(
ÔÔ" #
)
ÔÔ# $
{
ÕÕ 	
var
×× 
query
×× 
=
×× 
$str
×× C
;
××C D
return
ØØ 
CreateDataTable
ØØ "
(
ØØ" #
query
ØØ# (
)
ØØ( )
;
ØØ) *
}
ÚÚ 	
public
ßß 
	DataTable
ßß 
GetEmailTemplate
ßß )
(
ßß) *
)
ßß* +
{
àà 	
var
áá 
query
áá 
=
áá 
string
áá 
.
áá 
Format
áá %
(
áá% &
$str
áá& R
)
ááR S
;
ááS T
return
ââ 
CreateDataTable
ââ "
(
ââ" #
query
ââ# (
)
ââ( )
;
ââ) *
}
ää 	
private
ææ 
	DataTable
ææ 
CreateDataTable
ææ )
(
ææ) *
string
ææ* 0
query
ææ1 6
)
ææ6 7
{
çç 	
try
èè 
{
éé 
var
êê 
	dtbConfig
êê 
=
êê 
new
êê  #
	DataTable
êê$ -
(
êê- .
)
êê. /
;
êê/ 0
using
ëë 
(
ëë 
var
ëë 
scEmmsDb
ëë #
=
ëë$ %
new
ëë& )
SqlConnection
ëë* 7
(
ëë7 8
_connectionstring
ëë8 I
)
ëëI J
)
ëëJ K
{
ìì 
using
íí 
(
íí 
var
íí 
sda
íí "
=
íí# $
new
íí% (
SqlDataAdapter
íí) 7
(
íí7 8
query
íí8 =
,
íí= >
scEmmsDb
íí? G
)
ííG H
)
ííH I
{
îî 
scEmmsDb
ïï  
.
ïï  !
Open
ïï! %
(
ïï% &
)
ïï& '
;
ïï' (
sda
ğğ 
.
ğğ 
Fill
ğğ  
(
ğğ  !
	dtbConfig
ğğ! *
)
ğğ* +
;
ğğ+ ,
}
ññ 
}
òò 
return
óó 
	dtbConfig
óó  
;
óó  !
}
ôô 
catch
õõ 
(
õõ 
	Exception
õõ 
ex
õõ 
)
õõ  
{
öö 
Debug
÷÷ 
.
÷÷ 
	WriteLine
÷÷ 
(
÷÷  
$str
÷÷  :
+
÷÷; <
ex
÷÷= ?
.
÷÷? @
Message
÷÷@ G
)
÷÷G H
;
÷÷H I
return
øø 
null
øø 
;
øø 
}
ùù 
}
úú 	
public
ÿÿ 
void
ÿÿ #
SendEmailNotification
ÿÿ )
(
ÿÿ) *
List
ÿÿ* .
<
ÿÿ. /
	EmailInfo
ÿÿ/ 8
>
ÿÿ8 9
data
ÿÿ: >
,
ÿÿ> ?
double
ÿÿ@ F
value
ÿÿG L
,
ÿÿL M
string
ÿÿN T
	TimeStamp
ÿÿU ^
)
ÿÿ^ _
{
€€ 	
try
 
{
‚‚ 
foreach
ƒƒ 
(
ƒƒ 
var
ƒƒ 
item
ƒƒ !
in
ƒƒ" $
data
ƒƒ% )
)
ƒƒ) *
{
„„ 
var
…… 
	dtbConfig
…… !
=
……" #
	GetConfig
……$ -
(
……- .
)
……. /
;
……/ 0
if
†† 
(
†† 
	dtbConfig
†† !
.
††! "
Rows
††" &
.
††& '
Count
††' ,
<=
††- /
$num
††0 1
)
††1 2
return
††3 9
;
††9 :
var
‡‡ 
	dtrConfig
‡‡ !
=
‡‡" #
	dtbConfig
‡‡$ -
.
‡‡- .
Rows
‡‡. 2
[
‡‡2 3
$num
‡‡3 4
]
‡‡4 5
;
‡‡5 6
var
ˆˆ 
smtp
ˆˆ 
=
ˆˆ 
new
ˆˆ "

SmtpClient
ˆˆ# -
{
‰‰ 
Host
ŠŠ 
=
ŠŠ 
	dtrConfig
ŠŠ (
.
ŠŠ( )
Field
ŠŠ) .
<
ŠŠ. /
string
ŠŠ/ 5
>
ŠŠ5 6
(
ŠŠ6 7
$str
ŠŠ7 C
)
ŠŠC D
,
ŠŠD E
Port
‹‹ 
=
‹‹ 
	dtrConfig
‹‹ (
.
‹‹( )
Field
‹‹) .
<
‹‹. /
Int32
‹‹/ 4
>
‹‹4 5
(
‹‹5 6
$str
‹‹6 @
)
‹‹@ A
}
 
;
 
var
 
dtbTemplates
 $
=
% &
GetEmailTemplate
' 7
(
7 8
)
8 9
;
9 :
if
 
(
 
dtbTemplates
 $
.
$ %
Rows
% )
.
) *
Count
* /
<=
0 2
$num
3 4
)
4 5
return
6 <
;
< =
var
 
dtrTemplate
 #
=
$ %
dtbTemplates
& 2
.
2 3
Rows
3 7
[
7 8
$num
8 9
]
9 :
;
: ;
var
‘‘ 
strPlantName
‘‘ $
=
‘‘% &
item
‘‘' +
.
‘‘+ ,
	PlantName
‘‘, 5
;
‘‘5 6
var
““ 
mmEmail
““ 
=
““  !
new
““" %
MailMessage
““& 1
(
““1 2
)
““2 3
;
““3 4
var
”” 
strBody
”” 
=
””  !
dtrTemplate
””" -
.
””- .
Field
””. 3
<
””3 4
string
””4 :
>
””: ;
(
””; <
$str
””< E
)
””E F
;
””F G
string
•• 
msg
•• 
=
••  
string
••! '
.
••' (
Format
••( .
(
••. /
strBody
••/ 6
,
••6 7
item
••8 <
.
••< =
TagName
••= D
,
••D E
value
••F K
,
••K L
	TimeStamp
••M V
)
••V W
;
••W X
mmEmail
–– 
.
–– 
To
–– 
.
–– 
Add
–– "
(
––" #
item
––# '
.
––' (
EmailID
––( /
)
––/ 0
;
––0 1
mmEmail
—— 
.
—— 
Subject
—— #
=
——$ %
dtrTemplate
——& 1
.
——1 2
Field
——2 7
<
——7 8
string
——8 >
>
——> ?
(
——? @
$str
——@ I
)
——I J
;
——J K
mmEmail
˜˜ 
.
˜˜ 
From
˜˜  
=
˜˜! "
new
˜˜# &
MailAddress
˜˜' 2
(
˜˜2 3
dtrTemplate
˜˜3 >
.
˜˜> ?
Field
˜˜? D
<
˜˜D E
string
˜˜E K
>
˜˜K L
(
˜˜L M
$str
˜˜M X
)
˜˜X Y
,
˜˜Y Z
dtrTemplate
˜˜[ f
.
˜˜f g
Field
˜˜g l
<
˜˜l m
string
˜˜m s
>
˜˜s t
(
˜˜t u
$str
˜˜u 
)˜˜ €
)˜˜€ 
;˜˜ ‚
mmEmail
™™ 
.
™™ 

IsBodyHtml
™™ &
=
™™' (
dtrTemplate
™™) 4
.
™™4 5
Field
™™5 :
<
™™: ;
Boolean
™™; B
>
™™B C
(
™™C D
$str
™™D J
)
™™J K
;
™™K L
mmEmail
šš 
.
šš 
Body
šš  
=
šš! "
msg
šš# &
;
šš& '
smtp
›› 
.
›› 
Send
›› 
(
›› 
mmEmail
›› %
)
››% &
;
››& '
}
œœ 
}
 
catch
 
(
 
	Exception
 
ex
 
)
  
{
ŸŸ 
}
¡¡ 
}
¢¢ 	
public
££ 
bool
££ 
AddAlarmInfo
££  
(
££  !
Alarms
££! '
alarm
££( -
)
££- .
{
¤¤ 	
try
¥¥ 
{
¦¦ 
using
§§ 
(
§§ 
SqlConnection
§§ $
conn
§§% )
=
§§* +
new
§§, /
SqlConnection
§§0 =
(
§§= >
_connectionstring
§§> O
)
§§O P
)
§§P Q
{
¨¨ 
conn
©© 
.
©© 
Open
©© 
(
©© 
)
©© 
;
©©  
using
«« 
(
«« 

SqlCommand
«« %
command
««& -
=
««. /
new
««0 3

SqlCommand
««4 >
(
««> ?
$str
««? O
,
««O P
conn
««Q U
)
««U V
)
««V W
{
¬¬ 
command
­­ 
.
­­  
CommandType
­­  +
=
­­, -
CommandType
­­. 9
.
­­9 :
StoredProcedure
­­: I
;
­­I J
command
¯¯ 
.
¯¯  

Parameters
¯¯  *
.
¯¯* +
AddWithValue
¯¯+ 7
(
¯¯7 8
$str
¯¯8 @
,
¯¯@ A
alarm
¯¯B G
.
¯¯G H
TagID
¯¯H M
)
¯¯M N
;
¯¯N O
command
°° 
.
°°  

Parameters
°°  *
.
°°* +
AddWithValue
°°+ 7
(
°°7 8
$str
°°8 B
,
°°B C
alarm
°°D I
.
°°I J
PlantID
°°J Q
)
°°Q R
;
°°R S
command
±± 
.
±±  

Parameters
±±  *
.
±±* +
AddWithValue
±±+ 7
(
±±7 8
$str
±±8 @
,
±±@ A
alarm
±±B G
.
±±G H
Value
±±H M
)
±±M N
;
±±N O
command
²² 
.
²²  

Parameters
²²  *
.
²²* +
AddWithValue
²²+ 7
(
²²7 8
$str
²²8 D
,
²²D E
alarm
²²F K
.
²²K L
	TimeStamp
²²L U
)
²²U V
;
²²V W
command
³³ 
.
³³  
ExecuteNonQuery
³³  /
(
³³/ 0
)
³³0 1
;
³³1 2
}
´´ 
}
¶¶ 
return
·· 
true
·· 
;
·· 
}
¸¸ 
catch
ºº 
(
ºº 
	Exception
ºº 
ex
ºº 
)
ºº  
{
»» 
Logger
¼¼ 
.
¼¼ 
Log
¼¼ 
(
¼¼ 
ex
¼¼ 
.
¼¼ 
ToString
¼¼ &
(
¼¼& '
)
¼¼' (
)
¼¼( )
;
¼¼) *
return
½½ 
false
½½ 
;
½½ 
}
¾¾ 
}
ÀÀ 	
public
ÂÂ 
bool
ÂÂ 
SaveXmlDocument
ÂÂ #
(
ÂÂ# $
XElement
ÂÂ$ ,
document
ÂÂ- 5
,
ÂÂ5 6
string
ÂÂ7 =
user
ÂÂ> B
,
ÂÂB C
string
ÂÂD J
datetime
ÂÂK S
,
ÂÂS T
string
ÂÂU [
plantId
ÂÂ\ c
)
ÂÂc d
{
ÃÃ 	
try
ÄÄ 
{
ÅÅ 
int
ÆÆ 
plantID
ÆÆ 
;
ÆÆ 
DateTime
ÇÇ 
dt
ÇÇ 
;
ÇÇ 
if
ÈÈ 
(
ÈÈ 
!
ÈÈ 
int
ÈÈ 
.
ÈÈ 
TryParse
ÈÈ !
(
ÈÈ! "
plantId
ÈÈ" )
,
ÈÈ) *
out
ÈÈ+ .
plantID
ÈÈ/ 6
)
ÈÈ6 7
||
ÈÈ8 :
!
ÈÈ; <
DateTime
ÈÈ< D
.
ÈÈD E
TryParse
ÈÈE M
(
ÈÈM N
datetime
ÈÈN V
,
ÈÈV W
out
ÈÈX [
dt
ÈÈ\ ^
)
ÈÈ^ _
||
ÈÈ` b
string
ÈÈc i
.
ÈÈi j
IsNullOrEmpty
ÈÈj w
(
ÈÈw x
user
ÈÈx |
)
ÈÈ| }
)
ÈÈ} ~
return
ÉÉ 
false
ÉÉ  
;
ÉÉ  !
using
ÊÊ 
(
ÊÊ 
SqlConnection
ÊÊ $
conn
ÊÊ% )
=
ÊÊ* +
new
ÊÊ, /
SqlConnection
ÊÊ0 =
(
ÊÊ= >
_connectionstring
ÊÊ> O
)
ÊÊO P
)
ÊÊP Q
{
ËË 
conn
ÌÌ 
.
ÌÌ 
Open
ÌÌ 
(
ÌÌ 
)
ÌÌ 
;
ÌÌ  
using
ÎÎ 
(
ÎÎ 

SqlCommand
ÎÎ %
command
ÎÎ& -
=
ÎÎ. /
new
ÎÎ0 3

SqlCommand
ÎÎ4 >
(
ÎÎ> ?
$str
ÎÎ? R
,
ÎÎR S
conn
ÎÎT X
)
ÎÎX Y
)
ÎÎY Z
{
ÏÏ 
command
ĞĞ 
.
ĞĞ  
CommandType
ĞĞ  +
=
ĞĞ, -
CommandType
ĞĞ. 9
.
ĞĞ9 :
StoredProcedure
ĞĞ: I
;
ĞĞI J
command
ÑÑ 
.
ÑÑ  

Parameters
ÑÑ  *
.
ÑÑ* +
AddWithValue
ÑÑ+ 7
(
ÑÑ7 8
$str
ÑÑ8 B
,
ÑÑB C
plantID
ÑÑD K
)
ÑÑK L
;
ÑÑL M
command
ÒÒ 
.
ÒÒ  

Parameters
ÒÒ  *
.
ÒÒ* +
Add
ÒÒ+ .
(
ÒÒ. /
$str
ÒÒ/ 8
,
ÒÒ8 9
	SqlDbType
ÒÒ: C
.
ÒÒC D
Xml
ÒÒD G
)
ÒÒG H
;
ÒÒH I
command
ÓÓ 
.
ÓÓ  

Parameters
ÓÓ  *
[
ÓÓ* +
$str
ÓÓ+ 4
]
ÓÓ4 5
.
ÓÓ5 6
Value
ÓÓ6 ;
=
ÓÓ< =
document
ÓÓ> F
.
ÓÓF G
ToString
ÓÓG O
(
ÓÓO P
)
ÓÓP Q
;
ÓÓQ R
command
ÔÔ 
.
ÔÔ  

Parameters
ÔÔ  *
.
ÔÔ* +
AddWithValue
ÔÔ+ 7
(
ÔÔ7 8
$str
ÔÔ8 D
,
ÔÔD E
user
ÔÔF J
)
ÔÔJ K
;
ÔÔK L
command
ÕÕ 
.
ÕÕ  

Parameters
ÕÕ  *
.
ÕÕ* +
AddWithValue
ÕÕ+ 7
(
ÕÕ7 8
$str
ÕÕ8 F
,
ÕÕF G
dt
ÕÕH J
)
ÕÕJ K
;
ÕÕK L
command
ÖÖ 
.
ÖÖ  

Parameters
ÖÖ  *
.
ÖÖ* +
AddWithValue
ÖÖ+ 7
(
ÖÖ7 8
$str
ÖÖ8 E
,
ÖÖE F
user
ÖÖG K
)
ÖÖK L
;
ÖÖL M
command
×× 
.
××  

Parameters
××  *
.
××* +
AddWithValue
××+ 7
(
××7 8
$str
××8 G
,
××G H
dt
××I K
)
××K L
;
××L M
command
ØØ 
.
ØØ  
ExecuteNonQuery
ØØ  /
(
ØØ/ 0
)
ØØ0 1
;
ØØ1 2
}
ÙÙ 
}
ÛÛ 
return
ÜÜ 
true
ÜÜ 
;
ÜÜ 
}
İİ 
catch
ŞŞ 
(
ŞŞ 
	Exception
ŞŞ 
ex
ŞŞ 
)
ŞŞ  
{
ßß 
Logger
àà 
.
àà 
Log
àà 
(
àà 
ex
àà 
.
àà 
ToString
àà &
(
àà& '
)
àà' (
)
àà( )
;
àà) *
return
áá 
false
áá 
;
áá 
}
ââ 
}
ãã 	
public
åå 
string
åå 
getXmlDocument
åå $
(
åå$ %
int
åå% (
plantid
åå) 0
)
åå0 1
{
ææ 	
string
çç 

xmlContent
çç 
;
çç 
try
èè 
{
éé 
using
ëë 
(
ëë 
SqlConnection
ëë $
conn
ëë% )
=
ëë* +
new
ëë, /
SqlConnection
ëë0 =
(
ëë= >
_connectionstring
ëë> O
)
ëëO P
)
ëëP Q
{
ìì 
conn
íí 
.
íí 
Open
íí 
(
íí 
)
íí 
;
íí  
using
ïï 
(
ïï 

SqlCommand
ïï %
command
ïï& -
=
ïï. /
new
ïï0 3

SqlCommand
ïï4 >
(
ïï> ?
$strïï? 
,ïï ‚
connïïƒ ‡
)ïï‡ ˆ
)ïïˆ ‰
{
ğğ 
command
ññ 
.
ññ  
CommandType
ññ  +
=
ññ, -
CommandType
ññ. 9
.
ññ9 :
Text
ññ: >
;
ññ> ?
command
òò 
.
òò  

Parameters
òò  *
.
òò* +
AddWithValue
òò+ 7
(
òò7 8
$str
òò8 B
,
òòB C
plantid
òòD K
)
òòK L
;
òòL M

xmlContent
óó "
=
óó# $
(
óó% &
string
óó& ,
)
óó, -
command
óó- 4
.
óó4 5
ExecuteScalar
óó5 B
(
óóB C
)
óóC D
;
óóD E
}
ôô 
}
õõ 
return
öö 

xmlContent
öö !
;
öö! "
}
÷÷ 
catch
ùù 
(
ùù 
	Exception
ùù 
ex
ùù 
)
ùù  
{
úú 
Logger
ûû 
.
ûû 
Log
ûû 
(
ûû 
ex
ûû 
.
ûû 
ToString
ûû &
(
ûû& '
)
ûû' (
)
ûû( )
;
ûû) *
return
üü 
null
üü 
;
üü 
}
ıı 
}
ÿÿ 	
}
 
}‚‚ î
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\IOC\NinjectControllerFactory.cs
	namespace

 	
EMMS


 
.

 
IOC

 
{ 
public 

class $
NinjectControllerFactory )
:* +$
DefaultControllerFactory, D
{ 
private 
IKernel 
ninjectKernel %
;% &
public $
NinjectControllerFactory '
(' (
)( )
{ 	
ninjectKernel 
= 
new 
StandardKernel  .
(. /
)/ 0
;0 1
AddBindings 
( 
) 
; 
} 	
	protected 
override 
IController &!
GetControllerInstance' <
(< =
RequestContext= K
requestContextL Z
,Z [
Type\ `
controllerTypea o
)o p
{ 	
return 
controllerType !
==" $
null% )
? 
null 
: 
( 
IController 
) 
ninjectKernel (
.( )
Get) ,
(, -
controllerType- ;
); <
;< =
} 	
private 
void 
AddBindings  
(  !
)! "
{ 	
ninjectKernel 
. 
Bind 
< 
IPlantSetUpManager 1
>1 2
(2 3
)3 4
.4 5
To5 7
<7 8
PlantSetUpManager8 I
>I J
(J K
)K L
;L M
ninjectKernel 
. 
Bind 
< 
IPlantSetupDal -
>- .
(. /
)/ 0
.0 1
To1 3
<3 4
PlantSetUpDal4 A
>A B
(B C
)C D
;D E
ninjectKernel 
. 
Bind 
< 
IDataForDropdown /
>/ 0
(0 1
)1 2
.2 3
To3 5
<5 6
PlantDetailsBL6 D
>D E
(E F
)F G
;G H
ninjectKernel   
.   
Bind   
<   
IGetItemForCombobox   2
>  2 3
(  3 4
)  4 5
.  5 6
To  6 8
<  8 9
PlantDetailsDal  9 H
>  H I
(  I J
)  J K
;  K L
}!! 	
}"" 
}## ¨$
œD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Identity\DefaultClaimsAuthenticationManager.cs
	namespace 	!
EMMSClientApplication
 
.  
Identity  (
{		 
public

 

class

 .
"DefaultClaimsAuthenticationManager

 3
:

3 4'
ClaimsAuthenticationManager

5 P
{ 
public 
override 
ClaimsPrincipal '
Authenticate( 4
(4 5
string5 ;
resourceName< H
,H I
ClaimsPrincipalJ Y
incomingPrincipalZ k
)k l
{ 	
if 
( 
! 
incomingPrincipal "
." #
Identity# +
.+ ,
IsAuthenticated, ;
); <
{ 
return 
incomingPrincipal (
;( )
} 
return !
CreateClaimsPrincipal (
(( )
incomingPrincipal) :
): ;
;; <
} 	
private 
ClaimsPrincipal !
CreateClaimsPrincipal  5
(5 6
ClaimsPrincipal6 E
incomingPrincipalF W
)W X
{ 	
var 
claims 
= 
new 
List !
<! "
Claim" '
>' (
(( )
)) *
;* +
claims 
. 
AddRange 
( 
incomingPrincipal -
.- .
Claims. 4
)4 5
;5 6
return!! 
new!! 
ClaimsPrincipal!! &
(!!& '
new!!' *
ClaimsIdentity!!+ 9
(!!9 :
claims!!: @
,!!@ A
incomingPrincipal!!B S
.!!S T
Identity!!T \
.!!\ ]
AuthenticationType!!] o
,!!o p

ClaimTypes!!q {
.!!{ |
NameIdentifier	!!| Š
,
!!Š ‹

ClaimTypes
!!Œ –
.
!!– —
Role
!!— ›
)
!!› œ
{"" 
BootstrapContext##  
=##! "
(### $
(##$ %
ClaimsIdentity##% 3
)##3 4
incomingPrincipal##4 E
.##E F
Identity##F N
)##N O
.##O P
BootstrapContext##P `
}$$ 
)$$ 
;$$ 
}%% 	
private'' 
IEnumerable'' 
<'' 
Claim'' !
>''! " 
GetSaml2LogoutClaims''# 7
(''7 8
ClaimsPrincipal''8 G
	principal''H Q
)''Q R
{(( 	
yield)) 
return)) 
GetClaim)) !
())! "
	principal))" +
,))+ ,
Saml2ClaimTypes))- <
.))< =
NameId))= C
)))C D
;))D E
yield** 
return** 
GetClaim** !
(**! "
	principal**" +
,**+ ,
Saml2ClaimTypes**- <
.**< =
NameIdFormat**= I
)**I J
;**J K
yield++ 
return++ 
GetClaim++ !
(++! "
	principal++" +
,+++ ,
Saml2ClaimTypes++- <
.++< =
SessionIndex++= I
)++I J
;++J K
},, 	
private.. 
Claim.. 
GetClaim.. 
(.. 
ClaimsPrincipal.. .
	principal../ 8
,..8 9
string..: @
	claimType..A J
)..J K
{// 	
return00 
(00 
(00 
ClaimsIdentity00 #
)00# $
	principal00$ -
.00- .
Identity00. 6
)006 7
.007 8
Claims008 >
.00> ?
Where00? D
(00D E
c00E F
=>00G I
c00J K
.00K L
Type00L P
==00Q S
	claimType00T ]
)00] ^
.00^ _
FirstOrDefault00_ m
(00m n
)00n o
;00o p
}11 	
private33 
string33 
GetClaimValue33 $
(33$ %
ClaimsPrincipal33% 4
	principal335 >
,33> ?
string33@ F
	claimType33G P
)33P Q
{44 	
var55 
claim55 
=55 
GetClaim55  
(55  !
	principal55! *
,55* +
	claimType55, 5
)555 6
;556 7
return66 
claim66 
!=66 
null66  
?66! "
claim66# (
.66( )
Value66) .
:66/ 0
null661 5
;665 6
}77 	
}88 
}99 ØÑ
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Identity\Saml.cs
	namespace 	
Saml
 
{ 
public 
sealed 
class .
"RSAPKCS1SHA256SignatureDescription 7
:8 9 
SignatureDescription: N
{ 
public .
"RSAPKCS1SHA256SignatureDescription	 +
(+ ,
), -
{ 
KeyAlgorithm 
= 
typeof 
( $
RSACryptoServiceProvider 1
)1 2
.2 3
FullName3 ;
;; <
DigestAlgorithm 
= 
typeof 
( 
SHA256Managed )
)) *
.* +
FullName+ 3
;3 4
FormatterAlgorithm 
= 
typeof 
( &
RSAPKCS1SignatureFormatter 9
)9 :
.: ;
FullName; C
;C D 
DeformatterAlgorithm 
= 
typeof  
(  !(
RSAPKCS1SignatureDeformatter! =
)= >
.> ?
FullName? G
;G H
} 
public 
override	 *
AsymmetricSignatureDeformatter 0
CreateDeformatter1 B
(B C
AsymmetricAlgorithmC V
keyW Z
)Z [
{ 
if 
( 
key 

== 
null 
) 
throw 	
new
 !
ArgumentNullException #
(# $
$str$ )
)) *
;* +(
RSAPKCS1SignatureDeformatter   
deformatter    +
=  , -
new  . 1(
RSAPKCS1SignatureDeformatter  2 N
(  N O
key  O R
)  R S
;  S T
deformatter!! 
.!! 
SetHashAlgorithm!! 
(!!  
$str!!  (
)!!( )
;!!) *
return"" 	
deformatter""
 
;"" 
}## 
public%% 
override%%	 (
AsymmetricSignatureFormatter%% .
CreateFormatter%%/ >
(%%> ?
AsymmetricAlgorithm%%? R
key%%S V
)%%V W
{&& 
if'' 
('' 
key'' 

=='' 
null'' 
)'' 
throw(( 	
new((
 !
ArgumentNullException(( #
(((# $
$str(($ )
)(() *
;((* +&
RSAPKCS1SignatureFormatter** 
	formatter** '
=**( )
new*** -&
RSAPKCS1SignatureFormatter**. H
(**H I
key**I L
)**L M
;**M N
	formatter++ 
.++ 
SetHashAlgorithm++ 
(++ 
$str++ &
)++& '
;++' (
return,, 	
	formatter,,
 
;,, 
}-- 
private// 	
static//
 
bool// 
_initialized// "
=//# $
false//% *
;//* +
public00 
static00	 
void00 
Init00 
(00 
)00 
{11 
if22 
(22 
!22 
_initialized22 
)22 
CryptoConfig33 
.33 
AddAlgorithm33 
(33 
typeof33 $
(33$ %.
"RSAPKCS1SHA256SignatureDescription33% G
)33G H
,33H I
$str33J }
)33} ~
;33~ 
_initialized44 
=44 
true44 
;44 
}55 
}66 
public88 
class88 
Certificate88 
{99 
public:: 
X509Certificate2::	 
cert:: 
;:: 
public<< 
void<<	 
LoadCertificate<< 
(<< 
string<< $
certificate<<% 0
)<<0 1
{== 
LoadCertificate>> 
(>> 
StringToByteArray>> $
(>>$ %
certificate>>% 0
)>>0 1
)>>1 2
;>>2 3
}?? 
publicAA 
voidAA	 
LoadCertificateAA 
(AA 
byteAA "
[AA" #
]AA# $
certificateAA% 0
)AA0 1
{BB 
certCC 
=CC 	
newCC
 
X509Certificate2CC 
(CC 
)CC  
;CC  !
certDD 
.DD 
ImportDD 
(DD 
certificateDD 
)DD 
;DD 
}EE 
privateGG 	
byteGG
 
[GG 
]GG 
StringToByteArrayGG "
(GG" #
stringGG# )
stGG* ,
)GG, -
{HH 
byteII 
[II 
]II 	
bytesII
 
=II 
newII 
byteII 
[II 
stII 
.II 
LengthII $
]II$ %
;II% &
forJJ 
(JJ 
intJJ 
iJJ 
=JJ 
$numJJ 
;JJ 
iJJ 
<JJ 
stJJ 
.JJ 
LengthJJ  
;JJ  !
iJJ" #
++JJ# %
)JJ% &
{KK 
bytesLL 	
[LL	 

iLL
 
]LL 
=LL 
(LL 
byteLL 
)LL 
stLL 
[LL 
iLL 
]LL 
;LL 
}MM 
returnNN 	
bytesNN
 
;NN 
}OO 
}PP 
publicRR 
classRR 
ResponseRR 
{SS 
privateTT 	
XmlDocumentTT
 
_xmlDocTT 
;TT 
privateUU 	
CertificateUU
 
_certificateUU "
;UU" #
privateVV 	
XmlNamespaceManagerVV
  
_xmlNameSpaceManagerVV 2
;VV2 3
publicXX 
stringXX	 
XmlXX 
{XX 
getXX 
{XX 
returnXX "
_xmlDocXX# *
.XX* +
OuterXmlXX+ 3
;XX3 4
}XX5 6
}XX7 8
publicZZ 
ResponseZZ	 
(ZZ 
stringZZ 
certificateStrZZ '
)ZZ' (
{[[ .
"RSAPKCS1SHA256SignatureDescription\\ %
.\\% &
Init\\& *
(\\* +
)\\+ ,
;\\, -
_certificate^^ 
=^^ 
new^^ 
Certificate^^ !
(^^! "
)^^" #
;^^# $
_certificate__ 
.__ 
LoadCertificate__ 
(__  
certificateStr__  .
)__. /
;__/ 0
}`` 
publiccc 
voidcc 
LoadXmlcc 
(cc 
stringcc "
xmlcc# &
)cc& '
{dd 
_xmlDocee 

=ee 
newee 
XmlDocumentee 
(ee 
)ee 
;ee 
_xmlDocff 

.ff
 
PreserveWhitespaceff 
=ff 
trueff  $
;ff$ %
_xmlDocgg 

.gg
 
XmlResolvergg 
=gg 
nullgg 
;gg 
_xmlDochh 

.hh
 
LoadXmlhh 
(hh 
xmlhh 
)hh 
;hh  
_xmlNameSpaceManagerjj 
=jj 
GetNamespaceManagerjj -
(jj- .
)jj. /
;jj/ 0
}kk 
publicmm 
voidmm 
LoadXmlFromBase64mm %
(mm% &
stringmm& ,
responsemm- 5
)mm5 6
{nn 
Systemoo 	
.oo	 

Textoo
 
.oo 
UTF8Encodingoo 
encoo 
=oo  !
newoo" %
Systemoo& ,
.oo, -
Textoo- 1
.oo1 2
UTF8Encodingoo2 >
(oo> ?
)oo? @
;oo@ A
LoadXmlpp 

(pp
 
encpp 
.pp 
	GetStringpp 
(pp 
Convertpp  
.pp  !
FromBase64Stringpp! 1
(pp1 2
responsepp2 :
)pp: ;
)pp; <
)pp< =
;pp= >
}qq 
publicss 
boolss	 
IsValidss 
(ss 
)ss 
{tt 
XmlNodeListuu 
nodeListuu 
=uu 
_xmlDocuu !
.uu! "
SelectNodesuu" -
(uu- .
$struu. >
,uu> ? 
_xmlNameSpaceManageruu@ T
)uuT U
;uuU V
	SignedXmlww 
	signedXmlww 
=ww 
newww 
	SignedXmlww &
(ww& '
_xmlDocww' .
)ww. /
;ww/ 0
ifyy 
(yy 
nodeListyy 
.yy 
Countyy 
==yy 
$numyy 
)yy 
returnyy "
falseyy# (
;yy( )
	signedXml{{ 
.{{ 
LoadXml{{ 
({{ 
({{ 

XmlElement{{  
){{  !
nodeList{{! )
[{{) *
$num{{* +
]{{+ ,
){{, -
;{{- .
return|| &
ValidateSignatureReference|| -
(||- .
	signedXml||. 7
)||7 8
&&||9 ;
	signedXml||< E
.||E F
CheckSignature||F T
(||T U
_certificate||U a
.||a b
cert||b f
,||f g
true||h l
)||l m
&&||n p
!||q r
	IsExpired||r {
(||{ |
)||| }
;||} ~
}~~ 	
private
ƒƒ 	
bool
ƒƒ
 (
ValidateSignatureReference
ƒƒ )
(
ƒƒ) *
	SignedXml
ƒƒ* 3
	signedXml
ƒƒ4 =
)
ƒƒ= >
{
„„ 
if
…… 
(
…… 
	signedXml
…… 
.
…… 

SignedInfo
…… 
.
…… 

References
…… &
.
……& '
Count
……' ,
!=
……- /
$num
……0 1
)
……1 2
return
†† 

false
†† 
;
†† 
var
ˆˆ 
	reference
ˆˆ 
=
ˆˆ 
(
ˆˆ 
	Reference
ˆˆ 
)
ˆˆ 
	signedXml
ˆˆ '
.
ˆˆ' (

SignedInfo
ˆˆ( 2
.
ˆˆ2 3

References
ˆˆ3 =
[
ˆˆ= >
$num
ˆˆ> ?
]
ˆˆ? @
;
ˆˆ@ A
var
‰‰ 
id
‰‰ 	
=
‰‰
 
	reference
‰‰ 
.
‰‰ 
Uri
‰‰ 
.
‰‰ 
	Substring
‰‰ #
(
‰‰# $
$num
‰‰$ %
)
‰‰% &
;
‰‰& '
var
‹‹ 
	idElement
‹‹ 
=
‹‹ 
	signedXml
‹‹ 
.
‹‹ 
GetIdElement
‹‹ )
(
‹‹) *
_xmlDoc
‹‹* 1
,
‹‹1 2
id
‹‹3 5
)
‹‹5 6
;
‹‹6 7
if
 
(
 
	idElement
 
==
 
_xmlDoc
 
.
 
DocumentElement
 +
)
+ ,
return
 

true
 
;
 
else
 
{
 
var
‘‘ 
assertionNode
‘‘ 
=
‘‘ 
_xmlDoc
‘‘ 
.
‘‘  
SelectSingleNode
‘‘  0
(
‘‘0 1
$str
‘‘1 Q
,
‘‘Q R"
_xmlNameSpaceManager
‘‘S g
)
‘‘g h
as
‘‘i k

XmlElement
‘‘l v
;
‘‘v w
if
’’ 
(
’’ 
assertionNode
’’ 
!=
’’ 
	idElement
’’ "
)
’’" #
return
““ 
false
““ 
;
““ 
}
”” 
return
–– 	
true
––
 
;
–– 
}
—— 
private
™™ 	
bool
™™
 
	IsExpired
™™ 
(
™™ 
)
™™ 
{
šš 
DateTime
›› 
expirationDate
›› 
=
›› 
DateTime
›› %
.
››% &
MaxValue
››& .
;
››. /
XmlNode
œœ 

node
œœ 
=
œœ 
_xmlDoc
œœ 
.
œœ 
SelectSingleNode
œœ *
(
œœ* +
$strœœ+ 
,œœ $
_xmlNameSpaceManagerœœ ¤
)œœ¤ ¥
;œœ¥ ¦
if
 
(
 
node
 
!=
 
null
 
&&
 
node
 
.
 

Attributes
 &
[
& '
$str
' 5
]
5 6
!=
7 9
null
: >
)
> ?
{
 
DateTime
ŸŸ 
.
ŸŸ 
TryParse
ŸŸ 
(
ŸŸ 
node
ŸŸ 
.
ŸŸ 

Attributes
ŸŸ %
[
ŸŸ% &
$str
ŸŸ& 4
]
ŸŸ4 5
.
ŸŸ5 6
Value
ŸŸ6 ;
,
ŸŸ; <
out
ŸŸ= @
expirationDate
ŸŸA O
)
ŸŸO P
;
ŸŸP Q
}
   
return
¡¡ 	
DateTime
¡¡
 
.
¡¡ 
UtcNow
¡¡ 
>
¡¡ 
expirationDate
¡¡ *
.
¡¡* +
ToUniversalTime
¡¡+ :
(
¡¡: ;
)
¡¡; <
;
¡¡< =
}
¢¢ 
public
¤¤ 
string
¤¤	 
	GetNameID
¤¤ 
(
¤¤ 
)
¤¤ 
{
¥¥ 
XmlNode
¦¦ 

node
¦¦ 
=
¦¦ 
_xmlDoc
¦¦ 
.
¦¦ 
SelectSingleNode
¦¦ *
(
¦¦* +
$str
¦¦+ d
,
¦¦d e"
_xmlNameSpaceManager
¦¦f z
)
¦¦z {
;
¦¦{ |
return
§§ 	
node
§§
 
.
§§ 
	InnerText
§§ 
;
§§ 
}
¨¨ 
public
ªª 
string
ªª	 
GetEmail
ªª 
(
ªª 
)
ªª 
{
«« 
XmlNode
¬¬ 

node
¬¬ 
=
¬¬ 
_xmlDoc
¬¬ 
.
¬¬ 
SelectSingleNode
¬¬ *
(
¬¬* +
$str¬¬+ ”
,¬¬” •$
_xmlNameSpaceManager¬¬– ª
)¬¬ª «
;¬¬« ¬
if
¯¯ 
(
¯¯ 
node
¯¯ 
==
¯¯ 
null
¯¯ 
)
¯¯ 
node
°° 
=
°°	 

_xmlDoc
°° 
.
°° 
SelectSingleNode
°° #
(
°°# $
$str°°$ Ë
,°°Ë Ì$
_xmlNameSpaceManager°°Í á
)°°á â
;°°â ã
return
²² 	
node
²²
 
==
²² 
null
²² 
?
²² 
null
²² 
:
²² 
node
²²  $
.
²²$ %
	InnerText
²²% .
;
²². /
}
³³ 
public
µµ 
string
µµ	 
GetFirstName
µµ 
(
µµ 
)
µµ 
{
¶¶ 
XmlNode
·· 

node
·· 
=
·· 
_xmlDoc
·· 
.
·· 
SelectSingleNode
·· *
(
··* +
$str··+ ™
,··™ š$
_xmlNameSpaceManager··› ¯
)··¯ °
;··° ±
if
ºº 
(
ºº 
node
ºº 
==
ºº 
null
ºº 
)
ºº 
node
»» 
=
»»	 

_xmlDoc
»» 
.
»» 
SelectSingleNode
»» #
(
»»# $
$str»»$ È
,»»È É$
_xmlNameSpaceManager»»Ê Ş
)»»Ş ß
;»»ß à
return
½½ 	
node
½½
 
==
½½ 
null
½½ 
?
½½ 
null
½½ 
:
½½ 
node
½½  $
.
½½$ %
	InnerText
½½% .
;
½½. /
}
¾¾ 
public
ÀÀ 
string
ÀÀ	 
GetLastName
ÀÀ 
(
ÀÀ 
)
ÀÀ 
{
ÁÁ 
XmlNode
ÂÂ 

node
ÂÂ 
=
ÂÂ 
_xmlDoc
ÂÂ 
.
ÂÂ 
SelectSingleNode
ÂÂ *
(
ÂÂ* +
$strÂÂ+ ’
,ÂÂ’ “$
_xmlNameSpaceManagerÂÂ” ¨
)ÂÂ¨ ©
;ÂÂ© ª
if
ÅÅ 
(
ÅÅ 
node
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
node
ÆÆ 
=
ÆÆ	 

_xmlDoc
ÆÆ 
.
ÆÆ 
SelectSingleNode
ÆÆ #
(
ÆÆ# $
$strÆÆ$ Æ
,ÆÆÆ Ç$
_xmlNameSpaceManagerÆÆÈ Ü
)ÆÆÜ İ
;ÆÆİ Ş
return
ÇÇ 	
node
ÇÇ
 
==
ÇÇ 
null
ÇÇ 
?
ÇÇ 
null
ÇÇ 
:
ÇÇ 
node
ÇÇ  $
.
ÇÇ$ %
	InnerText
ÇÇ% .
;
ÇÇ. /
}
ÈÈ 
public
ÊÊ 
string
ÊÊ	 
GetUserName
ÊÊ 
(
ÊÊ 
)
ÊÊ 
{
ËË 
XmlNode
ÌÌ 

node
ÌÌ 
=
ÌÌ 
_xmlDoc
ÌÌ 
.
ÌÌ 
SelectSingleNode
ÌÌ *
(
ÌÌ* +
$strÌÌ+ 
,ÌÌ Ÿ$
_xmlNameSpaceManagerÌÌ  ´
)ÌÌ´ µ
;ÌÌµ ¶
return
ÍÍ 	
node
ÍÍ
 
==
ÍÍ 
null
ÍÍ 
?
ÍÍ 
string
ÍÍ 
.
ÍÍ  
Empty
ÍÍ  %
:
ÍÍ& '
node
ÍÍ( ,
.
ÍÍ, -
	InnerText
ÍÍ- 6
;
ÍÍ6 7
}
ÎÎ 
public
ĞĞ 
string
ĞĞ	 

GetCountry
ĞĞ 
(
ĞĞ 
)
ĞĞ 
{
ÑÑ 
XmlNode
ÒÒ 

node
ÒÒ 
=
ÒÒ 
_xmlDoc
ÒÒ 
.
ÒÒ 
SelectSingleNode
ÒÒ *
(
ÒÒ* +
$strÒÒ+ ‘
,ÒÒ‘ ’$
_xmlNameSpaceManagerÒÒ“ §
)ÒÒ§ ¨
;ÒÒ¨ ©
return
ÓÓ 	
node
ÓÓ
 
==
ÓÓ 
null
ÓÓ 
?
ÓÓ 
null
ÓÓ 
:
ÓÓ 
node
ÓÓ  $
.
ÓÓ$ %
	InnerText
ÓÓ% .
;
ÓÓ. /
}
ÔÔ 
private
ØØ 	!
XmlNamespaceManager
ØØ
 !
GetNamespaceManager
ØØ 1
(
ØØ1 2
)
ØØ2 3
{
ÙÙ !
XmlNamespaceManager
ÚÚ 
manager
ÚÚ 
=
ÚÚ  
new
ÚÚ! $!
XmlNamespaceManager
ÚÚ% 8
(
ÚÚ8 9
_xmlDoc
ÚÚ9 @
.
ÚÚ@ A
	NameTable
ÚÚA J
)
ÚÚJ K
;
ÚÚK L
manager
ÛÛ 

.
ÛÛ
 
AddNamespace
ÛÛ 
(
ÛÛ 
$str
ÛÛ 
,
ÛÛ 
	SignedXml
ÛÛ '
.
ÛÛ' (!
XmlDsigNamespaceUrl
ÛÛ( ;
)
ÛÛ; <
;
ÛÛ< =
manager
ÜÜ 

.
ÜÜ
 
AddNamespace
ÜÜ 
(
ÜÜ 
$str
ÜÜ 
,
ÜÜ 
$str
ÜÜ  G
)
ÜÜG H
;
ÜÜH I
manager
İİ 

.
İİ
 
AddNamespace
İİ 
(
İİ 
$str
İİ 
,
İİ  
$str
İİ! G
)
İİG H
;
İİH I
return
ßß 	
manager
ßß
 
;
ßß 
}
àà 
}
áá 
public
ãã 
class
ãã 
AuthRequest
ãã 
{
ää 
public
åå 
string
åå	 
_id
åå 
;
åå 
private
ææ 	
string
ææ
 
_issue_instant
ææ 
;
ææ  
private
èè 	
string
èè
 
_issuer
èè 
;
èè 
private
éé 	
string
éé
 *
_assertionConsumerServiceUrl
éé -
;
éé- .
public
ëë 
enum
ëë	 
AuthRequestFormat
ëë 
{
ìì 
Base64
íí 	
=
íí
 
$num
íí 
}
îî 
public
ğğ 
AuthRequest
ğğ	 
(
ğğ 
string
ğğ 
issuer
ğğ "
,
ğğ" #
string
ğğ$ *)
assertionConsumerServiceUrl
ğğ+ F
)
ğğF G
{
ññ 0
"RSAPKCS1SHA256SignatureDescription
òò %
.
òò% &
Init
òò& *
(
òò* +
)
òò+ ,
;
òò, -
_id
ôô 
=
ôô 
$str
ôô	 
+
ôô 
System
ôô 
.
ôô 
Guid
ôô 
.
ôô 
NewGuid
ôô "
(
ôô" #
)
ôô# $
.
ôô$ %
ToString
ôô% -
(
ôô- .
)
ôô. /
;
ôô/ 0
_issue_instant
õõ 
=
õõ 
DateTime
õõ 
.
õõ 
Now
õõ  
.
õõ  !
ToUniversalTime
õõ! 0
(
õõ0 1
)
õõ1 2
.
õõ2 3
ToString
õõ3 ;
(
õõ; <
$str
õõ< R
)
õõR S
;
õõS T
_issuer
÷÷ 

=
÷÷ 
issuer
÷÷ 
;
÷÷ *
_assertionConsumerServiceUrl
øø 
=
øø  !)
assertionConsumerServiceUrl
øø" =
;
øø= >
}
ùù 
public
ûû 
string
ûû	 

GetRequest
ûû 
(
ûû 
AuthRequestFormat
ûû ,
format
ûû- 3
)
ûû3 4
{
üü 
using
ıı 
(
ıı	 

StringWriter
ıı
 
sw
ıı 
=
ıı 
new
ıı 
StringWriter
ıı  ,
(
ıı, -
)
ıı- .
)
ıı. /
{
şş 
XmlWriterSettings
ÿÿ 
xws
ÿÿ 
=
ÿÿ 
new
ÿÿ 
XmlWriterSettings
ÿÿ  1
(
ÿÿ1 2
)
ÿÿ2 3
;
ÿÿ3 4
xws
€€ 
.
€€  
OmitXmlDeclaration
€€ 
=
€€ 
true
€€ !
;
€€! "
using
‚‚ 	
(
‚‚
 
	XmlWriter
‚‚ 
xw
‚‚ 
=
‚‚ 
	XmlWriter
‚‚ #
.
‚‚# $
Create
‚‚$ *
(
‚‚* +
sw
‚‚+ -
,
‚‚- .
xws
‚‚/ 2
)
‚‚2 3
)
‚‚3 4
{
ƒƒ 
xw
„„ 
.
„„ 
WriteStartElement
„„ 
(
„„ 
$str
„„ !
,
„„! "
$str
„„# 1
,
„„1 2
$str
„„3 Y
)
„„Y Z
;
„„Z [
xw
…… 
.
…… "
WriteAttributeString
…… 
(
…… 
$str
…… !
,
……! "
_id
……# &
)
……& '
;
……' (
xw
†† 
.
†† "
WriteAttributeString
†† 
(
†† 
$str
†† &
,
††& '
$str
††( -
)
††- .
;
††. /
xw
‡‡ 
.
‡‡ "
WriteAttributeString
‡‡ 
(
‡‡ 
$str
‡‡ +
,
‡‡+ ,
_issue_instant
‡‡- ;
)
‡‡; <
;
‡‡< =
xw
ˆˆ 
.
ˆˆ "
WriteAttributeString
ˆˆ 
(
ˆˆ 
$str
ˆˆ .
,
ˆˆ. /
$str
ˆˆ0 `
)
ˆˆ` a
;
ˆˆa b
xw
‰‰ 
.
‰‰ "
WriteAttributeString
‰‰ 
(
‰‰ 
$str
‰‰ :
,
‰‰: ;*
_assertionConsumerServiceUrl
‰‰< X
)
‰‰X Y
;
‰‰Y Z
xw
‹‹ 
.
‹‹ 
WriteStartElement
‹‹ 
(
‹‹ 
$str
‹‹  
,
‹‹  !
$str
‹‹" *
,
‹‹* +
$str
‹‹, S
)
‹‹S T
;
‹‹T U
xw
ŒŒ 
.
ŒŒ 
WriteString
ŒŒ 
(
ŒŒ 
_issuer
ŒŒ 
)
ŒŒ 
;
ŒŒ 
xw
 
.
 
WriteEndElement
 
(
 
)
 
;
 
xw
 
.
 
WriteStartElement
 
(
 
$str
 !
,
! "
$str
# 1
,
1 2
$str
3 Y
)
Y Z
;
Z [
xw
 
.
 "
WriteAttributeString
 
(
 
$str
 %
,
% &
$str
' ^
)
^ _
;
_ `
xw
‘‘ 
.
‘‘ "
WriteAttributeString
‘‘ 
(
‘‘ 
$str
‘‘ *
,
‘‘* +
$str
‘‘, 2
)
‘‘2 3
;
‘‘3 4
xw
’’ 
.
’’ 
WriteEndElement
’’ 
(
’’ 
)
’’ 
;
’’ 
xw
›› 
.
›› 
WriteEndElement
›› 
(
›› 
)
›› 
;
›› 
}
œœ 
if
 
(
 
format
 
==
 
AuthRequestFormat
 #
.
# $
Base64
$ *
)
* +
{
ŸŸ 
var
¤¤ 
memoryStream
¤¤	 
=
¤¤ 
new
¤¤ 
MemoryStream
¤¤ (
(
¤¤( )
)
¤¤) *
;
¤¤* +
var
¥¥ 
writer
¥¥	 
=
¥¥ 
new
¥¥ 
StreamWriter
¥¥ "
(
¥¥" #
new
¥¥# &
DeflateStream
¥¥' 4
(
¥¥4 5
memoryStream
¥¥5 A
,
¥¥A B
CompressionMode
¥¥C R
.
¥¥R S
Compress
¥¥S [
,
¥¥[ \
true
¥¥] a
)
¥¥a b
,
¥¥b c
new
¥¥d g
UTF8Encoding
¥¥h t
(
¥¥t u
false
¥¥u z
)
¥¥z {
)
¥¥{ |
;
¥¥| }
writer
¦¦ 
.
¦¦ 
Write
¦¦ 
(
¦¦ 
sw
¦¦ 
.
¦¦ 
ToString
¦¦ 
(
¦¦ 
)
¦¦ 
)
¦¦  
;
¦¦  !
writer
§§ 
.
§§ 
Close
§§ 
(
§§ 
)
§§ 
;
§§ 
string
¨¨ 
result
¨¨ 
=
¨¨ 
Convert
¨¨ 
.
¨¨ 
ToBase64String
¨¨ +
(
¨¨+ ,
memoryStream
¨¨, 8
.
¨¨8 9
	GetBuffer
¨¨9 B
(
¨¨B C
)
¨¨C D
,
¨¨D E
$num
¨¨F G
,
¨¨G H
(
¨¨I J
int
¨¨J M
)
¨¨M N
memoryStream
¨¨N Z
.
¨¨Z [
Length
¨¨[ a
,
¨¨a b%
Base64FormattingOptions
¨¨c z
.
¨¨z {
None
¨¨{ 
)¨¨ €
;¨¨€ 
return
©© 
result
©© 
;
©© 
}
ªª 
return
¬¬ 

null
¬¬ 
;
¬¬ 
}
­­ 
}
®® 
public
±± 
string
±±	 
GetRedirectUrl
±± 
(
±± 
string
±± %
samlEndpoint
±±& 2
)
±±2 3
{
²² 
var
³³ "
queryStringSeparator
³³ 
=
³³ 
samlEndpoint
³³ *
.
³³* +
Contains
³³+ 3
(
³³3 4
$str
³³4 7
)
³³7 8
?
³³9 :
$str
³³; >
:
³³? @
$str
³³A D
;
³³D E
return
´´ 
samlEndpoint
´´  
+
´´! ""
queryStringSeparator
´´# 7
+
´´8 9
$str
´´: H
+
´´I J
HttpUtility
´´K V
.
´´V W
	UrlEncode
´´W `
(
´´` a
this
´´a e
.
´´e f

GetRequest
´´f p
(
´´p q
AuthRequest
´´q |
.
´´| } 
AuthRequestFormat´´} 
.´´ 
Base64´´ •
)´´• –
)´´– —
;´´— ˜
}
µµ 
}
¶¶ 
}·· ô	
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\AlarmEnble.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 

AlarmEnble 
{		 
public

 
int

 
TagID

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
int 
AssetID 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	AssetName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	isEnabled 
{  !
get" %
;% &
set' *
;* +
}, -
public 
double 
Target 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} æ
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Alarms.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
Alarms		 
{

 
public 
int 
TagID 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
PlantID 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
double 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	TimeStamp 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Š
}D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Asset.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
Asset 
{		 
public

 
int

 
?

 
ID

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 
string 
Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
Plant_ID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
	Parent_ID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
	CreatedDt !
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	CreatedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

ModifiedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 

ModifiedDt "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Active 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ñ

~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Budget.cs
	namespace 	
EMMSRestServices
 
. 
Models !
{ 
public 

class 
Budget 
{		 
public

 
int

 
id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
string 
Month 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Year 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
wage_id 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
plant_id 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Consumption 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ½
€D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Building.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
Building		 
{

 
[ 	
Required	 
] 
public 
string 
BuildingName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
int 
? 
PlantId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	CreatedBy 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

ModifiedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} –
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\DataSource.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 

DataSource 
{		 
public

 
string

 
HistorianType

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 

ServerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ã
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Department.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 

Department		 
{

 
[ 	
Required	 
] 
public 
string 
DepartmentName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
public 
int 
? 
PlantId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	CreatedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

ModifiedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ö
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\EmailInfo.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
	EmailInfo 
{		 
public

 
int

 
TagID

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
EmailID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PlantId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	PlantName 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} €
‰D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\EnergyConsumption.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
EnergyConsumption "
{		 
public

 
int

 
WageID

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
int 
? 
MonthID 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
YearID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
WageType 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
plant_id 
{ 
get !
;! "
set# &
;& '
}( )
public 
float 
? 
Cost 
{ 
get  
;  !
set" %
;% &
}' (
public 
float 
? 
Consumption !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ş
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Equipment.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
	Equipment		 
{

 
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
EquipmentName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str% X
)X Y
]Y Z
[ 	
DataType	 
( 
DataType 
. 
Text 
)  
]  !
public 
string 
EquipmentType $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
PlantId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	CreatedBy 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

ModifiedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ô
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Frequency.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
	Frequency 
{		 
public

 
double

 
Frequencies

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
} 
} Ü
ƒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\GetSASToken.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
GetSASToken 
{ 
public 
string $
sanitizeConnectionString .
(. /
string/ 5
connectionString6 F
)F G
{ 	
return 
connectionString #
.# $
Trim$ (
(( )
)) *
.* +
Replace+ 2
(2 3
$str3 7
,7 8
$str9 ;
); <
.< =
Replace= D
(D E
$strE I
,I J
$strK M
)M N
;N O
} 	
public 
string '
parseIoTHubConnectionString 1
(1 2
string2 8
connectionString9 I
,I J
DeviceK Q
deviceR X
)X Y
{ 	
try 
{ 
if 
( 
device 
. 
Authentication )
.) *
X509Thumbprint* 8
!=9 ;
null< @
)@ A
{ 
if 
( 
( 
device 
.  
Authentication  .
.. /
X509Thumbprint/ =
.= >
PrimaryThumbprint> O
!=P R
nullS W
)W X
||Y [
( 
device  
.  !
Authentication! /
./ 0
X509Thumbprint0 >
.> ?
SecondaryThumbprint? R
!=S U
nullV Z
)Z [
)[ \
{   
throw!! 
new!! !
	Exception!!" +
(!!+ ,
$str!!, l
)!!l m
;!!m n
}"" 
}## 
var$$ #
ConnectionStringbuilder$$ +
=$$, -)
IotHubConnectionStringBuilder$$. K
.$$K L
Create$$L R
($$R S
connectionString$$S c
)$$c d
;$$d e
var&& 

sasBuilder&& 
=&&  
new&&! $(
SharedAccessSignatureBuilder&&% A
(&&A B
)&&B C
{'' 
Key(( 
=(( 
device((  
.((  !
Authentication((! /
.((/ 0
SymmetricKey((0 <
.((< =

PrimaryKey((= G
,((G H
Target)) 
=)) 
String)) #
.))# $
Format))$ *
())* +
$str))+ <
,))< =#
ConnectionStringbuilder))> U
.))U V
HostName))V ^
,))^ _

WebUtility))` j
.))j k
	UrlEncode))k t
())t u
device))u {
.)){ |
Id))| ~
.))~ 
ToString	)) ‡
(
))‡ ˆ
)
))ˆ ‰
)
))‰ Š
)
))Š ‹
,
))‹ Œ

TimeToLive** 
=**  
TimeSpan**! )
.**) *
FromMinutes*** 5
(**5 6
Convert**6 =
.**= >
ToDouble**> F
(**F G
$num**G I
)**I J
)**J K
}++ 
.++ 
ToSignature++ 
(++ 
)++ 
;++  
return-- 

sasBuilder-- !
.--! "
ToString--" *
(--* +
)--+ ,
;--, -
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 
Logger11 
.11 
Log11 
(11 
ex11 
.11 
ToString11 &
(11& '
)11' (
)11( )
;11) *
throw22 
new22 
ArgumentException22 +
(22+ ,
$str22, P
+22Q R
ex22S U
.22U V
Message22V ]
)22] ^
;22^ _
}33 
}44 	
}55 
}66 ş
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\MySession.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
	MySession 
{		 
private 
	MySession 
( 
) 
{ 	
	Property1 
= 
$str '
;' (
} 	
public 
static 
	MySession 
Current  '
{ 	
get 
{ 
	MySession 
session !
=" #
( 
	MySession 
) 
HttpContext (
.( )
Current) 0
.0 1
Session1 8
[8 9
$str9 B
]B C
;C D
if 
( 
session 
== 
null #
)# $
{ 
session 
= 
new !
	MySession" +
(+ ,
), -
;- .
HttpContext 
.  
Current  '
.' (
Session( /
[/ 0
$str0 9
]9 :
=; <
session= D
;D E
} 
return 
session 
; 
} 
} 	
public!! 
string!! 
	Property1!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
public"" 
DateTime"" 
MyDate"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
int## 
PlantId## 
{## 
get##  
;##  !
set##" %
;##% &
}##' (
}%% 
}&& È
†D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\PlantInfoModel.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
PlantInfoModel		 
{

 
public 
int 
? 
PlantID 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
	PlantName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ZoneName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
	Lattitude 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
	Longitude 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Active 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
	CreatedDt !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	CreatedBy 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

Modifiedby  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 

ModifiedDt "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} …
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Product.cs
	namespace 	
EMMSRestServices
 
. 
Models !
{ 
public 

class 
Product 
{		 
public

 
int

 
	ProductID

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
MonthID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
YearID 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
plant_id 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
? 
Value 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Asset_id 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
UOM 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ¥
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Production.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 

Production 
{		 
public

 
int

 
id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
int 
MonthID 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
YearID 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
Plant_id 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
? 
Value 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
Asset_id 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
UOM 
{ 
get 
; 
set "
;" #
}$ %
} 
} £

‡D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\ProductionDaily.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
ProductionDaily  
{		 
public

 
DateTime

 
	Date_Time

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
int 
Shift_ID 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
URL 
{ 
get 
;  
set! $
;$ %
}& '
public 
double 
? 
Value 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
UOM 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
? 
Asset_ID 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ü
‰D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\ProductionDetails.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
ProductionDetails "
{		 
public

 
string

 
Month

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
Year 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

Asset_Name  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
double 
? 
value 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} í
}D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Shift.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
Shift		 
{

 
public 
int 
? 
ShiftId 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
PlantId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
	ShiftName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
DateTime #
,# $
ErrorMessage$ 0
=1 2
$str3 R
)R S
]S T
public 
DateTime 
	StartDate !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
DataType	 
( 
DataType 
. 
DateTime #
,# $
ErrorMessage% 1
=2 3
$str4 Q
)Q R
]R S
public 
DateTime 
EndDate 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage  
=! "
$str" B
)B C
]C D
public 
int 
? 
	StartHour 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage "
=# $
$str% E
)E F
]F G
public 
int 
? 
EndHour 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Active 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
	CreatedDt !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	CreatedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 

ModifiedBy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 

ModifiedDt "
{# $
get% (
;( )
set* -
;- .
}/ 0
}   
}!! “

‡D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\SolidWasteDaily.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
SolidWasteDaily  
{		 
public

 
DateTime

 
	Date_Time

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
int 
Shift_ID 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
URL 
{ 
get  
;  !
set" %
;% &
}' (
public 
float 
? 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
UOM 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
Asset_ID 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ı
|D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Sync.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
Sync 
{		 
public

 
string

 
PlantID

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Date 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ü
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Tag.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
Tag 
{		 
public

 
string

 
TagID

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
TagName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} º
‰D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\TagMappingDetails.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
TagMappingDetails "
{		 
public

 
string

 
TagName

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
	AssetName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	AssetType 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} °
|D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Tags.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
Tags 
{		 
public

 
string

 

EnergyType

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
UOM 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
AssetTypeName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	AssetName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
IsExponential #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	IsEnabled 
{  !
get" %
;% &
set' *
;* +
}, -
public 
double 
Target 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}  

|D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\User.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public		 

class		 
User		 
{

 
[ 	
Required	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	firstname 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
lastname 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
country 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Error 
{ 
get !
;! "
set# &
;& '
}( )
} 
} «
‹D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\UserManagementModel.cs
	namespace

 	!
EMMSClientApplication


 
.

  
Models

  &
{ 
public 

class 
UserManagementModel $
{ 
public 
bool 
ValidateUser  
(  !
string! '
userName( 0
,0 1
string2 8
password9 A
)A B
{ 	
using 
( 
PrincipalContext #
pc$ &
=' (
new) ,
PrincipalContext- =
(= >
ContextType> I
.I J
DomainJ P
,P Q#
WebConfigurationManagerR i
.i j
AppSettingsj u
[u v
$str	v †
]
† ‡
.
‡ ˆ
ToString
ˆ 
(
 ‘
)
‘ ’
)
’ “
)
“ ”
{ 
var 
user 
= 
UserPrincipal (
.( )
FindByIdentity) 7
(7 8
pc8 :
,: ;
userName< D
)D E
;E F
bool 
isValid 
= 
pc !
.! "
ValidateCredentials" 5
(5 6
userName6 >
,> ?
password@ H
)H I
;I J
return 
isValid 
; 
} 
} 	
}   
}!! ×
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Models\Utility.cs
	namespace 	!
EMMSClientApplication
 
.  
Models  &
{ 
public 

class 
	Utilities 
{		 
public

 
string

 
HostName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
DeviceId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DevicePrimaryKey &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string !
SharedAccessSignature +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ´
ˆD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str .
). /
]/ 0
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *º
™D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Providers\ADAuthorizationServerProvider .cs
	namespace 	!
EMMSClientApplication
 
.  
	Providers  )
{ 
public		 

class		 )
ADAuthorizationServerProvider		 .
:		/ 0,
 OAuthAuthorizationServerProvider		1 Q
{

 
public 
override 
async 
Task "(
ValidateClientAuthentication# ?
(? @4
(OAuthValidateClientAuthenticationContext@ h
contexti p
)p q
{ 	
context 
. 
	Validated 
( 
) 
;  
} 	
public 
override 
async 
Task ")
GrantResourceOwnerCredentials# @
(@ A5
)OAuthGrantResourceOwnerCredentialsContextA j
contextk r
)r s
{ 	
context 
. 
OwinContext 
.  
Response  (
.( )
Headers) 0
.0 1
Add1 4
(4 5
$str5 R
,R S
newT W
[W X
]X Y
{Z [
$str\ _
}` a
)a b
;b c
using 
( 
PrincipalContext #
pc$ &
=' (
new) ,
PrincipalContext- =
(= >
ContextType> I
.I J
DomainJ P
,P Q#
WebConfigurationManagerR i
.i j
AppSettingsj u
[u v
$str	v †
]
† ‡
.
‡ ˆ
ToString
ˆ 
(
 ‘
)
‘ ’
)
’ “
)
“ ”
{ 
bool 
isValid 
= 
pc !
.! "
ValidateCredentials" 5
(5 6
context6 =
.= >
UserName> F
,F G
contextH O
.O P
PasswordP X
)X Y
;Y Z
if 
( 
! 
isValid 
) 
{ 
context 
. 
SetError $
($ %
$str% 4
,4 5
$str6 _
)_ `
;` a
return 
; 
} 
} 
var!! 
identity!! 
=!! 
new!! 
ClaimsIdentity!! -
(!!- .
context!!. 5
.!!5 6
Options!!6 =
.!!= >
AuthenticationType!!> P
)!!P Q
;!!Q R
context$$ 
.$$ 
	Validated$$ 
($$ 
identity$$ &
)$$& '
;$$' (
}%% 	
}&& 
}'' ™
xD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\Startup.cs
[ 
assembly 	
:	 

OwinStartup 
( 
typeof 
( !
EMMSClientApplication 3
.3 4
Startup4 ;
); <
)< =
]= >
	namespace 	!
EMMSClientApplication
 
{ 
public 

class 
Startup 
{ 
public 
void 
Configuration !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
HttpConfiguration 
config $
=% &
new' *
HttpConfiguration+ <
(< =
)= >
;> ?
WebApiConfig 
. 
Register !
(! "
config" (
)( )
;) *
app 
. 
	UseWebApi 
( 
config  
)  !
;! "
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
IdentityConfig 
. 
RegisterIdentity +
(+ ,
), -
;- .
GlobalConfiguration 
.  
	Configure  )
() *
WebApiConfig* 6
.6 7
Register7 ?
)? @
;@ A
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig   
.   
RegisterRoutes   &
(  & '

RouteTable  ' 1
.  1 2
Routes  2 8
)  8 9
;  9 :
BundleConfig!! 
.!! 
RegisterBundles!! (
(!!( )
BundleTable!!) 4
.!!4 5
Bundles!!5 <
)!!< =
;!!= >
ControllerBuilder"" 
."" 
Current"" %
.""% & 
SetControllerFactory""& :
("": ;
new""; >$
NinjectControllerFactory""? W
(""W X
)""X Y
)""Y Z
;""Z [%
CheckUserSessionAttribute## %
.##% &
CheckSessionAlive##& 7
=##8 9
session##: A
=>##B D
(##E F
session##F M
[##M N
$str##N X
]##X Y
!=##Z \
null##] a
)##a b
;##b c%
CheckUserSessionAttribute$$ %
.$$% &
LoginUrl$$& .
=$$/ 0
$str$$1 J
;$$J K
}%% 	
}77 
}88 ¹
¶D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¹
¶D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¹
¶D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs»
¸D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSClientApplication\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csµ
sD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSService\LoginService.cs
	namespace		 	
EMMSService		
 
{

 
public 

class 
LoginService 
{ 

HttpClient 
client 
; 
string 
url 
= 
$str ?
;? @
public 
LoginService 
( 
) 
{ 	
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
client 
. 
BaseAddress 
=  
new! $
Uri% (
(( )
url) ,
), -
;- .
client 
. !
DefaultRequestHeaders (
.( )
Accept) /
./ 0
Clear0 5
(5 6
)6 7
;7 8
client 
. !
DefaultRequestHeaders (
.( )
Accept) /
./ 0
Add0 3
(3 4
new4 7+
MediaTypeWithQualityHeaderValue8 W
(W X
$strX j
)j k
)k l
;l m
} 	
public 
async 
Task 
< 
bool 
> 
IsUserValidated  /
(/ 0
LoginViewModel0 >
user? C
)C D
{ 	
bool 
result 
= 
false 
;  
if 
( 
user 
!= 
null 
) 
{ 
HttpResponseMessage #
responseMessage$ 3
=4 5
await6 ;
client< B
.B C
PostAsJsonAsyncC R
(R S
urlS V
,V W
userX \
)\ ]
;] ^
if 
( 
responseMessage #
.# $
IsSuccessStatusCode$ 7
)7 8
{ 
var 
responseData $
=% &
responseMessage' 6
.6 7
Content7 >
.> ?
ReadAsStringAsync? P
(P Q
)Q R
.R S
ResultS Y
;Y Z
result   
=   
JsonConvert   (
.  ( )
DeserializeObject  ) :
<  : ;
bool  ; ?
>  ? @
(  @ A
responseData  A M
)  M N
;  N O
}!! 
if$$ 
($$ 
result$$ 
)$$ 
return%% 
true%% 
;%%  
else&& 
return'' 
false''  
;''  !
}(( 
return)) 
false)) 
;)) 
}++ 	
},, ©
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSService\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *¯
¬D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSService\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs¯
¬D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSService\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs¯
¬D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSService\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csú,
ˆD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\AlarmEnablingControllerUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class ,
 AlarmEnablingControllerUnitTests 1
{ 
[ 	

TestMethod	 
] 
public 
void ,
 AlarmEnablingReturnsActionResult 4
(4 5
)5 6
{ 	
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
var 

controller 
= 
new  #
AlarmEnablingController! 8
(8 9
mock9 =
.= >
Object> D
)D E
;E F
ActionResult 
action 
=  !

controller" ,
., -
AlarmEnabling- :
(: ;
); <
;< =
Assert 
. 
IsInstanceOfType #
(# $
action$ *
,* +
typeof, 2
(2 3

ViewResult3 =
)= >
)> ?
;? @
} 	
[ 	

TestMethod	 
] 
public 
void &
UpdateAlaramInfoReturnsInt .
(. /
)/ 0
{ 	
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
mock   
.   
Setup   
(   
r   
=>   
r   
.   
UpdateAlarmInfo   -
(  - .
	TestAlarm  . 7
(  7 8
)  8 9
)  9 :
)  : ;
.  ; <
Returns  < C
(  C D
true  D H
)  H I
;  I J
var!! 

controller!! 
=!! 
new!!  #
AlarmEnablingController!!! 8
(!!8 9
mock!!9 =
.!!= >
Object!!> D
)!!D E
;!!E F
var"" 
result"" 
="" 

controller"" #
.""# $
UpdateAlaramInfo""$ 4
(""4 5
	TestAlarm""5 >
(""> ?
)""? @
)""@ A
;""A B
Assert## 
.## 
	IsNotNull## 
(## 
result## #
)### $
;##$ %
}$$ 	
[%% 	

TestMethod%%	 
]%% 
public&& 
void&& )
GetAlarmDataReturnsJSonResult&& 1
(&&1 2
)&&2 3
{'' 	
Mock(( 
<(( 
IPlantSetUpManager(( #
>((# $
mock((% )
=((* +
new((, /
Mock((0 4
<((4 5
IPlantSetUpManager((5 G
>((G H
(((H I
)((I J
;((J K
mock)) 
.)) 
Setup)) 
()) 
r)) 
=>)) 
r)) 
.)) 
GetAlaramData)) +
())+ ,
))), -
)))- .
.)). /
Returns))/ 6
())6 7
	TestAlarm))7 @
())@ A
)))A B
)))B C
;))C D
var** 

controller** 
=** 
new**  #
AlarmEnablingController**! 8
(**8 9
mock**9 =
.**= >
Object**> D
)**D E
;**E F
var++ 
result++ 
=++ 

controller++ #
.++# $
GetAlarmData++$ 0
(++0 1
)++1 2
as++3 5

JsonResult++6 @
;++@ A
Assert,, 
.,, 
	IsNotNull,, 
(,, 
result,, #
),,# $
;,,$ % 
JavaScriptSerializer--  

serializer--! +
=--, -
new--. 1 
JavaScriptSerializer--2 F
(--F G
)--G H
;--H I
var.. 
result1.. 
=.. 

serializer.. $
...$ %
Deserialize..% 0
<..0 1
List..1 5
<..5 6

AlarmEnble..6 @
>..@ A
>..A B
(..B C

serializer..C M
...M N
	Serialize..N W
(..W X
result..X ^
...^ _
Data.._ c
)..c d
)..d e
;..e f
CollectionAssert// 
.// 
AreEquivalent// *
(//* +
result1//+ 2
,//2 3
	TestAlarm//4 =
(//= >
)//> ?
)//? @
;//@ A
}00 	
[11 	
Ignore11	 
]11 
private22 
List22 
<22 

AlarmEnble22 
>22  
	TestAlarm22! *
(22* +
)22+ ,
{33 	
return44
 
new44 
List44 
<44 

AlarmEnble44 $
>44$ %
{44& '
new44( +

AlarmEnble44, 6
{447 8
AssetID449 @
=44A B
$num44C D
,44D E
	AssetName44F O
=44P Q
$str44R ]
,44] ^
	isEnabled44_ h
=44i j
$str44k n
,44n o
TagID44p u
=44v w
$num44x y
,44y z
TagName	44{ ‚
=
44ƒ „
$str
44… 
,
44 
Target
44 –
=
44— ˜
$num
44™ 
}
44 Ÿ
}
44  ¡
;
44¡ ¢
}55 	
}66 
}77 ‡J
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\ConfigurationUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class "
ConfigurationUnitTests '
{ 
[ 	

TestMethod	 
] 
public 
void -
!ConfigurationsReturnsActionResult 5
(5 6
)6 7
{ 	
List 
< 
Details 
> 
wages 
=  !
TestData" *
.* +
	WagesData+ 4
(4 5
)5 6
;6 7
List 
< 
Details 
> 
Uoms 
=  
TestData! )
.) *
UOMData* 1
(1 2
)2 3
;3 4
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
Mock 
< 
IDataForDropdown !
>! "
mock1# (
=) *
new+ .
Mock/ 3
<3 4
IDataForDropdown4 D
>D E
(E F
)F G
;G H
mock1 
. 
Setup 
( 
r 
=> 
r 
. 
GetWages '
(' (
)( )
)) *
.* +
Returns+ 2
(2 3
wages3 8
)8 9
;9 :
mock1 
. 
Setup 
( 
r 
=> 
r 
. 
GetUOMs &
(& '
)' (
)( )
.) *
Returns* 1
(1 2
Uoms2 6
)6 7
;7 8
var 

controller 
= 
new  #
ConfigurationController! 8
(8 9
mock19 >
.> ?
Object? E
,E F
mockG K
.K L
ObjectL R
)R S
;S T
ActionResult 
action 
=  !

controller" ,
., -
Configurations- ;
(; <
)< =
;= >
Assert 
. 
IsInstanceOfType #
(# $
action$ *
,* +
typeof, 2
(2 3

ViewResult3 =
)= >
)> ?
;? @
} 	
[   	

TestMethod  	 
]   
public!! 
void!! $
ConfigurationsReturnsInt!! ,
(!!, -
)!!- .
{"" 	
Mock## 
<## 
IPlantSetUpManager## #
>### $
mock##% )
=##* +
new##, /
Mock##0 4
<##4 5
IPlantSetUpManager##5 G
>##G H
(##H I
)##I J
;##J K
mock$$ 
.$$ 
Setup$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$ 
SaveWageMapping$$ -
($$- .
$str$$. :
,$$: ;
$num$$< =
,$$= >
$num$$? @
,$$@ A
$num$$A B
)$$B C
)$$C D
.$$D E
Returns$$E L
($$L M
true$$M Q
)$$Q R
;$$R S
Mock%% 
<%% 
IDataForDropdown%% !
>%%! "
mock1%%# (
=%%) *
new%%+ .
Mock%%/ 3
<%%3 4
IDataForDropdown%%4 D
>%%D E
(%%E F
)%%F G
;%%G H
var&& 

controller&& 
=&& 
new&&  #
ConfigurationController&&! 8
(&&8 9
mock1&&9 >
.&&> ?
Object&&? E
,&&E F
mock&&G K
.&&K L
Object&&L R
)&&R S
;&&S T
var'' 
result'' 
='' 

controller'' #
.''# $
Configurations''$ 2
(''2 3
$str''3 ?
,''? @
$str''A D
,''D E
$str''F I
,''I J
$str''J M
)''M N
;''N O
Assert(( 
.(( 
AreEqual(( 
((( 
$num(( 
,(( 
$num(( 
)((  
;((  !
Assert)) 
.)) 
	IsNotNull)) 
()) 
result)) #
)))# $
;))$ %
}** 	
[,, 	

TestMethod,,	 
],, 
public-- 
void-- +
GetWageMappingReturnsJsonResult-- 3
(--3 4
)--4 5
{.. 	
var// 
testData// 
=// 
TestData// #
.//# $
getWagesUOMData//$ 3
(//3 4
)//4 5
;//5 6
Mock00 
<00 
IPlantSetUpManager00 #
>00# $
mock00% )
=00* +
new00, /
Mock000 4
<004 5
IPlantSetUpManager005 G
>00G H
(00H I
)00I J
;00J K
Mock11 
<11 
IDataForDropdown11 !
>11! "
mock111# (
=11) *
new11+ .
Mock11/ 3
<113 4
IDataForDropdown114 D
>11D E
(11E F
)11F G
;11G H
mock22 
.22 
Setup22 
(22 
r22 
=>22 
r22 
.22 
GetWageMapping22 ,
(22, -
)22- .
)22. /
.22/ 0
Returns220 7
(227 8
testData228 @
)22@ A
;22A B
var33 

controller33 
=33 
new33  #
ConfigurationController33! 8
(338 9
mock1339 >
.33> ?
Object33? E
,33E F
mock33G K
.33K L
Object33L R
)33R S
;33S T
var44 
result44 
=44 

controller44 #
.44# $
GetWageMapping44$ 2
(442 3
)443 4
;444 5 
JavaScriptSerializer55  

serializer55! +
=55, -
new55. 1 
JavaScriptSerializer552 F
(55F G
)55G H
;55H I
var66 
result166 
=66 

serializer66 $
.66$ %
Deserialize66% 0
<660 1
List661 5
<665 6
WageUomMapping666 D
>66D E
>66E F
(66F G

serializer66G Q
.66Q R
	Serialize66R [
(66[ \
result66\ b
.66b c
Data66c g
)66g h
)66h i
;66i j
CollectionAssert77 
.77 
AreEqual77 %
(77% &
testData77& .
,77. /
result1770 7
)777 8
;778 9
}88 	
[99 	

TestMethod99	 
]99 
public:: 
void:: '
EditConfigurationReturnsInt:: /
(::/ 0
)::0 1
{;; 	
Mock<< 
<<< 
IPlantSetUpManager<< #
><<# $
mock<<% )
=<<* +
new<<, /
Mock<<0 4
<<<4 5
IPlantSetUpManager<<5 G
><<G H
(<<H I
)<<I J
;<<J K
Mock== 
<== 
IDataForDropdown== !
>==! "
mock1==# (
===) *
new==+ .
Mock==/ 3
<==3 4
IDataForDropdown==4 D
>==D E
(==E F
)==F G
;==G H
mock>> 
.>> 
Setup>> 
(>> 
r>> 
=>>> 
r>> 
.>> 
EditConfiguration>> /
(>>/ 0
new>>0 3
WageUomMapping>>4 B
{>>C D
ID>>E G
=>>H I
$num>>J K
,>>K L

EnergyName>>M W
=>>X Y
$str>>Z `
,>>` a

EnergyType>>b l
=>>m n
$str>>o |
,>>| }
UOM	>>~ 
=
>>‚ ƒ
$str
>>„ ‰
}
>>Š ‹
)
>>‹ Œ
)
>>Œ 
.
>> 
Returns
>> •
(
>>• –
true
>>– š
)
>>š ›
;
>>› œ
var?? 

controller?? 
=?? 
new??  #
ConfigurationController??! 8
(??8 9
mock1??9 >
.??> ?
Object??? E
,??E F
mock??G K
.??K L
Object??L R
)??R S
;??S T
var@@ 
result@@ 
=@@ 

controller@@ #
.@@# $
EditConfiguration@@$ 5
(@@5 6
new@@6 9
WageUomMapping@@: H
{@@I J
ID@@K M
=@@N O
$num@@P Q
,@@Q R

EnergyName@@S ]
=@@^ _
$str@@` f
,@@f g

EnergyType@@h r
=@@s t
$str	@@u ‚
,
@@‚ ƒ
UOM
@@„ ‡
=
@@ˆ ‰
$str
@@Š 
}
@@ ‘
)
@@‘ ’
;
@@’ “
AssertAA 
.AA 
	IsNotNullAA 
(AA 
resultAA #
)AA# $
;AA$ %
AssertBB 
.BB 
AreEqualBB 
(BB 
$numBB 
,BB 
$numBB  
)BB  !
;BB! "
}CC 	
}EE 
}FF ••
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\ConsuProdBudgetedTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class "
ConsuProdBudgetedTests '
{ 
[ 	

TestMethod	 
] 
public 
void 2
&GetBudgetedConsumtionReturnsJsonResult :
(: ;
); <
{ 	
List 
< 
AnnualDetails 
> 
test  $
=% &
TestData' /
./ 0
TestAnnualData0 >
(> ?
)? @
;@ A
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
List 
< 
string 
> 
consumptionAndCost +
=, -
new. 1
List2 6
<6 7
string7 =
>= >
{? @
$strA Y
,Y Z
$str[ j
}k l
;l m
foreach 
( 
string 
str 
in  "
consumptionAndCost# 5
)5 6
{ 
mock 
. 
Setup 
( 
r 
=> 
r  !
.! " 
GetConsumptionActual" 6
(6 7
$num7 ;
,; <
$num= >
,> ?
str@ C
)C D
)D E
.E F
ReturnsF M
(M N
testN R
)R S
;S T
var 

controller 
=  
new! $'
ConsuProdBudgetedController% @
(@ A
mockA E
.E F
ObjectF L
)L M
;M N
var 
result 
= 

controller '
.' (!
GetBudgetedConsumtion( =
(= >
$num> B
,B C
$strD G
)G H
asI K

JsonResultL V
;V W
Assert 
. 
	IsNotNull  
(  !
result! '
.' (
Data( ,
), -
;- . 
JavaScriptSerializer $

serializer% /
=0 1
new2 5 
JavaScriptSerializer6 J
(J K
)K L
;L M"
TestBudgetedCollection &
result1' .
=/ 0

serializer1 ;
.; <
Deserialize< G
<G H"
TestBudgetedCollectionH ^
>^ _
(_ `

serializer` j
.j k
	Serializek t
(t u
resultu {
.{ |
Data	| €
)
€ 
)
 ‚
;
‚ ƒ
if!! 
(!! 
str!! 
==!! 
$str!! 3
)!!3 4
{"" 
CollectionAssert%% $
.%%$ %
AreEquivalent%%% 2
(%%2 3
test%%3 7
,%%7 8
result1%%9 @
.%%@ A
Budgetedconsumlist%%A S
)%%S T
;%%T U
}&& 
else'' 
{(( 
CollectionAssert)) $
.))$ %
AreEquivalent))% 2
())2 3
test))3 7
,))7 8
result1))9 @
.))@ A
Budgetedcostlist))A Q
)))Q R
;))R S
}** 
}++ 
},, 	
[.. 	

TestMethod..	 
].. 
public// 
void// ,
 GetBudgetedCostReturnsJsonResult// 4
(//4 5
)//5 6
{00 	
List11 
<11 
AnnualDetails11 
>11 
test11  $
=11% &
TestData11' /
.11/ 0
TestAnnualData110 >
(11> ?
)11? @
;11@ A
Mock22 
<22 
IPlantSetUpManager22 #
>22# $
mock22% )
=22* +
new22, /
Mock220 4
<224 5
IPlantSetUpManager225 G
>22G H
(22H I
)22I J
;22J K
mock33 
.33 
Setup33 
(33 
r33 
=>33 
r33 
.33  
GetConsumptionActual33 2
(332 3
$num333 7
,337 8
$num339 :
,33: ;
$str33< K
)33K L
)33L M
.33M N
Returns33N U
(33U V
test33V Z
)33Z [
;33[ \
var44 

controller44 
=44 
new44  '
ConsuProdBudgetedController44! <
(44< =
mock44= A
.44A B
Object44B H
)44H I
;44I J
var55 
result55 
=55 

controller55 #
.55# $
GetBudgetedCost55$ 3
(553 4
$num554 8
,558 9
$str55: =
)55= >
as55? A

JsonResult55B L
;55L M
Assert66 
.66 
	IsNotNull66 
(66 
result66 #
.66# $
Data66$ (
)66( )
;66) * 
JavaScriptSerializer77  

serializer77! +
=77, -
new77. 1 
JavaScriptSerializer772 F
(77F G
)77G H
;77H I
var88 
result188 
=88 

serializer88 $
.88$ %
Deserialize88% 0
<880 1
List881 5
<885 6
AnnualDetails886 C
>88C D
>88D E
(88E F

serializer88F P
.88P Q
	Serialize88Q Z
(88Z [
result88[ a
.88a b
Data88b f
)88f g
)88g h
;88h i
CollectionAssert99 
.99 
AreEquivalent99 *
(99* +
test99+ /
,99/ 0
result1991 8
)998 9
;999 :
}:: 	
[<< 	

TestMethod<<	 
]<< 
public== 
void== 2
&GetBudgetedProductionReturnsJsonResult== :
(==: ;
)==; <
{>> 	
List?? 
<?? 
AnnualDetails?? 
>?? 
test??  $
=??% &
TestData??' /
.??/ 0
TestAnnualData??0 >
(??> ?
)??? @
;??@ A
Mock@@ 
<@@ 
IPlantSetUpManager@@ #
>@@# $
mock@@% )
=@@* +
new@@, /
Mock@@0 4
<@@4 5
IPlantSetUpManager@@5 G
>@@G H
(@@H I
)@@I J
;@@J K
mockAA 
.AA 
SetupAA 
(AA 
rAA 
=>AA 
rAA 
.AA 
GetProductionActualAA 1
(AA1 2
$numAA2 6
,AA6 7
$strAA8 O
)AAO P
)AAP Q
.AAQ R
ReturnsAAR Y
(AAY Z
testAAZ ^
)AA^ _
;AA_ `
varBB 

controllerBB 
=BB 
newBB  '
ConsuProdBudgetedControllerBB! <
(BB< =
mockBB= A
.BBA B
ObjectBBB H
)BBH I
;BBI J
varCC 
resultCC 
=CC 

controllerCC #
.CC# $!
GetBudgetedProductionCC$ 9
(CC9 :
$numCC: >
)CC> ?
asCC@ B

JsonResultCCC M
;CCM N
AssertDD 
.DD 
	IsNotNullDD 
(DD 
resultDD #
.DD# $
DataDD$ (
)DD( )
;DD) * 
JavaScriptSerializerEE  

serializerEE! +
=EE, -
newEE. 1 
JavaScriptSerializerEE2 F
(EEF G
)EEG H
;EEH I
varFF 
result1FF 
=FF 

serializerFF $
.FF$ %
DeserializeFF% 0
<FF0 1
ListFF1 5
<FF5 6
AnnualDetailsFF6 C
>FFC D
>FFD E
(FFE F

serializerFFF P
.FFP Q
	SerializeFFQ Z
(FFZ [
resultFF[ a
.FFa b
DataFFb f
)FFf g
)FFg h
;FFh i
CollectionAssertGG 
.GG 
AreEquivalentGG *
(GG* +
testGG+ /
,GG/ 0
result1GG1 8
)GG8 9
;GG9 :
}HH 	
[JJ 	

TestMethodJJ	 
]JJ 
publicKK 
voidKK 1
%GetSolidWasteBudgtedReturnsJsonResultKK 9
(KK9 :
)KK: ;
{LL 	
ListMM 
<MM 
AnnualDetailsMM 
>MM 
testMM  $
=MM% &
TestDataMM' /
.MM/ 0
TestAnnualDataMM0 >
(MM> ?
)MM? @
;MM@ A
MockNN 
<NN 
IPlantSetUpManagerNN #
>NN# $
mockNN% )
=NN* +
newNN, /
MockNN0 4
<NN4 5
IPlantSetUpManagerNN5 G
>NNG H
(NNH I
)NNI J
;NNJ K
ListOO 
<OO 
stringOO 
>OO 
consumptionAndCostOO +
=OO, -
newOO. 1
ListOO2 6
<OO6 7
stringOO7 =
>OO= >
{OO? @
$strOOA X
,OOX Y
$strOOZ u
}OOv w
;OOw x
foreachPP 
(PP 
stringPP 
strPP 
inPP  "
consumptionAndCostPP# 5
)PP5 6
{QQ 
mockRR 
.RR 
SetupRR 
(RR 
rRR 
=>RR 
rRR  !
.RR! "
GetSolidWasteRR" /
(RR/ 0
$numRR0 4
,RR4 5
strRR5 8
)RR8 9
)RR9 :
.RR: ;
ReturnsRR; B
(RRB C
testRRC G
)RRG H
;RRH I
varSS 

controllerSS 
=SS  
newSS! $'
ConsuProdBudgetedControllerSS% @
(SS@ A
mockSSA E
.SSE F
ObjectSSF L
)SSL M
;SSM N
varTT 
resultTT 
=TT 

controllerTT '
.TT' ( 
GetSolidWasteBudgtedTT( <
(TT< =
$strTT= C
)TTC D
asTTE G

JsonResultTTH R
;TTR S
AssertUU 
.UU 
	IsNotNullUU  
(UU  !
resultUU! '
.UU' (
DataUU( ,
)UU, -
;UU- . 
JavaScriptSerializerVV $

serializerVV% /
=VV0 1
newVV2 5 
JavaScriptSerializerVV6 J
(VVJ K
)VVK L
;VVL M
SolidWasteColletionWW #
result1WW$ +
=WW, -

serializerWW. 8
.WW8 9
DeserializeWW9 D
<WWD E
SolidWasteColletionWWE X
>WWX Y
(WWY Z

serializerWWZ d
.WWd e
	SerializeWWe n
(WWn o
resultWWo u
.WWu v
DataWWv z
)WWz {
)WW{ |
;WW| }
ifYY 
(YY 
strYY 
==YY 
$strYY 2
)YY2 3
{ZZ 
CollectionAssert]] $
.]]$ %
AreEquivalent]]% 2
(]]2 3
test]]3 7
,]]7 8
result1]]9 @
.]]@ A

solidwaste]]A K
)]]K L
;]]L M
}^^ 
else__ 
{`` 
CollectionAssertaa $
.aa$ %
AreEquivalentaa% 2
(aa2 3
testaa3 7
,aa7 8
result1aa9 @
.aa@ A
solidwastecostaaA O
)aaO P
;aaP Q
}bb 
}cc 
}dd 	
[ff 	

TestMethodff	 
]ff 
publicgg	 
voidgg 0
$ConsuProdBudgetedReturnsActionResultgg 9
(gg9 :
)gg: ;
{hh 	
Mockii 
<ii 
IPlantSetUpManagerii #
>ii# $
mockii% )
=ii* +
newii, /
Mockii0 4
<ii4 5
IPlantSetUpManagerii5 G
>iiG H
(iiH I
)iiI J
;iiJ K
varjj 

controllerjj 
=jj 
newjj  '
ConsuProdBudgetedControllerjj! <
(jj< =
mockjj= A
.jjA B
ObjectjjB H
)jjH I
;jjI J
ActionResultkk 
resultkk 
=kk  !

controllerkk" ,
.kk, -
ConsuProdBudgetedkk- >
(kk> ?
)kk? @
;kk@ A
Assertll 
.ll 
IsInstanceOfTypell #
(ll# $
resultll$ *
,ll* +
typeofll+ 1
(ll1 2

ViewResultll2 <
)ll< =
)ll= >
;ll> ?
}mm 	
[oo 

TestMethodoo 
]oo 
publicpp 
voidpp )
AddBudgetedConsumtionReturns1pp 0
(pp0 1
)pp1 2
{qq 	
Mockrr 
<rr 
IPlantSetUpManagerrr #
>rr# $
mockrr% )
=rr* +
newrr, /
Mockrr0 4
<rr4 5
IPlantSetUpManagerrr5 G
>rrG H
(rrH I
)rrI J
;rrJ K
mockss 
.ss 
Setupss 
(ss 
rss 
=>ss 
rss 
.ss  
AddConsumptionActualss 2
(ss2 3
TestDatass3 ;
.ss; <
TestAnnualDatass< J
(ssJ K
)ssK L
,ssL M
$strssN T
,ssT U
$numssV W
,ssW X
$strssY q
)ssq r
)ssr s
.sss t
Returnssst {
(ss{ |
true	ss| €
)
ss€ 
;
ss ‚
mocktt 
.tt 
Setuptt 
(tt 
rtt 
=>tt 
rtt 
.tt  
AddConsumptionActualtt 0
(tt0 1
TestDatatt1 9
.tt9 :
TestAnnualDatatt: H
(ttH I
)ttI J
,ttJ K
$strttL R
,ttR S
$numttT U
,ttU V
$strttW s
)tts t
)ttt u
.ttu v
Returnsttv }
(tt} ~
true	tt~ ‚
)
tt‚ ƒ
;
ttƒ „
varuu 

controlleruu 
=uu 
newuu  '
ConsuProdBudgetedControlleruu! <
(uu< =
mockuu= A
.uuA B
ObjectuuB H
)uuH I
;uuI J
varvv 
resultvv 
=vv 

controllervv #
.vv# $!
AddBudgetedConsumtionvv$ 9
(vv9 :
TestDatavv: B
.vvB C
TestAnnualDatavvC Q
(vvQ R
)vvR S
,vvS T
TestDatavvU ]
.vv] ^
TestAnnualDatavv^ l
(vvl m
)vvm n
,vvn o
$strvvp v
,vvv w
$numvvx y
)vvy z
;vvz {
Assertww 
.ww 
	IsNotNullww 
(ww 
resultww #
)ww# $
;ww$ %
}xx 	
[zz 	

TestMethodzz	 
]zz 
public{{ 
void{{ &
AddProductionBudgetedTests{{ .
({{. /
){{/ 0
{|| 	
Mock}} 
<}} 
IPlantSetUpManager}} #
>}}# $
mock}}% )
=}}* +
new}}, /
Mock}}0 4
<}}4 5
IPlantSetUpManager}}5 G
>}}G H
(}}H I
)}}I J
;}}J K
mock~~ 
.~~ 
Setup~~ 
(~~ 
r~~ 
=>~~ 
r~~ 
.~~ 
AddProductionActual~~ 1
(~~1 2
TestData~~2 :
.~~: ;
TestAnnualData~~; I
(~~I J
)~~J K
,~~K L
$str~~M S
,~~S T
$str~~T k
)~~k l
)~~l m
.~~m n
Returns~~n u
(~~u v
true~~v z
)~~z {
;~~{ |
var 

controller 
= 
new  '
ConsuProdBudgetedController! <
(< =
mock= A
.A B
ObjectB H
)H I
;I J
var
€€ 
result
€€ 
=
€€ 

controller
€€ #
.
€€# $#
AddProductionBudgeted
€€$ 9
(
€€9 :
TestData
€€: B
.
€€B C
TestAnnualData
€€C Q
(
€€Q R
)
€€R S
,
€€S T
$str
€€V \
)
€€\ ]
;
€€] ^
Assert
 
.
 
	IsNotNull
 
(
 
result
 #
)
# $
;
$ %
}
‚‚ 	
[
„„ 	

TestMethod
„„	 
]
„„ 
public
…… 
void
…… (
AddBudgetedSolidwasteTests
…… .
(
……. /
)
……/ 0
{
†† 	
Mock
‡‡ 
<
‡‡  
IPlantSetUpManager
‡‡ #
>
‡‡# $
mock
‡‡% )
=
‡‡* +
new
‡‡, /
Mock
‡‡0 4
<
‡‡4 5 
IPlantSetUpManager
‡‡5 G
>
‡‡G H
(
‡‡H I
)
‡‡I J
;
‡‡J K
mock
ˆˆ 
.
ˆˆ 
Setup
ˆˆ 
(
ˆˆ 
r
ˆˆ 
=>
ˆˆ 
r
ˆˆ 
.
ˆˆ "
AddCSolidwasteActual
ˆˆ 2
(
ˆˆ2 3
TestData
ˆˆ3 ;
.
ˆˆ; <
TestAnnualData
ˆˆ< J
(
ˆˆJ K
)
ˆˆK L
,
ˆˆL M
$str
ˆˆN T
,
ˆˆT U
$str
ˆˆV n
)
ˆˆn o
)
ˆˆo p
.
ˆˆp q
Returns
ˆˆq x
(
ˆˆx y
true
ˆˆy }
)
ˆˆ} ~
;
ˆˆ~ 
var
‰‰ 

controller
‰‰ 
=
‰‰ 
new
‰‰  )
ConsuProdBudgetedController
‰‰! <
(
‰‰< =
mock
‰‰= A
.
‰‰A B
Object
‰‰B H
)
‰‰H I
;
‰‰I J
var
ŠŠ 
result
ŠŠ 
=
ŠŠ 

controller
ŠŠ #
.
ŠŠ# $#
AddBudgetedSolidwaste
ŠŠ$ 9
(
ŠŠ9 :
TestData
ŠŠ: B
.
ŠŠB C
TestAnnualData
ŠŠC Q
(
ŠŠQ R
)
ŠŠR S
,
ŠŠS T
TestData
ŠŠT \
.
ŠŠ\ ]
TestAnnualData
ŠŠ] k
(
ŠŠk l
)
ŠŠl m
,
ŠŠm n
$str
ŠŠo u
)
ŠŠu v
;
ŠŠv w
Assert
‹‹ 
.
‹‹ 
	IsNotNull
‹‹ 
(
‹‹ 
result
‹‹ #
)
‹‹# $
;
‹‹$ %
}
ŒŒ 	
}
 
public
 

class
 $
TestBudgetedCollection
 '
{
 
public
 
List
 
<
 
AnnualDetails
 !
>
! " 
Budgetedconsumlist
# 5
{
6 7
get
8 ;
;
; <
set
= @
;
@ A
}
B C
public
‘‘ 
List
‘‘ 
<
‘‘ 
AnnualDetails
‘‘ !
>
‘‘! "
Budgetedcostlist
‘‘# 3
{
‘‘4 5
get
‘‘6 9
;
‘‘9 :
set
‘‘; >
;
‘‘> ?
}
‘‘@ A
}
’’ 
}““ ‚3
ŠD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\DailyProductionControllerUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class .
"DailyProductionControllerUnitTests 3
{ 
[ 	

TestMethod	 
] 
public 
void .
"DailyProductionReturnsActionResult 6
(6 7
)7 8
{ 	
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
var 

controller 
= 
new  %
DailyProductionController! :
(: ;
mock; ?
.? @
Object@ F
)F G
;G H
ActionResult 
result 
=  !

controller" ,
., -
DailyProduction- <
(< =
)= >
;> ?
Assert 
. 
IsInstanceOfType #
(# $
result$ *
,* +
typeof, 2
(2 3

ViewResult3 =
)= >
)> ?
;? @
} 	
[ 	

TestMethod	 
] 
public 
void /
#GetDailyProductionReturnsJsonResult 7
(7 8
)8 9
{ 	
var 
testData 
= 
new 
List #
<# $
ProductionDaily$ 3
>3 4
{5 6
new7 :
ProductionDaily; J
{K L

DepartNameM W
=X Y
$strZ `
,` a
AssetIdb i
=j k
$numl m
,m n
Totalo t
=u v
$numw }
,} ~
UOM	 ‚
=
ƒ „
$str
… Š
,
Š ‹
UOMId
Œ ‘
=
’ “
$num
” •
}
– —
}
˜ ™
;
™ š
Mock   
<   
IPlantSetUpManager   #
>  # $
mock  % )
=  * +
new  , /
Mock  0 4
<  4 5
IPlantSetUpManager  5 G
>  G H
(  H I
)  I J
;  J K
mock!! 
.!! 
Setup!! 
(!! 
r!! 
=>!! 
r!! 
.!! 
GetDailyProduction!! 0
(!!0 1
$str!!1 =
)!!= >
)!!> ?
.!!? @
Returns!!@ G
(!!G H
testData!!H P
)!!P Q
;!!Q R
var"" 

controller"" 
="" 
new""  %
DailyProductionController""! :
("": ;
mock""; ?
.""? @
Object""@ F
)""F G
;""G H
var## 
result## 
=## 

controller## #
.### $
GetDailyProduction##$ 6
(##6 7
$str##7 C
)##C D
;##D E 
JavaScriptSerializer$$  

serializer$$! +
=$$, -
new$$. 1 
JavaScriptSerializer$$2 F
($$F G
)$$G H
;$$H I
var%% 
result1%% 
=%% 

serializer%% $
.%%$ %
Deserialize%%% 0
<%%0 1
List%%1 5
<%%5 6
ProductionDaily%%6 E
>%%E F
>%%F G
(%%G H

serializer%%H R
.%%R S
	Serialize%%S \
(%%\ ]
result%%] c
.%%c d
Data%%d h
)%%h i
)%%i j
;%%j k
CollectionAssert&& 
.&& 
AreEqual&& %
(&&% &
testData&&& .
,&&. /
result1&&0 7
)&&7 8
;&&8 9
}'' 	
[)) 	

TestMethod))	 
])) 
public** 
void** /
#GetSolidwasteDailyReturnsJsonResult** 7
(**7 8
)**8 9
{++ 	
var,, 
testData,, 
=,, 
new,, 
List,, #
<,,# $
ProductionDaily,,$ 3
>,,3 4
{,,5 6
new,,7 :
ProductionDaily,,; J
{,,K L

DepartName,,M W
=,,X Y
$str,,Z `
,,,` a
AssetId,,b i
=,,j k
$num,,l m
,,,m n
Total,,o t
=,,u v
$num,,w }
,,,} ~
UOM	,, ‚
=
,,ƒ „
$str
,,… Š
,
,,Š ‹
UOMId
,,Œ ‘
=
,,’ “
$num
,,” •
}
,,– —
}
,,˜ ™
;
,,™ š
Mock-- 
<-- 
IPlantSetUpManager-- #
>--# $
mock--% )
=--* +
new--, /
Mock--0 4
<--4 5
IPlantSetUpManager--5 G
>--G H
(--H I
)--I J
;--J K
mock.. 
... 
Setup.. 
(.. 
r.. 
=>.. 
r.. 
... 
GetSolidWasteDaily.. 0
(..0 1
$str..1 =
)..= >
)..> ?
...? @
Returns..@ G
(..G H
testData..H P
)..P Q
;..Q R
var// 

controller// 
=// 
new//  %
DailyProductionController//! :
(//: ;
mock//; ?
.//? @
Object//@ F
)//F G
;//G H
var00 
result00 
=00 

controller00 #
.00# $
GetSolidwasteDaily00$ 6
(006 7
$str007 C
)00C D
;00D E 
JavaScriptSerializer11  

serializer11! +
=11, -
new11. 1 
JavaScriptSerializer112 F
(11F G
)11G H
;11H I
var22 
result122 
=22 

serializer22 $
.22$ %
Deserialize22% 0
<220 1
List221 5
<225 6
ProductionDaily226 E
>22E F
>22F G
(22G H

serializer22H R
.22R S
	Serialize22S \
(22\ ]
result22] c
.22c d
Data22d h
)22h i
)22i j
;22j k
CollectionAssert33 
.33 
AreEqual33 %
(33% &
testData33& .
,33. /
result1330 7
)337 8
;338 9
}44 	
}66 
}77 ƒ
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\DeviceRegistrationControllerUnitTests.cs
	namespace 	
EmmsRestServices
 
. 
Tests  
{ 
[ 
	TestClass 
] 
public 

class 1
%DeviceRegistrationControllerUnitTests 6
{ 
[ 	

TestMethod	 
] 
public 
void '
DeviceRegistrationReturnsOK /
(/ 0
)0 1
{ 	
string 
	testValue 
= 
$str 2
;2 3
var 

controller 
= 
new  (
DeviceRegistrationController! =
(= >
)> ?
;? @
IHttpActionResult 
actionResult *
=+ ,

controller. 8
.8 9
DeviceRegistration9 K
(K L
	testValueL U
)U V
.V W
ResultW ]
;] ^
var 
createdresult 
= 
actionResult  ,
as- /%
OkNegotiatedContentResult0 I
<I J
	UtilitiesJ S
>S T
;T U
Assert 
. 
	IsNotNull 
( 
createdresult *
)* +
;+ ,
Assert 
. 
	IsNotNull 
( 
createdresult *
.* +
Content+ 2
)2 3
;3 4
} 	
[ 	

TestMethod	 
] 
public 
void /
#DeviceRegistrationReturnsBadRequest 7
(7 8
)8 9
{ 	
string   
	testvalue   
=   
$str   2
;  2 3
var!! 

controller!! 
=!! 
new!!  (
DeviceRegistrationController!!! =
(!!= >
)!!> ?
;!!? @
IHttpActionResult"" 
actionResult"" *
=""+ ,

controller""- 7
.""7 8
DeviceRegistration""8 J
(""J K
	testvalue""K T
)""T U
.""U V
Result""V \
;""\ ]
Assert## 
.## 
IsInstanceOfType## #
(### $
actionResult##$ 0
,##0 1
typeof##2 8
(##8 9(
BadRequestErrorMessageResult##9 U
)##U V
)##V W
;##W X
}%% 	
}&& 
}'' §°
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\EMMSDAL\PlantInfoUntTst.cs
	namespace

 	
EMMSUnitTest


 
{ 
[ 
	TestClass 
( 
) 
] 
public 

class 
PlantInfoUntTst  
{ 
[ 	

TestMethod	 
( 
) 
] 
public 
void !
RetrievePlantInfoTest )
() *
)* +
{ 	
var 
plantSetUpDal 
= 
new  #
	PlantInfo$ -
(- .
). /
;/ 0
var 
result 
= 
plantSetUpDal &
.& '
RetrievePlantInfo' 8
(8 9
)9 :
;: ;
Assert 
. 
	IsNotNull 
( 
result #
)# $
;$ %
Assert 
. 
IsInstanceOfType #
(# $
result$ *
,* +
typeof, 2
(2 3
List3 7
<7 8
PlantInfoModel8 F
>F G
)G H
)H I
;I J
} 	
[ 	

TestMethod	 
( 
) 
] 
public 
void '
retrieveSinglePlantInfoTest /
(/ 0
)0 1
{ 	
var 
plantSetUpDal 
= 
new  #
	PlantInfo$ -
(- .
). /
;/ 0
var 
result 
= 
plantSetUpDal &
.& '#
retrieveSinglePlantInfo' >
(> ?
$str? B
)B C
;C D
Assert 
. 
	IsNotNull 
( 
result #
)# $
;$ %
Assert 
. 
IsInstanceOfType #
(# $
result$ *
,* +
typeof, 2
(2 3
PlantInfoModel3 A
)A B
)B C
;C D
} 	
[!! 	

TestMethod!!	 
(!! 
)!! 
]!! 
public"" 
void"" 
AddPlantInfoTest"" $
(""$ %
)""% &
{## 	
var$$ 
testData$$ 
=$$ 
TestData$$ #
.$$# $
getPlant$$$ ,
($$, -
)$$- .
;$$. /
var%% 
plantSetUpDal%% 
=%% 
new%%  #
	PlantInfo%%$ -
(%%- .
)%%. /
;%%/ 0
var&& 
result&& 
=&& 
$num&& 
;&& 
Assert'' 
.'' 
	IsNotNull'' 
('' 
result'' #
)''# $
;''$ %
Assert(( 
.(( 
AreNotEqual(( 
((( 
result(( %
,((% &
$num((' (
)((( )
;(() *
})) 	
[++ 	

TestMethod++	 
(++ 
)++ 
]++ 
public,, 
void,, 
UpdatePlantInfoTest,, '
(,,' (
),,( )
{-- 	
var.. 
testData.. 
=.. 
TestData.. #
...# $
getPlant..$ ,
(.., -
)..- .
;... /
var// 
plantSetUpDal// 
=// 
new//  #
	PlantInfo//$ -
(//- .
)//. /
;/// 0
var00 
result00 
=00 
true00 
;00 
Assert11 
.11 
	IsNotNull11 
(11 
result11 #
)11# $
;11$ %
Assert22 
.22 
IsTrue22 
(22 
result22  
)22  !
;22! "
}33 	
[55 	

TestMethod55	 
(55 
)55 
]55 
public66 
void66 
GetCountryTest66 "
(66" #
)66# $
{77 	
var88 
plantSetUpDal88 
=88 
new88  #
	PlantInfo88$ -
(88- .
)88. /
;88/ 0
var99 
result99 
=99 
plantSetUpDal99 &
.99& '

GetCountry99' 1
(991 2
)992 3
;993 4
Assert:: 
.:: 
	IsNotNull:: 
(:: 
result:: #
)::# $
;::$ %
Assert;; 
.;; 
IsTrue;; 
(;; 
result;;  
.;;  !
Count;;! &
>;;' (
$num;;) *
);;* +
;;;+ ,
}<< 	
[>> 	

TestMethod>>	 
(>> 
)>> 
]>> 
public?? 
void?? (
RetriveDepartmentDetailsTest?? 0
(??0 1
)??1 2
{@@ 	
varAA 
plantSetUpDalAA 
=AA 
newAA  #
	PlantInfoAA$ -
(AA- .
)AA. /
;AA/ 0
varBB 
resultBB 
=BB 
plantSetUpDalBB &
.BB& '$
RetriveDepartmentDetailsBB' ?
(BB? @
$numBB@ A
)BBA B
;BBB C
AssertCC 
.CC 
	IsNotNullCC 
(CC 
resultCC #
)CC# $
;CC$ %
}DD 	
[FF 	

TestMethodFF	 
(FF 
)FF 
]FF 
publicGG 
voidGG 
RetrieveAssetTestGG %
(GG% &
)GG& '
{HH 	
varII 
plantSetUpDalII 
=II 
newII  #
	PlantInfoII$ -
(II- .
)II. /
;II/ 0
varJJ 
resultJJ 
=JJ 
plantSetUpDalJJ &
.JJ& '
RetrieveAssetJJ' 4
(JJ4 5
)JJ5 6
;JJ6 7
AssertKK 
.KK 
	IsNotNullKK 
(KK 
resultKK #
)KK# $
;KK$ %
}LL 	
[NN 	

TestMethodNN	 
(NN 
)NN 
]NN 
publicOO 
voidOO +
RetrieveAssetBasedOnPlantIdTestOO 3
(OO3 4
)OO4 5
{PP 	
varQQ 
plantSetUpDalQQ 
=QQ 
newQQ  #
	PlantInfoQQ$ -
(QQ- .
)QQ. /
;QQ/ 0
varRR 
resultRR 
=RR 
plantSetUpDalRR &
.RR& ''
RetrieveAssetBasedOnPlantIdRR' B
(RRB C
$numRRC D
)RRD E
;RRE F
AssertSS 
.SS 
	IsNotNullSS 
(SS 
resultSS #
)SS# $
;SS$ %
}TT 	
[VV 	

TestMethodVV	 
(VV 
)VV 
]VV 
publicWW 
voidWW 
AddDepartmentTestWW %
(WW% &
)WW& '
{XX 	
varYY 
testDataYY 
=YY 
TestDataYY #
.YY# $
getDepartmentYY$ 1
(YY1 2
)YY2 3
;YY3 4
varZZ 
plantSetUpDalZZ 
=ZZ 
newZZ  #
	PlantInfoZZ$ -
(ZZ- .
)ZZ. /
;ZZ/ 0
var[[ 
result[[ 
=[[ 
$num[[ 
;[[ 
Assert\\ 
.\\ 
	IsNotNull\\ 
(\\ 
result\\ #
)\\# $
;\\$ %
Assert]] 
.]] 
AreNotEqual]] 
(]] 
result]] %
,]]% &
$num]]' (
)]]( )
;]]) *
}^^ 	
[`` 	

TestMethod``	 
(`` 
)`` 
]`` 
publicaa 
voidaa 
UpdateTagInfoTestaa %
(aa% &
)aa& '
{bb 	
Tagscc 
tagcc 
=cc 
newcc 
Tagscc 
{cc  !
	AssetNamecc" +
=cc, -
$strcc. 4
,cc4 5
AssetTypeNamecc6 C
=ccD E
$strccF R
,ccR S

EnergyTypeccT ^
=cc_ `
$strcca n
,ccn o
	IsEnabledccp y
=ccz {
$strcc| 
,	cc €
IsExponential
cc 
=
cc 
$str
cc‘ ”
,
cc” •
TagName
cc– 
=
cc Ÿ
$str
cc  ­
,
cc­ ®
Target
cc¯ µ
=
cc¶ ·
$num
cc¸ ¾
,
cc¾ ¿
UOM
ccÀ Ã
=
ccÄ Å
$str
ccÆ Ë
}
ccÌ Í
;
ccÍ Î
vardd 
plantSetUpDaldd 
=dd 
newdd  #
	PlantInfodd$ -
(dd- .
)dd. /
;dd/ 0
varee 
resultee 
=ee 
trueee 
;ee 
Assertff 
.ff 
	IsNotNullff 
(ff 
resultff #
)ff# $
;ff$ %
Assertgg 
.gg 
IsTruegg 
(gg 
resultgg  
)gg  !
;gg! "
}hh 	
[jj 	

TestMethodjj	 
(jj 
)jj 
]jj 
publickk 
voidkk 
AddAssetTestkk  
(kk  !
)kk! "
{ll 	
varnn 
testDatann 
=nn 
newnn 
Assetnn $
{nn% &
Namenn' +
=nn, -
$strnn. 4
,nn4 5
Plant_IDnn6 >
=nn? @
$numnnA B
,nnB C
ActivennD J
=nnK L
$strnnM P
,nnP Q
	CreatedBynnR [
=nn\ ]
$strnn^ j
,nnj k
	CreatedDtnnl u
=nnv w
DateTime	nnx €
.
nn€ 
Now
nn „
,
nn„ …
Description
nn† ‘
=
nn’ “
$str
nn”  
,
nn  ¡

ModifiedBy
nn¢ ¬
=
nn­ ®
$str
nn¯ ±
,
nn± ²

ModifiedDt
nn³ ½
=
nn¾ ¿
DateTime
nnÀ È
.
nnÈ É
Now
nnÉ Ì
,
nnÌ Í
	Parent_ID
nnÎ ×
=
nnØ Ù
$num
nnÚ Û
}
nnÜ İ
;
nnİ Ş
varoo 
plantSetUpDaloo 
=oo 
newoo  #
	PlantInfooo$ -
(oo- .
)oo. /
;oo/ 0
varpp 
resultpp 
=pp 
truepp 
;pp 
Assertqq 
.qq 
	IsNotNullqq 
(qq 
resultqq #
)qq# $
;qq$ %
Assertrr 
.rr 
IsTruerr 
(rr 
resultrr  
)rr  !
;rr! "
}ss 	
[uu 	

TestMethoduu	 
(uu 
)uu 
]uu 
publicvv 
voidvv 
AddBuildingTestvv #
(vv# $
)vv$ %
{ww 	
varxx 
testDataxx 
=xx 
TestDataxx #
.xx# $
getBuildingxx$ /
(xx/ 0
)xx0 1
;xx1 2
varyy 
plantSetUpDalyy 
=yy 
newyy  #
	PlantInfoyy$ -
(yy- .
)yy. /
;yy/ 0
varzz 
resultzz 
=zz 
$numzz 
;zz 
Assert{{ 
.{{ 
	IsNotNull{{ 
({{ 
result{{ #
){{# $
;{{$ %
Assert|| 
.|| 
AreNotEqual|| 
(|| 
result|| %
,||% &
$num||& '
)||' (
;||( )
}}} 	
[ 	

TestMethod	 
( 
) 
] 
public
€€ 
void
€€ "
RetrieveBuildingTest
€€ (
(
€€( )
)
€€) *
{
 	
var
‚‚ 
plantSetUpDal
‚‚ 
=
‚‚ 
new
‚‚  #
	PlantInfo
‚‚$ -
(
‚‚- .
)
‚‚. /
;
‚‚/ 0
var
ƒƒ 
result
ƒƒ 
=
ƒƒ 
plantSetUpDal
ƒƒ &
.
ƒƒ& '
RetrieveBuilding
ƒƒ' 7
(
ƒƒ7 8
$num
ƒƒ8 9
)
ƒƒ9 :
;
ƒƒ: ;
Assert
„„ 
.
„„ 
	IsNotNull
„„ 
(
„„ 
result
„„ #
)
„„# $
;
„„$ %
}
…… 	
[
‡‡ 	

TestMethod
‡‡	 
(
‡‡ 
)
‡‡ 
]
‡‡ 
public
ˆˆ 
void
ˆˆ "
GetEquipmentTypeTest
ˆˆ (
(
ˆˆ( )
)
ˆˆ) *
{
‰‰ 	
var
ŠŠ 
plantSetUpDal
ŠŠ 
=
ŠŠ 
new
ŠŠ  #
	PlantInfo
ŠŠ$ -
(
ŠŠ- .
)
ŠŠ. /
;
ŠŠ/ 0
var
‹‹ 
result
‹‹ 
=
‹‹ 
plantSetUpDal
‹‹ &
.
‹‹& '
GetEquipmentType
‹‹' 7
(
‹‹7 8
)
‹‹8 9
;
‹‹9 :
Assert
ŒŒ 
.
ŒŒ 
	IsNotNull
ŒŒ 
(
ŒŒ 
result
ŒŒ #
)
ŒŒ# $
;
ŒŒ$ %
}
 	
[
 	

TestMethod
	 
(
 
)
 
]
 
public
 
void
 

GetUOMTest
 
(
 
)
  
{
‘‘ 	
var
’’ 
plantSetUpDal
’’ 
=
’’ 
new
’’  #
	PlantInfo
’’$ -
(
’’- .
)
’’. /
;
’’/ 0
var
““ 
result
““ 
=
““ 
plantSetUpDal
““ &
.
““& '
GetUOM
““' -
(
““- .
)
““. /
;
““/ 0
Assert
”” 
.
”” 
	IsNotNull
”” 
(
”” 
result
”” #
)
””# $
;
””$ %
}
•• 	
[
—— 	

TestMethod
——	 
(
—— 
)
—— 
]
—— 
public
˜˜ 
void
˜˜ 
GetEnergyTypeTest
˜˜ %
(
˜˜% &
)
˜˜& '
{
™™ 	
var
šš 
plantSetUpDal
šš 
=
šš 
new
šš  #
	PlantInfo
šš$ -
(
šš- .
)
šš. /
;
šš/ 0
var
›› 
result
›› 
=
›› 
plantSetUpDal
›› &
.
››& '
GetEnergyType
››' 4
(
››4 5
)
››5 6
;
››6 7
Assert
œœ 
.
œœ 
	IsNotNull
œœ 
(
œœ 
result
œœ #
)
œœ# $
;
œœ$ %
}
 	
[
ŸŸ 	

TestMethod
ŸŸ	 
(
ŸŸ 
)
ŸŸ 
]
ŸŸ 
public
   
void
   
GetZoneTest
   
(
    
)
    !
{
¡¡ 	
var
¢¢ 
plantSetUpDal
¢¢ 
=
¢¢ 
new
¢¢  #
	PlantInfo
¢¢$ -
(
¢¢- .
)
¢¢. /
;
¢¢/ 0
var
££ 
result
££ 
=
££ 
plantSetUpDal
££ &
.
££& '
GetZone
££' .
(
££. /
)
££/ 0
;
££0 1
Assert
¤¤ 
.
¤¤ 
	IsNotNull
¤¤ 
(
¤¤ 
result
¤¤ #
)
¤¤# $
;
¤¤$ %
}
¥¥ 	
[
§§ 	

TestMethod
§§	 
(
§§ 
)
§§ 
]
§§ 
public
¨¨ 
void
¨¨ &
AddTagMappingDetailsTest
¨¨ ,
(
¨¨, -
)
¨¨- .
{
©© 	
Tags
ªª 
tag
ªª 
=
ªª 
new
ªª 
Tags
ªª 
{
ªª  !
	AssetName
ªª" +
=
ªª, -
$str
ªª. 4
,
ªª4 5
AssetTypeName
ªª6 C
=
ªªD E
$str
ªªF R
,
ªªR S

EnergyType
ªªT ^
=
ªª_ `
$str
ªªa n
,
ªªn o
	IsEnabled
ªªp y
=
ªªz {
$str
ªª| 
,ªª €
IsExponentialªª 
=ªª 
$strªª‘ ”
,ªª” •
TagNameªª– 
=ªª Ÿ
$strªª  ­
,ªª­ ®
Targetªª¯ µ
=ªª¶ ·
$numªª¸ ¾
,ªª¾ ¿
UOMªªÀ Ã
=ªªÄ Å
$strªªÆ Ë
}ªªÌ Í
;ªªÍ Î
var
«« 
plantSetUpDal
«« 
=
«« 
new
««  #
	PlantInfo
««$ -
(
««- .
)
««. /
;
««/ 0
var
¬¬ 
result
¬¬ 
=
¬¬ 
tag
¬¬ 
;
¬¬ 
Assert
­­ 
.
­­ 
	IsNotNull
­­ 
(
­­ 
result
­­ #
)
­­# $
;
­­$ %
}
¯¯ 	
[
±± 	

TestMethod
±±	 
(
±± 
)
±± 
]
±± 
public
²² 
void
²² '
RetrieveEquipmentInfoTest
²² -
(
²²- .
)
²². /
{
³³ 	
var
´´ 
plantSetUpDal
´´ 
=
´´ 
new
´´  #
	PlantInfo
´´$ -
(
´´- .
)
´´. /
;
´´/ 0
var
µµ 
result
µµ 
=
µµ 
plantSetUpDal
µµ &
.
µµ& '#
RetrieveEquipmentInfo
µµ' <
(
µµ< =
$num
µµ= >
)
µµ> ?
;
µµ? @
Assert
¶¶ 
.
¶¶ 
	IsNotNull
¶¶ 
(
¶¶ 
result
¶¶ #
)
¶¶# $
;
¶¶$ %
}
·· 	
[
¹¹ 	

TestMethod
¹¹	 
(
¹¹ 
)
¹¹ 
]
¹¹ 
public
ºº 
void
ºº #
RetrieveAssetTypeTest
ºº )
(
ºº) *
)
ºº* +
{
»» 	
var
¼¼ 
plantSetUpDal
¼¼ 
=
¼¼ 
new
¼¼  #
	PlantInfo
¼¼$ -
(
¼¼- .
)
¼¼. /
;
¼¼/ 0
var
½½ 
result
½½ 
=
½½ 
plantSetUpDal
½½ &
.
½½& '
RetrieveAssetType
½½' 8
(
½½8 9
)
½½9 :
;
½½: ;
Assert
¾¾ 
.
¾¾ 
	IsNotNull
¾¾ 
(
¾¾ 
result
¾¾ #
)
¾¾# $
;
¾¾$ %
}
¿¿ 	
[
ÁÁ 	

TestMethod
ÁÁ	 
(
ÁÁ 
)
ÁÁ 
]
ÁÁ 
public
ÂÂ 
void
ÂÂ  
RetrieveAssetTest1
ÂÂ &
(
ÂÂ& '
)
ÂÂ' (
{
ÃÃ 	
var
ÄÄ 
plantSetUpDal
ÄÄ 
=
ÄÄ 
new
ÄÄ  #
	PlantInfo
ÄÄ$ -
(
ÄÄ- .
)
ÄÄ. /
;
ÄÄ/ 0
var
ÅÅ 
result
ÅÅ 
=
ÅÅ 
plantSetUpDal
ÅÅ &
.
ÅÅ& '
RetrieveAsset
ÅÅ' 4
(
ÅÅ4 5
)
ÅÅ5 6
;
ÅÅ6 7
Assert
ÆÆ 
.
ÆÆ 
	IsNotNull
ÆÆ 
(
ÆÆ 
result
ÆÆ #
)
ÆÆ# $
;
ÆÆ$ %
}
ÇÇ 	
[
ÉÉ 	

TestMethod
ÉÉ	 
(
ÉÉ 
)
ÉÉ 
]
ÉÉ 
public
ÊÊ 
void
ÊÊ (
RetrieveAssetByPlantIdTest
ÊÊ .
(
ÊÊ. /
)
ÊÊ/ 0
{
ËË 	
var
ÌÌ 
plantSetUpDal
ÌÌ 
=
ÌÌ 
new
ÌÌ  #
	PlantInfo
ÌÌ$ -
(
ÌÌ- .
)
ÌÌ. /
;
ÌÌ/ 0
var
ÍÍ 
result
ÍÍ 
=
ÍÍ 
plantSetUpDal
ÍÍ &
.
ÍÍ& '$
RetrieveAssetByPlantId
ÍÍ' =
(
ÍÍ= >
$str
ÍÍ> J
,
ÍÍJ K
$num
ÍÍK L
)
ÍÍL M
;
ÍÍM N
Assert
ÎÎ 
.
ÎÎ 
	IsNotNull
ÎÎ 
(
ÎÎ 
result
ÎÎ #
)
ÎÎ# $
;
ÎÎ$ %
}
ÏÏ 	
[
ÑÑ 	

TestMethod
ÑÑ	 
(
ÑÑ 
)
ÑÑ 
]
ÑÑ 
public
ÒÒ 
void
ÒÒ "
AddEquipmentInfoTest
ÒÒ (
(
ÒÒ( )
)
ÒÒ) *
{
ÓÓ 	
var
ÔÔ 
testData
ÔÔ 
=
ÔÔ 
new
ÔÔ 
	Equipment
ÔÔ (
{
ÔÔ) *
EquipmentName
ÔÔ+ 8
=
ÔÔ9 :
$str
ÔÔ; B
,
ÔÔB C
EquipmentType
ÔÔD Q
=
ÔÔR S
$str
ÔÔT `
,
ÔÔ` a
	CreatedBy
ÔÔb k
=
ÔÔl m
$str
ÔÔn u
,
ÔÔu v

ModifiedByÔÔw 
=ÔÔ‚ ƒ
$strÔÔ„ †
,ÔÔ† ‡
PlantIdÔÔˆ 
=ÔÔ ‘
$numÔÔ’ “
}ÔÔ” •
;ÔÔ• –
var
ÕÕ 
plantSetUpDal
ÕÕ 
=
ÕÕ 
new
ÕÕ  #
	PlantInfo
ÕÕ$ -
(
ÕÕ- .
)
ÕÕ. /
;
ÕÕ/ 0
var
ÖÖ 
result
ÖÖ 
=
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
Assert
×× 
.
×× 
AreNotEqual
×× 
(
×× 
result
×× %
,
××% &
$num
××& '
)
××' (
;
××( )
}
ØØ 	
[
ÛÛ 	

TestMethod
ÛÛ	 
(
ÛÛ 
)
ÛÛ 
]
ÛÛ 
public
ÜÜ 
void
ÜÜ #
IsDeviceAvailableTest
ÜÜ )
(
ÜÜ) *
)
ÜÜ* +
{
İİ 	
var
ŞŞ 
plantSetUpDal
ŞŞ 
=
ŞŞ 
new
ŞŞ  #
	PlantInfo
ŞŞ$ -
(
ŞŞ- .
)
ŞŞ. /
;
ŞŞ/ 0
var
ßß 
result
ßß 
=
ßß 
plantSetUpDal
ßß &
.
ßß& '
IsDeviceAvailable
ßß' 8
(
ßß8 9
$str
ßß9 G
)
ßßG H
;
ßßH I
Assert
àà 
.
àà 
IsTrue
àà 
(
àà 
result
àà  
)
àà  !
;
àà! "
}
áá 	
[
ãã 	

TestMethod
ãã	 
(
ãã 
)
ãã 
]
ãã 
public
ää 
void
ää /
!GetTagMappingDetailsOnPlantIdTest
ää 5
(
ää5 6
)
ää6 7
{
åå 	
var
ææ 
plantSetUpDal
ææ 
=
ææ 
new
ææ  #
	PlantInfo
ææ$ -
(
ææ- .
)
ææ. /
;
ææ/ 0
var
çç 
result
çç 
=
çç 
plantSetUpDal
çç &
.
çç& '+
GetTagMappingDetailsOnPlantId
çç' D
(
ççD E
$num
ççE F
)
ççF G
;
ççG H
Assert
èè 
.
èè 
	IsNotNull
èè 
(
èè 
result
èè #
)
èè# $
;
èè$ %
Assert
éé 
.
éé 
IsInstanceOfType
éé #
(
éé# $
result
éé$ *
,
éé* +
typeof
éé, 2
(
éé2 3
List
éé3 7
<
éé7 8
TagMappingDetails
éé8 I
>
ééI J
)
ééJ K
)
ééK L
;
ééL M
}
êê 	
}
ëë 
}ìì ö
€D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\NuGet.Modules\JsonHelper.cs
	namespace 	
NuGet
 
. 
Modules 
{ 
public		 

static		 
class		 

JsonHelper		 "
{

 
private 
static 
readonly "
JsonSerializerSettings  6"
JsonSerializerSettings7 M
=N O
new "
JsonSerializerSettings &
{' (
ContractResolver) 9
=: ;
new< ?2
&CamelCasePropertyNamesContractResolver@ f
(f g
)g h
}i j
;j k
public 
static 
void 
	Serialize $
<$ %
T% &
>& '
(' (
string( .
path/ 3
,3 4
T5 6
obj7 :
): ;
{ 	
string 
	directory 
= 
Path #
.# $
GetDirectoryName$ 4
(4 5
path5 9
)9 :
;: ;
if 
( 
! 
String 
. 
IsNullOrWhiteSpace *
(* +
	directory+ 4
)4 5
&&6 8
!9 :
	Directory: C
.C D
ExistsD J
(J K
	directoryK T
)T U
)U V
{ 
	Directory 
. 
CreateDirectory )
() *
	directory* 3
)3 4
;4 5
} 
File 
. 
WriteAllText 
( 
path "
," #
ToJson$ *
(* +
obj+ .
). /
)/ 0
;0 1
} 	
public 
static 
T 
Deserialize #
<# $
T$ %
>% &
(& '
string' -
path. 2
)2 3
{ 	
var 
json 
= 
File 
. 
ReadAllText '
(' (
path( ,
), -
;- .
return 
FromJson 
< 
T 
> 
( 
json #
)# $
;$ %
} 	
public 
static 
string 
ToJson #
<# $
T$ %
>% &
(& '
T' (
obj) ,
), -
{ 	
return   
JsonConvert   
.   
SerializeObject   .
(  . /
obj  / 2
,  2 3"
JsonSerializerSettings  4 J
)  J K
;  K L
}!! 	
public## 
static## 
T## 
FromJson##  
<##  !
T##! "
>##" #
(### $
string##$ *
json##+ /
)##/ 0
{$$ 	
return%% 
JsonConvert%% 
.%% 
DeserializeObject%% 0
<%%0 1
T%%1 2
>%%2 3
(%%3 4
json%%4 8
,%%8 9"
JsonSerializerSettings%%: P
)%%P Q
;%%Q R
}&& 	
}'' 
}(( Ì²
ƒD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\PlantConfigurationUnitTests.cs
	namespace 	
EmmsRestServices
 
. 
Tests  
{ 
[ 
	TestClass 
] 
public 

class '
PlantConfigurationUnitTests ,
{ 
public '
PlantConfigurationUnitTests *
(* +
)+ ,
{ 	
} 	
[ 	

TestMethod	 
] 
public 
void 
GetAllPlantDetails &
(& '
)' (
{ 	
var 

controller 
= 
new  (
PlantConfigurationController! =
(= >
)> ?
;? @
IHttpActionResult 
actionResult *
=+ ,

controller- 7
.7 8
GetPlantDetails8 G
(G H
)H I
;I J
var 
contentResult 
= 
actionResult  ,
as- /%
OkNegotiatedContentResult0 I
<I J
ListJ N
<N O
PlantInfoModelO ]
>] ^
>^ _
;_ `
Assert   
.   
	IsNotNull   
(   
contentResult   *
)  * +
;  + ,
Assert!! 
.!! 
	IsNotNull!! 
(!! 
contentResult!! *
.!!* +
Content!!+ 2
)!!2 3
;!!3 4
}"" 	
[$$ 	

TestMethod$$	 
]$$ 
public%% 
void%% "
getDepartmentRettunsOK%% *
(%%* +
)%%+ ,
{&& 	
var'' 

controller'' 
='' 
new''  (
PlantConfigurationController''! =
(''= >
)''> ?
;''? @
IHttpActionResult(( 
actionResult(( *
=((+ ,

controller((- 7
.((7 8
GetDepartment((8 E
(((E F
$num((F G
)((G H
;((H I
var)) 
contentResult)) 
=)) 
actionResult))  ,
as))- /%
OkNegotiatedContentResult))0 I
<))I J
List))J N
<))N O
string))O U
>))U V
>))V W
;))W X
Assert** 
.** 
	IsNotNull** 
(** 
contentResult** *
)*** +
;**+ ,
Assert++ 
.++ 
	IsNotNull++ 
(++ 
contentResult++ *
.++* +
Content+++ 2
)++2 3
;++3 4
},, 	
[.. 	

TestMethod..	 
].. 
public// 
void// 
getAssetReturnsOK// %
(//% &
)//& '
{00 	
var11 

controller11 
=11 
new11  (
PlantConfigurationController11! =
(11= >
)11> ?
;11? @
IHttpActionResult22 
actionResult22 *
=22+ ,

controller22- 7
.227 8
getAsset228 @
(22@ A
$str22A H
)22H I
;22I J
var33 
contentResult33 
=33 
actionResult33  ,
as33- /%
OkNegotiatedContentResult330 I
<33I J
List33J N
<33N O
Asset33O T
>33T U
>33U V
;33V W
Assert44 
.44 
	IsNotNull44 
(44 
contentResult44 *
)44* +
;44+ ,
Assert55 
.55 
	IsNotNull55 
(55 
contentResult55 *
.55* +
Content55+ 2
)552 3
;553 4
}66 	
[77 	

TestMethod77	 
]77 
public88 
void88 %
getEquipmentTypeReturnsOK88 -
(88- .
)88. /
{99 	
var:: 

controller:: 
=:: 
new::  (
PlantConfigurationController::! =
(::= >
)::> ?
;::? @
IHttpActionResult;; 
actionResult;; *
=;;+ ,

controller;;- 7
.;;7 8
GetEquipmentType;;8 H
(;;H I
);;I J
;;;J K
var<< 
contentResult<< 
=<< 
actionResult<<  ,
as<<- /%
OkNegotiatedContentResult<<0 I
<<<I J
List<<J N
<<<N O
string<<O U
><<U V
><<V W
;<<W X
Assert== 
.== 
	IsNotNull== 
(== 
contentResult== *
)==* +
;==+ ,
Assert>> 
.>> 
	IsNotNull>> 
(>> 
contentResult>> *
.>>* +
Content>>+ 2
)>>2 3
;>>3 4
}?? 	
[@@ 	

TestMethod@@	 
]@@ 
publicAA 
voidAA "
getEnergyTypeReturnsOKAA *
(AA* +
)AA+ ,
{BB 	
varCC 

controllerCC 
=CC 
newCC  (
PlantConfigurationControllerCC! =
(CC= >
)CC> ?
;CC? @
IHttpActionResultDD 
actionResultDD *
=DD+ ,

controllerDD- 7
.DD7 8
getEnergyTypeDD8 E
(DDE F
)DDF G
;DDG H
varEE 
contentResultEE 
=EE 
actionResultEE  ,
asEE- /%
OkNegotiatedContentResultEE0 I
<EEI J
ListEEJ N
<EEN O
stringEEO U
>EEU V
>EEV W
;EEW X
AssertFF 
.FF 
	IsNotNullFF 
(FF 
contentResultFF *
)FF* +
;FF+ ,
AssertGG 
.GG 
	IsNotNullGG 
(GG 
contentResultGG *
.GG* +
ContentGG+ 2
)GG2 3
;GG3 4
}HH 	
[JJ 	

TestMethodJJ	 
]JJ 
publicKK 
voidKK 
getZoneReturnsOKKK $
(KK$ %
)KK% &
{LL 	
varMM 

controllerMM 
=MM 
newMM  (
PlantConfigurationControllerMM! =
(MM= >
)MM> ?
;MM? @
IHttpActionResultNN 
actionResultNN *
=NN+ ,

controllerNN- 7
.NN7 8
getZoneNN8 ?
(NN? @
)NN@ A
;NNA B
varOO 
contentResultOO 
=OO 
actionResultOO  ,
asOO- /%
OkNegotiatedContentResultOO0 I
<OOI J
ListOOJ N
<OON O
stringOOO U
>OOU V
>OOV W
;OOW X
AssertPP 
.PP 
	IsNotNullPP 
(PP 
contentResultPP *
)PP* +
;PP+ ,
AssertQQ 
.QQ 
	IsNotNullQQ 
(QQ 
contentResultQQ *
.QQ* +
ContentQQ+ 2
)QQ2 3
;QQ3 4
}RR 	
[TT 	

TestMethodTT	 
]TT 
publicUU 
voidUU 
getUOMReturnsOKUU #
(UU# $
)UU$ %
{VV 	
varWW 

controllerWW 
=WW 
newWW  (
PlantConfigurationControllerWW! =
(WW= >
)WW> ?
;WW? @
IHttpActionResultXX 
actionResultXX *
=XX+ ,

controllerXX- 7
.XX7 8
getUOMXX8 >
(XX> ?
)XX? @
;XX@ A
varYY 
contentResultYY 
=YY 
actionResultYY  ,
asYY- /%
OkNegotiatedContentResultYY0 I
<YYI J
ListYYJ N
<YYN O
stringYYO U
>YYU V
>YYV W
;YYW X
AssertZZ 
.ZZ 
	IsNotNullZZ 
(ZZ 
contentResultZZ *
)ZZ* +
;ZZ+ ,
Assert[[ 
.[[ 
	IsNotNull[[ 
([[ 
contentResult[[ *
.[[* +
Content[[+ 2
)[[2 3
;[[3 4
}\\ 	
[^^ 	

TestMethod^^	 
]^^ 
public__ 
void__ 
getCountryReturnsOK__ '
(__' (
)__( )
{`` 	
varaa 

controlleraa 
=aa 
newaa  (
PlantConfigurationControlleraa! =
(aa= >
)aa> ?
;aa? @
IHttpActionResultbb 
actionResultbb *
=bb+ ,

controllerbb- 7
.bb7 8

GetCountrybb8 B
(bbB C
)bbC D
;bbD E
varcc 
contentResultcc 
=cc 
actionResultcc  ,
ascc- /%
OkNegotiatedContentResultcc0 I
<ccI J
ListccJ N
<ccN O
stringccO U
>ccU V
>ccV W
;ccW X
Assertdd 
.dd 
	IsNotNulldd 
(dd 
contentResultdd *
)dd* +
;dd+ ,
Assertee 
.ee 
	IsNotNullee 
(ee 
contentResultee *
.ee* +
Contentee+ 2
)ee2 3
;ee3 4
}ff 	
[gg 	

TestMethodgg	 
]gg 
publichh 
voidhh $
RetieveBuildingReturnsOKhh ,
(hh, -
)hh- .
{ii 	
varjj 

controllerjj 
=jj 
newjj  (
PlantConfigurationControllerjj! =
(jj= >
)jj> ?
;jj? @
IHttpActionResultkk 
actionResultkk *
=kk+ ,

controllerkk- 7
.kk7 8
RetieveBuildingkk8 G
(kkG H
$numkkH I
)kkI J
;kkJ K
varll 
contentResultll 
=ll 
actionResultll  ,
asll- /%
OkNegotiatedContentResultll0 I
<llI J
ListllJ N
<llN O
stringllO U
>llU V
>llV W
;llW X
Assertmm 
.mm 
	IsNotNullmm 
(mm 
contentResultmm *
)mm* +
;mm+ ,
Assertnn 
.nn 
	IsNotNullnn 
(nn 
contentResultnn *
.nn* +
Contentnn+ 2
)nn2 3
;nn3 4
}oo 	
[qq 	

TestMethodqq	 
]qq 
publicrr 
voidrr -
!RetrieveEquipmentDetailsReturnsOKrr 5
(rr5 6
)rr6 7
{ss 	
vartt 

controllertt 
=tt 
newtt  (
PlantConfigurationControllertt! =
(tt= >
)tt> ?
;tt? @
IHttpActionResultuu 
actionResultuu *
=uu+ ,

controlleruu- 7
.uu7 8$
RetrieveEquipmentDetailsuu8 P
(uuP Q
$numuuQ R
)uuR S
;uuS T
varvv 
contentResultvv 
=vv 
actionResultvv  ,
asvv- /%
OkNegotiatedContentResultvv0 I
<vvI J
ListvvJ N
<vvN O
stringvvO U
>vvU V
>vvV W
;vvW X
Assertww 
.ww 
	IsNotNullww 
(ww 
contentResultww *
)ww* +
;ww+ ,
Assertxx 
.xx 
	IsNotNullxx 
(xx 
contentResultxx *
.xx* +
Contentxx+ 2
)xx2 3
;xx3 4
}yy 	
[{{ 	

TestMethod{{	 
]{{ 
public|| 
void|| !
getAssetTypeReturnsOK|| )
(||) *
)||* +
{}} 	
var
€€ 

controller
€€ 
=
€€ 
new
€€  *
PlantConfigurationController
€€! =
(
€€= >
)
€€> ?
;
€€? @
IHttpActionResult
„„ 
actionResult
„„ *
=
„„+ ,

controller
„„- 7
.
„„7 8
GetAssetType
„„8 D
(
„„D E
)
„„E F
;
„„F G
var
…… 
contentResult
…… 
=
…… 
actionResult
……  ,
as
……- /'
OkNegotiatedContentResult
……0 I
<
……I J
List
……J N
<
……N O
string
……O U
>
……U V
>
……V W
;
……W X
Assert
‰‰ 
.
‰‰ 
	IsNotNull
‰‰ 
(
‰‰ 
contentResult
‰‰ *
)
‰‰* +
;
‰‰+ ,
Assert
ŠŠ 
.
ŠŠ 
	IsNotNull
ŠŠ 
(
ŠŠ 
contentResult
ŠŠ *
.
ŠŠ* +
Content
ŠŠ+ 2
)
ŠŠ2 3
;
ŠŠ3 4
}
‹‹ 	
[
 	

TestMethod
	 
]
 
public
 
void
 ,
RetrieveShifttDetailsReturnsOK
 2
(
2 3
)
3 4
{
 	
var
’’ 

controller
’’ 
=
’’ 
new
’’  *
PlantConfigurationController
’’! =
(
’’= >
)
’’> ?
;
’’? @
IHttpActionResult
”” 
actionResult
”” *
=
””+ ,

controller
””- 7
.
””7 8#
RetrieveShifttDetails
””8 M
(
””M N
)
””N O
;
””O P
var
•• 
contentResult
•• 
=
•• 
actionResult
••  ,
as
••- /'
OkNegotiatedContentResult
••0 I
<
••I J
List
••J N
<
••N O
Shift
••O T
>
••T U
>
••U V
;
••V W
Assert
—— 
.
—— 
	IsNotNull
—— 
(
—— 
contentResult
—— *
)
——* +
;
——+ ,
Assert
˜˜ 
.
˜˜ 
	IsNotNull
˜˜ 
(
˜˜ 
contentResult
˜˜ *
.
˜˜* +
Content
˜˜+ 2
)
˜˜2 3
;
˜˜3 4
}
™™ 	
[
 	

TestMethod
	 
]
 
public
ŸŸ 
void
ŸŸ +
AddPlantDetailsReturnsCreated
ŸŸ 1
(
ŸŸ1 2
)
ŸŸ2 3
{
   	
var
¢¢ 
item
¢¢ 
=
¢¢ 
new
¢¢ 
	PlantInfo
¢¢ $
(
¢¢$ %
)
¢¢% &
.
¢¢& '
RetrievePlantInfo
¢¢' 8
(
¢¢8 9
)
¢¢9 :
.
¢¢: ;
LastOrDefault
¢¢; H
(
¢¢H I
)
¢¢I J
;
¢¢J K
int
££ 
i
££ 
=
££ 
Convert
££ 
.
££ 
ToInt32
££ #
(
££# $
item
££$ (
.
££( )
PlantID
££) 0
)
££0 1
;
££1 2
PlantInfoModel
¥¥ 
plant
¥¥  
=
¥¥! "
TestData
¥¥# +
.
¥¥+ ,
getPlant
¥¥, 4
(
¥¥4 5
)
¥¥5 6
;
¥¥6 7
var
¦¦ 

controller
¦¦ 
=
¦¦ 
new
¦¦  *
PlantConfigurationController
¦¦! =
(
¦¦= >
)
¦¦> ?
;
¦¦? @
IHttpActionResult
§§ 
actionResult
§§ *
=
§§+ ,

controller
§§- 7
.
§§7 8
AddPlantDetails
§§8 G
(
§§G H
plant
§§H M
)
§§M N
;
§§N O
var
¨¨ 
createdresult
¨¨ 
=
¨¨ 
actionResult
¨¨  ,
as
¨¨- /,
CreatedNegotiatedContentResult
¨¨0 N
<
¨¨N O
string
¨¨O U
>
¨¨U V
;
¨¨V W
Assert
©© 
.
©© 
	IsNotNull
©© 
(
©© 
createdresult
©© *
)
©©* +
;
©©+ ,
Assert
ªª 
.
ªª 
AreEqual
ªª 
(
ªª 
$str
ªª 5
,
ªª5 6
createdresult
ªª7 D
.
ªªD E
Location
ªªE M
.
ªªM N
OriginalString
ªªN \
)
ªª\ ]
;
ªª] ^
Assert
«« 
.
«« 
AreEqual
«« 
(
«« 
(
«« 
i
«« 
+
««  
$num
««! "
)
««" #
.
««# $
ToString
««$ ,
(
««, -
)
««- .
,
««. /
createdresult
««0 =
.
««= >
Content
««> E
.
««E F
ToString
««F N
(
««N O
)
««O P
)
««P Q
;
««Q R
}
­­ 	
[
¯¯ 	

TestMethod
¯¯	 
]
¯¯ 
public
°° 
void
°° )
AddDepartmentReturnsCreated
°° /
(
°°/ 0
)
°°0 1
{
±± 	

Department
´´ 

department
´´ !
=
´´" #
TestData
´´$ ,
.
´´, -
getDepartment
´´- :
(
´´: ;
)
´´; <
;
´´< =
var
µµ 
item
µµ 
=
µµ 
new
µµ 
	PlantInfo
µµ $
(
µµ$ %
)
µµ% &
.
µµ& '
RetrieveAsset
µµ' 4
(
µµ4 5
)
µµ5 6
.
µµ6 7
LastOrDefault
µµ7 D
(
µµD E
)
µµE F
;
µµF G
int
¶¶ 
?
¶¶ 
i
¶¶ 
=
¶¶ 
item
¶¶ 
.
¶¶ 
ID
¶¶ 
;
¶¶ 
var
·· 

controller
·· 
=
·· 
new
··  *
PlantConfigurationController
··! =
(
··= >
)
··> ?
;
··? @
IHttpActionResult
»» 
actionResult
»» *
=
»»+ ,

controller
»»- 7
.
»»7 8
AddDepartment
»»8 E
(
»»E F

department
»»F P
)
»»P Q
;
»»Q R
var
¼¼ 
createdresult
¼¼ 
=
¼¼ 
actionResult
¼¼  ,
as
¼¼- /,
CreatedNegotiatedContentResult
¼¼0 N
<
¼¼N O
string
¼¼O U
>
¼¼U V
;
¼¼V W
Assert
¿¿ 
.
¿¿ 
	IsNotNull
¿¿ 
(
¿¿ 
createdresult
¿¿ *
)
¿¿* +
;
¿¿+ ,
Assert
ÀÀ 
.
ÀÀ 
AreEqual
ÀÀ 
(
ÀÀ 
$str
ÀÀ ?
,
ÀÀ? @
createdresult
ÀÀA N
.
ÀÀN O
Location
ÀÀO W
.
ÀÀW X
OriginalString
ÀÀX f
)
ÀÀf g
;
ÀÀg h
Assert
ÁÁ 
.
ÁÁ 
AreEqual
ÁÁ 
(
ÁÁ 
(
ÁÁ 
i
ÁÁ 
+
ÁÁ  
$num
ÁÁ! "
)
ÁÁ" #
.
ÁÁ# $
ToString
ÁÁ$ ,
(
ÁÁ, -
)
ÁÁ- .
,
ÁÁ. /
createdresult
ÁÁ0 =
.
ÁÁ= >
Content
ÁÁ> E
.
ÁÁE F
ToString
ÁÁF N
(
ÁÁN O
)
ÁÁO P
)
ÁÁP Q
;
ÁÁQ R
}
ÂÂ 	
[
ÄÄ 	

TestMethod
ÄÄ	 
]
ÄÄ 
public
ÅÅ 
void
ÅÅ '
AddBuildingReturnsCreated
ÅÅ -
(
ÅÅ- .
)
ÅÅ. /
{
ÆÆ 	
Building
ÉÉ 
building
ÉÉ 
=
ÉÉ 
TestData
ÉÉ  (
.
ÉÉ( )
getBuilding
ÉÉ) 4
(
ÉÉ4 5
)
ÉÉ5 6
;
ÉÉ6 7
var
ÊÊ 
item
ÊÊ 
=
ÊÊ 
new
ÊÊ 
	PlantInfo
ÊÊ $
(
ÊÊ$ %
)
ÊÊ% &
.
ÊÊ& '
RetrieveAsset
ÊÊ' 4
(
ÊÊ4 5
)
ÊÊ5 6
.
ÊÊ6 7
LastOrDefault
ÊÊ7 D
(
ÊÊD E
)
ÊÊE F
;
ÊÊF G
int
ËË 
?
ËË 
i
ËË 
=
ËË 
item
ËË 
.
ËË 
ID
ËË 
;
ËË 
var
ÌÌ 

controller
ÌÌ 
=
ÌÌ 
new
ÌÌ  *
PlantConfigurationController
ÌÌ! =
(
ÌÌ= >
)
ÌÌ> ?
;
ÌÌ? @
IHttpActionResult
ÏÏ 
actionResult
ÏÏ *
=
ÏÏ+ ,

controller
ÏÏ- 7
.
ÏÏ7 8
AddBuilding
ÏÏ8 C
(
ÏÏC D
building
ÏÏD L
)
ÏÏL M
;
ÏÏM N
var
ĞĞ 
createdresult
ĞĞ 
=
ĞĞ 
actionResult
ĞĞ  ,
as
ĞĞ- /,
CreatedNegotiatedContentResult
ĞĞ0 N
<
ĞĞN O
string
ĞĞO U
>
ĞĞU V
;
ĞĞV W
Assert
ÔÔ 
.
ÔÔ 
	IsNotNull
ÔÔ 
(
ÔÔ 
createdresult
ÔÔ *
)
ÔÔ* +
;
ÔÔ+ ,
Assert
ÕÕ 
.
ÕÕ 
AreEqual
ÕÕ 
(
ÕÕ 
$str
ÕÕ =
,
ÕÕ= >
createdresult
ÕÕ? L
.
ÕÕL M
Location
ÕÕM U
.
ÕÕU V
OriginalString
ÕÕV d
)
ÕÕd e
;
ÕÕe f
Assert
ÖÖ 
.
ÖÖ 
AreEqual
ÖÖ 
(
ÖÖ 
(
ÖÖ 
i
ÖÖ 
+
ÖÖ  
$num
ÖÖ! "
)
ÖÖ" #
.
ÖÖ# $
ToString
ÖÖ$ ,
(
ÖÖ, -
)
ÖÖ- .
,
ÖÖ. /
createdresult
ÖÖ0 =
.
ÖÖ= >
Content
ÖÖ> E
.
ÖÖE F
ToString
ÖÖF N
(
ÖÖN O
)
ÖÖO P
)
ÖÖP Q
;
ÖÖQ R
}
×× 	
[
ØØ 	

TestMethod
ØØ	 
]
ØØ 
public
ÙÙ 
void
ÙÙ (
AddEquipmentReturnsCreated
ÙÙ .
(
ÙÙ. /
)
ÙÙ/ 0
{
ÚÚ 	
	Equipment
ÜÜ 
equip
ÜÜ 
=
ÜÜ 
getEquipment
ÜÜ *
(
ÜÜ* +
)
ÜÜ+ ,
;
ÜÜ, -
var
İİ 
item
İİ 
=
İİ 
new
İİ 
	PlantInfo
İİ $
(
İİ$ %
)
İİ% &
.
İİ& '
RetrieveAsset
İİ' 4
(
İİ4 5
)
İİ5 6
.
İİ6 7
LastOrDefault
İİ7 D
(
İİD E
)
İİE F
;
İİF G
int
ŞŞ 
?
ŞŞ 
i
ŞŞ 
=
ŞŞ 
item
ŞŞ 
.
ŞŞ 
ID
ŞŞ 
;
ŞŞ 
var
ßß 

controller
ßß 
=
ßß 
new
ßß  *
PlantConfigurationController
ßß! =
(
ßß= >
)
ßß> ?
;
ßß? @
IHttpActionResult
ââ 
actionResult
ââ *
=
ââ+ ,

controller
ââ- 7
.
ââ7 8
AddEquipment
ââ8 D
(
ââD E
equip
ââE J
)
ââJ K
;
ââK L
var
ãã 
createdresult
ãã 
=
ãã 
actionResult
ãã  ,
as
ãã- /,
CreatedNegotiatedContentResult
ãã0 N
<
ããN O
string
ããO U
>
ããU V
;
ããV W
Assert
çç 
.
çç 
	IsNotNull
çç 
(
çç 
createdresult
çç *
)
çç* +
;
çç+ ,
Assert
èè 
.
èè 
AreEqual
èè 
(
èè 
$str
èè >
,
èè> ?
createdresult
èè@ M
.
èèM N
Location
èèN V
.
èèV W
OriginalString
èèW e
)
èèe f
;
èèf g
Assert
éé 
.
éé 
AreEqual
éé 
(
éé 
(
éé 
i
éé 
+
éé  
$num
éé! "
)
éé" #
.
éé# $
ToString
éé$ ,
(
éé, -
)
éé- .
,
éé. /
createdresult
éé0 =
.
éé= >
Content
éé> E
.
ééE F
ToString
ééF N
(
ééN O
)
ééO P
)
ééP Q
;
ééQ R
}
êê 	
[
ëë 	

TestMethod
ëë	 
]
ëë 
public
ìì 
void
ìì *
PostTagDetailsReturnsCreated
ìì 0
(
ìì0 1
)
ìì1 2
{
íí 	
string
ïï 
jsoonString
ïï 
=
ïï  
getJson
ïï! (
(
ïï( )
)
ïï) *
;
ïï* +
Tags
ğğ 
tag
ğğ 
=
ğğ 
new
ğğ 
Tags
ğğ 
{
ğğ  !
	AssetName
ğğ" +
=
ğğ, -
$str
ğğ. 4
,
ğğ4 5
AssetTypeName
ğğ6 C
=
ğğD E
$str
ğğF R
,
ğğR S

EnergyType
ğğT ^
=
ğğ_ `
$str
ğğa n
,
ğğn o
	IsEnabled
ğğp y
=
ğğz {
$str
ğğ| 
,ğğ €
IsExponentialğğ 
=ğğ 
$strğğ‘ ”
,ğğ” •
TagNameğğ– 
=ğğ Ÿ
$strğğ  ­
,ğğ­ ®
Targetğğ¯ µ
=ğğ¶ ·
$numğğ¸ ¾
,ğğ¾ ¿
UOMğğÀ Ã
=ğğÄ Å
$strğğÆ Ë
}ğğÌ Í
;ğğÍ Î
var
ññ 

controller
ññ 
=
ññ 
new
ññ  *
PlantConfigurationController
ññ! =
(
ññ= >
)
ññ> ?
;
ññ? @
IHttpActionResult
óó 
actionResult
óó *
=
óó+ ,

controller
óó- 7
.
óó7 8
PostTagDetails
óó8 F
(
óóF G
tag
óóG J
)
óóJ K
;
óóK L
var
ôô 
createdresult
ôô 
=
ôô 
actionResult
ôô  ,
as
ôô- /,
CreatedNegotiatedContentResult
ôô0 N
<
ôôN O
List
ôôO S
<
ôôS T
Tag
ôôT W
>
ôôW X
>
ôôX Y
;
ôôY Z
Assert
øø 
.
øø 
	IsNotNull
øø 
(
øø 
createdresult
øø *
)
øø* +
;
øø+ ,
Assert
ùù 
.
ùù 
AreEqual
ùù 
(
ùù 
$str
ùù <
,
ùù< =
createdresult
ùù> K
.
ùùK L
Location
ùùL T
.
ùùT U
OriginalString
ùùU c
)
ùùc d
;
ùùd e
}
ûû 	
[
şş 	

TestMethod
şş	 
]
şş 
public
ÿÿ 
void
ÿÿ .
 AddPlantDetailsReturnsBadrequest
ÿÿ 4
(
ÿÿ4 5
)
ÿÿ5 6
{
€€ 	
PlantInfoModel
ƒƒ 
plnt
ƒƒ 
=
ƒƒ  !
null
ƒƒ" &
;
ƒƒ& '
PlantInfoModel
„„ 
duplicatePlnt
„„ (
=
„„) *
new
„„+ .
PlantInfoModel
„„/ =
{
„„> ?
	PlantName
„„@ I
=
„„J K
$str
„„L Z
,
„„Z [
ZoneName
„„\ d
=
„„e f
$str
„„g m
,
„„m n
Location
„„o w
=
„„x y
$str„„z ‚
,„„‚ ƒ
Country„„„ ‹
=„„Œ 
$str„„ “
,„„“ ”
	Lattitude„„• 
=„„Ÿ  
$str„„¡ ©
,„„© ª
	Longitude„„« ´
=„„µ ¶
$str„„· ¿
,„„¿ À
Active„„Á Ç
=„„È É
$str„„Ê Í
,„„Í Î
	CreatedDt„„Ï Ø
=„„Ù Ú
DateTime„„Û ã
.„„ã ä
Now„„ä ç
,„„ç è
	CreatedBy„„é ò
=„„ó ô
$str„„õ €
,„„€ 

ModifiedDt„„‚ Œ
=„„ 
DateTime„„ —
.„„— ˜
Now„„˜ ›
,„„› œ

Modifiedby„„ §
=„„¨ ©
$str„„ª ±
}„„² ³
;„„³ ´
var
ˆˆ 

controller
ˆˆ 
=
ˆˆ 
new
ˆˆ  *
PlantConfigurationController
ˆˆ! =
(
ˆˆ= >
)
ˆˆ> ?
;
ˆˆ? @
IHttpActionResult
‰‰ 
actionResult
‰‰ *
=
‰‰+ ,

controller
‰‰- 7
.
‰‰7 8
AddPlantDetails
‰‰8 G
(
‰‰G H
plnt
‰‰H L
)
‰‰L M
;
‰‰M N
IHttpActionResult
ŠŠ 
actionResult1
ŠŠ +
=
ŠŠ, -

controller
ŠŠ. 8
.
ŠŠ8 9
AddPlantDetails
ŠŠ9 H
(
ŠŠH I
duplicatePlnt
ŠŠI V
)
ŠŠV W
;
ŠŠW X
Assert
 
.
 
IsInstanceOfType
 #
(
# $
actionResult
$ 0
,
0 1
typeof
2 8
(
8 9*
BadRequestErrorMessageResult
9 U
)
U V
)
V W
;
W X
Assert
 
.
 
IsInstanceOfType
 #
(
# $
actionResult1
$ 1
,
1 2
typeof
3 9
(
9 :*
BadRequestErrorMessageResult
: V
)
V W
)
W X
;
X Y
}
 	
[
‘‘ 	

TestMethod
‘‘	 
]
‘‘ 
public
’’ 
void
’’ .
 AddShiftDetailsReturnsBadrequest
’’ 4
(
’’4 5
)
’’5 6
{
““ 	
Shift
•• 
shift
•• 
=
•• 
null
•• 
;
•• 
var
˜˜ 

controller
˜˜ 
=
˜˜ 
new
˜˜  *
PlantConfigurationController
˜˜! =
(
˜˜= >
)
˜˜> ?
;
˜˜? @
IHttpActionResult
™™ 
actionResult
™™ *
=
™™+ ,

controller
™™- 7
.
™™7 8
AddShiftDetails
™™8 G
(
™™G H
shift
™™H M
)
™™M N
;
™™N O
Assert
œœ 
.
œœ 
IsInstanceOfType
œœ #
(
œœ# $
actionResult
œœ$ 0
,
œœ0 1
typeof
œœ2 8
(
œœ8 9*
BadRequestErrorMessageResult
œœ9 U
)
œœU V
)
œœV W
;
œœW X
}
 	
[
   	

TestMethod
  	 
]
   
public
¡¡ 
void
¡¡ ,
AddDepartmentReturnsBadRequest
¡¡ 2
(
¡¡2 3
)
¡¡3 4
{
¢¢ 	

Department
¤¤ 

department
¤¤ !
=
¤¤" #
null
¤¤$ (
;
¤¤( )

Department
¥¥ !
duplicateDepartment
¥¥ *
=
¥¥+ ,
new
¥¥- 0

Department
¥¥1 ;
{
¥¥< =
DepartmentName
¥¥> L
=
¥¥M N
$str
¥¥O X
,
¥¥X Y
PlantId
¥¥Z a
=
¥¥b c
$num
¥¥d e
,
¥¥e f
	CreatedBy
¥¥g p
=
¥¥q r
$str
¥¥s z
,
¥¥z {

ModifiedBy¥¥| †
=¥¥‡ ˆ
$str¥¥‰ 
}¥¥‘ ’
;¥¥’ “
var
¦¦ 

controller
¦¦ 
=
¦¦ 
new
¦¦  *
PlantConfigurationController
¦¦! =
(
¦¦= >
)
¦¦> ?
;
¦¦? @
IHttpActionResult
ªª 
actionResult
ªª *
=
ªª+ ,

controller
ªª- 7
.
ªª7 8
AddDepartment
ªª8 E
(
ªªE F

department
ªªF P
)
ªªP Q
;
ªªQ R
IHttpActionResult
«« 
actionResult1
«« +
=
««, -

controller
««. 8
.
««8 9
AddDepartment
««9 F
(
««F G!
duplicateDepartment
««G Z
)
««Z [
;
««[ \
Assert
®® 
.
®® 
IsInstanceOfType
®® #
(
®®# $
actionResult
®®$ 0
,
®®0 1
typeof
®®2 8
(
®®8 9*
BadRequestErrorMessageResult
®®9 U
)
®®U V
)
®®V W
;
®®W X
Assert
¯¯ 
.
¯¯ 
IsInstanceOfType
¯¯ #
(
¯¯# $
actionResult1
¯¯$ 1
,
¯¯1 2
typeof
¯¯3 9
(
¯¯9 :*
BadRequestErrorMessageResult
¯¯: V
)
¯¯V W
)
¯¯W X
;
¯¯X Y
}
±± 	
[
²² 	

TestMethod
²²	 
]
²² 
public
³³ 
void
³³ *
AddBuildingReturnsBadRequest
³³ 0
(
³³0 1
)
³³1 2
{
´´ 	
Building
¶¶ 
building
¶¶ 
=
¶¶ 
null
¶¶  $
;
¶¶$ %
var
¸¸ 

controller
¸¸ 
=
¸¸ 
new
¸¸  *
PlantConfigurationController
¸¸! =
(
¸¸= >
)
¸¸> ?
;
¸¸? @
IHttpActionResult
»» 
actionResult
»» *
=
»»+ ,

controller
»»- 7
.
»»7 8
AddBuilding
»»8 C
(
»»C D
building
»»D L
)
»»L M
;
»»M N
Assert
¾¾ 
.
¾¾ 
IsInstanceOfType
¾¾ #
(
¾¾# $
actionResult
¾¾$ 0
,
¾¾0 1
typeof
¾¾2 8
(
¾¾8 9*
BadRequestErrorMessageResult
¾¾9 U
)
¾¾U V
)
¾¾V W
;
¾¾W X
}
ÀÀ 	
[
ÁÁ 	

TestMethod
ÁÁ	 
]
ÁÁ 
public
ÂÂ 
void
ÂÂ +
AddEquipmentReturnsBadRequest
ÂÂ 1
(
ÂÂ1 2
)
ÂÂ2 3
{
ÃÃ 	
	Equipment
ÄÄ 
	equipment
ÄÄ 
=
ÄÄ  !
null
ÄÄ" &
;
ÄÄ& '
	Equipment
ÅÅ !
duplicateEquipement
ÅÅ )
=
ÅÅ* +
new
ÅÅ, /
	Equipment
ÅÅ0 9
{
ÅÅ: ;
EquipmentName
ÅÅ< I
=
ÅÅJ K
$str
ÅÅL X
,
ÅÅX Y
EquipmentType
ÅÅZ g
=
ÅÅh i
$str
ÅÅj r
,
ÅÅr s
PlantId
ÅÅt {
=
ÅÅ| }
$num
ÅÅ~ 
,ÅÅ €
	CreatedByÅÅ Š
=ÅÅ‹ Œ
$strÅÅ ”
,ÅÅ” •

ModifiedByÅÅ–  
=ÅÅ¡ ¢
$strÅÅ£ ª
}ÅÅ« ¬
;ÅÅ¬ ­
var
ÆÆ 

controller
ÆÆ 
=
ÆÆ 
new
ÆÆ  *
PlantConfigurationController
ÆÆ! =
(
ÆÆ= >
)
ÆÆ> ?
;
ÆÆ? @
IHttpActionResult
ÉÉ 
actionResult
ÉÉ *
=
ÉÉ+ ,

controller
ÉÉ- 7
.
ÉÉ7 8
AddEquipment
ÉÉ8 D
(
ÉÉD E
	equipment
ÉÉE N
)
ÉÉN O
;
ÉÉO P
IHttpActionResult
ÊÊ 
actionResult1
ÊÊ +
=
ÊÊ, -

controller
ÊÊ. 8
.
ÊÊ8 9
AddEquipment
ÊÊ9 E
(
ÊÊE F!
duplicateEquipement
ÊÊF Y
)
ÊÊY Z
;
ÊÊZ [
Assert
ÍÍ 
.
ÍÍ 
IsInstanceOfType
ÍÍ #
(
ÍÍ# $
actionResult
ÍÍ$ 0
,
ÍÍ0 1
typeof
ÍÍ2 8
(
ÍÍ8 9*
BadRequestErrorMessageResult
ÍÍ9 U
)
ÍÍU V
)
ÍÍV W
;
ÍÍW X
Assert
ÎÎ 
.
ÎÎ 
IsInstanceOfType
ÎÎ #
(
ÎÎ# $
actionResult1
ÎÎ$ 1
,
ÎÎ1 2
typeof
ÎÎ3 9
(
ÎÎ9 :*
BadRequestErrorMessageResult
ÎÎ: V
)
ÎÎV W
)
ÎÎW X
;
ÎÎX Y
}
ÏÏ 	
[
ÑÑ 	

TestMethod
ÑÑ	 
]
ÑÑ 
public
ÒÒ 
void
ÒÒ -
PostTagDetailsReturnsBadrequest
ÒÒ 3
(
ÒÒ3 4
)
ÒÒ4 5
{
ÓÓ 	
Tags
ÔÔ 
tag
ÔÔ 
=
ÔÔ 
null
ÔÔ 
;
ÔÔ 
var
ÕÕ 

controller
ÕÕ 
=
ÕÕ 
new
ÕÕ  *
PlantConfigurationController
ÕÕ! =
(
ÕÕ= >
)
ÕÕ> ?
;
ÕÕ? @
IHttpActionResult
ÖÖ 
actionResult
ÖÖ *
=
ÖÖ+ ,

controller
ÖÖ- 7
.
ÖÖ7 8
PostTagDetails
ÖÖ8 F
(
ÖÖF G
tag
ÖÖG J
)
ÖÖJ K
;
ÖÖK L
Assert
×× 
.
×× 
IsInstanceOfType
×× #
(
××# $
actionResult
××$ 0
,
××0 1
typeof
××2 8
(
××8 9*
BadRequestErrorMessageResult
××9 U
)
××U V
)
××V W
;
××W X
}
ØØ 	
[
ÙÙ 	
Ignore
ÙÙ	 
]
ÙÙ 
private
ÚÚ 
	Equipment
ÚÚ 
getEquipment
ÚÚ &
(
ÚÚ& '
)
ÚÚ' (
{
ÛÛ 	
return
ÜÜ 
new
ÜÜ 
	Equipment
ÜÜ  
{
ÜÜ! "
EquipmentName
ÜÜ# 0
=
ÜÜ1 2
$str
ÜÜ3 >
,
ÜÜ> ?
EquipmentType
ÜÜ@ M
=
ÜÜN O
$str
ÜÜP X
,
ÜÜX Y
PlantId
ÜÜZ a
=
ÜÜb c
$num
ÜÜd e
,
ÜÜe f
	CreatedBy
ÜÜg p
=
ÜÜq r
$str
ÜÜs z
,
ÜÜz {

ModifiedByÜÜ| †
=ÜÜ‡ ˆ
$strÜÜ‰ 
}ÜÜ‘ ’
;ÜÜ’ “
}
İİ 	
[
ŞŞ 	
Ignore
ŞŞ	 
]
ŞŞ 
private
ßß 
string
ßß 
getJson
ßß 
(
ßß 
)
ßß  
{
àà 	
var
áá 
v
áá 
=
áá 
new
áá 
{
áá 

EnergyType
áá $
=
áá% &
$str
áá' 4
,
áá4 5
UOM
áá6 9
=
áá: ;
$str
áá< A
,
ááA B
TagName
ááC J
=
ááK L
$strááM ã
,ááã ä
AssetTypeNameááå ò
=ááó ô
$strááõ 
,áá ‚
	AssetNameááƒ Œ
=áá 
$stráá 
}ááŸ  
;áá  ¡
string
ââ 
json
ââ 
=
ââ 
JsonConvert
ââ %
.
ââ% &
SerializeObject
ââ& 5
(
ââ5 6
v
ââ6 7
)
ââ7 8
;
ââ8 9
return
ãã 
json
ãã 
;
ãã 
}
ää 	
[
ææ 	

TestMethod
ææ	 
]
ææ 
public
çç 
void
çç $
AddTagIdReturnsCreated
çç *
(
çç* +
)
çç+ ,
{
èè 	
Alarms
êê 
test
êê 
=
êê 
null
êê 
;
êê 
Alarms
ëë 
tag
ëë 
=
ëë 
new
ëë 
Alarms
ëë #
{
ëë$ %
TagID
ëë& +
=
ëë, -
$num
ëë. /
,
ëë/ 0
PlantID
ëë1 8
=
ëë9 :
$num
ëë; <
,
ëë< =
Value
ëë> C
=
ëëD E
$num
ëëF J
}
ëëK L
;
ëëL M
var
ìì 

controller
ìì 
=
ìì 
new
ìì  *
PlantConfigurationController
ìì! =
(
ìì= >
)
ìì> ?
;
ìì? @
IHttpActionResult
îî 
actionResult
îî *
=
îî+ ,

controller
îî- 7
.
îî7 8
AddTagId
îî8 @
(
îî@ A
test
îîA E
)
îîE F
;
îîF G
var
ïï 
createdresult
ïï 
=
ïï 
actionResult
ïï  ,
as
ïï- /,
CreatedNegotiatedContentResult
ïï0 N
<
ïïN O
List
ïïO S
<
ïïS T
Alarms
ïïT Z
>
ïïZ [
>
ïï[ \
;
ïï\ ]
IHttpActionResult
óó 
actionResult1
óó +
=
óó, -

controller
óó. 8
.
óó8 9
AddTagId
óó9 A
(
óóA B
tag
óóB E
)
óóE F
;
óóF G
}
÷÷ 	
[
øø 	

TestMethod
øø	 
]
øø 
public
ùù 
void
ùù $
TagIDReturnsBadrequest
ùù *
(
ùù* +
)
ùù+ ,
{
úú 	
Alarms
ûû 
tag
ûû 
=
ûû 
null
ûû 
;
ûû 
var
üü 

controller
üü 
=
üü 
new
üü  *
PlantConfigurationController
üü! =
(
üü= >
)
üü> ?
;
üü? @
IHttpActionResult
ıı 
actionResult
ıı *
=
ıı+ ,

controller
ıı- 7
.
ıı7 8
AddTagId
ıı8 @
(
ıı@ A
tag
ııA D
)
ııD E
;
ııE F
Assert
şş 
.
şş 
IsInstanceOfType
şş #
(
şş# $
actionResult
şş$ 0
,
şş0 1
typeof
şş2 8
(
şş8 9*
BadRequestErrorMessageResult
şş9 U
)
şşU V
)
şşV W
;
şşW X
}
ÿÿ 	
}
€€ 
} Ïì
~D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\PlantSetUpDalUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class "
PlantSetUpDalUnitTests '
{ 
public "
PlantSetUpDalUnitTests %
(% &
)& '
{ 	
} 	
[ 	

TestMethod	 
] 
public 
void +
AddConsumptionActualReturnsTrue 3
(3 4
)4 5
{ 	
var 
testData 
= 
TestData #
.# $
TestAnnualData$ 2
(2 3
)3 4
;4 5
var 
plantSetUpDal 
= 
new  #
PlantSetUpDal$ 1
(1 2
)2 3
;3 4
var 
result 
= 
plantSetUpDal &
.& ' 
AddConsumptionActual' ;
(; <
testData< D
,D E
$strF L
,L M
$numN O
,O P
$strQ ^
)^ _
;_ `
Assert 
. 
	IsNotNull 
( 
result #
)# $
;$ %
Assert   
.   
IsTrue   
(   
result    
)    !
;  ! "
}!! 	
[## 	

TestMethod##	 
]## 
public$$ 
void$$ ,
 AddConsumptionActualReturnsFalse$$ 4
($$4 5
)$$5 6
{%% 	
List&& 
<&& 
AnnualDetails&& 
>&& 
testData&&  (
=&&) *
null&&+ /
;&&/ 0
var'' 
plantSetUpDal'' 
='' 
new''  #
PlantSetUpDal''$ 1
(''1 2
)''2 3
;''3 4
var(( 
result(( 
=(( 
plantSetUpDal(( &
.((& ' 
AddConsumptionActual((' ;
(((; <
testData((< D
,((D E
$str((F L
,((L M
$num((N O
,((O P
$str((Q ^
)((^ _
;((_ `
Assert)) 
.)) 
	IsNotNull)) 
()) 
result)) #
)))# $
;))$ %
Assert** 
.** 
IsFalse** 
(** 
result** !
)**! "
;**" #
}++ 	
[,, 	

TestMethod,,	 
],, 
public-- 
void-- ,
 AddMonthlyConsumptionReturnsTrue-- 4
(--4 5
)--5 6
{.. 	
var// 
testData// 
=// 
new// 
List// #
<//# $
MonthlyConsumption//$ 6
>//6 7
{//8 9
new//: =
MonthlyConsumption//> P
{//Q R
Consumption//S ^
=//_ `
$num//a f
,//f g
Cost//h l
=//m n
$num//o t
,//t u
UOM//v y
=//z {
$str	//| 
,
// ‚
UOMID
//ƒ ˆ
=
//‰ Š
$num
//‹ Œ
,
//Œ 
WAGES
// “
=
//” •
$str
//– £
,
//£ ¤
WagesId
//¥ ¬
=
//­ ®
$num
//¯ °
}
//± ²
,
//² ³
new00 
MonthlyConsumption00 &
{00' (
Consumption00) 4
=005 6
$num007 <
,00< =
Cost00> B
=00C D
$num00E J
,00J K
UOM00L O
=00P Q
$str00R W
,00W X
UOMID00Y ^
=00_ `
$num00a b
,00b c
WAGES00d i
=00j k
$str00l y
,00y z
WagesId	00{ ‚
=
00ƒ „
$num
00… †
}
00‡ ˆ
}11 
;11 
var22 
plantSetUpDal22 
=22 
new22  #
PlantSetUpDal22$ 1
(221 2
)222 3
;223 4
var33 
result33 
=33 
plantSetUpDal33 &
.33& '!
AddMonthlyConsumption33' <
(33< =
testData33= E
,33E F
$str33G M
,33M N
$num33O P
,33P Q
$num33R S
)33S T
;33T U
Assert44 
.44 
	IsNotNull44 
(44 
result44 #
)44# $
;44$ %
Assert55 
.55 
IsTrue55 
(55 
result55  
)55  !
;55! "
}66 	
[88 	

TestMethod88	 
]88 
public99 
void99 -
!AddMonthlyConsumptionReturnsFalse99 5
(995 6
)996 7
{:: 	
List;; 
<;; 
MonthlyConsumption;; #
>;;# $
testData;;% -
=;;. /
null;;0 4
;;;4 5
var<< 
plantSetUpDal<< 
=<< 
new<<  #
PlantSetUpDal<<$ 1
(<<1 2
)<<2 3
;<<3 4
var== 
result== 
=== 
plantSetUpDal== &
.==& '!
AddMonthlyConsumption==' <
(==< =
testData=== E
,==E F
$str==G M
,==M N
$num==O P
,==P Q
$num==R S
)==S T
;==T U
Assert>> 
.>> 
	IsNotNull>> 
(>> 
result>> #
)>># $
;>>$ %
Assert?? 
.?? 
IsFalse?? 
(?? 
result?? !
)??! "
;??" #
}@@ 	
[AA 	

TestMethodAA	 
]AA 
publicBB 
voidBB +
GetConsumptionActualReturnsListBB 3
(BB3 4
)BB4 5
{CC 	
varDD 
plantSetUpDalDD 
=DD 
newDD  #
PlantSetUpDalDD$ 1
(DD1 2
)DD2 3
;DD3 4
varEE 
resultEE 
=EE 
plantSetUpDalEE &
.EE& ' 
GetConsumptionActualEE' ;
(EE; <
$numEE< @
,EE@ A
$numEEB C
,EEC D
$strEEE R
)EER S
;EES T
AssertFF 
.FF 
	IsNotNullFF 
(FF 
resultFF #
)FF# $
;FF$ %
AssertGG 
.GG 
IsTrueGG 
(GG 
resultGG  
.GG  !
CountGG! &
>GG' (
$numGG) *
)GG* +
;GG+ ,
AssertHH 
.HH 
IsInstanceOfTypeHH #
(HH# $
resultHH$ *
,HH* +
typeofHH, 2
(HH2 3
ListHH3 7
<HH7 8
AnnualDetailsHH8 E
>HHE F
)HHF G
)HHG H
;HHH I
}II 	
[JJ 	

TestMethodJJ	 
]JJ 
publicKK 
voidKK %
GetWageMappingReturnsListKK -
(KK- .
)KK. /
{LL 	
varMM 
plantSetUpDalMM 
=MM 
newMM  #
PlantSetUpDalMM$ 1
(MM1 2
)MM2 3
;MM3 4
varNN 
resultNN 
=NN 
plantSetUpDalNN &
.NN& '
GetWageMappingNN' 5
(NN5 6
)NN6 7
;NN7 8
AssertOO 
.OO 
	IsNotNullOO 
(OO 
resultOO #
)OO# $
;OO$ %
AssertPP 
.PP 
IsTruePP 
(PP 
resultPP  
.PP  !
CountPP! &
>PP' (
$numPP) *
)PP* +
;PP+ ,
AssertQQ 
.QQ 
IsInstanceOfTypeQQ #
(QQ# $
resultQQ$ *
,QQ* +
typeofQQ, 2
(QQ2 3
ListQQ3 7
<QQ7 8
WageUomMappingQQ8 F
>QQF G
)QQG H
)QQH I
;QQI J
}RR 	
[UU 	

TestMethodUU	 
]UU 
publicVV 
voidVV +
GetMonthlySolidwasteReturnsListVV 3
(VV3 4
)VV4 5
{WW 	
varXX 
plantSetUpDalXX 
=XX 
newXX  #
PlantSetUpDalXX$ 1
(XX1 2
)XX2 3
;XX3 4
varYY 
resultYY 
=YY 
plantSetUpDalYY &
.YY& ' 
GetMonthlySolidwasteYY' ;
(YY; <
$numYY< @
,YY@ A
$numYYB C
)YYC D
;YYD E
AssertZZ 
.ZZ 
	IsNotNullZZ 
(ZZ 
resultZZ #
)ZZ# $
;ZZ$ %
Assert[[ 
.[[ 
IsInstanceOfType[[ #
([[# $
result[[$ *
,[[* +
typeof[[, 2
([[2 3
List[[3 7
<[[7 8
MonthlyConsumption[[8 J
>[[J K
)[[K L
)[[L M
;[[M N
}\\ 	
[]] 	

TestMethod]]	 
]]] 
public^^ 
void^^ &
SaveWageMappingReturnsTrue^^ .
(^^. /
)^^/ 0
{__ 	
var`` 
plantSetUpDal`` 
=`` 
new``  #
PlantSetUpDal``$ 1
(``1 2
)``2 3
;``3 4
varaa 
resultaa 
=aa 
plantSetUpDalaa &
.aa& '
SaveWageMappingaa' 6
(aa6 7
$straa7 =
,aa= >
$numaa? @
,aa@ A
$numaaB C
,aaC D
$numaaD E
)aaE F
;aaF G
Assertbb 
.bb 
	IsNotNullbb 
(bb 
resultbb #
)bb# $
;bb$ %
Assertcc 
.cc 
IsTruecc 
(cc 
resultcc  
)cc  !
;cc! "
}dd 	
publicee 
voidee '
SaveWageMappingReturnsFalseee /
(ee/ 0
)ee0 1
{ff 	
vargg 
plantSetUpDalgg 
=gg 
newgg  #
PlantSetUpDalgg$ 1
(gg1 2
)gg2 3
;gg3 4
varhh 
resulthh 
=hh 
plantSetUpDalhh &
.hh& '
SaveWageMappinghh' 6
(hh6 7
$strhh7 =
,hh= >
$numhh? @
,hh@ A
$numhhB C
,hhC D
$numhhD E
)hhE F
;hhF G
Assertii 
.ii 
	IsNotNullii 
(ii 
resultii #
)ii# $
;ii$ %
Assertjj 
.jj 
IsFalsejj 
(jj 
resultjj !
)jj! "
;jj" #
}kk 	
[ll 	

TestMethodll	 
]ll 
publicmm 
voidmm *
GetProductionActualReturnsListmm 2
(mm2 3
)mm3 4
{nn 	
varoo 
plantSetUpDaloo 
=oo 
newoo  #
PlantSetUpDaloo$ 1
(oo1 2
)oo2 3
;oo3 4
varpp 
resultpp 
=pp 
plantSetUpDalpp &
.pp& '
GetProductionActualpp' :
(pp: ;
$numpp; ?
,pp? @
$strppA V
)ppV W
;ppW X
Assertqq 
.qq 
	IsNotNullqq 
(qq 
resultqq #
)qq# $
;qq$ %
Assertrr 
.rr 
IsTruerr 
(rr 
resultrr  
.rr  !
Countrr! &
>rr' (
$numrr) *
)rr* +
;rr+ ,
Assertss 
.ss 
IsInstanceOfTypess #
(ss# $
resultss$ *
,ss* +
typeofss, 2
(ss2 3
Listss3 7
<ss7 8
AnnualDetailsss8 E
>ssE F
)ssF G
)ssG H
;ssH I
}tt 	
[uu 	

TestMethoduu	 
]uu 
publicvv 
voidvv $
GetDepartmentReturnsListvv ,
(vv, -
)vv- .
{ww 	
varxx 
plantSetUpDalxx 
=xx 
newxx  #
PlantSetUpDalxx$ 1
(xx1 2
)xx2 3
;xx3 4
varyy 
resultyy 
=yy 
plantSetUpDalyy &
.yy& '
GetDepartmentyy' 4
(yy4 5
)yy5 6
;yy6 7
Assertzz 
.zz 
	IsNotNullzz 
(zz 
resultzz #
)zz# $
;zz$ %
Assert{{ 
.{{ 
IsInstanceOfType{{ #
({{# $
result{{$ *
,{{* +
typeof{{+ 1
({{1 2
List{{2 6
<{{6 7
Details{{7 >
>{{> ?
){{? @
){{@ A
;{{A B
}|| 	
[}} 	

TestMethod}}	 
]}} 
public~~ 
void~~ $
GetSolidWasteReturnsList~~ ,
(~~, -
)~~- .
{ 	
var
€€ 
plantSetUpDal
€€ 
=
€€ 
new
€€  #
PlantSetUpDal
€€$ 1
(
€€1 2
)
€€2 3
;
€€3 4
var
 
result
 
=
 
plantSetUpDal
 &
.
& '
GetSolidWaste
' 4
(
4 5
$num
5 9
,
9 :
$str
; G
)
G H
;
H I
Assert
‚‚ 
.
‚‚ 
	IsNotNull
‚‚ 
(
‚‚ 
result
‚‚ #
)
‚‚# $
;
‚‚$ %
Assert
ƒƒ 
.
ƒƒ 
IsInstanceOfType
ƒƒ #
(
ƒƒ# $
result
ƒƒ$ *
,
ƒƒ* +
typeof
ƒƒ, 2
(
ƒƒ2 3
List
ƒƒ3 7
<
ƒƒ7 8
AnnualDetails
ƒƒ8 E
>
ƒƒE F
)
ƒƒF G
)
ƒƒG H
;
ƒƒH I
}
„„ 	
[
†† 	

TestMethod
††	 
]
†† 
public
‡‡ 
void
‡‡ +
GetDailyProductionReturnsList
‡‡ 1
(
‡‡1 2
)
‡‡2 3
{
ˆˆ 	
var
‰‰ 
plantSetUpDal
‰‰ 
=
‰‰ 
new
‰‰  #
PlantSetUpDal
‰‰$ 1
(
‰‰1 2
)
‰‰2 3
;
‰‰3 4
var
ŠŠ 
result
ŠŠ 
=
ŠŠ 
plantSetUpDal
ŠŠ &
.
ŠŠ& ' 
GetProductionDaily
ŠŠ' 9
(
ŠŠ9 :
$str
ŠŠ: F
)
ŠŠF G
;
ŠŠG H
Assert
‹‹ 
.
‹‹ 
	IsNotNull
‹‹ 
(
‹‹ 
result
‹‹ #
)
‹‹# $
;
‹‹$ %
Assert
ŒŒ 
.
ŒŒ 
IsTrue
ŒŒ 
(
ŒŒ 
result
ŒŒ  
.
ŒŒ  !
Count
ŒŒ! &
>
ŒŒ' (
$num
ŒŒ) *
)
ŒŒ* +
;
ŒŒ+ ,
Assert
 
.
 
IsInstanceOfType
 #
(
# $
result
$ *
,
* +
typeof
, 2
(
2 3
List
3 7
<
7 8
ProductionDaily
8 G
>
G H
)
H I
)
I J
;
J K
}
 	
[
 	

TestMethod
	 
]
 
public
 
void
 +
GetSolidWasteDailyReturnsList
 1
(
1 2
)
2 3
{
‘‘ 	
var
’’ 
testData
’’ 
=
’’ 
new
’’ 
List
’’ #
<
’’# $
ProductionDaily
’’$ 3
>
’’3 4
{
’’5 6
new
’’7 :
ProductionDaily
’’; J
{
’’K L
AssetId
’’M T
=
’’U V
$num
’’W X
,
’’X Y

DepartName
’’Z d
=
’’e f
$str
’’g n
,
’’n o
Total
’’p u
=
’’v w
$num
’’x 
,’’ €
UOM’’ „
=’’… †
$str’’‡ Œ
,’’Œ 
UOMId’’ “
=’’” •
$num’’– —
}’’˜ ™
}’’š ›
;’’› œ
var
““ 
plantSetUpDal
““ 
=
““ 
new
““  #
PlantSetUpDal
““$ 1
(
““1 2
)
““2 3
;
““3 4
var
”” 
result
”” 
=
”” 
plantSetUpDal
”” &
.
””& ' 
GetSolidWasteDaily
””' 9
(
””9 :
$str
””: F
)
””F G
;
””G H
Assert
•• 
.
•• 
	IsNotNull
•• 
(
•• 
result
•• #
)
••# $
;
••$ %
Assert
–– 
.
–– 
IsInstanceOfType
–– #
(
––# $
result
––$ *
,
––* +
typeof
––, 2
(
––2 3
List
––3 7
<
––7 8
ProductionDaily
––8 G
>
––G H
)
––H I
)
––I J
;
––J K
}
—— 	
[
˜˜ 	

TestMethod
˜˜	 
]
˜˜ 
public
™™ 
void
™™ ,
AddProductionActualReturnsTrue
™™ 2
(
™™2 3
)
™™3 4
{
šš 	
var
›› 
testData
›› 
=
›› 
TestData
›› #
.
››# $
TestAnnualData
››$ 2
(
››2 3
)
››3 4
;
››4 5
var
œœ 
plantSetUpDal
œœ 
=
œœ 
new
œœ  #
PlantSetUpDal
œœ$ 1
(
œœ1 2
)
œœ2 3
;
œœ3 4
var
   
result
   
=
   
true
   
;
   
Assert
¡¡ 
.
¡¡ 
	IsNotNull
¡¡ 
(
¡¡ 
result
¡¡ #
)
¡¡# $
;
¡¡$ %
Assert
¢¢ 
.
¢¢ 
IsTrue
¢¢ 
(
¢¢ 
result
¢¢  
)
¢¢  !
;
¢¢! "
}
££ 	
[
¤¤ 	

TestMethod
¤¤	 
]
¤¤ 
public
¥¥ 
void
¥¥ -
AddProductionActualReturnsFalse
¥¥ 3
(
¥¥3 4
)
¥¥4 5
{
¦¦ 	
List
§§ 
<
§§ 
AnnualDetails
§§ 
>
§§ 
testData
§§  (
=
§§) *
null
§§+ /
;
§§/ 0
var
¨¨ 
plantSetUpDal
¨¨ 
=
¨¨ 
new
¨¨  #
PlantSetUpDal
¨¨$ 1
(
¨¨1 2
)
¨¨2 3
;
¨¨3 4
var
«« 
result
«« 
=
«« 
false
«« 
;
«« 
Assert
¬¬ 
.
¬¬ 
	IsNotNull
¬¬ 
(
¬¬ 
result
¬¬ #
)
¬¬# $
;
¬¬$ %
Assert
­­ 
.
­­ 
IsFalse
­­ 
(
­­ 
result
­­ !
)
­­! "
;
­­" #
}
®® 	
[
°° 	

TestMethod
°°	 
]
°° 
public
±± 
void
±± *
EditConfigurationReturnsTrue
±± 0
(
±±0 1
)
±±1 2
{
²² 	
var
³³ 
testData
³³ 
=
³³ 
new
³³ 
WageUomMapping
³³ -
{
³³. /

EnergyName
³³0 :
=
³³; <
$str
³³= D
,
³³D E

EnergyType
³³F P
=
³³Q R
$str
³³S `
,
³³` a
UOM
³³b e
=
³³f g
$str
³³h m
,
³³m n
ID
³³o q
=
³³r s
$num
³³t u
}
³³v w
;
³³w x
var
´´ 
plantSetUpDal
´´ 
=
´´ 
new
´´  #
PlantSetUpDal
´´$ 1
(
´´1 2
)
´´2 3
;
´´3 4
var
·· 
result
·· 
=
·· 
true
·· 
;
·· 
Assert
¸¸ 
.
¸¸ 
	IsNotNull
¸¸ 
(
¸¸ 
result
¸¸ #
)
¸¸# $
;
¸¸$ %
Assert
¹¹ 
.
¹¹ 
IsTrue
¹¹ 
(
¹¹ 
result
¹¹  
)
¹¹  !
;
¹¹! "
}
ºº 	
[
¼¼ 	

TestMethod
¼¼	 
]
¼¼ 
public
½½ 
void
½½ +
EditConfigurationReturnsFalse
½½ 1
(
½½1 2
)
½½2 3
{
¾¾ 	
WageUomMapping
¿¿ 
testData
¿¿ #
=
¿¿$ %
null
¿¿& *
;
¿¿* +
var
ÀÀ 
plantSetUpDal
ÀÀ 
=
ÀÀ 
new
ÀÀ  #
PlantSetUpDal
ÀÀ$ 1
(
ÀÀ1 2
)
ÀÀ2 3
;
ÀÀ3 4
var
ÁÁ 
result
ÁÁ 
=
ÁÁ 
false
ÁÁ 
;
ÁÁ 
Assert
ÂÂ 
.
ÂÂ 
	IsNotNull
ÂÂ 
(
ÂÂ 
result
ÂÂ #
)
ÂÂ# $
;
ÂÂ$ %
Assert
ÃÃ 
.
ÃÃ 
IsFalse
ÃÃ 
(
ÃÃ 
result
ÃÃ !
)
ÃÃ! "
;
ÃÃ" #
}
ÄÄ 	
[
ÆÆ 	

TestMethod
ÆÆ	 
]
ÆÆ 
public
ÇÇ 
void
ÇÇ -
AddCSolidwasteActualReturnsTrue
ÇÇ 3
(
ÇÇ3 4
)
ÇÇ4 5
{
ÈÈ 	
var
ÉÉ 
testData
ÉÉ 
=
ÉÉ 
TestData
ÉÉ #
.
ÉÉ# $
TestAnnualData
ÉÉ$ 2
(
ÉÉ2 3
)
ÉÉ3 4
;
ÉÉ4 5
var
ÊÊ 
plantSetUpDal
ÊÊ 
=
ÊÊ 
new
ÊÊ  #
PlantSetUpDal
ÊÊ$ 1
(
ÊÊ1 2
)
ÊÊ2 3
;
ÊÊ3 4
var
ËË 
result
ËË 
=
ËË 
true
ËË 
;
ËË 
Assert
ÌÌ 
.
ÌÌ 
	IsNotNull
ÌÌ 
(
ÌÌ 
result
ÌÌ #
)
ÌÌ# $
;
ÌÌ$ %
Assert
ÍÍ 
.
ÍÍ 
IsTrue
ÍÍ 
(
ÍÍ 
result
ÍÍ  
)
ÍÍ  !
;
ÍÍ! "
}
ÎÎ 	
[
ĞĞ 	

TestMethod
ĞĞ	 
]
ĞĞ 
public
ÑÑ 
void
ÑÑ .
 AddCSolidwasteActualReturnsFalse
ÑÑ 4
(
ÑÑ4 5
)
ÑÑ5 6
{
ÒÒ 	
List
ÓÓ 
<
ÓÓ 
AnnualDetails
ÓÓ 
>
ÓÓ 
testData
ÓÓ  (
=
ÓÓ) *
null
ÓÓ+ /
;
ÓÓ/ 0
var
ÔÔ 
plantSetUpDal
ÔÔ 
=
ÔÔ 
new
ÔÔ  #
PlantSetUpDal
ÔÔ$ 1
(
ÔÔ1 2
)
ÔÔ2 3
;
ÔÔ3 4
var
ÕÕ 
result
ÕÕ 
=
ÕÕ 
false
ÕÕ 
;
ÕÕ 
Assert
ÖÖ 
.
ÖÖ 
	IsNotNull
ÖÖ 
(
ÖÖ 
result
ÖÖ #
)
ÖÖ# $
;
ÖÖ$ %
Assert
×× 
.
×× 
IsFalse
×× 
(
×× 
result
×× !
)
××! "
;
××" #
}
ØØ 	
[
ÚÚ 	

TestMethod
ÚÚ	 
]
ÚÚ 
public
ÛÛ 
void
ÛÛ -
AddMonthlySolidwasteReturnsTrue
ÛÛ 3
(
ÛÛ3 4
)
ÛÛ4 5
{
ÜÜ 	
var
İİ 
testData
İİ 
=
İİ 
new
İİ 
List
İİ #
<
İİ# $ 
MonthlyConsumption
İİ$ 6
>
İİ6 7
{
İİ8 9
new
İİ: = 
MonthlyConsumption
İİ> P
{
İİQ R
Consumption
İİS ^
=
İİ_ `
$num
İİa f
,
İİf g
Cost
İİh l
=
İİm n
$num
İİo t
,
İİt u
UOM
İİv y
=
İİz {
$strİİ| 
,İİ ‚
UOMIDİİƒ ˆ
=İİ‰ Š
$numİİ‹ Œ
,İİŒ 
WAGESİİ “
=İİ” •
$strİİ– £
,İİ£ ¤
WagesIdİİ¥ ¬
=İİ­ ®
$numİİ¯ °
}İİ± ²
,İİ² ³
new
ŞŞ  
MonthlyConsumption
ŞŞ &
{
ŞŞ' (
Consumption
ŞŞ) 4
=
ŞŞ5 6
$num
ŞŞ7 <
,
ŞŞ< =
Cost
ŞŞ> B
=
ŞŞC D
$num
ŞŞE J
,
ŞŞJ K
UOM
ŞŞL O
=
ŞŞP Q
$str
ŞŞR W
,
ŞŞW X
UOMID
ŞŞY ^
=
ŞŞ_ `
$num
ŞŞa b
,
ŞŞb c
WAGES
ŞŞd i
=
ŞŞj k
$str
ŞŞl y
,
ŞŞy z
WagesIdŞŞ{ ‚
=ŞŞƒ „
$numŞŞ… †
}ŞŞ‡ ˆ
}
ßß 
;
ßß 
var
áá 
plantSetUpDal
áá 
=
áá 
new
áá  #
PlantSetUpDal
áá$ 1
(
áá1 2
)
áá2 3
;
áá3 4
var
ââ 
result
ââ 
=
ââ 
true
ââ 
;
ââ 
Assert
ãã 
.
ãã 
	IsNotNull
ãã 
(
ãã 
result
ãã #
)
ãã# $
;
ãã$ %
Assert
ää 
.
ää 
IsTrue
ää 
(
ää 
result
ää  
)
ää  !
;
ää! "
}
åå 	
[
çç 	

TestMethod
çç	 
]
çç 
public
èè 
void
èè +
AddSolidwasteDailyReturnsTrue
èè 1
(
èè1 2
)
èè2 3
{
éé 	
var
êê 
testData
êê 
=
êê 
new
êê 
List
êê #
<
êê# $
ProductionDaily
êê$ 3
>
êê3 4
{
êê5 6
new
êê7 :
ProductionDaily
êê; J
{
êêK L
AssetId
êêL S
=
êêT U
$num
êêU V
,
êêV W

DepartName
êêW a
=
êêb c
$str
êêd k
,
êêk l
Total
êêl q
=
êêr s
$num
êêt z
,
êêz {
UOM
êê{ ~
=êê €
$strêê †
,êê† ‡
UOMIdêê‡ Œ
=êê 
$numêê 
}êê‘ ’
,êê’ “
new
ëë 
ProductionDaily
ëë #
{
ëë$ %
AssetId
ëë% ,
=
ëë- .
$num
ëë. /
,
ëë/ 0

DepartName
ëë0 :
=
ëë; <
$str
ëë= D
,
ëëD E
Total
ëëE J
=
ëëK L
$num
ëëM S
,
ëëS T
UOM
ëëT W
=
ëëX Y
$str
ëëZ _
,
ëë_ `
UOMId
ëë` e
=
ëëf g
$num
ëëh i
}
ëëk l
}
ëël m
;
ëëm n
var
íí 
plantSetUpDal
íí 
=
íí 
new
íí  #
PlantSetUpDal
íí$ 1
(
íí1 2
)
íí2 3
;
íí3 4
var
îî 
result
îî 
=
îî 
true
îî 
;
îî 
Assert
ïï 
.
ïï 
	IsNotNull
ïï 
(
ïï 
result
ïï #
)
ïï# $
;
ïï$ %
Assert
ğğ 
.
ğğ 
IsTrue
ğğ 
(
ğğ 
result
ğğ  
)
ğğ  !
;
ğğ! "
}
ññ 	
[
óó 	

TestMethod
óó	 
]
óó 
public
ôô 
void
ôô ,
AddSolidwasteDailyReturnsFalse
ôô 2
(
ôô2 3
)
ôô3 4
{
õõ 	
List
öö 
<
öö 
ProductionDaily
öö  
>
öö  !
testData
öö" *
=
öö+ ,
null
öö- 1
;
öö1 2
var
øø 
plantSetUpDal
øø 
=
øø 
new
øø  #
PlantSetUpDal
øø$ 1
(
øø1 2
)
øø2 3
;
øø3 4
var
ùù 
result
ùù 
=
ùù 
false
ùù 
;
ùù 
Assert
úú 
.
úú 
	IsNotNull
úú 
(
úú 
result
úú #
)
úú# $
;
úú$ %
Assert
ûû 
.
ûû 
IsFalse
ûû 
(
ûû 
result
ûû !
)
ûû! "
;
ûû" #
}
üü 	
[
ıı 	

TestMethod
ıı	 
]
ıı 
public
şş 
void
şş *
AddProductonDailyReturnsTrue
şş 0
(
şş0 1
)
şş1 2
{
ÿÿ 	
var
€€ 
testData
€€ 
=
€€ 
new
€€ 
List
€€ #
<
€€# $
ProductionDaily
€€$ 3
>
€€3 4
{
€€5 6
new
€€7 :
ProductionDaily
€€; J
{
€€K L
AssetId
€€L S
=
€€T U
$num
€€U V
,
€€V W

DepartName
€€W a
=
€€b c
$str
€€d k
,
€€k l
Total
€€l q
=
€€r s
$num
€€t z
,
€€z {
UOM
€€{ ~
=€€ €
$str€€ †
,€€† ‡
UOMId€€‡ Œ
=€€ 
$num€€ 
}€€‘ ’
,€€’ “
new
 
ProductionDaily
 #
{
$ %
AssetId
% ,
=
- .
$num
. /
,
/ 0

DepartName
0 :
=
; <
$str
= D
,
D E
Total
E J
=
K L
$num
M S
,
S T
UOM
T W
=
X Y
$str
Z _
,
_ `
UOMId
` e
=
f g
$num
h i
}
k l
}
l m
;
m n
var
ƒƒ 
plantSetUpDal
ƒƒ 
=
ƒƒ 
new
ƒƒ  #
PlantSetUpDal
ƒƒ$ 1
(
ƒƒ1 2
)
ƒƒ2 3
;
ƒƒ3 4
var
„„ 
result
„„ 
=
„„ 
true
„„ 
;
„„ 
Assert
…… 
.
…… 
	IsNotNull
…… 
(
…… 
result
…… #
)
……# $
;
……$ %
Assert
†† 
.
†† 
IsTrue
†† 
(
†† 
result
††  
)
††  !
;
††! "
}
‡‡ 	
[
ˆˆ 	

TestMethod
ˆˆ	 
]
ˆˆ 
public
‰‰ 
void
‰‰ %
GetAlarmDataReturnsList
‰‰ +
(
‰‰+ ,
)
‰‰, -
{
ŠŠ 	
var
‹‹ 
plantSetUpDal
‹‹ 
=
‹‹ 
new
‹‹  #
PlantSetUpDal
‹‹$ 1
(
‹‹1 2
)
‹‹2 3
;
‹‹3 4
var
ŒŒ 
result
ŒŒ 
=
ŒŒ 
plantSetUpDal
ŒŒ &
.
ŒŒ& '
GetAlaramData
ŒŒ' 4
(
ŒŒ4 5
)
ŒŒ5 6
;
ŒŒ6 7
Assert
 
.
 
	IsNotNull
 
(
 
result
 #
)
# $
;
$ %
Assert
 
.
 
IsTrue
 
(
 
result
  
.
  !
Count
! &
>
& '
$num
' (
)
( )
;
) *
Assert
 
.
 
IsInstanceOfType
 #
(
# $
result
$ *
,
* +
typeof
, 2
(
2 3
List
3 7
<
7 8

AlarmEnble
8 B
>
B C
)
C D
)
D E
;
E F
}
 	
[
‘‘ 	

TestMethod
‘‘	 
]
‘‘ 
public
’’ 
void
’’ (
UpdateAlarmInfoReturnsTrue
’’ .
(
’’. /
)
’’/ 0
{
““ 	
var
”” 
testData
”” 
=
”” 
new
”” 
List
”” #
<
””# $

AlarmEnble
””$ .
>
””. /
{
””0 1
new
””2 5

AlarmEnble
””6 @
{
””A B
AssetID
””C J
=
””K L
$num
””M N
,
””N O
	AssetName
””P Y
=
””Z [
$str
””\ c
,
””c d
	isEnabled
””e n
=
””o p
$str
””q t
,
””t u
TagID
””v {
=
””| }
$num
””~ 
,”” €
TagName”” ˆ
=””‰ Š
$str””‹ ”
,””” •
Target””• ›
=””œ 
$num”” ¤
}””¤ ¥
,””¥ ¦
new
•• 

AlarmEnble
•• 
{
•• 
AssetID
•• #
=
••$ %
$num
••& '
,
••' (
	AssetName
••) 2
=
••3 4
$str
••5 ?
,
••? @
	isEnabled
••A J
=
••K L
$str
••M P
,
••P Q
TagID
••R W
=
••X Y
$num
••Z [
,
••[ \
TagName
••] d
=
••e f
$str
••g q
,
••q r
Target
••r x
=
••y z
$num••{ 
}•• ‚
}••ƒ „
;••„ …
var
—— 
plantSetUpDal
—— 
=
—— 
new
——  #
PlantSetUpDal
——$ 1
(
——1 2
)
——2 3
;
——3 4
var
˜˜ 
result
˜˜ 
=
˜˜ 
true
˜˜ 
;
˜˜ 
Assert
™™ 
.
™™ 
	IsNotNull
™™ 
(
™™ 
result
™™ #
)
™™# $
;
™™$ %
Assert
šš 
.
šš 
IsTrue
šš 
(
šš 
result
šš  
)
šš  !
;
šš! "
}
›› 	
[
œœ 	

TestMethod
œœ	 
]
œœ 
public
 
void
 )
UpdateAlarmInfoReturnsFalse
 /
(
/ 0
)
0 1
{
 	
List
ŸŸ 
<
ŸŸ 

AlarmEnble
ŸŸ 
>
ŸŸ 
testData
ŸŸ %
=
ŸŸ& '
null
ŸŸ( ,
;
ŸŸ, -
var
¡¡ 
plantSetUpDal
¡¡ 
=
¡¡ 
new
¡¡  #
PlantSetUpDal
¡¡$ 1
(
¡¡1 2
)
¡¡2 3
;
¡¡3 4
var
¢¢ 
result
¢¢ 
=
¢¢ 
false
¢¢ 
;
¢¢ 
Assert
££ 
.
££ 
	IsNotNull
££ 
(
££ 
result
££ #
)
££# $
;
££$ %
Assert
¤¤ 
.
¤¤ 
IsFalse
¤¤ 
(
¤¤ 
result
¤¤ !
)
¤¤! "
;
¤¤" #
}
¥¥ 	
[
§§ 	

TestMethod
§§	 
]
§§ 
public
¨¨ 
void
¨¨ '
GetUserDetailsReturnsList
¨¨ -
(
¨¨- .
)
¨¨. /
{
©© 	
var
ªª 
plantSetUpDal
ªª 
=
ªª 
new
ªª  #
PlantSetUpDal
ªª$ 1
(
ªª1 2
)
ªª2 3
;
ªª3 4
var
«« 
result
«« 
=
«« 
plantSetUpDal
«« &
.
««& '
GetUserDetails
««' 5
(
««5 6
$str
««6 N
)
««N O
;
««O P
Assert
¬¬ 
.
¬¬ 
	IsNotNull
¬¬ 
(
¬¬ 
result
¬¬ #
)
¬¬# $
;
¬¬$ %
Assert
­­ 
.
­­ 
IsTrue
­­ 
(
­­ 
result
­­  
.
­­  !
Count
­­! &
>
­­' (
$num
­­) *
)
­­* +
;
­­+ ,
Assert
®® 
.
®® 
IsInstanceOfType
®® #
(
®®# $
result
®®$ *
,
®®* +
typeof
®®, 2
(
®®2 3
List
®®3 7
<
®®7 8
Assets
®®8 >
>
®®> ?
)
®®? @
)
®®@ A
;
®®A B
}
¯¯ 	
[
°° 	

TestMethod
°°	 
]
°° 
public
±± 
void
±± 

GetUOMList
±± 
(
±± 
)
±±  
{
²² 	
var
³³ 
plantSetUpDal
³³ 
=
³³ 
new
³³  #
PlantSetUpDal
³³$ 1
(
³³1 2
)
³³2 3
;
³³3 4
var
´´ 
result
´´ 
=
´´ 
plantSetUpDal
´´ &
.
´´& '
GetUOMs
´´' .
(
´´. /
)
´´/ 0
;
´´0 1
Assert
µµ 
.
µµ 
	IsNotNull
µµ 
(
µµ 
result
µµ #
)
µµ# $
;
µµ$ %
Assert
¶¶ 
.
¶¶ 
IsTrue
¶¶ 
(
¶¶ 
result
¶¶  
.
¶¶  !
Count
¶¶! &
>
¶¶' (
$num
¶¶) *
)
¶¶* +
;
¶¶+ ,
Assert
·· 
.
·· 
IsInstanceOfType
·· #
(
··# $
result
··$ *
,
··* +
typeof
··, 2
(
··2 3
List
··3 7
<
··7 8
Details
··8 ?
>
··? @
)
··@ A
)
··A B
;
··B C
}
¸¸ 	
[
¹¹ 	

TestMethod
¹¹	 
]
¹¹ 
public
ºº 
void
ºº 
GetDeviceId
ºº 
(
ºº  
)
ºº  !
{
»» 	
var
¼¼ 

plantSetUp
¼¼ 
=
¼¼ 
new
¼¼  
PlantSetUpDal
¼¼! .
(
¼¼. /
)
¼¼/ 0
;
¼¼0 1
var
½½ 
result
½½ 
=
½½ 

plantSetUp
½½ #
.
½½# $
GetDeviceID
½½$ /
(
½½/ 0
)
½½0 1
;
½½1 2
Assert
¾¾ 
.
¾¾ 
	IsNotNull
¾¾ 
(
¾¾ 
result
¾¾ #
)
¾¾# $
;
¾¾$ %
Assert
¿¿ 
.
¿¿ 
IsTrue
¿¿ 
(
¿¿ 
result
¿¿  
.
¿¿  !
Count
¿¿! &
>
¿¿' (
$num
¿¿) *
)
¿¿* +
;
¿¿+ ,
Assert
ÀÀ 
.
ÀÀ 
IsInstanceOfType
ÀÀ #
(
ÀÀ# $
result
ÀÀ$ *
,
ÀÀ* +
typeof
ÀÀ, 2
(
ÀÀ2 3
List
ÀÀ3 7
<
ÀÀ7 8
Details
ÀÀ8 ?
>
ÀÀ? @
)
ÀÀ@ A
)
ÀÀA B
;
ÀÀB C
}
ÁÁ 	
[
ÂÂ 	

TestMethod
ÂÂ	 
]
ÂÂ 
public
ÃÃ 
void
ÃÃ 

GetUSDRate
ÃÃ 
(
ÃÃ 
)
ÃÃ  
{
ÄÄ 	
var
ÅÅ 

plantSetUp
ÅÅ 
=
ÅÅ 
new
ÅÅ  
PlantSetUpDal
ÅÅ! .
(
ÅÅ. /
)
ÅÅ/ 0
;
ÅÅ0 1
var
ÆÆ 
result
ÆÆ 
=
ÆÆ 

plantSetUp
ÆÆ #
.
ÆÆ# $

GetUSDRate
ÆÆ$ .
(
ÆÆ. /
)
ÆÆ/ 0
;
ÆÆ0 1
Assert
ÇÇ 
.
ÇÇ 
	IsNotNull
ÇÇ 
(
ÇÇ 
result
ÇÇ #
)
ÇÇ# $
;
ÇÇ$ %
Assert
ÈÈ 
.
ÈÈ 
IsTrue
ÈÈ 
(
ÈÈ 
result
ÈÈ  
>
ÈÈ! "
$num
ÈÈ# $
)
ÈÈ$ %
;
ÈÈ% &
Assert
ÉÉ 
.
ÉÉ !
IsNotInstanceOfType
ÉÉ &
(
ÉÉ& '
result
ÉÉ' -
,
ÉÉ- .
typeof
ÉÉ/ 5
(
ÉÉ5 6
List
ÉÉ6 :
<
ÉÉ: ;
Details
ÉÉ; B
>
ÉÉB C
)
ÉÉC D
)
ÉÉD E
;
ÉÉE F
}
ÊÊ 	
[
ËË 	

TestMethod
ËË	 
]
ËË 
public
ÌÌ 
void
ÌÌ 
GetCurrency
ÌÌ 
(
ÌÌ  
)
ÌÌ  !
{
ÍÍ 	
var
ÎÎ 

plantSetUp
ÎÎ 
=
ÎÎ 
new
ÎÎ  
PlantSetUpDal
ÎÎ! .
(
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
var
ÏÏ 
result
ÏÏ 
=
ÏÏ 

plantSetUp
ÏÏ #
.
ÏÏ# $
GetCurrency
ÏÏ$ /
(
ÏÏ/ 0
)
ÏÏ0 1
;
ÏÏ1 2
Assert
ĞĞ 
.
ĞĞ 
	IsNotNull
ĞĞ 
(
ĞĞ 
result
ĞĞ #
)
ĞĞ# $
;
ĞĞ$ %
Assert
ÑÑ 
.
ÑÑ 
IsTrue
ÑÑ 
(
ÑÑ 
result
ÑÑ  
.
ÑÑ  !
Count
ÑÑ! &
>
ÑÑ' (
$num
ÑÑ) *
)
ÑÑ* +
;
ÑÑ+ ,
Assert
ÒÒ 
.
ÒÒ 
IsInstanceOfType
ÒÒ #
(
ÒÒ# $
result
ÒÒ$ *
,
ÒÒ* +
typeof
ÒÒ, 2
(
ÒÒ2 3
List
ÒÒ3 7
<
ÒÒ7 8
Currency
ÒÒ8 @
>
ÒÒ@ A
)
ÒÒA B
)
ÒÒB C
;
ÒÒC D
}
ÓÓ 	
[
ÔÔ 	

TestMethod
ÔÔ	 
]
ÔÔ 
public
ÕÕ 
void
ÕÕ  
GetUpdatedCurrency
ÕÕ &
(
ÕÕ& '
)
ÕÕ' (
{
ÖÖ 	
var
×× 

plantSetUp
×× 
=
×× 
new
××  
PlantSetUpDal
××! .
(
××. /
)
××/ 0
;
××0 1
var
ØØ 
result
ØØ 
=
ØØ 

plantSetUp
ØØ #
.
ØØ# $ 
GetUpdatedCurrency
ØØ$ 6
(
ØØ6 7
)
ØØ7 8
;
ØØ8 9
Assert
ÙÙ 
.
ÙÙ 
	IsNotNull
ÙÙ 
(
ÙÙ 
result
ÙÙ #
)
ÙÙ# $
;
ÙÙ$ %
Assert
ÚÚ 
.
ÚÚ 
IsTrue
ÚÚ 
(
ÚÚ 
result
ÚÚ  
.
ÚÚ  !
Length
ÚÚ! '
>
ÚÚ( )
$num
ÚÚ* +
)
ÚÚ+ ,
;
ÚÚ, -
Assert
ÛÛ 
.
ÛÛ !
IsNotInstanceOfType
ÛÛ &
(
ÛÛ& '
result
ÛÛ' -
,
ÛÛ- .
typeof
ÛÛ/ 5
(
ÛÛ5 6
List
ÛÛ6 :
<
ÛÛ: ;
Details
ÛÛ; B
>
ÛÛB C
)
ÛÛC D
)
ÛÛD E
;
ÛÛE F
}
ÜÜ 	
[
İİ 	

TestMethod
İİ	 
]
İİ 
public
ŞŞ 
void
ŞŞ 
AddEmailConfig
ŞŞ "
(
ŞŞ" #
)
ŞŞ# $
{
ßß 	
var
àà 
testData
àà 
=
àà 
new
àà 
List
àà #
<
àà# $ 
EmailConfiguration
àà$ 6
>
àà6 7
{
àà8 9
new
àà: = 
EmailConfiguration
àà> P
{
ààQ R

smtpServer
ààS ]
=
àà^ _
$str
àà` l
,
ààl m
smtpPort
ààn v
=
ààw x
$num
àày {
,
àà{ |
smtpUserNameàà} ‰
=ààŠ ‹
$strààŒ 
,àà ‘
smtpPasswordàà’ 
=ààŸ  
$stràà¡ §
}àà¨ ©
}ààª «
;àà« ¬
var
áá 
plantSetUpDal
áá 
=
áá 
new
áá  #
PlantSetUpDal
áá$ 1
(
áá1 2
)
áá2 3
;
áá3 4
var
ââ 
result
ââ 
=
ââ 
true
ââ 
;
ââ 
Assert
ãã 
.
ãã 
	IsNotNull
ãã 
(
ãã 
result
ãã #
)
ãã# $
;
ãã$ %
Assert
ää 
.
ää 
IsTrue
ää 
(
ää 
result
ää  
)
ää  !
;
ää! "
}
åå 	
[
ææ 	

TestMethod
ææ	 
]
ææ 
public
çç 
void
çç (
UpdateCurrencyReturnsFalse
çç .
(
çç. /
)
çç/ 0
{
èè 	
string
éé 
testData
éé 
=
éé 
$str
éé #
;
éé# $
var
êê 
plantSetUpDal
êê 
=
êê 
new
êê  #
PlantSetUpDal
êê$ 1
(
êê1 2
)
êê2 3
;
êê3 4
var
ëë 
result
ëë 
=
ëë 
false
ëë 
;
ëë 
Assert
ìì 
.
ìì 
	IsNotNull
ìì 
(
ìì 
result
ìì #
)
ìì# $
;
ìì$ %
Assert
íí 
.
íí 
IsFalse
íí 
(
íí 
result
íí !
)
íí! "
;
íí" #
}
îî 	
[
ïï 	

TestMethod
ïï	 
]
ïï 
public
ğğ 
void
ğğ  
AddUomReturnsFalse
ğğ &
(
ğğ& '
)
ğğ' (
{
ññ 	
string
òò 
testData
òò 
=
òò 
$str
òò #
;
òò# $
var
óó 
plantSetUpDal
óó 
=
óó 
new
óó  #
PlantSetUpDal
óó$ 1
(
óó1 2
)
óó2 3
;
óó3 4
var
ôô 
result
ôô 
=
ôô 
false
ôô 
;
ôô 
Assert
õõ 
.
õõ 
	IsNotNull
õõ 
(
õõ 
result
õõ #
)
õõ# $
;
õõ$ %
Assert
öö 
.
öö 
IsFalse
öö 
(
öö 
result
öö !
)
öö! "
;
öö" #
}
÷÷ 	
[
øø 	

TestMethod
øø	 
]
øø 
public
ùù 
void
ùù %
AddDeviceIdReturnsFalse
ùù +
(
ùù+ ,
)
ùù, -
{
úú 	
string
ûû 
testData
ûû 
=
ûû 
$str
ûû *
;
ûû* +
var
üü 
plantSetUpDal
üü 
=
üü 
new
üü  #
PlantSetUpDal
üü$ 1
(
üü1 2
)
üü2 3
;
üü3 4
var
ıı 
result
ıı 
=
ıı 
false
ıı 
;
ıı 
Assert
şş 
.
şş 
	IsNotNull
şş 
(
şş 
result
şş #
)
şş# $
;
şş$ %
Assert
ÿÿ 
.
ÿÿ 
IsFalse
ÿÿ 
(
ÿÿ 
result
ÿÿ !
)
ÿÿ! "
;
ÿÿ" #
}
€€ 	
[
 	

TestMethod
	 
]
 
public
‚‚ 
void
‚‚ ,
AddUSDExchnageRateReturnsFalse
‚‚ 2
(
‚‚2 3
)
‚‚3 4
{
ƒƒ 	
var
‡‡ 
result
‡‡ 
=
‡‡ 
false
‡‡ 
;
‡‡ 
Assert
ˆˆ 
.
ˆˆ 
	IsNotNull
ˆˆ 
(
ˆˆ 
result
ˆˆ #
)
ˆˆ# $
;
ˆˆ$ %
Assert
‰‰ 
.
‰‰ 
IsFalse
‰‰ 
(
‰‰ 
result
‰‰ !
)
‰‰! "
;
‰‰" #
}
ŠŠ 	
[
‹‹ 	

TestMethod
‹‹	 
]
‹‹ 
public
ŒŒ 
void
ŒŒ 
AddUserMapping
ŒŒ "
(
ŒŒ" #
)
ŒŒ# $
{
 	
string
 
[
 
]
 
arry
 
=
 
{
 
$str
 !
,
! "
$str
# &
,
& '
$str
( +
}
, -
;
- .
var
 

plantsetup
 
=
 
new
  
PlantSetUpDal
! .
(
. /
)
/ 0
;
0 1
var
 
result
 
=
 
false
 
;
 
Assert
‘‘ 
.
‘‘ 
	IsNotNull
‘‘ 
(
‘‘ 
result
‘‘ #
)
‘‘# $
;
‘‘$ %
Assert
’’ 
.
’’ 
IsFalse
’’ 
(
’’ 
result
’’ !
)
’’! "
;
’’" #
}
““ 	
[
”” 	

TestMethod
””	 
]
”” 
public
•• 
void
•• 
AddEmailList
••  
(
••  !
)
••! "
{
–– 	
string
—— 
[
—— 
]
—— 
email
—— 
=
—— 
{
—— 
$str
—— -
,
——- .
$str
——/ >
}
——? @
;
——@ A
var
˜˜ 

plantSetup
˜˜ 
=
˜˜ 
new
˜˜  
PlantSetUpDal
˜˜! .
(
˜˜. /
)
˜˜/ 0
;
˜˜0 1
var
™™ 
result
™™ 
=
™™ 
false
™™ 
;
™™ 
Assert
›› 
.
›› 
	IsNotNull
›› 
(
›› 
result
›› #
)
››# $
;
››$ %
Assert
œœ 
.
œœ 
IsFalse
œœ 
(
œœ 
result
œœ !
)
œœ! "
;
œœ" #
}
 	
}
 
}ŸŸ íÑ
‚D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\PlantSetUpManagerUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class &
PlantSetUpManagerUnitTests +
{ 
[ 	

TestMethod	 
] 
public 
void +
AddConsumptionActualReturnsTrue 3
(3 4
)4 5
{ 	
var 
testData 
= 
TestData #
.# $
TestAnnualData$ 2
(2 3
)3 4
;4 5
Mock 
< 
IPlantSetupDal 
>  
mock! %
=& '
new( +
Mock, 0
<0 1
IPlantSetupDal1 ?
>? @
(@ A
)A B
;B C
mock 
. 
Setup 
( 
x 
=> 
x 
.  
AddConsumptionActual 2
(2 3
testData3 ;
,; <
$str= C
,C D
$numE F
,F G
$strH U
)U V
)V W
.W X
ReturnsX _
(_ `
true` d
)d e
;e f
var 
plantManager 
= 
new "
PlantSetUpManager# 4
(4 5
mock5 9
.9 :
Object: @
)@ A
;A B
var 
result 
= 
plantManager %
.% & 
AddConsumptionActual& :
(: ;
testData; C
,C D
$strE K
,K L
$numM N
,N O
$strP ]
)] ^
;^ _
Assert 
. 
	IsNotNull 
( 
result #
)# $
;$ %
Assert 
. 
IsTrue 
( 
result  
)  !
;! "
} 	
[ 	

TestMethod	 
] 
public   
void   ,
 AddConsumptionActualReturnsFalse   4
(  4 5
)  5 6
{!! 	
List"" 
<"" 
AnnualDetails"" 
>"" 
testData""  (
="") *
null""+ /
;""/ 0
Mock## 
<## 
IPlantSetupDal## 
>##  
mock##! %
=##& '
new##( +
Mock##, 0
<##0 1
IPlantSetupDal##1 ?
>##? @
(##@ A
)##A B
;##B C
mock$$ 
.$$ 
Setup$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$  
AddConsumptionActual$$ 2
($$2 3
testData$$3 ;
,$$; <
$str$$= C
,$$C D
$num$$E F
,$$F G
$str$$H U
)$$U V
)$$V W
.$$W X
Returns$$X _
($$_ `
true$$` d
)$$d e
;$$e f
var%% 
plantManager%% 
=%% 
new%% "
PlantSetUpManager%%# 4
(%%4 5
mock%%5 9
.%%9 :
Object%%: @
)%%@ A
;%%A B
var&& 
result&& 
=&& 
plantManager&& %
.&&% & 
AddConsumptionActual&&& :
(&&: ;
testData&&; C
,&&C D
$str&&E K
,&&K L
$num&&M N
,&&N O
$str&&P ]
)&&] ^
;&&^ _
Assert'' 
.'' 
	IsNotNull'' 
('' 
result'' #
)''# $
;''$ %
Assert(( 
.(( 
IsFalse(( 
((( 
result(( !
)((! "
;((" #
})) 	
[** 	

TestMethod**	 
]** 
public++ 
void++ ,
 AddMonthlyConsumptionReturnsTrue++ 4
(++4 5
)++5 6
{,, 	
var-- 
testData-- 
=-- 
new-- 
List-- #
<--# $
MonthlyConsumption--$ 6
>--6 7
{--8 9
new--: =
MonthlyConsumption--> P
{--Q R
Consumption--S ^
=--_ `
$num--a f
,--f g
Cost--h l
=--m n
$num--o t
,--t u
UOM--v y
=--z {
$str	--| 
,
-- ‚
UOMID
--ƒ ˆ
=
--‰ Š
$num
--‹ Œ
,
--Œ 
WAGES
-- “
=
--” •
$str
--– £
,
--£ ¤
WagesId
--¥ ¬
=
--­ ®
$num
--¯ °
}
--± ²
,
--² ³
new.. 
MonthlyConsumption.. &
{..' (
Consumption..) 4
=..5 6
$num..7 <
,..< =
Cost..> B
=..C D
$num..E J
,..J K
UOM..L O
=..P Q
$str..R W
,..W X
UOMID..Y ^
=.._ `
$num..a b
,..b c
WAGES..d i
=..j k
$str..l y
,..y z
WagesId	..{ ‚
=
..ƒ „
$num
..… †
}
..‡ ˆ
}// 
;// 
Mock00 
<00 
IPlantSetupDal00 
>00  
mock00! %
=00& '
new00( +
Mock00, 0
<000 1
IPlantSetupDal001 ?
>00? @
(00@ A
)00A B
;00B C
mock11 
.11 
Setup11 
(11 
x11 
=>11 
x11 
.11 !
AddMonthlyConsumption11 3
(113 4
testData114 <
,11< =
$str11> D
,11D E
$num11F G
,11G H
$num11I J
)11J K
)11K L
.11L M
Returns11M T
(11T U
true11U Y
)11Y Z
;11Z [
var22 
plantManager22 
=22 
new22 "
PlantSetUpManager22# 4
(224 5
mock225 9
.229 :
Object22: @
)22@ A
;22A B
var33 
result33 
=33 
plantManager33 %
.33% &!
AddMonthlyConsumption33& ;
(33; <
testData33< D
,33D E
$str33F L
,33L M
$num33N O
,33O P
$num33Q R
)33R S
;33S T
Assert44 
.44 
	IsNotNull44 
(44 
result44 #
)44# $
;44$ %
Assert55 
.55 
IsTrue55 
(55 
result55  
)55  !
;55! "
}66 	
[88 	

TestMethod88	 
]88 
public99 
void99 -
!AddMonthlyConsumptionReturnsFalse99 5
(995 6
)996 7
{:: 	
List;; 
<;; 
MonthlyConsumption;; #
>;;# $
testData;;% -
=;;. /
null;;0 4
;;;4 5
Mock<< 
<<< 
IPlantSetupDal<< 
><<  
mock<<! %
=<<& '
new<<( +
Mock<<, 0
<<<0 1
IPlantSetupDal<<1 ?
><<? @
(<<@ A
)<<A B
;<<B C
mock== 
.== 
Setup== 
(== 
x== 
=>== 
x== 
.== !
AddMonthlyConsumption== 3
(==3 4
testData==4 <
,==< =
$str==> D
,==D E
$num==F G
,==G H
$num==I J
)==J K
)==K L
.==L M
Returns==M T
(==T U
true==U Y
)==Y Z
;==Z [
var>> 
plantManager>> 
=>> 
new>> "
PlantSetUpManager>># 4
(>>4 5
mock>>5 9
.>>9 :
Object>>: @
)>>@ A
;>>A B
var?? 
result?? 
=?? 
plantManager?? %
.??% &!
AddMonthlyConsumption??& ;
(??; <
testData??< D
,??D E
$str??F L
,??L M
$num??N O
,??O P
$num??Q R
)??R S
;??S T
Assert@@ 
.@@ 
	IsNotNull@@ 
(@@ 
result@@ #
)@@# $
;@@$ %
AssertAA 
.AA 
IsFalseAA 
(AA 
resultAA !
)AA! "
;AA" #
}BB 	
[CC 	

TestMethodCC	 
]CC 
publicDD 
voidDD +
GetConsumptionActualReturnsListDD 3
(DD3 4
)DD4 5
{EE 	
varFF 
testDataFF 
=FF 
TestDataFF #
.FF# $
TestAnnualDataFF$ 2
(FF2 3
)FF3 4
;FF4 5
MockGG 
<GG 
IPlantSetupDalGG 
>GG  
mockGG! %
=GG& '
newGG( +
MockGG, 0
<GG0 1
IPlantSetupDalGG1 ?
>GG? @
(GG@ A
)GGA B
;GGB C
mockHH 
.HH 
SetupHH 
(HH 
xHH 
=>HH 
xHH 
.HH  
GetConsumptionActualHH 2
(HH2 3
$numHH3 7
,HH7 8
$numHH9 :
,HH: ;
$strHH< I
)HHI J
)HHJ K
.HHK L
ReturnsHHL S
(HHS T
testDataHHT \
)HH\ ]
;HH] ^
varII 
plantManagerII 
=II 
newII "
PlantSetUpManagerII# 4
(II4 5
mockII5 9
.II9 :
ObjectII: @
)II@ A
;IIA B
varJJ 
resultJJ 
=JJ 
plantManagerJJ %
.JJ% & 
GetConsumptionActualJJ& :
(JJ: ;
$numJJ; ?
,JJ? @
$numJJA B
,JJB C
$strJJD Q
)JJQ R
;JJR S
AssertKK 
.KK 
	IsNotNullKK 
(KK 
resultKK #
)KK# $
;KK$ %
CollectionAssertLL 
.LL 
AreEquivalentLL *
(LL* +
testDataLL+ 3
,LL3 4
resultLL5 ;
)LL; <
;LL< =
}MM 	
[NN 	

TestMethodNN	 
]NN 
publicOO 
voidOO %
GetWageMappingReturnsListOO -
(OO- .
)OO. /
{PP 	
varQQ 
testDataQQ 
=QQ 
TestDataQQ #
.QQ# $
getWagesUOMDataQQ$ 3
(QQ3 4
)QQ4 5
;QQ5 6
MockRR 
<RR 
IPlantSetupDalRR 
>RR  
mockRR! %
=RR& '
newRR( +
MockRR, 0
<RR0 1
IPlantSetupDalRR1 ?
>RR? @
(RR@ A
)RRA B
;RRB C
mockSS 
.SS 
SetupSS 
(SS 
xSS 
=>SS 
xSS 
.SS 
GetWageMappingSS ,
(SS, -
)SS- .
)SS. /
.SS/ 0
ReturnsSS0 7
(SS7 8
testDataSS8 @
)SS@ A
;SSA B
varTT 
plantManagerTT 
=TT 
newTT "
PlantSetUpManagerTT# 4
(TT4 5
mockTT5 9
.TT9 :
ObjectTT: @
)TT@ A
;TTA B
varUU 
resultUU 
=UU 
plantManagerUU %
.UU% &
GetWageMappingUU& 4
(UU4 5
)UU5 6
;UU6 7
AssertVV 
.VV 
	IsNotNullVV 
(VV 
resultVV #
)VV# $
;VV$ %
CollectionAssertWW 
.WW 
AreEquivalentWW *
(WW* +
testDataWW+ 3
,WW3 4
resultWW5 ;
)WW; <
;WW< =
}XX 	
[gg 	

TestMethodgg	 
]gg 
publichh 
voidhh +
GetMonthlySolidwasteReturnsListhh 3
(hh3 4
)hh4 5
{ii 	
varjj 
testDatajj 
=jj 
newjj 
Listjj #
<jj# $
MonthlyConsumptionjj$ 6
>jj6 7
{jj8 9
newjj: =
MonthlyConsumptionjj> P
{jjQ R
ConsumptionjjS ^
=jj_ `
$numjja f
,jjf g
Costjjh l
=jjm n
$numjjo t
,jjt u
UOMjjv y
=jjz {
$str	jj| 
,
jj ‚
UOMID
jjƒ ˆ
=
jj‰ Š
$num
jj‹ Œ
,
jjŒ 
WAGES
jj “
=
jj” •
$str
jj– £
,
jj£ ¤
WagesId
jj¥ ¬
=
jj­ ®
$num
jj¯ °
}
jj± ²
,
jj² ³
newkk 
MonthlyConsumptionkk &
{kk' (
Consumptionkk) 4
=kk5 6
$numkk7 <
,kk< =
Costkk> B
=kkC D
$numkkE J
,kkJ K
UOMkkL O
=kkP Q
$strkkR W
,kkW X
UOMIDkkY ^
=kk_ `
$numkka b
,kkb c
WAGESkkd i
=kkj k
$strkkl y
,kky z
WagesId	kk{ ‚
=
kkƒ „
$num
kk… †
}
kk‡ ˆ
}ll 
;ll 
Mockmm 
<mm 
IPlantSetupDalmm 
>mm  
mockmm! %
=mm& '
newmm( +
Mockmm, 0
<mm0 1
IPlantSetupDalmm1 ?
>mm? @
(mm@ A
)mmA B
;mmB C
mocknn 
.nn 
Setupnn 
(nn 
xnn 
=>nn 
xnn 
.nn  
GetMonthlySolidwastenn 2
(nn2 3
$numnn3 4
,nn4 5
$numnn6 7
)nn7 8
)nn8 9
.nn9 :
Returnsnn: A
(nnA B
testDatannB J
)nnJ K
;nnK L
varoo 
plantManageroo 
=oo 
newoo "
PlantSetUpManageroo# 4
(oo4 5
mockoo5 9
.oo9 :
Objectoo: @
)oo@ A
;ooA B
varpp 
resultpp 
=pp 
plantManagerpp %
.pp% & 
GetMonthlySolidwastepp& :
(pp: ;
$numpp; <
,pp< =
$numpp> ?
)pp? @
;pp@ A
Assertqq 
.qq 
	IsNotNullqq 
(qq 
resultqq #
)qq# $
;qq$ %
CollectionAssertrr 
.rr 
AreEquivalentrr *
(rr* +
testDatarr+ 3
,rr3 4
resultrr5 ;
)rr; <
;rr< =
}ss 	
[tt 	

TestMethodtt	 
]tt 
publicuu 
voiduu &
SaveWageMappingReturnsTrueuu .
(uu. /
)uu/ 0
{vv 	
Mockww 
<ww 
IPlantSetupDalww 
>ww  
mockww! %
=ww& '
newww( +
Mockww, 0
<ww0 1
IPlantSetupDalww1 ?
>ww? @
(ww@ A
)wwA B
;wwB C
mockxx 
.xx 
Setupxx 
(xx 
xxx 
=>xx 
xxx 
.xx 
SaveWageMappingxx -
(xx- .
$strxx. 4
,xx4 5
$numxx6 7
,xx7 8
$numxx9 :
,xx: ;
$numxx; <
)xx< =
)xx= >
.xx> ?
Returnsxx? F
(xxF G
truexxG K
)xxK L
;xxL M
varyy 
plantManageryy 
=yy 
newyy "
PlantSetUpManageryy# 4
(yy4 5
mockyy5 9
.yy9 :
Objectyy: @
)yy@ A
;yyA B
varzz 
resultzz 
=zz 
plantManagerzz %
.zz% &
SaveWageMappingzz& 5
(zz5 6
$strzz6 <
,zz< =
$numzz> ?
,zz? @
$numzzA B
,zzB C
$numzzC D
)zzD E
;zzE F
Assert{{ 
.{{ 
	IsNotNull{{ 
({{ 
result{{ #
){{# $
;{{$ %
Assert|| 
.|| 
IsTrue|| 
(|| 
result||  
)||  !
;||! "
}}} 	
[~~ 	

TestMethod~~	 
]~~ 
public 
void '
SaveWageMappingReturnsFalse /
(/ 0
)0 1
{
€€ 	
Mock
 
<
 
IPlantSetupDal
 
>
  
mock
! %
=
& '
new
( +
Mock
, 0
<
0 1
IPlantSetupDal
1 ?
>
? @
(
@ A
)
A B
;
B C
mock
‚‚ 
.
‚‚ 
Setup
‚‚ 
(
‚‚ 
x
‚‚ 
=>
‚‚ 
x
‚‚ 
.
‚‚ 
SaveWageMapping
‚‚ -
(
‚‚- .
$str
‚‚. 0
,
‚‚0 1
$num
‚‚2 3
,
‚‚3 4
$num
‚‚5 6
,
‚‚6 7
$num
‚‚7 8
)
‚‚8 9
)
‚‚9 :
.
‚‚: ;
Returns
‚‚; B
(
‚‚B C
true
‚‚C G
)
‚‚G H
;
‚‚H I
var
ƒƒ 
plantManager
ƒƒ 
=
ƒƒ 
new
ƒƒ "
PlantSetUpManager
ƒƒ# 4
(
ƒƒ4 5
mock
ƒƒ5 9
.
ƒƒ9 :
Object
ƒƒ: @
)
ƒƒ@ A
;
ƒƒA B
var
„„ 
result
„„ 
=
„„ 
plantManager
„„ %
.
„„% &
SaveWageMapping
„„& 5
(
„„5 6
$str
„„6 <
,
„„< =
$num
„„> ?
,
„„? @
$num
„„A B
,
„„B C
$num
„„C D
)
„„D E
;
„„E F
Assert
…… 
.
…… 
	IsNotNull
…… 
(
…… 
result
…… #
)
……# $
;
……$ %
Assert
†† 
.
†† 
IsFalse
†† 
(
†† 
result
†† !
)
††! "
;
††" #
}
‡‡ 	
[
ˆˆ 	

TestMethod
ˆˆ	 
]
ˆˆ 
public
‰‰ 
void
‰‰ ,
GetProductionActualReturnsList
‰‰ 2
(
‰‰2 3
)
‰‰3 4
{
ŠŠ 	
var
‹‹ 
testData
‹‹ 
=
‹‹ 
TestData
‹‹ #
.
‹‹# $
TestAnnualData
‹‹$ 2
(
‹‹2 3
)
‹‹3 4
;
‹‹4 5
Mock
ŒŒ 
<
ŒŒ 
IPlantSetupDal
ŒŒ 
>
ŒŒ  
mock
ŒŒ! %
=
ŒŒ& '
new
ŒŒ( +
Mock
ŒŒ, 0
<
ŒŒ0 1
IPlantSetupDal
ŒŒ1 ?
>
ŒŒ? @
(
ŒŒ@ A
)
ŒŒA B
;
ŒŒB C
mock
 
.
 
Setup
 
(
 
x
 
=>
 
x
 
.
 !
GetProductionActual
 1
(
1 2
$num
2 6
,
6 7
$str
8 M
)
M N
)
N O
.
O P
Returns
P W
(
W X
testData
X `
)
` a
;
a b
var
 
plantManager
 
=
 
new
 "
PlantSetUpManager
# 4
(
4 5
mock
5 9
.
9 :
Object
: @
)
@ A
;
A B
var
 
result
 
=
 
plantManager
 %
.
% &!
GetProductionActual
& 9
(
9 :
$num
: >
,
> ?
$str
@ U
)
U V
;
V W
Assert
 
.
 
	IsNotNull
 
(
 
result
 #
)
# $
;
$ %
CollectionAssert
‘‘ 
.
‘‘ 
AreEquivalent
‘‘ *
(
‘‘* +
testData
‘‘+ 3
,
‘‘3 4
result
‘‘5 ;
)
‘‘; <
;
‘‘< =
}
’’ 	
[
““ 	

TestMethod
““	 
]
““ 
public
”” 
void
”” &
GetDepartmentReturnsList
”” ,
(
””, -
)
””- .
{
•• 	
var
–– 
testData
–– 
=
–– 
new
–– 
List
–– #
<
––# $
Details
––$ +
>
––+ ,
{
––- .
new
—— 
Details
—— 
{
—— 
ID
—— 
=
—— 
$num
—— 
,
——  
Name
——  $
=
——% &
$str
——' .
}
——. /
,
——/ 0
new
——0 3
Details
——4 ;
{
——< =
ID
——> @
=
——A B
$num
——C D
,
——D E
Name
——E I
=
——J K
$str
——L T
}
——T U
}
——V W
;
——W X
Mock
˜˜ 
<
˜˜ 
IPlantSetupDal
˜˜ 
>
˜˜  
mock
˜˜! %
=
˜˜& '
new
˜˜( +
Mock
˜˜, 0
<
˜˜0 1
IPlantSetupDal
˜˜1 ?
>
˜˜? @
(
˜˜@ A
)
˜˜A B
;
˜˜B C
mock
™™ 
.
™™ 
Setup
™™ 
(
™™ 
x
™™ 
=>
™™ 
x
™™ 
.
™™ 
GetDepartment
™™ +
(
™™+ ,
)
™™, -
)
™™- .
.
™™. /
Returns
™™/ 6
(
™™6 7
testData
™™7 ?
)
™™? @
;
™™@ A
var
šš 
plantManager
šš 
=
šš 
new
šš "
PlantSetUpManager
šš# 4
(
šš4 5
mock
šš5 9
.
šš9 :
Object
šš: @
)
šš@ A
;
ššA B
var
›› 
result
›› 
=
›› 
plantManager
›› %
.
››% &
GetDepartment
››& 3
(
››3 4
)
››4 5
;
››5 6
Assert
œœ 
.
œœ 
	IsNotNull
œœ 
(
œœ 
result
œœ #
)
œœ# $
;
œœ$ %
CollectionAssert
 
.
 
AreEquivalent
 *
(
* +
testData
+ 3
,
3 4
result
5 ;
)
; <
;
< =
}
 	
[
ŸŸ 	

TestMethod
ŸŸ	 
]
ŸŸ 
public
   
void
   &
GetSolidWasteReturnsList
   ,
(
  , -
)
  - .
{
¡¡ 	
var
¢¢ 
testData
¢¢ 
=
¢¢ 
TestData
¢¢ #
.
¢¢# $
TestAnnualData
¢¢$ 2
(
¢¢2 3
)
¢¢3 4
;
¢¢4 5
Mock
££ 
<
££ 
IPlantSetupDal
££ 
>
££  
mock
££! %
=
££& '
new
££( +
Mock
££, 0
<
££0 1
IPlantSetupDal
££1 ?
>
££? @
(
££@ A
)
££A B
;
££B C
mock
¤¤ 
.
¤¤ 
Setup
¤¤ 
(
¤¤ 
x
¤¤ 
=>
¤¤ 
x
¤¤ 
.
¤¤ 
GetSolidWaste
¤¤ +
(
¤¤+ ,
$num
¤¤, 0
,
¤¤0 1
$str
¤¤2 >
)
¤¤> ?
)
¤¤? @
.
¤¤@ A
Returns
¤¤A H
(
¤¤H I
testData
¤¤I Q
)
¤¤Q R
;
¤¤R S
var
¥¥ 
plantManager
¥¥ 
=
¥¥ 
new
¥¥ "
PlantSetUpManager
¥¥# 4
(
¥¥4 5
mock
¥¥5 9
.
¥¥9 :
Object
¥¥: @
)
¥¥@ A
;
¥¥A B
var
¦¦ 
result
¦¦ 
=
¦¦ 
plantManager
¦¦ %
.
¦¦% &
GetSolidWaste
¦¦& 3
(
¦¦3 4
$num
¦¦4 8
,
¦¦8 9
$str
¦¦: F
)
¦¦F G
;
¦¦G H
Assert
§§ 
.
§§ 
	IsNotNull
§§ 
(
§§ 
result
§§ #
)
§§# $
;
§§$ %
CollectionAssert
¨¨ 
.
¨¨ 
AreEquivalent
¨¨ *
(
¨¨* +
testData
¨¨+ 3
,
¨¨3 4
result
¨¨5 ;
)
¨¨; <
;
¨¨< =
}
©© 	
[
«« 	

TestMethod
««	 
]
«« 
public
¬¬ 
void
¬¬ +
GetDailyProductionReturnsList
¬¬ 1
(
¬¬1 2
)
¬¬2 3
{
­­ 	
var
®® 
testData
®® 
=
®® 
new
®® 
List
®® #
<
®®# $
ProductionDaily
®®$ 3
>
®®3 4
{
®®5 6
new
®®7 :
ProductionDaily
®®; J
{
®®K L
AssetId
®®M T
=
®®U V
$num
®®W X
,
®®X Y

DepartName
®®Z d
=
®®e f
$str
®®g n
,
®®n o
Total
®®p u
=
®®v w
$num
®®x 
,®® €
UOM®® „
=®®… †
$str®®‡ Œ
,®®Œ 
UOMId®® “
=®®” •
$num®®– —
}®®˜ ™
}®®š ›
;®®› œ
Mock
¯¯ 
<
¯¯ 
IPlantSetupDal
¯¯ 
>
¯¯  
mock
¯¯! %
=
¯¯& '
new
¯¯( +
Mock
¯¯, 0
<
¯¯0 1
IPlantSetupDal
¯¯1 ?
>
¯¯? @
(
¯¯@ A
)
¯¯A B
;
¯¯B C
mock
°° 
.
°° 
Setup
°° 
(
°° 
x
°° 
=>
°° 
x
°° 
.
°°  
GetProductionDaily
°° 0
(
°°0 1
$str
°°1 =
)
°°= >
)
°°> ?
.
°°? @
Returns
°°@ G
(
°°G H
testData
°°H P
)
°°P Q
;
°°Q R
var
±± 
plantManager
±± 
=
±± 
new
±± "
PlantSetUpManager
±±# 4
(
±±4 5
mock
±±5 9
.
±±9 :
Object
±±: @
)
±±@ A
;
±±A B
var
²² 
result
²² 
=
²² 
plantManager
²² %
.
²²% & 
GetDailyProduction
²²& 8
(
²²8 9
$str
²²9 E
)
²²E F
;
²²F G
Assert
³³ 
.
³³ 
	IsNotNull
³³ 
(
³³ 
result
³³ #
)
³³# $
;
³³$ %
CollectionAssert
´´ 
.
´´ 
AreEquivalent
´´ *
(
´´* +
testData
´´+ 3
,
´´3 4
result
´´5 ;
)
´´; <
;
´´< =
}
µµ 	
[
¶¶ 	

TestMethod
¶¶	 
]
¶¶ 
public
·· 
void
·· +
GetSolidWasteDailyReturnsList
·· 1
(
··1 2
)
··2 3
{
¸¸ 	
var
¹¹ 
testData
¹¹ 
=
¹¹ 
new
¹¹ 
List
¹¹ #
<
¹¹# $
ProductionDaily
¹¹$ 3
>
¹¹3 4
{
¹¹5 6
new
¹¹7 :
ProductionDaily
¹¹; J
{
¹¹K L
AssetId
¹¹M T
=
¹¹U V
$num
¹¹W X
,
¹¹X Y

DepartName
¹¹Z d
=
¹¹e f
$str
¹¹g n
,
¹¹n o
Total
¹¹p u
=
¹¹v w
$num
¹¹x 
,¹¹ €
UOM¹¹ „
=¹¹… †
$str¹¹‡ Œ
,¹¹Œ 
UOMId¹¹ “
=¹¹” •
$num¹¹– —
}¹¹˜ ™
}¹¹š ›
;¹¹› œ
Mock
ºº 
<
ºº 
IPlantSetupDal
ºº 
>
ºº  
mock
ºº! %
=
ºº& '
new
ºº( +
Mock
ºº, 0
<
ºº0 1
IPlantSetupDal
ºº1 ?
>
ºº? @
(
ºº@ A
)
ººA B
;
ººB C
mock
»» 
.
»» 
Setup
»» 
(
»» 
x
»» 
=>
»» 
x
»» 
.
»»  
GetSolidWasteDaily
»» 0
(
»»0 1
$str
»»1 =
)
»»= >
)
»»> ?
.
»»? @
Returns
»»@ G
(
»»G H
testData
»»H P
)
»»P Q
;
»»Q R
var
¼¼ 
plantManager
¼¼ 
=
¼¼ 
new
¼¼ "
PlantSetUpManager
¼¼# 4
(
¼¼4 5
mock
¼¼5 9
.
¼¼9 :
Object
¼¼: @
)
¼¼@ A
;
¼¼A B
var
½½ 
result
½½ 
=
½½ 
plantManager
½½ %
.
½½% & 
GetSolidWasteDaily
½½& 8
(
½½8 9
$str
½½9 E
)
½½E F
;
½½F G
Assert
¾¾ 
.
¾¾ 
	IsNotNull
¾¾ 
(
¾¾ 
result
¾¾ #
)
¾¾# $
;
¾¾$ %
CollectionAssert
¿¿ 
.
¿¿ 
AreEquivalent
¿¿ *
(
¿¿* +
testData
¿¿+ 3
,
¿¿3 4
result
¿¿5 ;
)
¿¿; <
;
¿¿< =
}
ÀÀ 	
[
ÁÁ 	

TestMethod
ÁÁ	 
]
ÁÁ 
public
ÂÂ 
void
ÂÂ ,
AddProductionActualReturnsTrue
ÂÂ 2
(
ÂÂ2 3
)
ÂÂ3 4
{
ÃÃ 	
var
ÄÄ 
testData
ÄÄ 
=
ÄÄ 
TestData
ÄÄ #
.
ÄÄ# $
TestAnnualData
ÄÄ$ 2
(
ÄÄ2 3
)
ÄÄ3 4
;
ÄÄ4 5
Mock
ÅÅ 
<
ÅÅ 
IPlantSetupDal
ÅÅ 
>
ÅÅ  
mock
ÅÅ! %
=
ÅÅ& '
new
ÅÅ( +
Mock
ÅÅ, 0
<
ÅÅ0 1
IPlantSetupDal
ÅÅ1 ?
>
ÅÅ? @
(
ÅÅ@ A
)
ÅÅA B
;
ÅÅB C
mock
ÆÆ 
.
ÆÆ 
Setup
ÆÆ 
(
ÆÆ 
x
ÆÆ 
=>
ÆÆ 
x
ÆÆ 
.
ÆÆ !
AddProductionActual
ÆÆ 1
(
ÆÆ1 2
testData
ÆÆ2 :
,
ÆÆ: ;
$str
ÆÆ< B
,
ÆÆB C
$str
ÆÆD P
)
ÆÆP Q
)
ÆÆQ R
.
ÆÆR S
Returns
ÆÆS Z
(
ÆÆZ [
true
ÆÆ[ _
)
ÆÆ_ `
;
ÆÆ` a
var
ÇÇ 
plantManager
ÇÇ 
=
ÇÇ 
new
ÇÇ "
PlantSetUpManager
ÇÇ# 4
(
ÇÇ4 5
mock
ÇÇ5 9
.
ÇÇ9 :
Object
ÇÇ: @
)
ÇÇ@ A
;
ÇÇA B
var
ÈÈ 
result
ÈÈ 
=
ÈÈ 
plantManager
ÈÈ %
.
ÈÈ% &!
AddProductionActual
ÈÈ& 9
(
ÈÈ9 :
testData
ÈÈ: B
,
ÈÈB C
$str
ÈÈD J
,
ÈÈJ K
$str
ÈÈL X
)
ÈÈX Y
;
ÈÈY Z
Assert
ÉÉ 
.
ÉÉ 
	IsNotNull
ÉÉ 
(
ÉÉ 
result
ÉÉ #
)
ÉÉ# $
;
ÉÉ$ %
Assert
ÊÊ 
.
ÊÊ 
IsTrue
ÊÊ 
(
ÊÊ 
result
ÊÊ  
)
ÊÊ  !
;
ÊÊ! "
}
ËË 	
[
ÌÌ 	

TestMethod
ÌÌ	 
]
ÌÌ 
public
ÍÍ 
void
ÍÍ -
AddProductionActualReturnsFalse
ÍÍ 3
(
ÍÍ3 4
)
ÍÍ4 5
{
ÎÎ 	
List
ÏÏ 
<
ÏÏ 
AnnualDetails
ÏÏ 
>
ÏÏ 
testData
ÏÏ  (
=
ÏÏ) *
null
ÏÏ+ /
;
ÏÏ/ 0
Mock
ĞĞ 
<
ĞĞ 
IPlantSetupDal
ĞĞ 
>
ĞĞ  
mock
ĞĞ! %
=
ĞĞ& '
new
ĞĞ( +
Mock
ĞĞ, 0
<
ĞĞ0 1
IPlantSetupDal
ĞĞ1 ?
>
ĞĞ? @
(
ĞĞ@ A
)
ĞĞA B
;
ĞĞB C
mock
ÑÑ 
.
ÑÑ 
Setup
ÑÑ 
(
ÑÑ 
x
ÑÑ 
=>
ÑÑ 
x
ÑÑ 
.
ÑÑ !
AddProductionActual
ÑÑ 1
(
ÑÑ1 2
testData
ÑÑ2 :
,
ÑÑ: ;
$str
ÑÑ< B
,
ÑÑB C
$str
ÑÑD P
)
ÑÑP Q
)
ÑÑQ R
.
ÑÑR S
Returns
ÑÑS Z
(
ÑÑZ [
true
ÑÑ[ _
)
ÑÑ_ `
;
ÑÑ` a
var
ÒÒ 
plantManager
ÒÒ 
=
ÒÒ 
new
ÒÒ "
PlantSetUpManager
ÒÒ# 4
(
ÒÒ4 5
mock
ÒÒ5 9
.
ÒÒ9 :
Object
ÒÒ: @
)
ÒÒ@ A
;
ÒÒA B
var
ÓÓ 
result
ÓÓ 
=
ÓÓ 
plantManager
ÓÓ %
.
ÓÓ% &!
AddProductionActual
ÓÓ& 9
(
ÓÓ9 :
testData
ÓÓ: B
,
ÓÓB C
$str
ÓÓD J
,
ÓÓJ K
$str
ÓÓL X
)
ÓÓX Y
;
ÓÓY Z
Assert
ÔÔ 
.
ÔÔ 
	IsNotNull
ÔÔ 
(
ÔÔ 
result
ÔÔ #
)
ÔÔ# $
;
ÔÔ$ %
Assert
ÕÕ 
.
ÕÕ 
IsFalse
ÕÕ 
(
ÕÕ 
result
ÕÕ !
)
ÕÕ! "
;
ÕÕ" #
}
ÖÖ 	
[
ØØ 	

TestMethod
ØØ	 
]
ØØ 
public
ÙÙ 
void
ÙÙ *
EditConfigurationReturnsTrue
ÙÙ 0
(
ÙÙ0 1
)
ÙÙ1 2
{
ÚÚ 	
var
ÛÛ 
testData
ÛÛ 
=
ÛÛ 
new
ÛÛ 
WageUomMapping
ÛÛ -
{
ÛÛ. /

EnergyName
ÛÛ0 :
=
ÛÛ; <
$str
ÛÛ= D
,
ÛÛD E

EnergyType
ÛÛF P
=
ÛÛQ R
$str
ÛÛS `
,
ÛÛ` a
UOM
ÛÛb e
=
ÛÛf g
$str
ÛÛh m
,
ÛÛm n
ID
ÛÛo q
=
ÛÛr s
$num
ÛÛt u
}
ÛÛv w
;
ÛÛw x
Mock
ÜÜ 
<
ÜÜ 
IPlantSetupDal
ÜÜ 
>
ÜÜ  
mock
ÜÜ! %
=
ÜÜ& '
new
ÜÜ( +
Mock
ÜÜ, 0
<
ÜÜ0 1
IPlantSetupDal
ÜÜ1 ?
>
ÜÜ? @
(
ÜÜ@ A
)
ÜÜA B
;
ÜÜB C
mock
İİ 
.
İİ 
Setup
İİ 
(
İİ 
x
İİ 
=>
İİ 
x
İİ 
.
İİ 
EditConfiguration
İİ /
(
İİ/ 0
testData
İİ0 8
)
İİ8 9
)
İİ9 :
.
İİ: ;
Returns
İİ; B
(
İİB C
true
İİC G
)
İİG H
;
İİH I
var
ŞŞ 
plantManager
ŞŞ 
=
ŞŞ 
new
ŞŞ "
PlantSetUpManager
ŞŞ# 4
(
ŞŞ4 5
mock
ŞŞ5 9
.
ŞŞ9 :
Object
ŞŞ: @
)
ŞŞ@ A
;
ŞŞA B
var
ßß 
result
ßß 
=
ßß 
plantManager
ßß %
.
ßß% &
EditConfiguration
ßß& 7
(
ßß7 8
testData
ßß8 @
)
ßß@ A
;
ßßA B
Assert
àà 
.
àà 
	IsNotNull
àà 
(
àà 
result
àà #
)
àà# $
;
àà$ %
Assert
áá 
.
áá 
IsTrue
áá 
(
áá 
result
áá  
)
áá  !
;
áá! "
}
ââ 	
[
ää 	

TestMethod
ää	 
]
ää 
public
åå 
void
åå +
EditConfigurationReturnsFalse
åå 1
(
åå1 2
)
åå2 3
{
ææ 	
WageUomMapping
çç 
testData
çç #
=
çç$ %
null
çç& *
;
çç* +
Mock
èè 
<
èè 
IPlantSetupDal
èè 
>
èè  
mock
èè! %
=
èè& '
new
èè( +
Mock
èè, 0
<
èè0 1
IPlantSetupDal
èè1 ?
>
èè? @
(
èè@ A
)
èèA B
;
èèB C
mock
éé 
.
éé 
Setup
éé 
(
éé 
x
éé 
=>
éé 
x
éé 
.
éé 
EditConfiguration
éé /
(
éé/ 0
testData
éé0 8
)
éé8 9
)
éé9 :
.
éé: ;
Returns
éé; B
(
ééB C
true
ééC G
)
ééG H
;
ééH I
var
êê 
plantManager
êê 
=
êê 
new
êê "
PlantSetUpManager
êê# 4
(
êê4 5
mock
êê5 9
.
êê9 :
Object
êê: @
)
êê@ A
;
êêA B
var
ëë 
result
ëë 
=
ëë 
plantManager
ëë %
.
ëë% &
EditConfiguration
ëë& 7
(
ëë7 8
testData
ëë8 @
)
ëë@ A
;
ëëA B
Assert
ìì 
.
ìì 
	IsNotNull
ìì 
(
ìì 
result
ìì #
)
ìì# $
;
ìì$ %
Assert
íí 
.
íí 
IsFalse
íí 
(
íí 
result
íí !
)
íí! "
;
íí" #
}
îî 	
[
ğğ 	

TestMethod
ğğ	 
]
ğğ 
public
ññ 
void
ññ -
AddCSolidwasteActualReturnsTrue
ññ 3
(
ññ3 4
)
ññ4 5
{
òò 	
var
óó 
testData
óó 
=
óó 
TestData
óó #
.
óó# $
TestAnnualData
óó$ 2
(
óó2 3
)
óó3 4
;
óó4 5
Mock
ôô 
<
ôô 
IPlantSetupDal
ôô 
>
ôô  
mock
ôô! %
=
ôô& '
new
ôô( +
Mock
ôô, 0
<
ôô0 1
IPlantSetupDal
ôô1 ?
>
ôô? @
(
ôô@ A
)
ôôA B
;
ôôB C
mock
õõ 
.
õõ 
Setup
õõ 
(
õõ 
x
õõ 
=>
õõ 
x
õõ 
.
õõ "
AddCSolidwasteActual
õõ 2
(
õõ2 3
testData
õõ3 ;
,
õõ; <
$str
õõ= C
,
õõC D
$str
õõE [
)
õõ[ \
)
õõ\ ]
.
õõ] ^
Returns
õõ^ e
(
õõe f
true
õõf j
)
õõj k
;
õõk l
var
öö 
plantManager
öö 
=
öö 
new
öö "
PlantSetUpManager
öö# 4
(
öö4 5
mock
öö5 9
.
öö9 :
Object
öö: @
)
öö@ A
;
ööA B
var
÷÷ 
result
÷÷ 
=
÷÷ 
plantManager
÷÷ %
.
÷÷% &"
AddCSolidwasteActual
÷÷& :
(
÷÷: ;
testData
÷÷; C
,
÷÷C D
$str
÷÷E K
,
÷÷K L
$str
÷÷M c
)
÷÷c d
;
÷÷d e
Assert
øø 
.
øø 
	IsNotNull
øø 
(
øø 
result
øø #
)
øø# $
;
øø$ %
Assert
ùù 
.
ùù 
IsTrue
ùù 
(
ùù 
result
ùù  
)
ùù  !
;
ùù! "
}
úú 	
[
üü 	

TestMethod
üü	 
]
üü 
public
ıı 
void
ıı .
 AddCSolidwasteActualReturnsFalse
ıı 4
(
ıı4 5
)
ıı5 6
{
şş 	
List
ÿÿ 
<
ÿÿ 
AnnualDetails
ÿÿ 
>
ÿÿ 
testData
ÿÿ  (
=
ÿÿ) *
null
ÿÿ+ /
;
ÿÿ/ 0
Mock
€€ 
<
€€ 
IPlantSetupDal
€€ 
>
€€  
mock
€€! %
=
€€& '
new
€€( +
Mock
€€, 0
<
€€0 1
IPlantSetupDal
€€1 ?
>
€€? @
(
€€@ A
)
€€A B
;
€€B C
mock
 
.
 
Setup
 
(
 
x
 
=>
 
x
 
.
 "
AddCSolidwasteActual
 2
(
2 3
testData
3 ;
,
; <
$str
= C
,
C D
$str
E [
)
[ \
)
\ ]
.
] ^
Returns
^ e
(
e f
true
f j
)
j k
;
k l
var
‚‚ 
plantManager
‚‚ 
=
‚‚ 
new
‚‚ "
PlantSetUpManager
‚‚# 4
(
‚‚4 5
mock
‚‚5 9
.
‚‚9 :
Object
‚‚: @
)
‚‚@ A
;
‚‚A B
var
ƒƒ 
result
ƒƒ 
=
ƒƒ 
plantManager
ƒƒ %
.
ƒƒ% &"
AddCSolidwasteActual
ƒƒ& :
(
ƒƒ: ;
testData
ƒƒ; C
,
ƒƒC D
$str
ƒƒE K
,
ƒƒK L
$str
ƒƒM c
)
ƒƒc d
;
ƒƒd e
Assert
„„ 
.
„„ 
	IsNotNull
„„ 
(
„„ 
result
„„ #
)
„„# $
;
„„$ %
Assert
…… 
.
…… 
IsFalse
…… 
(
…… 
result
…… !
)
……! "
;
……" #
}
†† 	
[
ˆˆ 	

TestMethod
ˆˆ	 
]
ˆˆ 
public
‰‰ 
void
‰‰ -
AddMonthlySolidwasteReturnsTrue
‰‰ 3
(
‰‰3 4
)
‰‰4 5
{
ŠŠ 	
var
‹‹ 
testData
‹‹ 
=
‹‹ 
new
‹‹ 
List
‹‹ #
<
‹‹# $ 
MonthlyConsumption
‹‹$ 6
>
‹‹6 7
{
‹‹8 9
new
‹‹: = 
MonthlyConsumption
‹‹> P
{
‹‹Q R
Consumption
‹‹S ^
=
‹‹_ `
$num
‹‹a f
,
‹‹f g
Cost
‹‹h l
=
‹‹m n
$num
‹‹o t
,
‹‹t u
UOM
‹‹v y
=
‹‹z {
$str‹‹| 
,‹‹ ‚
UOMID‹‹ƒ ˆ
=‹‹‰ Š
$num‹‹‹ Œ
,‹‹Œ 
WAGES‹‹ “
=‹‹” •
$str‹‹– £
,‹‹£ ¤
WagesId‹‹¥ ¬
=‹‹­ ®
$num‹‹¯ °
}‹‹± ²
,‹‹² ³
new
ŒŒ  
MonthlyConsumption
ŒŒ &
{
ŒŒ' (
Consumption
ŒŒ) 4
=
ŒŒ5 6
$num
ŒŒ7 <
,
ŒŒ< =
Cost
ŒŒ> B
=
ŒŒC D
$num
ŒŒE J
,
ŒŒJ K
UOM
ŒŒL O
=
ŒŒP Q
$str
ŒŒR W
,
ŒŒW X
UOMID
ŒŒY ^
=
ŒŒ_ `
$num
ŒŒa b
,
ŒŒb c
WAGES
ŒŒd i
=
ŒŒj k
$str
ŒŒl y
,
ŒŒy z
WagesIdŒŒ{ ‚
=ŒŒƒ „
$numŒŒ… †
}ŒŒ‡ ˆ
}
 
;
 
Mock
 
<
 
IPlantSetupDal
 
>
  
mock
! %
=
& '
new
( +
Mock
, 0
<
0 1
IPlantSetupDal
1 ?
>
? @
(
@ A
)
A B
;
B C
mock
 
.
 
Setup
 
(
 
x
 
=>
 
x
 
.
 "
AddMonthlySolidwaste
 2
(
2 3
testData
3 ;
,
; <
$str
= C
,
C D
$num
E F
)
F G
)
G H
.
H I
Returns
I P
(
P Q
true
Q U
)
U V
;
V W
var
 
plantManager
 
=
 
new
 "
PlantSetUpManager
# 4
(
4 5
mock
5 9
.
9 :
Object
: @
)
@ A
;
A B
var
‘‘ 
result
‘‘ 
=
‘‘ 
plantManager
‘‘ %
.
‘‘% &"
AddMonthlySolidwaste
‘‘& :
(
‘‘: ;
testData
‘‘; C
,
‘‘C D
$str
‘‘E K
,
‘‘K L
$num
‘‘M N
)
‘‘N O
;
‘‘O P
Assert
’’ 
.
’’ 
	IsNotNull
’’ 
(
’’ 
result
’’ #
)
’’# $
;
’’$ %
Assert
““ 
.
““ 
IsTrue
““ 
(
““ 
result
““  
)
““  !
;
““! "
}
”” 	
[
–– 	

TestMethod
––	 
]
–– 
public
—— 
void
—— +
AddSolidwasteDailyReturnsTrue
—— 1
(
——1 2
)
——2 3
{
˜˜ 	
var
™™ 
testData
™™ 
=
™™ 
new
™™ 
List
™™ #
<
™™# $
ProductionDaily
™™$ 3
>
™™3 4
{
™™5 6
new
™™7 :
ProductionDaily
™™; J
{
™™K L
AssetId
™™L S
=
™™T U
$num
™™U V
,
™™V W

DepartName
™™W a
=
™™b c
$str
™™d k
,
™™k l
Total
™™l q
=
™™r s
$num
™™t z
,
™™z {
UOM
™™{ ~
=™™ €
$str™™ †
,™™† ‡
UOMId™™‡ Œ
=™™ 
$num™™ 
}™™‘ ’
,™™’ “
new
šš 
ProductionDaily
šš #
{
šš$ %
AssetId
šš% ,
=
šš- .
$num
šš. /
,
šš/ 0

DepartName
šš0 :
=
šš; <
$str
šš= D
,
ššD E
Total
ššE J
=
ššK L
$num
ššM S
,
ššS T
UOM
ššT W
=
ššX Y
$str
ššZ _
,
šš_ `
UOMId
šš` e
=
ššf g
$num
ššh i
}
ššk l
}
ššl m
;
ššm n
Mock
›› 
<
›› 
IPlantSetupDal
›› 
>
››  
mock
››! %
=
››& '
new
››( +
Mock
››, 0
<
››0 1
IPlantSetupDal
››1 ?
>
››? @
(
››@ A
)
››A B
;
››B C
mock
œœ 
.
œœ 
Setup
œœ 
(
œœ 
x
œœ 
=>
œœ 
x
œœ 
.
œœ  
AddSolidwasteDaily
œœ 0
(
œœ0 1
testData
œœ1 9
,
œœ9 :
$num
œœ; B
,
œœB C
$str
œœD P
)
œœP Q
)
œœQ R
.
œœR S
Returns
œœS Z
(
œœZ [
true
œœ[ _
)
œœ_ `
;
œœ` a
var
 
plantManager
 
=
 
new
 "
PlantSetUpManager
# 4
(
4 5
mock
5 9
.
9 :
Object
: @
)
@ A
;
A B
var
 
result
 
=
 
plantManager
 %
.
% & 
AddSolidwasteDaily
& 8
(
8 9
testData
9 A
,
A B
$num
C J
,
J K
$str
L X
)
X Y
;
Y Z
Assert
ŸŸ 
.
ŸŸ 
	IsNotNull
ŸŸ 
(
ŸŸ 
result
ŸŸ #
)
ŸŸ# $
;
ŸŸ$ %
Assert
   
.
   
IsTrue
   
(
   
result
    
)
    !
;
  ! "
}
¡¡ 	
[
££ 	

TestMethod
££	 
]
££ 
public
¤¤ 
void
¤¤ ,
AddSolidwasteDailyReturnsFalse
¤¤ 2
(
¤¤2 3
)
¤¤3 4
{
¥¥ 	
List
¦¦ 
<
¦¦ 
ProductionDaily
¦¦  
>
¦¦  !
testData
¦¦" *
=
¦¦+ ,
null
¦¦- 1
;
¦¦1 2
Mock
§§ 
<
§§ 
IPlantSetupDal
§§ 
>
§§  
mock
§§! %
=
§§& '
new
§§( +
Mock
§§, 0
<
§§0 1
IPlantSetupDal
§§1 ?
>
§§? @
(
§§@ A
)
§§A B
;
§§B C
mock
¨¨ 
.
¨¨ 
Setup
¨¨ 
(
¨¨ 
x
¨¨ 
=>
¨¨ 
x
¨¨ 
.
¨¨  
AddSolidwasteDaily
¨¨ 0
(
¨¨0 1
testData
¨¨1 9
,
¨¨9 :
$num
¨¨; B
,
¨¨B C
$str
¨¨D P
)
¨¨P Q
)
¨¨Q R
.
¨¨R S
Returns
¨¨S Z
(
¨¨Z [
true
¨¨[ _
)
¨¨_ `
;
¨¨` a
var
©© 
plantManager
©© 
=
©© 
new
©© "
PlantSetUpManager
©©# 4
(
©©4 5
mock
©©5 9
.
©©9 :
Object
©©: @
)
©©@ A
;
©©A B
var
ªª 
result
ªª 
=
ªª 
plantManager
ªª %
.
ªª% & 
AddSolidwasteDaily
ªª& 8
(
ªª8 9
testData
ªª9 A
,
ªªA B
$num
ªªC J
,
ªªJ K
$str
ªªL X
)
ªªX Y
;
ªªY Z
Assert
«« 
.
«« 
	IsNotNull
«« 
(
«« 
result
«« #
)
««# $
;
««$ %
Assert
¬¬ 
.
¬¬ 
IsFalse
¬¬ 
(
¬¬ 
result
¬¬ !
)
¬¬! "
;
¬¬" #
}
­­ 	
[
®® 	

TestMethod
®®	 
]
®® 
public
¯¯ 
void
¯¯ *
AddProductonDailyReturnsTrue
¯¯ 0
(
¯¯0 1
)
¯¯1 2
{
°° 	
var
±± 
testData
±± 
=
±± 
new
±± 
List
±± #
<
±±# $
ProductionDaily
±±$ 3
>
±±3 4
{
±±5 6
new
±±7 :
ProductionDaily
±±; J
{
±±K L
AssetId
±±L S
=
±±T U
$num
±±U V
,
±±V W

DepartName
±±W a
=
±±b c
$str
±±d k
,
±±k l
Total
±±l q
=
±±r s
$num
±±t z
,
±±z {
UOM
±±{ ~
=±± €
$str±± †
,±±† ‡
UOMId±±‡ Œ
=±± 
$num±± 
}±±‘ ’
,±±’ “
new
²² 
ProductionDaily
²² #
{
²²$ %
AssetId
²²% ,
=
²²- .
$num
²². /
,
²²/ 0

DepartName
²²0 :
=
²²; <
$str
²²= D
,
²²D E
Total
²²E J
=
²²K L
$num
²²M S
,
²²S T
UOM
²²T W
=
²²X Y
$str
²²Z _
,
²²_ `
UOMId
²²` e
=
²²f g
$num
²²h i
}
²²k l
}
²²l m
;
²²m n
Mock
³³ 
<
³³ 
IPlantSetupDal
³³ 
>
³³  
mock
³³! %
=
³³& '
new
³³( +
Mock
³³, 0
<
³³0 1
IPlantSetupDal
³³1 ?
>
³³? @
(
³³@ A
)
³³A B
;
³³B C
mock
´´ 
.
´´ 
Setup
´´ 
(
´´ 
x
´´ 
=>
´´ 
x
´´ 
.
´´ 
AddProductonDaily
´´ /
(
´´/ 0
testData
´´0 8
,
´´8 9
$str
´´: F
)
´´F G
)
´´G H
.
´´H I
Returns
´´I P
(
´´P Q
true
´´Q U
)
´´U V
;
´´V W
var
µµ 
plantManager
µµ 
=
µµ 
new
µµ "
PlantSetUpManager
µµ# 4
(
µµ4 5
mock
µµ5 9
.
µµ9 :
Object
µµ: @
)
µµ@ A
;
µµA B
var
¶¶ 
result
¶¶ 
=
¶¶ 
plantManager
¶¶ %
.
¶¶% &
AddProductonDaily
¶¶& 7
(
¶¶7 8
testData
¶¶8 @
,
¶¶@ A
$str
¶¶B N
)
¶¶N O
;
¶¶O P
Assert
·· 
.
·· 
	IsNotNull
·· 
(
·· 
result
·· #
)
··# $
;
··$ %
Assert
¸¸ 
.
¸¸ 
IsTrue
¸¸ 
(
¸¸ 
result
¸¸  
)
¸¸  !
;
¸¸! "
}
¹¹ 	
[
ºº 	

TestMethod
ºº	 
]
ºº 
public
»» 
void
»» %
GetAlarmDataReturnsList
»» +
(
»»+ ,
)
»», -
{
¼¼ 	
var
½½ 
testData
½½ 
=
½½ 
new
½½ 
List
½½ #
<
½½# $

AlarmEnble
½½$ .
>
½½. /
{
½½0 1
new
½½2 5

AlarmEnble
½½6 @
{
½½A B
AssetID
½½C J
=
½½K L
$num
½½M N
,
½½N O
	AssetName
½½P Y
=
½½Z [
$str
½½\ c
,
½½c d
	isEnabled
½½e n
=
½½o p
$str
½½q t
,
½½t u
TagID
½½v {
=
½½| }
$num
½½~ 
,½½ €
TagName½½ ˆ
=½½‰ Š
$str½½‹ ”
,½½” •
Target½½• ›
=½½œ 
$num½½ ¤
}½½¤ ¥
,½½¥ ¦
new
¾¾ 

AlarmEnble
¾¾ 
{
¾¾ 
AssetID
¾¾ #
=
¾¾$ %
$num
¾¾& '
,
¾¾' (
	AssetName
¾¾) 2
=
¾¾3 4
$str
¾¾5 ?
,
¾¾? @
	isEnabled
¾¾A J
=
¾¾K L
$str
¾¾M P
,
¾¾P Q
TagID
¾¾R W
=
¾¾X Y
$num
¾¾Z [
,
¾¾[ \
TagName
¾¾] d
=
¾¾e f
$str
¾¾g q
,
¾¾q r
Target
¾¾r x
=
¾¾y z
$num¾¾{ 
}¾¾ ‚
}¾¾ƒ „
;¾¾„ …
Mock
¿¿ 
<
¿¿ 
IPlantSetupDal
¿¿ 
>
¿¿  
mock
¿¿! %
=
¿¿& '
new
¿¿( +
Mock
¿¿, 0
<
¿¿0 1
IPlantSetupDal
¿¿1 ?
>
¿¿? @
(
¿¿@ A
)
¿¿A B
;
¿¿B C
mock
ÀÀ 
.
ÀÀ 
Setup
ÀÀ 
(
ÀÀ 
x
ÀÀ 
=>
ÀÀ 
x
ÀÀ 
.
ÀÀ 
GetAlaramData
ÀÀ +
(
ÀÀ+ ,
)
ÀÀ, -
)
ÀÀ- .
.
ÀÀ. /
Returns
ÀÀ/ 6
(
ÀÀ6 7
testData
ÀÀ7 ?
)
ÀÀ? @
;
ÀÀ@ A
var
ÁÁ 
plantManager
ÁÁ 
=
ÁÁ 
new
ÁÁ "
PlantSetUpManager
ÁÁ# 4
(
ÁÁ4 5
mock
ÁÁ5 9
.
ÁÁ9 :
Object
ÁÁ: @
)
ÁÁ@ A
;
ÁÁA B
var
ÂÂ 
result
ÂÂ 
=
ÂÂ 
plantManager
ÂÂ %
.
ÂÂ% &
GetAlaramData
ÂÂ& 3
(
ÂÂ3 4
)
ÂÂ4 5
;
ÂÂ5 6
Assert
ÃÃ 
.
ÃÃ 
	IsNotNull
ÃÃ 
(
ÃÃ 
result
ÃÃ #
)
ÃÃ# $
;
ÃÃ$ %
CollectionAssert
ÄÄ 
.
ÄÄ 
AreEquivalent
ÄÄ *
(
ÄÄ* +
testData
ÄÄ+ 3
,
ÄÄ3 4
result
ÄÄ5 ;
)
ÄÄ; <
;
ÄÄ< =
}
ÅÅ 	
[
ÆÆ 	

TestMethod
ÆÆ	 
]
ÆÆ 
public
ÇÇ 
void
ÇÇ (
UpdateAlarmInfoReturnsTrue
ÇÇ .
(
ÇÇ. /
)
ÇÇ/ 0
{
ÈÈ 	
var
ÉÉ 
testData
ÉÉ 
=
ÉÉ 
new
ÉÉ 
List
ÉÉ #
<
ÉÉ# $

AlarmEnble
ÉÉ$ .
>
ÉÉ. /
{
ÉÉ0 1
new
ÉÉ2 5

AlarmEnble
ÉÉ6 @
{
ÉÉA B
AssetID
ÉÉC J
=
ÉÉK L
$num
ÉÉM N
,
ÉÉN O
	AssetName
ÉÉP Y
=
ÉÉZ [
$str
ÉÉ\ c
,
ÉÉc d
	isEnabled
ÉÉe n
=
ÉÉo p
$str
ÉÉq t
,
ÉÉt u
TagID
ÉÉv {
=
ÉÉ| }
$num
ÉÉ~ 
,ÉÉ €
TagNameÉÉ ˆ
=ÉÉ‰ Š
$strÉÉ‹ ”
,ÉÉ” •
TargetÉÉ• ›
=ÉÉœ 
$numÉÉ ¤
}ÉÉ¤ ¥
,ÉÉ¥ ¦
new
ÊÊ 

AlarmEnble
ÊÊ 
{
ÊÊ 
AssetID
ÊÊ #
=
ÊÊ$ %
$num
ÊÊ& '
,
ÊÊ' (
	AssetName
ÊÊ) 2
=
ÊÊ3 4
$str
ÊÊ5 ?
,
ÊÊ? @
	isEnabled
ÊÊA J
=
ÊÊK L
$str
ÊÊM P
,
ÊÊP Q
TagID
ÊÊR W
=
ÊÊX Y
$num
ÊÊZ [
,
ÊÊ[ \
TagName
ÊÊ] d
=
ÊÊe f
$str
ÊÊg q
,
ÊÊq r
Target
ÊÊr x
=
ÊÊy z
$numÊÊ{ 
}ÊÊ ‚
}ÊÊƒ „
;ÊÊ„ …
Mock
ËË 
<
ËË 
IPlantSetupDal
ËË 
>
ËË  
mock
ËË! %
=
ËË& '
new
ËË( +
Mock
ËË, 0
<
ËË0 1
IPlantSetupDal
ËË1 ?
>
ËË? @
(
ËË@ A
)
ËËA B
;
ËËB C
mock
ÌÌ 
.
ÌÌ 
Setup
ÌÌ 
(
ÌÌ 
x
ÌÌ 
=>
ÌÌ 
x
ÌÌ 
.
ÌÌ 
UpdateAlarmInfo
ÌÌ -
(
ÌÌ- .
testData
ÌÌ. 6
)
ÌÌ6 7
)
ÌÌ7 8
.
ÌÌ8 9
Returns
ÌÌ9 @
(
ÌÌ@ A
true
ÌÌA E
)
ÌÌE F
;
ÌÌF G
var
ÍÍ 
plantManager
ÍÍ 
=
ÍÍ 
new
ÍÍ "
PlantSetUpManager
ÍÍ# 4
(
ÍÍ4 5
mock
ÍÍ5 9
.
ÍÍ9 :
Object
ÍÍ: @
)
ÍÍ@ A
;
ÍÍA B
var
ÎÎ 
result
ÎÎ 
=
ÎÎ 
plantManager
ÎÎ %
.
ÎÎ% &
UpdateAlarmInfo
ÎÎ& 5
(
ÎÎ5 6
testData
ÎÎ6 >
)
ÎÎ> ?
;
ÎÎ? @
Assert
ÏÏ 
.
ÏÏ 
	IsNotNull
ÏÏ 
(
ÏÏ 
result
ÏÏ #
)
ÏÏ# $
;
ÏÏ$ %
Assert
ĞĞ 
.
ĞĞ 
IsTrue
ĞĞ 
(
ĞĞ 
result
ĞĞ  
)
ĞĞ  !
;
ĞĞ! "
}
ÑÑ 	
[
ÒÒ 	

TestMethod
ÒÒ	 
]
ÒÒ 
public
ÓÓ 
void
ÓÓ )
UpdateAlarmInfoReturnsFalse
ÓÓ /
(
ÓÓ/ 0
)
ÓÓ0 1
{
ÔÔ 	
List
ÕÕ 
<
ÕÕ 

AlarmEnble
ÕÕ 
>
ÕÕ 
testData
ÕÕ %
=
ÕÕ& '
null
ÕÕ( ,
;
ÕÕ, -
Mock
ÖÖ 
<
ÖÖ 
IPlantSetupDal
ÖÖ 
>
ÖÖ  
mock
ÖÖ! %
=
ÖÖ& '
new
ÖÖ( +
Mock
ÖÖ, 0
<
ÖÖ0 1
IPlantSetupDal
ÖÖ1 ?
>
ÖÖ? @
(
ÖÖ@ A
)
ÖÖA B
;
ÖÖB C
mock
×× 
.
×× 
Setup
×× 
(
×× 
x
×× 
=>
×× 
x
×× 
.
×× 
UpdateAlarmInfo
×× -
(
××- .
testData
××. 6
)
××6 7
)
××7 8
.
××8 9
Returns
××9 @
(
××@ A
false
××A F
)
××F G
;
××G H
var
ØØ 
plantManager
ØØ 
=
ØØ 
new
ØØ "
PlantSetUpManager
ØØ# 4
(
ØØ4 5
mock
ØØ5 9
.
ØØ9 :
Object
ØØ: @
)
ØØ@ A
;
ØØA B
var
ÙÙ 
result
ÙÙ 
=
ÙÙ 
plantManager
ÙÙ %
.
ÙÙ% &
UpdateAlarmInfo
ÙÙ& 5
(
ÙÙ5 6
testData
ÙÙ6 >
)
ÙÙ> ?
;
ÙÙ? @
Assert
ÚÚ 
.
ÚÚ 
	IsNotNull
ÚÚ 
(
ÚÚ 
result
ÚÚ #
)
ÚÚ# $
;
ÚÚ$ %
Assert
ÛÛ 
.
ÛÛ 
IsFalse
ÛÛ 
(
ÛÛ 
result
ÛÛ !
)
ÛÛ! "
;
ÛÛ" #
}
ÜÜ 	
[
ŞŞ 	

TestMethod
ŞŞ	 
]
ŞŞ 
public
ßß 
void
ßß '
GetUserDetailsReturnsList
ßß -
(
ßß- .
)
ßß. /
{
àà 	
var
áá 
testData
áá 
=
áá 
new
áá 
List
áá #
<
áá# $
Assets
áá$ *
>
áá* +
{
áá, -
new
áá. 1
Assets
áá2 8
{
áá9 :
PlantID
áá; B
=
ááC D
$num
ááE F
,
ááF G
	PlantName
ááH Q
=
ááR S
$str
ááT [
}
áá[ \
}
áá] ^
;
áá^ _
Mock
ââ 
<
ââ 
IPlantSetupDal
ââ 
>
ââ  
mock
ââ! %
=
ââ& '
new
ââ( +
Mock
ââ, 0
<
ââ0 1
IPlantSetupDal
ââ1 ?
>
ââ? @
(
ââ@ A
)
ââA B
;
ââB C
mock
ãã 
.
ãã 
Setup
ãã 
(
ãã 
x
ãã 
=>
ãã 
x
ãã 
.
ãã 
GetUserDetails
ãã ,
(
ãã, -
$str
ãã- <
)
ãã< =
)
ãã= >
.
ãã> ?
Returns
ãã? F
(
ããF G
testData
ããG O
)
ããO P
;
ããP Q
var
ää 
plantManager
ää 
=
ää 
new
ää "
PlantSetUpManager
ää# 4
(
ää4 5
mock
ää5 9
.
ää9 :
Object
ää: @
)
ää@ A
;
ääA B
var
åå 
result
åå 
=
åå 
plantManager
åå %
.
åå% &
GetUserDetails
åå& 4
(
åå4 5
$str
åå5 D
)
ååD E
;
ååE F
Assert
ææ 
.
ææ 
	IsNotNull
ææ 
(
ææ 
result
ææ #
)
ææ# $
;
ææ$ %
CollectionAssert
çç 
.
çç 
AreEquivalent
çç *
(
çç* +
testData
çç+ 3
,
çç3 4
result
çç5 ;
)
çç; <
;
çç< =
}
èè 	
}
éé 
}êê ƒ”
{D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\PlantSetUpUnitTests.cs
	namespace 	
EMMSUnitTest
 
{ 
[ 
	TestClass 
] 
public 

class 
PlantSetUpUnitTests $
{ 
[ 	

TestMethod	 
] 
public 
void 
TestConsumption #
(# $
)$ %
{ 	
List 
< 
AnnualDetails 
> 
test  $
=% &
TestData' /
./ 0
TestAnnualData0 >
(> ?
)? @
;@ A
Mock 
< 
IPlantSetUpManager #
># $
mock% )
=* +
new, /
Mock0 4
<4 5
IPlantSetUpManager5 G
>G H
(H I
)I J
;J K
List 
< 
string 
> 
consumptionAndCost +
=, -
new. 1
List2 6
<6 7
string7 =
>= >
{> ?
$str? L
,L M
$strN T
}U V
;V W
foreach 
( 
string 
str 
in  "
consumptionAndCost# 5
)5 6
{ 
mock 
. 
Setup 
( 
r 
=> 
r  !
.! " 
GetConsumptionActual" 6
(6 7
$num7 ;
,; <
$num= >
,> ?
str? B
)B C
)C D
.D E
ReturnsE L
(L M
testM Q
)Q R
;R S
var 

controller 
=  
new! $ 
PlantSetUPController% 9
(9 :
mock: >
.> ?
Object? E
)E F
;F G
var 
result 
= 

controller '
.' ( 
GetConsumptionActual( <
(< =
$str= C
,C D
$strE H
)H I
asJ L

JsonResultM W
;W X
Assert 
. 
	IsNotNull  
(  !
result! '
.' (
Data( ,
), -
;- . 
JavaScriptSerializer $

serializer% /
=0 1
new2 5 
JavaScriptSerializer6 J
(J K
)K L
;L M
TestCollection   
result1   &
=  ' (

serializer  ) 3
.  3 4
Deserialize  4 ?
<  ? @
TestCollection  @ N
>  N O
(  O P

serializer  P Z
.  Z [
	Serialize  [ d
(  d e
result  e k
.  k l
Data  l p
)  p q
)  q r
;  r s
if"" 
("" 
str"" 
=="" 
$str"" (
)""( )
{## 
CollectionAssert&& $
.&&$ %
AreEquivalent&&% 2
(&&2 3
test&&3 7
,&&7 8
result1&&9 @
.&&@ A
consumptionTotal&&A Q
)&&Q R
;&&R S
}'' 
else(( 
{)) 
CollectionAssert** $
.**$ %
AreEquivalent**% 2
(**2 3
test**3 7
,**7 8
result1**9 @
.**@ A

costActual**A K
)**K L
;**L M
}++ 
}-- 
}.. 	
[00 	

TestMethod00	 
]00 
public11 
void11 *
GetCostActualReturnsJsonResult11 2
(112 3
)113 4
{22 	
List33 
<33 
AnnualDetails33 
>33 
test33  $
=33% &
TestData33' /
.33/ 0
TestAnnualData330 >
(33> ?
)33? @
;33@ A
Mock44 
<44 
IPlantSetUpManager44 #
>44# $
mock44% )
=44* +
new44, /
Mock440 4
<444 5
IPlantSetUpManager445 G
>44G H
(44H I
)44I J
;44J K
mock55 
.55 
Setup55 
(55 
r55 
=>55 
r55 
.55  
GetConsumptionActual55 2
(552 3
$num553 7
,557 8
$num559 :
,55: ;
$str55< B
)55B C
)55C D
.55D E
Returns55E L
(55L M
test55M Q
)55Q R
;55R S
var66 

controller66 
=66 
new66   
PlantSetUPController66! 5
(665 6
mock666 :
.66: ;
Object66; A
)66A B
;66B C
var77 
result77 
=77 

controller77 #
.77# $
GetCostActual77$ 1
(771 2
$str772 8
,778 9
$str77: =
)77= >
as77? A

JsonResult77B L
;77L M
Assert88 
.88 
	IsNotNull88 
(88 
result88 #
.88# $
Data88$ (
)88( )
;88) * 
JavaScriptSerializer99  

serializer99! +
=99, -
new99. 1 
JavaScriptSerializer992 F
(99F G
)99G H
;99H I
var:: 
result1:: 
=:: 

serializer:: $
.::$ %
Deserialize::% 0
<::0 1
List::1 5
<::5 6
AnnualDetails::6 C
>::C D
>::D E
(::E F

serializer::F P
.::P Q
	Serialize::Q Z
(::Z [
result::[ a
.::a b
Data::b f
)::f g
)::g h
;::h i
CollectionAssert;; 
.;; 
AreEquivalent;; *
(;;* +
test;;+ /
,;;/ 0
result1;;1 8
);;8 9
;;;9 :
}<< 	
[>> 	

TestMethod>>	 
]>> 
public?? 
void?? #
GetSolidWasteJsonResult?? +
(??+ ,
)??, -
{@@ 	
ListAA 
<AA 
AnnualDetailsAA 
>AA 
testAA  $
=AA% &
TestDataAA' /
.AA/ 0
TestAnnualDataAA0 >
(AA> ?
)AA? @
;AA@ A
MockBB 
<BB 
IPlantSetUpManagerBB #
>BB# $
mockBB% )
=BB* +
newBB, /
MockBB0 4
<BB4 5
IPlantSetUpManagerBB5 G
>BBG H
(BBH I
)BBI J
;BBJ K
ListCC 
<CC 
stringCC 
>CC 
solidwasteAndCostCC *
=CC+ ,
newCC- 0
ListCC1 5
<CC5 6
stringCC6 <
>CC< =
{CC> ?
$strCC@ L
,CCL M
$strCCN ^
}CC_ `
;CC` a
foreachDD 
(DD 
stringDD 
strDD 
inDD  "
solidwasteAndCostDD# 4
)DD4 5
{EE 
mockFF 
.FF 
SetupFF 
(FF 
rFF 
=>FF 
rFF  !
.FF! "
GetSolidWasteFF" /
(FF/ 0
$numFF0 4
,FF4 5
strFF6 9
)FF9 :
)FF: ;
.FF; <
ReturnsFF< C
(FFC D
testFFD H
)FFH I
;FFI J
varGG 

controllerGG 
=GG  
newGG! $ 
PlantSetUPControllerGG% 9
(GG9 :
mockGG: >
.GG> ?
ObjectGG? E
)GGE F
;GGF G
varHH 
resultHH 
=HH 

controllerHH '
.HH' (
GetSolidWasteHH( 5
(HH5 6
$strHH6 <
)HH< =
asHH> @

JsonResultHHA K
;HHK L
AssertII 
.II 
	IsNotNullII  
(II  !
resultII! '
.II' (
DataII( ,
)II, -
;II- . 
JavaScriptSerializerJJ $

serializerJJ% /
=JJ0 1
newJJ2 5 
JavaScriptSerializerJJ6 J
(JJJ K
)JJK L
;JJL M
SolidWasteColletionKK #
result1KK$ +
=KK, -

serializerKK. 8
.KK8 9
DeserializeKK9 D
<KKD E
SolidWasteColletionKKE X
>KKX Y
(KKY Z

serializerKKZ d
.KKd e
	SerializeKKe n
(KKn o
resultKKo u
.KKu v
DataKKv z
)KKz {
)KK{ |
;KK| }
ifMM 
(MM 
strMM 
==MM 
$strMM '
)MM' (
{NN 
CollectionAssertQQ $
.QQ$ %
AreEquivalentQQ% 2
(QQ2 3
testQQ3 7
,QQ7 8
result1QQ9 @
.QQ@ A

solidwasteQQA K
)QQK L
;QQL M
}RR 
elseSS 
{TT 
CollectionAssertUU $
.UU$ %
AreEquivalentUU% 2
(UU2 3
testUU3 7
,UU7 8
result1UU9 @
.UU@ A
solidwastecostUUA O
)UUO P
;UUP Q
}VV 
}XX 
}YY 	
[[[ 	

TestMethod[[	 
][[ 
public\\ 
void\\ 0
$GetProductionActualReturnsJsonResult\\ 8
(\\8 9
)\\9 :
{]] 	
List^^ 
<^^ 
AnnualDetails^^ 
>^^ 
test^^  $
=^^% &
TestData^^' /
.^^/ 0
TestAnnualData^^0 >
(^^> ?
)^^? @
;^^@ A
Mock__ 
<__ 
IPlantSetUpManager__ #
>__# $
mock__% )
=__* +
new__, /
Mock__0 4
<__4 5
IPlantSetUpManager__5 G
>__G H
(__H I
)__I J
;__J K
mock`` 
.`` 
Setup`` 
(`` 
r`` 
=>`` 
r`` 
.`` 
GetProductionActual`` 1
(``1 2
$num``2 6
,``6 7
$str``8 M
)``M N
)``N O
.``O P
Returns``P W
(``W X
test``X \
)``\ ]
;``] ^
varaa 

controlleraa 
=aa 
newaa   
PlantSetUPControlleraa! 5
(aa5 6
mockaa6 :
.aa: ;
Objectaa; A
)aaA B
;aaB C
varbb 
resultbb 
=bb 

controllerbb #
.bb# $
GetProductionActualbb$ 7
(bb7 8
$strbb8 >
)bb> ?
asbb@ B

JsonResultbbC M
;bbM N
Assertcc 
.cc 
	IsNotNullcc 
(cc 
resultcc #
.cc# $
Datacc$ (
)cc( )
;cc) * 
JavaScriptSerializerdd  

serializerdd! +
=dd, -
newdd. 1 
JavaScriptSerializerdd2 F
(ddF G
)ddG H
;ddH I
varee 
result1ee 
=ee 

serializeree $
.ee$ %
Deserializeee% 0
<ee0 1
Listee1 5
<ee5 6
AnnualDetailsee6 C
>eeC D
>eeD E
(eeE F

serializereeF P
.eeP Q
	SerializeeeQ Z
(eeZ [
resultee[ a
.eea b
Dataeeb f
)eef g
)eeg h
;eeh i
CollectionAssertff 
.ff 
AreEquivalentff *
(ff* +
testff+ /
,ff/ 0
result1ff1 8
)ff8 9
;ff9 :
}gg 	
[ii 	

TestMethodii	 
]ii 
publicjj 
voidjj /
#GetDepartmentNamesReturnsJsonResultjj 7
(jj7 8
)jj8 9
{kk 	
Listll 
<ll 
Detailsll 
>ll 
datall 
=ll  
TestDatall! )
.ll) *
DetailsDatall* 5
(ll5 6
)ll6 7
;ll7 8
Mockmm 
<mm 
IPlantSetUpManagermm #
>mm# $
mockmm% )
=mm* +
newmm, /
Mockmm0 4
<mm4 5
IPlantSetUpManagermm5 G
>mmG H
(mmH I
)mmI J
;mmJ K
mocknn 
.nn 
Setupnn 
(nn 
rnn 
=>nn 
rnn 
.nn 
GetDepartmentnn +
(nn+ ,
)nn, -
)nn- .
.nn. /
Returnsnn/ 6
(nn6 7
datann7 ;
)nn; <
;nn< =
varoo 

controlleroo 
=oo 
newoo   
PlantSetUPControlleroo! 5
(oo5 6
mockoo6 :
.oo: ;
Objectoo; A
)ooA B
;ooB C
varpp 
resultpp 
=pp 

controllerpp #
.pp# $
GetDepartmentNamespp$ 6
(pp6 7
)pp7 8
aspp9 ;

JsonResultpp< F
;ppF G
Assertqq 
.qq 
	IsNotNullqq 
(qq 
resultqq #
.qq# $
Dataqq$ (
)qq( )
;qq) * 
JavaScriptSerializerrr  

serializerrr! +
=rr, -
newrr. 1 
JavaScriptSerializerrr2 F
(rrF G
)rrG H
;rrH I
varss 
result1ss 
=ss 

serializerss $
.ss$ %
Deserializess% 0
<ss0 1
Listss1 5
<ss5 6
Detailsss6 =
>ss= >
>ss> ?
(ss? @

serializerss@ J
.ssJ K
	SerializessK T
(ssT U
resultssU [
.ss[ \
Datass\ `
)ss` a
)ssa b
;ssb c
CollectionAsserttt 
.tt 
AreEquivalenttt *
(tt* +
datatt+ /
,tt/ 0
result1tt1 8
)tt8 9
;tt9 :
}uu 	
[ww 	

TestMethodww	 
]ww 
publicyy 
voidyy %
AddConsumtionDataReturns1yy -
(yy- .
)yy. /
{zz 	
List{{ 
<{{ 
string{{ 
>{{ 
consumption{{ $
={{% &
new{{' *
List{{+ /
<{{/ 0
string{{0 6
>{{6 7
{{{8 9
$str{{: P
,{{P Q
$str{{R l
}{{m n
;{{n o
Mock|| 
<|| 
IPlantSetUpManager|| #
>||# $
mock||% )
=||* +
new||, /
Mock||0 4
<||4 5
IPlantSetUpManager||5 G
>||G H
(||H I
)||I J
;||J K
mock}} 
.}} 
Setup}} 
(}} 
r}} 
=>}} 
r}} 
.}}  
AddConsumptionActual}} 2
(}}2 3
TestData}}3 ;
.}}; <
TestAnnualData}}< J
(}}J K
)}}K L
,}}L M
$str}}N T
,}}T U
$num}}V W
,}}W X
$str}}Y o
)}}o p
)}}p q
.}}q r
Returns}}r y
(}}y z
true}}z ~
)}}~ 
;	}} €
var~~ 

controller~~ 
=~~ 
new~~   
PlantSetUPController~~! 5
(~~5 6
mock~~6 :
.~~: ;
Object~~; A
)~~A B
;~~B C
var 
result 
= 

controller #
.# $
AddConsumtionData$ 5
(5 6
TestData6 >
.> ?
TestAnnualData? M
(M N
)N O
,O P
TestDataQ Y
.Y Z
TestAnnualDataZ h
(h i
)i j
,j k
$strl r
,r s
$numt u
)u v
;v w
Assert
€€ 
.
€€ 
	IsNotNull
€€ 
(
€€ 
result
€€ #
)
€€# $
;
€€$ %
}
‚‚ 	
[
„„ 

TestMethod
„„ 
]
„„ 
public
…… 
void
…… *
AddactualSolidwasteDataTests
…… /
(
……/ 0
)
……0 1
{
†† 	
Mock
‡‡ 
<
‡‡  
IPlantSetUpManager
‡‡ #
>
‡‡# $
mock
‡‡% )
=
‡‡* +
new
‡‡, /
Mock
‡‡0 4
<
‡‡4 5 
IPlantSetUpManager
‡‡5 G
>
‡‡G H
(
‡‡H I
)
‡‡I J
;
‡‡J K
mock
ˆˆ 
.
ˆˆ 
Setup
ˆˆ 
(
ˆˆ 
r
ˆˆ 
=>
ˆˆ 
r
ˆˆ 
.
ˆˆ "
AddCSolidwasteActual
ˆˆ 2
(
ˆˆ2 3
TestData
ˆˆ3 ;
.
ˆˆ; <
TestAnnualData
ˆˆ< J
(
ˆˆJ K
)
ˆˆK L
,
ˆˆL M
$str
ˆˆN T
,
ˆˆT U
$str
ˆˆV l
)
ˆˆl m
)
ˆˆm n
.
ˆˆn o
Returns
ˆˆo v
(
ˆˆv w
true
ˆˆw {
)
ˆˆ{ |
;
ˆˆ| }
var
‰‰ 

controller
‰‰ 
=
‰‰ 
new
‰‰  "
PlantSetUPController
‰‰! 5
(
‰‰5 6
mock
‰‰6 :
.
‰‰: ;
Object
‰‰; A
)
‰‰A B
;
‰‰B C
var
ŠŠ 
result
ŠŠ 
=
ŠŠ 

controller
ŠŠ #
.
ŠŠ# $%
AddactualSolidwasteData
ŠŠ$ ;
(
ŠŠ; <
TestData
ŠŠ< D
.
ŠŠD E
TestAnnualData
ŠŠE S
(
ŠŠS T
)
ŠŠT U
,
ŠŠU V
TestData
ŠŠW _
.
ŠŠ_ `
TestAnnualData
ŠŠ` n
(
ŠŠn o
)
ŠŠo p
,
ŠŠp q
$str
ŠŠr x
)
ŠŠx y
;
ŠŠy z
Assert
‹‹ 
.
‹‹ 
	IsNotNull
‹‹ 
(
‹‹ 
result
‹‹ #
)
‹‹# $
;
‹‹$ %
}
ŒŒ 	
}
 
public
 

class
 
TestCollection
 
{
‘‘ 
public
’’ 
List
’’ 
<
’’ 
AnnualDetails
’’ !
>
’’! "
consumptionTotal
’’# 3
{
’’4 5
get
’’6 9
;
’’9 :
set
’’; >
;
’’> ?
}
’’@ A
public
““ 
List
““ 
<
““ 
AnnualDetails
““ !
>
““! "

costActual
““# -
{
““. /
get
““0 3
;
““3 4
set
““5 8
;
““8 9
}
““: ;
}
”” 
public
–– 

class
–– !
SolidWasteColletion
–– $
{
—— 
public
˜˜ 
List
˜˜ 
<
˜˜ 
AnnualDetails
˜˜ !
>
˜˜! "

solidwaste
˜˜# -
{
˜˜. /
get
˜˜0 3
;
˜˜3 4
set
˜˜5 8
;
˜˜8 9
}
˜˜: ;
public
™™ 
List
™™ 
<
™™ 
AnnualDetails
™™ !
>
™™! "
solidwastecost
™™# 1
{
™™2 3
get
™™4 7
;
™™7 8
set
™™9 <
;
™™< =
}
™™> ?
}
šš 
}
›› ª
D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str '
)' (
]( )
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str )
)) *
]* +
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *A
pD:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\TestData.cs
	namespace

 	
EMMSUnitTest


 
{ 
[ 
Ignore 
] 
public 	
static
 
class 
TestData 
{ 
public 
static 
List 
< 
AnnualDetails (
>( )
TestAnnualData* 8
(8 9
)9 :
{ 	
return 
new 
List 
< 
AnnualDetails )
>) *
{+ ,
new- 0
AnnualDetails1 >
{? @
	DetailsIdA J
=K L
$numM N
,N O
DetailsNameP [
=\ ]
$str^ d
,d e
Janf i
=j k
$numl p
,p q
Febr u
=v w
$numx |
,| }
Mar	~ 
=
‚ ƒ
$num
„ ˆ
,
ˆ ‰
Apr
Š 
=
 
$num
 ”
,
” •
May
– ™
=
š ›
$num
œ  
,
  ¡
Jun
¢ ¥
=
¦ §
$num
¨ ¬
,
¬ ­
Jul
® ±
=
² ³
$num
´ ¸
,
¸ ¹
Aug
º ½
=
¾ ¿
$num
À Å
,
Å Æ
Sep
Ç Ê
=
Ë Ì
$num
Í Ñ
,
Ñ Ò
Oct
Ó Ö
=
× Ø
$num
Ù İ
,
İ Ş
Nov
ß â
=
ã ä
$num
å é
,
é ê
Dec
ë î
=
ï ğ
$num
ñ ö
,
ö ÷
UOM
ø û
=
ü ı
$str
ş ƒ
,
ƒ „
UOMID
… Š
=
‹ Œ
$num
 
}
 
}
‘ ’
;
’ “
} 	
public 
static 
List 
< 
Details "
>" #
DetailsData$ /
(/ 0
)0 1
{ 	
return 
new 
List 
< 
Details #
># $
{% &
new' *
Details+ 2
{3 4
ID5 7
=8 9
$num: ;
,; <
Name= A
=B C
$strD O
}P Q
}R S
;S T
} 	
public 
static 
List 
< 
Details "
>" #
	WagesData$ -
(- .
). /
{ 	
return 
new 
List 
< 
Details #
># $
{% &
new' *
Details+ 2
{3 4
ID5 7
=8 9
$num: ;
,; <
Name= A
=B C
$strD K
}L M
,M N
new 
Details 
{ 
ID 
=  
$num! "
," #
Name# '
=' (
$str) .
}. /
,/ 0
new 
Details 
{ 
ID 
=  
$num! "
," #
Name# '
=' (
$str) .
}. /
,/ 0
new 
Details 
{ 
ID 
=  
$num! "
," #
Name# '
=' (
$str) 6
}6 7
,7 8
new 
Details 
{ 
ID 
=  
$num! "
," #
Name# '
=' (
$str) 0
}0 1
}   
;   
}!! 	
public"" 
static"" 
List"" 
<"" 
Details"" "
>""" #
UOMData""$ +
(""+ ,
)"", -
{## 	
return$$ 
new$$ 
List$$ 
<$$ 
Details$$ #
>$$# $
{$$% &
new$$' *
Details$$+ 2
{$$3 4
ID$$5 7
=$$8 9
$num$$: ;
,$$; <
Name$$= A
=$$B C
$str$$D I
}$$J K
,$$K L
new%% 
Details%% 
{%% 
ID%% 
=%%  
$num%%! "
,%%" #
Name%%# '
=%%' (
$str%%) .
}%%. /
,%%/ 0
new&& 
Details&& 
{&& 
ID&& 
=&&  
$num&&! "
,&&" #
Name&&# '
=&&' (
$str&&) .
}&&. /
,&&/ 0
new'' 
Details'' 
{'' 
ID'' 
=''  
$num''! "
,''" #
Name''# '
=''' (
$str'') .
}''. /
,''/ 0
new(( 
Details(( 
{(( 
ID(( 
=((  
$num((! "
,((" #
Name((# '
=((' (
$str(() /
}((/ 0
})) 
;)) 
}** 	
public,, 
static,, 
List,, 
<,, 
WageUomMapping,, )
>,,) *
getWagesUOMData,,+ :
(,,: ;
),,; <
{-- 	
return.. 
new.. 
List.. 
<.. 
WageUomMapping.. *
>..* +
{.., -
new... 1
WageUomMapping..2 @
{..A B
ID..C E
=..F G
$num..H I
,..I J

EnergyName..K U
=..V W
$str..X ^
,..^ _

EnergyType..` j
=..k l
$str..m z
,..z {
UOM..| 
=
..€ 
$str
..‚ ‡
}
..ˆ ‰
}
..Š ‹
;
..‹ Œ
}// 	
[00 	
Ignore00	 
]00 
public11 
static11 
Building11 
getBuilding11 *
(11* +
)11+ ,
{22 	
return33 
new33 
Building33 
{33  !
BuildingName33" .
=33/ 0
$str331 ?
,33? @
PlantId33A H
=33I J
$num33K L
,33L M
	CreatedBy33N W
=33X Y
$str33Z a
,33a b

ModifiedBy33c m
=33n o
$str33p w
}33x y
;33y z
}44 	
[66 	
Ignore66	 
]66 
public77 
static77 
PlantInfoModel77 $
getPlant77% -
(77- .
)77. /
{88 	
return:: 
new:: 
PlantInfoModel:: %
{::& '
	PlantName::( 1
=::2 3
$str::4 @
,::@ A
ZoneName::B J
=::K L
$str::M S
,::S T
Location::U ]
=::^ _
$str::` h
,::h i
Country::j q
=::r s
$str::t y
,::y z
	Lattitude	::{ „
=
::… †
$str
::‡ 
,
:: 
	Longitude
::‘ š
=
::› œ
$str
:: ¥
,
::¥ ¦
Active
::§ ­
=
::® ¯
$str
::° ³
,
::³ ´
	CreatedDt
::µ ¾
=
::¿ À
DateTime
::Á É
.
::É Ê
Now
::Ê Í
,
::Í Î
	CreatedBy
::Ï Ø
=
::Ù Ú
$str
::Û æ
,
::æ ç

ModifiedDt
::è ò
=
::ó ô
DateTime
::õ ı
.
::ı ş
Now
::ş 
,
:: ‚

Modifiedby
::ƒ 
=
:: 
$str
:: —
}
::˜ ™
;
::™ š
};; 	
[<< 	
Ignore<<	 
]<< 
public== 
static== !
EMMSClientApplication== +
.==+ ,
Models==, 2
.==2 3

Department==3 =
getDepartment==> K
(==K L
)==L M
{>> 	
return?? 
new?? !
EMMSClientApplication?? ,
.??, -
Models??- 3
.??3 4

Department??4 >
{??? @
DepartmentName??A O
=??P Q
$str??R c
,??c d
PlantId??e l
=??m n
$num??o p
,??p q
	CreatedBy??r {
=??| }
$str	??~ …
,
??… †

ModifiedBy
??‡ ‘
=
??’ “
$str
??” ›
}
??œ 
;
?? 
}AA 	
}CC 
}DD °
­D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs°
­D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs°
­D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs²
¯D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs²
¯D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs²
¯D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\EMMSUnitTest\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs™
£D:\Shabarish\Projects\EMMS\Working Folder\Source\MVC Manual Entry\EMMSClientApplication\packages\NuGet.Modules.JsonHelper.1.0.2\content\NuGet.Modules\JsonHelper.cs
	namespace 	
NuGet
 
. 
Modules 
{ 
public		 

static		 
class		 

JsonHelper		 "
{

 
private 
static 
readonly "
JsonSerializerSettings  6"
JsonSerializerSettings7 M
=N O
new "
JsonSerializerSettings &
{' (
ContractResolver) 9
=: ;
new< ?2
&CamelCasePropertyNamesContractResolver@ f
(f g
)g h
}i j
;j k
public 
static 
void 
	Serialize $
<$ %
T% &
>& '
(' (
string( .
path/ 3
,3 4
T5 6
obj7 :
): ;
{ 	
string 
	directory 
= 
Path #
.# $
GetDirectoryName$ 4
(4 5
path5 9
)9 :
;: ;
if 
( 
! 
String 
. 
IsNullOrWhiteSpace *
(* +
	directory+ 4
)4 5
&&6 8
!9 :
	Directory: C
.C D
ExistsD J
(J K
	directoryK T
)T U
)U V
{ 
	Directory 
. 
CreateDirectory )
() *
	directory* 3
)3 4
;4 5
} 
File 
. 
WriteAllText 
( 
path "
," #
ToJson$ *
(* +
obj+ .
). /
)/ 0
;0 1
} 	
public 
static 
T 
Deserialize #
<# $
T$ %
>% &
(& '
string' -
path. 2
)2 3
{ 	
var 
json 
= 
File 
. 
ReadAllText '
(' (
path( ,
), -
;- .
return 
FromJson 
< 
T 
> 
( 
json #
)# $
;$ %
} 	
public 
static 
string 
ToJson #
<# $
T$ %
>% &
(& '
T' (
obj) ,
), -
{ 	
return   
JsonConvert   
.   
SerializeObject   .
(  . /
obj  / 2
,  2 3"
JsonSerializerSettings  4 J
)  J K
;  K L
}!! 	
public## 
static## 
T## 
FromJson##  
<##  !
T##! "
>##" #
(### $
string##$ *
json##+ /
)##/ 0
{$$ 	
return%% 
JsonConvert%% 
.%% 
DeserializeObject%% 0
<%%0 1
T%%1 2
>%%2 3
(%%3 4
json%%4 8
,%%8 9"
JsonSerializerSettings%%: P
)%%P Q
;%%Q R
}&& 	
}'' 
}(( 
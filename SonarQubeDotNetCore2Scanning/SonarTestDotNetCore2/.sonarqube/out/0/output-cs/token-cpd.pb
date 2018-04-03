‰
¥/Users/nunocancelo/dev/repo/github/masterzdran/SonarQubeExamples/SonarQubeDotNetCore2Scanning/SonarTestDotNetCore2/SonarTestDotNetCore2/Controllers/HomeController.cs
	namespace		 	 
SonarTestDotNetCore2		
 
.		 
Controllers		 *
{

 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
About "
(" #
)# $
{ 	
ViewData 
[ 
$str 
] 
=  !
$str" F
;F G
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Contact $
($ %
)% &
{ 	
ViewData 
[ 
$str 
] 
=  !
$str" 6
;6 7
return 
View 
( 
) 
; 
} 	
public   
IActionResult   
Error   "
(  " #
)  # $
{!! 	
return"" 
View"" 
("" 
new"" 
ErrorViewModel"" *
{""+ ,
	RequestId""- 6
=""7 8
Activity""9 A
.""A B
Current""B I
?""I J
.""J K
Id""K M
??""N P
HttpContext""Q \
.""\ ]
TraceIdentifier""] l
}""m n
)""n o
;""o p
}## 	
}$$ 
}%% ÷
 /Users/nunocancelo/dev/repo/github/masterzdran/SonarQubeExamples/SonarQubeDotNetCore2Scanning/SonarTestDotNetCore2/SonarTestDotNetCore2/Models/ErrorViewModel.cs
	namespace 	 
SonarTestDotNetCore2
 
. 
Models %
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} ª	
’/Users/nunocancelo/dev/repo/github/masterzdran/SonarQubeExamples/SonarQubeDotNetCore2Scanning/SonarTestDotNetCore2/SonarTestDotNetCore2/Program.cs
	namespace 	 
SonarTestDotNetCore2
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
BuildWebHost 
( 
args 
) 
. 
Run "
(" #
)# $
;$ %
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
=>; =
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
. 
Build 
( 
) 
; 
} 
} ö
’/Users/nunocancelo/dev/repo/github/masterzdran/SonarQubeExamples/SonarQubeDotNetCore2Scanning/SonarTestDotNetCore2/SonarTestDotNetCore2/Startup.cs
	namespace

 	 
SonarTestDotNetCore2


 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddMvc 
( 
) 
; 
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IHostingEnvironment7 J
envK N
)N O
{ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app   
.   %
UseDeveloperExceptionPage   -
(  - .
)  . /
;  / 0
}!! 
else"" 
{## 
app$$ 
.$$ 
UseExceptionHandler$$ '
($$' (
$str$$( 5
)$$5 6
;$$6 7
}%% 
app'' 
.'' 
UseStaticFiles'' 
('' 
)''  
;''  !
app)) 
.)) 
UseMvc)) 
()) 
routes)) 
=>))  
{** 
routes++ 
.++ 
MapRoute++ 
(++  
name,, 
:,, 
$str,, #
,,,# $
template-- 
:-- 
$str-- F
)--F G
;--G H
}.. 
).. 
;.. 
}// 	
}00 
}11 
; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23918.0 

	TITLE	C:\Users\w23\Revision2017_4k\pbr-whitespace-master\src\_windows\main_rel.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	__fltused
PUBLIC	?lpSoundBuffer@@3PAMA				; lpSoundBuffer
PUBLIC	?fragment_glsl@@3PBDB				; fragment_glsl
PUBLIC	?post_glsl@@3PBDB				; post_glsl
_BSS	SEGMENT
?lpSoundBuffer@@3PAMA DD 0cb9f80H DUP (?)		; lpSoundBuffer
_BSS	ENDS
entry	SEGMENT
$SG48333 DB	'static', 00H
	ORG $+1
$SG48334 DB	'glCreateShader', 00H
	ORG $+1
$SG48335 DB	'glShaderSource', 00H
	ORG $+1
$SG48336 DB	'glCompileShader', 00H
$SG48337 DB	'glCreateProgram', 00H
$SG48338 DB	'glAttachShader', 00H
	ORG $+1
$SG48339 DB	'glLinkProgram', 00H
	ORG $+2
$SG48340 DB	'glUseProgram', 00H
	ORG $+3
$SG48341 DB	'glGetUniformLocation', 00H
	ORG $+3
$SG48342 DB	'glUniform1i', 00H
$SG48343 DB	'glUniform2f', 00H
$SG48344 DB	'glGenFramebuffers', 00H
	ORG $+2
$SG48345 DB	'glBindFramebuffer', 00H
	ORG $+2
$SG48346 DB	'glFramebufferTexture2D', 00H
entry	ENDS
compileProgram	SEGMENT
$SG48298 DB	'tt', 00H
	ORG $+1
$SG48299 DB	'FB', 00H
	ORG $+1
$SG48300 DB	'V', 00H
compileProgram	ENDS
wavehdr	SEGMENT
?WaveHDR@@3Uwavehdr_tag@@A DD FLAT:?lpSoundBuffer@@3PAMA ; WaveHDR
	DD	032e7e00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
wavehdr	ENDS
wavefmt	SEGMENT
?WaveFMT@@3UtWAVEFORMATEX@@A DW 03H			; WaveFMT
	DW	02H
	DD	0ac44H
	DD	056220H
	DW	08H
	DW	020H
	DW	00H
wavefmt	ENDS
CONST	SEGMENT
?pfd@@3UtagPIXELFORMATDESCRIPTOR@@B DW 028H		; pfd
	DW	01H
	DD	025H
	DB	00H
	DB	020H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	08H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	020H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DD	00H
	DD	00H
	DD	00H
$SG47338 DB	'uniform int tt;uniform vec2 V;float T=tt*.001;const vec3'
	DB	' v=vec3(0.,.001,1.);const float m=3.14159;float f(float v){re'
	DB	'turn fract(sin(v)*43758.5);}float x(vec2 v){return fract(1000'
	DB	'0.*sin(17.*v.r+.1*v.g)*(.1+abs(sin(13.*v.g+v.r))));}float s(v'
	DB	'ec2 m){vec2 a=floor(m);m-=a;m*=m*(3.-2.*m);return mix(mix(x(a'
	DB	'),x(a+v.br),m.r),mix(x(a+v.rb),x(a+v.bb),m.r),m.g);}float n(f'
	DB	'loat v){float m=floor(v);v-=m;return mix(f(m),f(m+1.),v);}flo'
	DB	'at f(vec3 v,vec3 r){return v=abs(v)-r,max(v.r,max(v.g,v.b));}'
	DB	'mat3 t(float v){float m=sin(v),a=cos(v);return mat3(a,0.,m,0.'
	DB	',1.,0,-m,0.,a);}float n(vec3 v,float m){return length(v)-m;}v'
	DB	'ec3 s(vec3 v,vec3 m){return mod(v,m)-m*.5;}float f(vec3 v,flo'
	DB	'at m,float f,float r){float a=length(v);return max(abs(v.g)-r'
	DB	',max(a-f,m-a));}float r(vec2 v){return max(v.r,v.g);}float e('
	DB	'vec3 v){v=t(T*.1)*v;const float m=2.8;const int a=5;vec3 i=ve'
	DB	'c3(1.1,.9,1.9);for(int r=0;r<a;++r){v=v*t(.1+T*.3);v=abs(v);v'
	DB	'.rg+=step(v.r,v.g)*(v.gr-v.rg);v.rb+=step(v.r,v.b)*(v.br-v.rb'
	DB	');v.gb+=step(v.g,v.b)*(v.bg-v.gb);v=v*t(.7);v.rg=v.rg*m-(m-1.'
	DB	')*i.rg;v.b=m*v.b;if(v.b>.5*i.b*(m-1.))v.b-=i.b*(m-1.);}return'
	DB	' f(v,vec3(1.))*pow(m,-float(a));}bool i=true,D_=false;int M_='
	DB	'0;', 0aH, '#define PICK(d,dn,mn)if(D_){if(dn<d){d=dn;M_=mn;}}'
	DB	'else d=min(d,dn);', 0aH, 'float K(vec3 v){float m=r(abs(v.rg)'
	DB	'-vec2(2.,.1));if(D_)m=m+max(0.,.2*f(s(v,vec3(.15)),vec3(.01))'
	DB	');v.r=abs(v.r)+.02;float a=r(abs(v.rg-vec2(2.,1.))-vec2(.02))'
	DB	',n=max(abs(mod(v.b,.4)-.2)-.02,max(abs(v.g-.5)-.5,abs(v.r-2.)'
	DB	'-.02));return min(m,min(a,n));}float o(vec3 v){return f(v-vec'
	DB	'3(33.,1.6,0.),vec3(20.,1.5,1.96));}', 0aH, '#define LN 5', 0aH
	DB	'vec3 c[LN],P[LN];float l(vec3 v){float m=100000.;if(i)for(int'
	DB	' r=0;r<LN;++r)PICK(m,length(v-c[r])-.1,r+100);float a=length('
	DB	'v.rb),d=atan(v.r,v.b),r=length(v),b=-min(o(vec3(abs(v.r),v.gb'
	DB	')),o(vec3(abs(v.b),v.gr))),g=max(-n(v,19.),f(s(v,vec3(2.)),ve'
	DB	'c3(.8))),x=-n(v,20.);PICK(m,x,1);PICK(m,g,2);m=max(b,m);float'
	DB	' P=n(v,9.);P=max(P,abs(abs(v.g)-3.)-.5);P=min(P,f(s(v,vec3(11'
	DB	'.8)),vec3(.1,100.,.1)));P=max(P,-n(v,8.9));float l=K(vec3(a-1'
	DB	'3.,v.g,d*10.));l=min(l,max(15.-a,min(K(v.bgr),K(v))));l=max(l'
	DB	',b);PICK(m,P,3);PICK(m,l,4);if(T>44.){if(r<8.){float p=mix(.0'
	DB	'01,4.,smoothstep(44.,54.,T));PICK(m,e(v/p)*p,5);}else m=min(m'
	DB	',r+2.);}return m;}vec3 p(vec3 m){float r=l(m);return normaliz'
	DB	'e(vec3(l(m+v.grr)-r,l(m+v.rgr)-r,l(m+v.rrg)-r));}void K(vec3 '
	DB	'v,out vec3 m,out vec3 r,out vec3 f,out float i,out float n){D'
	DB	'_=true;m=p(v);r=vec3(0.,1.,1.);f=vec3(0.);i=0.;n=.99;if(M_==1'
	DB	')r=vec3(0.),f=vec3(1.),i=.5;else if(M_==2){float b=sin(T+dot('
	DB	'normalize(vec3(1.)),floor(v/2.)));f=max(0.,b)*vec3(1.);r=vec3'
	DB	'(0.);i=.2;}else if(M_==3)r=vec3(0.),f=vec3(1.),i=.8;else if(M'
	DB	'_==4)r=vec3(0.),f=vec3(.56,.57,.58),n=.8,i=.2+.6*pow(s(v.rb*4'
	DB	'.+40.),4.);else if(M_==5)r=vec3(0.),f=vec3(1.),i=.9,n=0.;else'
	DB	'{for(int b=0;b<LN;++b)if(M_==100+b)r=P[b],f=vec3(0.),i=0.,n=0'
	DB	'.;}D_=false;}float K(float v,float r){r*=r;r*=r;float f=v*v*('
	DB	'r-1.)+1.;f=m*f*f;return r/f;}float e(float v,float m){return '
	DB	'm+=1.,m*=m/8.,v/(v*(1.-m)+m);}vec3 K(vec3 v,vec3 m,float r,fl'
	DB	'oat b){float f=0.,a=1000.;int i;for(i=0;i<128;++i){vec3 d=v+m'
	DB	'*f;float n=l(d);f+=n*r;a=min(a,n);if(n<.002*f||f>b)break;}ret'
	DB	'urn vec3(f,a,float(i));}vec3 K(vec3 v,vec3 a,vec3 f,float r,v'
	DB	'ec3 n,float b,float i){vec3 d=vec3(0.);for(int g=0;g<LN;++g){'
	DB	'vec3 l=c[g]-v;float x=dot(l,l),o=sqrt(x);l=normalize(l);vec3 '
	DB	's=K(v+.02*l,l,1.,o);if(s.g<.005||s.r<o)continue;vec3 p=normal'
	DB	'ize(a+l),t=mix(vec3(.04),n,b);float L=max(dot(p,a),0.),u=max('
	DB	'dot(f,a),0.),C=max(dot(f,l),0.),I=max(dot(f,p),0.);vec3 z=t+('
	DB	'1.-t)*pow(1.-L,5.);float h=e(u,i)*e(C,i);vec3 N=K(I,i)*h*z/(4'
	DB	'.*u*C+.001);d+=((vec3(1.)-z)*(1.-b)*n/m+N)*C*P[g]/x;}vec3 l=v'
	DB	'ec3(.03)*n*r;return l+d;}mat3 K(vec3 v,vec3 m,vec3 f){vec3 a='
	DB	'normalize(v-m),r=normalize(cross(f,a));f=cross(a,r);return ma'
	DB	't3(r,f,a);}void main(){vec2 m=gl_FragCoord.rg/V*2.-1.;m.r*=V.'
	DB	'r/V.g;float a=11.;c[0]=vec3(a,6.,a);c[1]=vec3(a,6.,-a);c[2]=v'
	DB	'ec3(-a,6.,-a);c[3]=vec3(-a,6.,a);c[4]=vec3(0.);P[0]=30.*vec3('
	DB	'.7,.35,.45)*mix(1.,n(T*20.),.3);P[1]=30.*vec3(.7,.35,.15)*mix'
	DB	'(1.,n(T*20.+10.),.3);P[2]=30.*vec3(.3,.35,.75)*mix(1.,n(T*20.'
	DB	'+20.),.3);P[3]=30.*vec3(.7,.35,.15)*mix(1.,n(T*20.+30.),.3);P'
	DB	'[4]=smoothstep(44.,50.,T)*50.*vec3(1.)*mix(1.,n(T*20.+30.),.3'
	DB	');vec3 f=normalize(vec3(m,-1.44)),r,l=vec3(0.);if(T<23.)r=vec'
	DB	'3(mix(40.,11.,T/23.),2.,0.);else if(T<34.){float d=T-34.;r=ve'
	DB	'c3(cos(d*.1)*13.,2.,sin(d*.1)*14.);l=vec3(20.,0.,20.);}else i'
	DB	'f(T<62.)r=vec3(cos(T*.1)*13.,2.,sin(T*.1)*14.);else{float d=T'
	DB	'*2./10.48,b=floor(d);r=13.*mix(vec3(n(b),n(b+4.),n(b+5.)),vec'
	DB	'3(n(b+17.),n(b+41.),n(b+35.)),d-b);}float b=T*3.;r+=.1*vec3(n'
	DB	'(b),n(b+1.),n(b+3.));mat3 d=K(r,l,v.rbr);r+=d*vec3(m*.01,0.);'
	DB	'f=d*f;vec3 g=vec3(0.);const float o=40.;vec3 x=K(r,f,1.,o),s='
	DB	'r+x.r*f,p,t,e;float L,N;K(s,e,t,p,N,L);i=false;g=t+K(s,-f,e,0'
	DB	'.,p,L,N);gl_FragColor=vec4(g,x.r);}', 00H
	ORG $+4
$SG47341 DB	'uniform sampler2D FB;uniform vec2 V;void main(){vec2 v=g'
	DB	'l_FragCoord.rg/V,s=vec2(.002*V.g/V.r,.002),b=vec2(0.,1.1),a;v'
	DB	'ec3 g=vec3(0.);vec4 F=texture2D(FB,v),r=vec4(F.rgb,1.),t;int '
	DB	'c=256;float m=4.,i=2.4,B=1.,p;mat2 l=mat2(cos(i),sin(i),-sin('
	DB	'i),cos(i));for(int f=0;f<c;f++)B+=1./B,b*=l,a=s*(B-1.)*b,t=te'
	DB	'xture2D(FB,v+a),g+=t.rgb,p=length(a),r+=step(t.a,F.a)*vec4(t.'
	DB	'rgb,1.)*step(p*.01,step(p,abs(t.a-m)/V.r));g=pow(g/float(c),v'
	DB	'ec3(2.))+r.rgb/r.a;gl_FragColor=vec4(pow(g/(g+1.),vec3(1./2.2'
	DB	')),1.);}', 00H
CONST	ENDS
_DATA	SEGMENT
__fltused DD	01H
?fragment_glsl@@3PBDB DD FLAT:$SG47338			; fragment_glsl
?post_glsl@@3PBDB DD FLAT:$SG47341			; post_glsl
_DATA	ENDS
PUBLIC	?entrypoint@@YGXXZ				; entrypoint
EXTRN	__imp__ExitProcess@4:PROC
EXTRN	__imp__CreateThread@24:PROC
EXTRN	__imp__ChoosePixelFormat@8:PROC
EXTRN	__imp__SetPixelFormat@12:PROC
EXTRN	__imp__wglCreateContext@4:PROC
EXTRN	__imp__wglGetProcAddress@4:PROC
EXTRN	__imp__wglMakeCurrent@8:PROC
EXTRN	__imp__SwapBuffers@4:PROC
EXTRN	__imp__PeekMessageA@20:PROC
EXTRN	__imp__CreateWindowExA@48:PROC
EXTRN	__imp__GetAsyncKeyState@4:PROC
EXTRN	__imp__GetDC@4:PROC
EXTRN	__imp__waveOutOpen@24:PROC
EXTRN	__imp__waveOutPrepareHeader@12:PROC
EXTRN	__imp__waveOutWrite@12:PROC
EXTRN	__imp__timeGetTime@0:PROC
EXTRN	__imp__glBindTexture@8:PROC
EXTRN	__imp__glGenTextures@8:PROC
EXTRN	__imp__glRects@16:PROC
EXTRN	__imp__glTexImage2D@36:PROC
EXTRN	__imp__glTexParameteri@12:PROC
EXTRN	__4klang_render@4:PROC
EXTRN	__fltused:DWORD
_BSS	SEGMENT
?hWaveOut@@3PAUHWAVEOUT__@@A DD 01H DUP (?)		; hWaveOut
?oglCreateShader@@3P6GII@ZA DD 01H DUP (?)		; oglCreateShader
?oglShaderSource@@3P6GXIHPAPBDPBH@ZA DD 01H DUP (?)	; oglShaderSource
?oglCompileShader@@3P6GXI@ZA DD 01H DUP (?)		; oglCompileShader
?oglCreateProgram@@3P6GIXZA DD 01H DUP (?)		; oglCreateProgram
?oglAttachShader@@3P6GXII@ZA DD 01H DUP (?)		; oglAttachShader
?oglLinkProgram@@3P6GXI@ZA DD 01H DUP (?)		; oglLinkProgram
?oglUseProgram@@3P6GXI@ZA DD 01H DUP (?)		; oglUseProgram
?oglGetUniformLocation@@3P6GHIPBD@ZA DD 01H DUP (?)	; oglGetUniformLocation
?oglUniform1i@@3P6GXHH@ZA DD 01H DUP (?)		; oglUniform1i
?oglUniform2f@@3P6GXHMM@ZA DD 01H DUP (?)		; oglUniform2f
?oglGenFramebuffers@@3P6GXHPAI@ZA DD 01H DUP (?)	; oglGenFramebuffers
?oglBindFramebuffer@@3P6GXII@ZA DD 01H DUP (?)		; oglBindFramebuffer
?oglFramebufferTexture2D@@3P6GXIIIIH@ZA DD 01H DUP (?)	; oglFramebufferTexture2D
_BSS	ENDS
; Function compile flags: /Ogspy
; File c:\users\w23\revision2017_4k\pbr-whitespace-master\src\_windows\main_rel.cpp
;	COMDAT ?entrypoint@@YGXXZ
fltused	SEGMENT
_fb$ = -16						; size = 4
_tex$ = -12						; size = 4
_to$1$ = -8						; size = 4
_p_dof$1$ = -4						; size = 4
?entrypoint@@YGXXZ PROC					; entrypoint, COMDAT

; 145  : {

	sub	esp, 16					; 00000010H
	push	ebx
	push	ebp
	push	esi
	push	edi

; 146  : 	// initialize window
; 147  : 	#ifdef FULLSCREEN
; 148  : 	ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN);
; 149  : 	ShowCursor(0);
; 150  : 	HDC hDC = GetDC(CreateWindow((LPCSTR)0xC018, 0, WS_POPUP | WS_VISIBLE, 0, 0, XRES, YRES, 0, 0, 0, 0));
; 151  : 	#else
; 152  : 	HDC hDC = GetDC(CreateWindow("static", 0, WS_POPUP | WS_VISIBLE, 0, 0, XRES, YRES, 0, 0, 0, 0));

	xor	ebx, ebx
	push	ebx
	push	ebx
	push	ebx
	push	ebx
	push	720					; 000002d0H
	push	1280					; 00000500H
	push	ebx
	push	ebx
	push	-1879048192				; 90000000H
	push	ebx
	push	OFFSET $SG48333
	push	ebx
	call	DWORD PTR __imp__CreateWindowExA@48
	push	eax
	call	DWORD PTR __imp__GetDC@4
	mov	edi, eax

; 153  : 	#endif	
; 154  : 
; 155  : 	// initalize opengl
; 156  : 	SetPixelFormat(hDC,ChoosePixelFormat(hDC,&pfd),&pfd);

	mov	eax, OFFSET ?pfd@@3UtagPIXELFORMATDESCRIPTOR@@B
	push	eax
	push	eax
	push	edi
	call	DWORD PTR __imp__ChoosePixelFormat@8
	push	eax
	push	edi
	call	DWORD PTR __imp__SetPixelFormat@12

; 157  : 	wglMakeCurrent(hDC,wglCreateContext(hDC));

	push	edi
	call	DWORD PTR __imp__wglCreateContext@4
	push	eax
	push	edi
	call	DWORD PTR __imp__wglMakeCurrent@8

; 158  : 	
; 159  : #define FUNCLIST_DO(T, N) ogl##N = (T)wglGetProcAddress("gl" # N);
; 160  : 	FUNCLIST FUNCLIST_DBG

	mov	esi, DWORD PTR __imp__wglGetProcAddress@4
	push	OFFSET $SG48334
	call	esi
	push	OFFSET $SG48335
	mov	DWORD PTR ?oglCreateShader@@3P6GII@ZA, eax
	call	esi
	push	OFFSET $SG48336
	mov	DWORD PTR ?oglShaderSource@@3P6GXIHPAPBDPBH@ZA, eax
	call	esi
	push	OFFSET $SG48337
	mov	DWORD PTR ?oglCompileShader@@3P6GXI@ZA, eax
	call	esi
	push	OFFSET $SG48338
	mov	DWORD PTR ?oglCreateProgram@@3P6GIXZA, eax
	call	esi
	push	OFFSET $SG48339
	mov	DWORD PTR ?oglAttachShader@@3P6GXII@ZA, eax
	call	esi
	push	OFFSET $SG48340
	mov	DWORD PTR ?oglLinkProgram@@3P6GXI@ZA, eax
	call	esi
	push	OFFSET $SG48341
	mov	DWORD PTR ?oglUseProgram@@3P6GXI@ZA, eax
	call	esi
	push	OFFSET $SG48342
	mov	DWORD PTR ?oglGetUniformLocation@@3P6GHIPBD@ZA, eax
	call	esi
	push	OFFSET $SG48343
	mov	DWORD PTR ?oglUniform1i@@3P6GXHH@ZA, eax
	call	esi
	push	OFFSET $SG48344
	mov	DWORD PTR ?oglUniform2f@@3P6GXHMM@ZA, eax
	call	esi
	push	OFFSET $SG48345
	mov	DWORD PTR ?oglGenFramebuffers@@3P6GXHPAI@ZA, eax
	call	esi
	push	OFFSET $SG48346
	mov	DWORD PTR ?oglBindFramebuffer@@3P6GXII@ZA, eax
	call	esi

; 161  : #undef FUNCLIST_DO
; 162  : 
; 163  : 	const int p_ray = compileProgram(fragment_glsl);

	push	DWORD PTR ?fragment_glsl@@3PBDB		; fragment_glsl
	mov	DWORD PTR ?oglFramebufferTexture2D@@3P6GXIIIIH@ZA, eax
	call	?compileProgram@@YGHPBD@Z		; compileProgram

; 164  : 	const int p_dof = compileProgram(post_glsl);

	push	DWORD PTR ?post_glsl@@3PBDB		; post_glsl
	mov	ebp, eax
	call	?compileProgram@@YGHPBD@Z		; compileProgram
	mov	DWORD PTR _p_dof$1$[esp+32], eax

; 165  : 	//const int p_out = compileProgram(out_glsl);
; 166  : 
; 167  : 	GLuint tex[FbTex_COUNT], fb[FbTex_COUNT];
; 168  : 	glGenTextures(FbTex_COUNT, tex);

	lea	eax, DWORD PTR _tex$[esp+32]
	push	eax
	push	1
	call	DWORD PTR __imp__glGenTextures@8

; 169  : 	oglGenFramebuffers(FbTex_COUNT, fb);

	lea	eax, DWORD PTR _fb$[esp+32]
	push	eax
	push	1
	call	DWORD PTR ?oglGenFramebuffers@@3P6GXHPAI@ZA

; 170  : 
; 171  : 	initFbTex(tex[FbTex_Ray], fb[FbTex_Ray]);

	push	DWORD PTR _fb$[esp+32]
	push	DWORD PTR _tex$[esp+36]
	call	?initFbTex@@YGXHH@Z			; initFbTex

; 172  : 	//initFbTex(tex[FbTex_Dof], fb[FbTex_Dof]);
; 173  : // initialize sound
; 174  : 	CreateThread(0, 0, (LPTHREAD_START_ROUTINE)_4klang_render, lpSoundBuffer, 0, 0);

	push	ebx
	push	ebx
	push	OFFSET ?lpSoundBuffer@@3PAMA		; lpSoundBuffer
	push	OFFSET __4klang_render@4
	push	ebx
	push	ebx
	call	DWORD PTR __imp__CreateThread@24

; 175  : 	waveOutOpen(&hWaveOut, WAVE_MAPPER, &WaveFMT, NULL, 0, CALLBACK_NULL);

	push	ebx
	push	ebx
	push	ebx
	push	OFFSET ?WaveFMT@@3UtWAVEFORMATEX@@A
	push	-1
	push	OFFSET ?hWaveOut@@3PAUHWAVEOUT__@@A
	call	DWORD PTR __imp__waveOutOpen@24

; 176  : 	waveOutPrepareHeader(hWaveOut, &WaveHDR, sizeof(WaveHDR));

	push	32					; 00000020H
	mov	esi, OFFSET ?WaveHDR@@3Uwavehdr_tag@@A
	push	esi
	push	DWORD PTR ?hWaveOut@@3PAUHWAVEOUT__@@A
	call	DWORD PTR __imp__waveOutPrepareHeader@12

; 177  : 	waveOutWrite(hWaveOut, &WaveHDR, sizeof(WaveHDR));

	push	32					; 00000020H
	push	esi
	push	DWORD PTR ?hWaveOut@@3PAUHWAVEOUT__@@A
	call	DWORD PTR __imp__waveOutWrite@12

; 178  : 	const int to = timeGetTime();

	mov	ebx, DWORD PTR __imp__timeGetTime@0
	call	ebx
	mov	DWORD PTR _to$1$[esp+32], eax
$LL4@entrypoint:

; 179  : 	
; 180  : 	//glViewport(0, 0, XRES, YRES);
; 181  : 	// play intro
; 182  : 	do 
; 183  : 	{
; 184  : 		//waveOutGetPosition(hWaveOut, &MMTime, sizeof(MMTIME));
; 185  : 		//const float time = (timeGetTime() - to) * 1e-3f;
; 186  : 		const int time = timeGetTime() - to;

	call	ebx
	mov	esi, eax
	sub	esi, DWORD PTR _to$1$[esp+32]

; 187  : 		//paint(p_ray, 0, 0/*fb[FbTex_Ray]*/, ray, time);
; 188  : 		paint(p_ray, 0, fb[FbTex_Ray], time);

	push	esi
	push	DWORD PTR _fb$[esp+36]
	push	0
	push	ebp
	call	?paint@@YGXHHHH@Z			; paint

; 189  : 		paint(p_dof, tex[FbTex_Ray], 0, time);

	push	esi
	push	0
	push	DWORD PTR _tex$[esp+40]
	push	DWORD PTR _p_dof$1$[esp+44]
	call	?paint@@YGXHHHH@Z			; paint

; 190  : 		//paint(p_dof, tex[FbTex_Ray], fb[FbTex_Dof], time);
; 191  : 		//paint(p_out, tex[FbTex_Dof], 0, time);
; 192  : 		SwapBuffers(hDC);

	push	edi
	call	DWORD PTR __imp__SwapBuffers@4

; 193  : 		if (time > 125 * 1000) break;

	cmp	esi, 125000				; 0001e848H
	jg	SHORT $LN3@entrypoint

; 194  : 		PeekMessageA(0, 0, 0, 0, PM_REMOVE);

	push	1
	xor	eax, eax
	push	eax
	push	eax
	push	eax
	push	eax
	call	DWORD PTR __imp__PeekMessageA@20

; 195  : 	} while (!GetAsyncKeyState(VK_ESCAPE));

	push	27					; 0000001bH
	call	DWORD PTR __imp__GetAsyncKeyState@4
	test	ax, ax
	je	SHORT $LL4@entrypoint
$LN3@entrypoint:

; 196  : 		// && MMTime.u.sample < 5990000);
; 197  : 
; 198  : 	#ifdef CLEANDESTROY
; 199  : 	sndPlaySound(0,0);
; 200  : 	ChangeDisplaySettings( 0, 0 );
; 201  : 	ShowCursor(1);
; 202  : 	#endif
; 203  : 
; 204  : 	ExitProcess(0);

	push	0
	call	DWORD PTR __imp__ExitProcess@4
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
$LN12@entrypoint:
$LN11@entrypoint:
?entrypoint@@YGXXZ ENDP					; entrypoint
fltused	ENDS
; Function compile flags: /Ogspy
; File c:\users\w23\revision2017_4k\pbr-whitespace-master\src\_windows\main_rel.cpp
;	COMDAT ?paint@@YGXHHHH@Z
fltused	SEGMENT
_prog$ = 8						; size = 4
_src_tex$ = 12						; size = 4
_dst_fb$ = 16						; size = 4
_time$ = 20						; size = 4
?paint@@YGXHHHH@Z PROC					; paint, COMDAT

; 129  : static void paint(int prog, int src_tex, int dst_fb, int time) {

	push	ebp
	mov	ebp, esp

; 130  : 	oglUseProgram(prog);

	push	DWORD PTR _prog$[ebp]
	call	DWORD PTR ?oglUseProgram@@3P6GXI@ZA

; 131  : 	glBindTexture(GL_TEXTURE_2D, src_tex);

	push	DWORD PTR _src_tex$[ebp]
	push	3553					; 00000de1H
	call	DWORD PTR __imp__glBindTexture@8

; 132  : 	oglBindFramebuffer(GL_FRAMEBUFFER, dst_fb);

	push	DWORD PTR _dst_fb$[ebp]
	push	36160					; 00008d40H
	call	DWORD PTR ?oglBindFramebuffer@@3P6GXII@ZA

; 133  : 	oglUniform1i(oglGetUniformLocation(prog, "tt"), time);

	push	DWORD PTR _time$[ebp]
	push	OFFSET $SG48298
	push	DWORD PTR _prog$[ebp]
	call	DWORD PTR ?oglGetUniformLocation@@3P6GHIPBD@ZA
	push	eax
	call	DWORD PTR ?oglUniform1i@@3P6GXHH@ZA

; 134  : 	oglUniform1i(oglGetUniformLocation(prog, "FB"), 0);

	push	0
	push	OFFSET $SG48299
	push	DWORD PTR _prog$[ebp]
	call	DWORD PTR ?oglGetUniformLocation@@3P6GHIPBD@ZA
	push	eax
	call	DWORD PTR ?oglUniform1i@@3P6GXHH@ZA

; 135  : 	oglUniform2f(oglGetUniformLocation(prog, "V"), XRES, YRES);

	push	ecx
	push	ecx
	mov	DWORD PTR [esp+4], 1144258560		; 44340000H
	mov	DWORD PTR [esp], 1151336448		; 44a00000H
	push	OFFSET $SG48300
	push	DWORD PTR _prog$[ebp]
	call	DWORD PTR ?oglGetUniformLocation@@3P6GHIPBD@ZA
	push	eax
	call	DWORD PTR ?oglUniform2f@@3P6GXHMM@ZA

; 136  : 	glRects(-1, -1, 1, 1);

	push	1
	push	1
	push	-1
	push	-1
	call	DWORD PTR __imp__glRects@16

; 137  : }

	pop	ebp
	ret	16					; 00000010H
?paint@@YGXHHHH@Z ENDP					; paint
fltused	ENDS
; Function compile flags: /Ogspy
; File c:\users\w23\revision2017_4k\pbr-whitespace-master\src\_windows\main_rel.cpp
;	COMDAT ?initFbTex@@YGXHH@Z
fltused	SEGMENT
_fb$ = 8						; size = 4
_tex$ = 12						; size = 4
?initFbTex@@YGXHH@Z PROC				; initFbTex, COMDAT

; 118  : static void initFbTex(int fb, int tex) {

	push	ebx
	push	ebp
	push	esi
	push	edi

; 119  : 	glBindTexture(GL_TEXTURE_2D, tex);

	push	DWORD PTR _tex$[esp+12]
	mov	ebp, 3553				; 00000de1H
	push	ebp
	call	DWORD PTR __imp__glBindTexture@8

; 120  : 	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, XRES, YRES, 0, GL_RGBA, GL_FLOAT, 0);

	xor	ebx, ebx
	push	ebx
	push	5126					; 00001406H
	push	6408					; 00001908H
	push	ebx
	push	720					; 000002d0H
	push	1280					; 00000500H
	push	34842					; 0000881aH
	push	ebx
	push	ebp
	call	DWORD PTR __imp__glTexImage2D@36

; 121  : 	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);

	mov	esi, DWORD PTR __imp__glTexParameteri@12
	mov	edi, 9729				; 00002601H
	push	edi
	push	10241					; 00002801H
	push	ebp
	call	esi

; 122  : 	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	push	edi
	push	10240					; 00002800H
	push	ebp
	call	esi

; 123  : 	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);

	mov	edi, 33069				; 0000812dH
	push	edi
	push	10242					; 00002802H
	push	ebp
	call	esi

; 124  : 	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);

	push	edi
	push	10243					; 00002803H
	push	ebp
	call	esi

; 125  : 	oglBindFramebuffer(GL_FRAMEBUFFER, fb);

	push	DWORD PTR _fb$[esp+12]
	mov	esi, 36160				; 00008d40H
	push	esi
	call	DWORD PTR ?oglBindFramebuffer@@3P6GXII@ZA

; 126  : 	oglFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tex, 0);

	push	ebx
	push	DWORD PTR _tex$[esp+16]
	push	ebp
	push	36064					; 00008ce0H
	push	esi
	call	DWORD PTR ?oglFramebufferTexture2D@@3P6GXIIIIH@ZA
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx

; 127  : }

	ret	8
?initFbTex@@YGXHH@Z ENDP				; initFbTex
fltused	ENDS
; Function compile flags: /Ogspy
; File c:\users\w23\revision2017_4k\pbr-whitespace-master\src\_windows\main_rel.cpp
;	COMDAT ?compileProgram@@YGHPBD@Z
fltused	SEGMENT
_fragment$ = 8						; size = 4
?compileProgram@@YGHPBD@Z PROC				; compileProgram, COMDAT

; 81   : static int compileProgram(const char *fragment) {

	push	esi
	push	edi

; 82   : 	const int pid = oglCreateProgram();

	call	DWORD PTR ?oglCreateProgram@@3P6GIXZA

; 83   : 	const int fsId = oglCreateShader(GL_FRAGMENT_SHADER);

	push	35632					; 00008b30H
	mov	edi, eax
	call	DWORD PTR ?oglCreateShader@@3P6GII@ZA
	mov	esi, eax

; 84   : 	oglShaderSource(fsId, 1, &fragment, 0);

	lea	eax, DWORD PTR _fragment$[esp+4]
	push	0
	push	eax
	push	1
	push	esi
	call	DWORD PTR ?oglShaderSource@@3P6GXIHPAPBDPBH@ZA

; 85   : 	oglCompileShader(fsId);

	push	esi
	call	DWORD PTR ?oglCompileShader@@3P6GXI@ZA

; 86   : 
; 87   : #ifdef SHADER_DEBUG
; 88   : 	int result;
; 89   : 	char info[2048];
; 90   : #define oglGetObjectParameteriv ((PFNGLGETOBJECTPARAMETERIVARBPROC) wglGetProcAddress("glGetObjectParameterivARB"))
; 91   : #define oglGetInfoLog ((PFNGLGETINFOLOGARBPROC) wglGetProcAddress("glGetInfoLogARB"))
; 92   : 	oglGetObjectParameteriv(fsId, GL_OBJECT_COMPILE_STATUS_ARB, &result);
; 93   : 	oglGetInfoLog(fsId, 2047, NULL, (char*)info);
; 94   : 	if (!result)
; 95   : 	{
; 96   : 		MessageBox(NULL, info, "COMPILE", 0x00000000L);
; 97   : 		ExitProcess(0);
; 98   : 	}
; 99   : #endif
; 100  : 
; 101  : 	oglAttachShader(pid, fsId);

	push	esi
	push	edi
	call	DWORD PTR ?oglAttachShader@@3P6GXII@ZA

; 102  : 	oglLinkProgram(pid);

	push	edi
	call	DWORD PTR ?oglLinkProgram@@3P6GXI@ZA

; 103  : 
; 104  : #ifdef SHADER_DEBUG
; 105  : #define oglGetObjectParameteriv ((PFNGLGETOBJECTPARAMETERIVARBPROC) wglGetProcAddress("glGetObjectParameterivARB"))
; 106  : #define oglGetInfoLog ((PFNGLGETINFOLOGARBPROC) wglGetProcAddress("glGetInfoLogARB"))
; 107  : 		oglGetObjectParameteriv(pid, GL_OBJECT_LINK_STATUS_ARB, &result);
; 108  : 		oglGetInfoLog(pid, 2047, NULL, (char*)info);
; 109  : 		if (!result)
; 110  : 		{
; 111  : 			MessageBox(NULL, info, "LINK", 0x00000000L);
; 112  : 			ExitProcess(0);
; 113  : 		}
; 114  : #endif
; 115  : 	return pid;

	mov	eax, edi
	pop	edi
	pop	esi

; 116  : }

	ret	4
?compileProgram@@YGHPBD@Z ENDP				; compileProgram
fltused	ENDS
END

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data
x		DWORD   559
y		DWORD   361
z		DWORD	8213
sum    dword     4
mult   dword     2
multiply dword   0
multiply1  dword 0


.CODE                           ; start of main program code
main    PROC

		mov eax, y
		mov edx, 2
		mul edx
		mov multiply, eax

		mov eax, z
		mov edx, 4
		mul edx
		add eax, multiply
		sub eax, x
		mov x, eax
		

		
		
		

		mov eax, y ;example2
		mov edx, z
		mul edx
		add eax, x
		mov sum, eax
				  
		mov eax, y
		mov edx, 2
		mul edx
		mov mult, eax

		mov eax, sum
		div mult



		
			    
       
              ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code
org 00h
	mov r0,#30h
	mov r1,#10d
	mov a,#2h
	mov @r0,a
	inc r0
	mov b,#1h
	mov @r0,b
	
generate_lucas_num:
	add a,b
	mov b,@r0
	inc r0
	mov @r0,a
	djnz r1,generate_lucas_num
	
end
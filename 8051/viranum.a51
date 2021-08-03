org 00h
	mov r0,#30h
	mov r1,#10d
	mov a,#1h
	mov @r0,a
	inc r0
	mov b,#2h
	mov @r0,b
	
generate_vira_num:
	add a,b
	mov b,@r0
	inc r0
	mov @r0,a
	mov p0,a
	djnz r1,generate_vira_num
	
end
.code

movdqa_test PROC
  movdqa xmm0,  [rcx]
  movdqa xmm0,  [rcx+1]	
  RET
movdqa_test ENDP

end

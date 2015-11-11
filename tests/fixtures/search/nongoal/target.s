# xorq %rcx, %rcx
# addb $0x1, %al
# retq
vzeroall                          
movl $0xffffff80, %ecx            
subb %ch, %al                     
divss %xmm12, %xmm9               
retq

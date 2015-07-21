  .text
  .globl List_Remove
  .type List_Remove, @function

#! file-offset 0x587d
#! rip-offset  0x40587d
#! capacity    83 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_Remove:               #        0x40587d  0      OPC=0     
  movq (%rdi), %rcx         #  1     0x40587d  3      OPC=1161  
  movl 0xc(%rdi), %edx      #  2     0x405880  3      OPC=1156  
  movslq %edx, %rax         #  3     0x405883  3      OPC=1289  
  leaq (%rcx,%rax,8), %rax  #  4     0x405886  4      OPC=1069  
  movl 0x10(%rdi), %r9d     #  5     0x40588a  4      OPC=1156  
  movslq %r9d, %r8          #  6     0x40588e  3      OPC=1289  
  leaq (%rcx,%r8,8), %r8    #  7     0x405891  4      OPC=1069  
  subl %edx, %r9d           #  8     0x405895  3      OPC=2386  
  movl %r9d, 0x10(%rdi)     #  9     0x405898  4      OPC=1136  
  movl $0x0, 0xc(%rdi)      #  10    0x40589c  7      OPC=1135  
  cmpq %r8, %rax            #  11    0x4058a3  3      OPC=477   
  jbe .L_4058ba             #  12    0x4058a6  6      OPC=881   
  nop                       #  13    0x4058ac  1      OPC=1343  
  nop                       #  14    0x4058ad  1      OPC=1343  
  jmpq .L_4058cf            #  15    0x4058ae  5      OPC=930   
  nop                       #  16    0x4058b3  1      OPC=1343  
  nop                       #  17    0x4058b4  1      OPC=1343  
.L_4058aa:                  #        0x4058b5  0      OPC=0     
  movq %rdx, (%rcx)         #  18    0x4058b5  3      OPC=1138  
  addq $0x8, %rcx           #  19    0x4058b8  4      OPC=70    
  addq $0x8, %rax           #  20    0x4058bc  4      OPC=70    
  cmpq %rax, %r8            #  21    0x4058c0  3      OPC=477   
  jb .L_4058cf              #  22    0x4058c3  6      OPC=875   
  nop                       #  23    0x4058c9  1      OPC=1343  
  nop                       #  24    0x4058ca  1      OPC=1343  
.L_4058ba:                  #        0x4058cb  0      OPC=0     
  movq (%rax), %rdx         #  25    0x4058cb  3      OPC=1161  
  cmpq %rsi, %rdx           #  26    0x4058ce  3      OPC=477   
  jne .L_4058aa             #  27    0x4058d1  6      OPC=963   
  nop                       #  28    0x4058d7  1      OPC=1343  
  nop                       #  29    0x4058d8  1      OPC=1343  
  subl $0x1, 0x10(%rdi)     #  30    0x4058d9  4      OPC=2370  
  addq $0x8, %rax           #  31    0x4058dd  4      OPC=70    
  cmpq %rax, %r8            #  32    0x4058e1  3      OPC=477   
  jae .L_4058ba             #  33    0x4058e4  6      OPC=869   
  nop                       #  34    0x4058ea  1      OPC=1343  
  nop                       #  35    0x4058eb  1      OPC=1343  
.L_4058cf:                  #        0x4058ec  0      OPC=0     
  retq                      #  36    0x4058ec  1      OPC=1978  
                                                                
.size List_Remove, .-List_Remove


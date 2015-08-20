  .text
  .globl append
  .type append, @function

#! file-offset 0x65160
#! rip-offset  0x25160
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.append:                    #        0x25160  0      OPC=<label>         
  movl %edi, %edi           #  1     0x25160  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x25162  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0x25164  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  4     0x25166  8      OPC=movl_m32_imm32  
  nop                       #  5     0x2516e  1      OPC=nop             
  nop                       #  6     0x2516f  1      OPC=nop             
  nop                       #  7     0x25170  1      OPC=nop             
  nop                       #  8     0x25171  1      OPC=nop             
  nop                       #  9     0x25172  1      OPC=nop             
  nop                       #  10    0x25173  1      OPC=nop             
  nop                       #  11    0x25174  1      OPC=nop             
  nop                       #  12    0x25175  1      OPC=nop             
  nop                       #  13    0x25176  1      OPC=nop             
  nop                       #  14    0x25177  1      OPC=nop             
  nop                       #  15    0x25178  1      OPC=nop             
  nop                       #  16    0x25179  1      OPC=nop             
  nop                       #  17    0x2517a  1      OPC=nop             
  nop                       #  18    0x2517b  1      OPC=nop             
  nop                       #  19    0x2517c  1      OPC=nop             
  nop                       #  20    0x2517d  1      OPC=nop             
  nop                       #  21    0x2517e  1      OPC=nop             
  nop                       #  22    0x2517f  1      OPC=nop             
.L_25180:                   #        0x25180  0      OPC=<label>         
  movq %rsi, %rax           #  23    0x25180  3      OPC=movq_r64_r64    
  movl %esi, %esi           #  24    0x25183  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi  #  25    0x25185  4      OPC=movl_r32_m32    
  testq %rsi, %rsi          #  26    0x25189  3      OPC=testq_r64_r64   
  jne .L_25180              #  27    0x2518c  2      OPC=jne_label       
  movl %eax, %eax           #  28    0x2518e  2      OPC=movl_r32_r32    
  movl %edi, (%r15,%rax,1)  #  29    0x25190  4      OPC=movl_m32_r32    
  popq %r11                 #  30    0x25194  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  31    0x25196  7      OPC=andl_r32_imm32  
  nop                       #  32    0x2519d  1      OPC=nop             
  nop                       #  33    0x2519e  1      OPC=nop             
  nop                       #  34    0x2519f  1      OPC=nop             
  nop                       #  35    0x251a0  1      OPC=nop             
  addq %r15, %r11           #  36    0x251a1  3      OPC=addq_r64_r64    
  jmpq %r11                 #  37    0x251a4  3      OPC=jmpq_r64        
                                                                         
.size append, .-append


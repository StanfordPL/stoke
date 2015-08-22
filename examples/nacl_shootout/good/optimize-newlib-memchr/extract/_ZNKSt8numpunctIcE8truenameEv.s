  .text
  .globl _ZNKSt8numpunctIcE8truenameEv
  .type _ZNKSt8numpunctIcE8truenameEv, @function

#! file-offset 0xb8000
#! rip-offset  0x78000
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE8truenameEv:  #        0x78000  0      OPC=<label>         
  movl %esi, %esi                #  1     0x78000  2      OPC=movl_r32_r32    
  pushq %rbx                     #  2     0x78002  1      OPC=pushq_r64_1     
  movl %edi, %ebx                #  3     0x78003  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x78005  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax       #  5     0x78007  4      OPC=movl_r32_m32    
  movl %ebx, %edi                #  6     0x7800b  2      OPC=movl_r32_r32    
  movl %eax, %eax                #  7     0x7800d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax   #  8     0x7800f  5      OPC=movl_r32_m32    
  nop                            #  9     0x78014  1      OPC=nop             
  nop                            #  10    0x78015  1      OPC=nop             
  nop                            #  11    0x78016  1      OPC=nop             
  nop                            #  12    0x78017  1      OPC=nop             
  andl $0xffffffe0, %eax         #  13    0x78018  6      OPC=andl_r32_imm32  
  nop                            #  14    0x7801e  1      OPC=nop             
  nop                            #  15    0x7801f  1      OPC=nop             
  nop                            #  16    0x78020  1      OPC=nop             
  addq %r15, %rax                #  17    0x78021  3      OPC=addq_r64_r64    
  callq %rax                     #  18    0x78024  2      OPC=callq_r64       
  movl %ebx, %eax                #  19    0x78026  2      OPC=movl_r32_r32    
  popq %rbx                      #  20    0x78028  1      OPC=popq_r64_1      
  popq %r11                      #  21    0x78029  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  22    0x7802b  7      OPC=andl_r32_imm32  
  nop                            #  23    0x78032  1      OPC=nop             
  nop                            #  24    0x78033  1      OPC=nop             
  nop                            #  25    0x78034  1      OPC=nop             
  nop                            #  26    0x78035  1      OPC=nop             
  addq %r15, %r11                #  27    0x78036  3      OPC=addq_r64_r64    
  jmpq %r11                      #  28    0x78039  3      OPC=jmpq_r64        
  nop                            #  29    0x7803c  1      OPC=nop             
  nop                            #  30    0x7803d  1      OPC=nop             
  nop                            #  31    0x7803e  1      OPC=nop             
  nop                            #  32    0x7803f  1      OPC=nop             
  nop                            #  33    0x78040  1      OPC=nop             
  nop                            #  34    0x78041  1      OPC=nop             
  nop                            #  35    0x78042  1      OPC=nop             
  nop                            #  36    0x78043  1      OPC=nop             
  nop                            #  37    0x78044  1      OPC=nop             
  nop                            #  38    0x78045  1      OPC=nop             
  nop                            #  39    0x78046  1      OPC=nop             
  nop                            #  40    0x78047  1      OPC=nop             
  nop                            #  41    0x78048  1      OPC=nop             
  nop                            #  42    0x78049  1      OPC=nop             
  nop                            #  43    0x7804a  1      OPC=nop             
  nop                            #  44    0x7804b  1      OPC=nop             
  nop                            #  45    0x7804c  1      OPC=nop             
                                                                              
.size _ZNKSt8numpunctIcE8truenameEv, .-_ZNKSt8numpunctIcE8truenameEv


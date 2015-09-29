  .text
  .globl _ZNKSt8numpunctIwE9falsenameEv
  .type _ZNKSt8numpunctIwE9falsenameEv, @function

#! file-offset 0xf1080
#! rip-offset  0xb1080
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE9falsenameEv:  #        0xb1080  0      OPC=<label>         
  movl %esi, %esi                 #  1     0xb1080  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0xb1082  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0xb1083  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0xb1085  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0xb1087  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0xb108b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0xb108d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax    #  8     0xb108f  5      OPC=movl_r32_m32    
  nop                             #  9     0xb1094  1      OPC=nop             
  nop                             #  10    0xb1095  1      OPC=nop             
  nop                             #  11    0xb1096  1      OPC=nop             
  nop                             #  12    0xb1097  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0xb1098  6      OPC=andl_r32_imm32  
  nop                             #  14    0xb109e  1      OPC=nop             
  nop                             #  15    0xb109f  1      OPC=nop             
  nop                             #  16    0xb10a0  1      OPC=nop             
  addq %r15, %rax                 #  17    0xb10a1  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0xb10a4  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0xb10a6  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0xb10a8  1      OPC=popq_r64_1      
  popq %r11                       #  21    0xb10a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0xb10ab  7      OPC=andl_r32_imm32  
  nop                             #  23    0xb10b2  1      OPC=nop             
  nop                             #  24    0xb10b3  1      OPC=nop             
  nop                             #  25    0xb10b4  1      OPC=nop             
  nop                             #  26    0xb10b5  1      OPC=nop             
  addq %r15, %r11                 #  27    0xb10b6  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0xb10b9  3      OPC=jmpq_r64        
  nop                             #  29    0xb10bc  1      OPC=nop             
  nop                             #  30    0xb10bd  1      OPC=nop             
  nop                             #  31    0xb10be  1      OPC=nop             
  nop                             #  32    0xb10bf  1      OPC=nop             
  nop                             #  33    0xb10c0  1      OPC=nop             
  nop                             #  34    0xb10c1  1      OPC=nop             
  nop                             #  35    0xb10c2  1      OPC=nop             
  nop                             #  36    0xb10c3  1      OPC=nop             
  nop                             #  37    0xb10c4  1      OPC=nop             
  nop                             #  38    0xb10c5  1      OPC=nop             
  nop                             #  39    0xb10c6  1      OPC=nop             
  nop                             #  40    0xb10c7  1      OPC=nop             
  nop                             #  41    0xb10c8  1      OPC=nop             
  nop                             #  42    0xb10c9  1      OPC=nop             
  nop                             #  43    0xb10ca  1      OPC=nop             
  nop                             #  44    0xb10cb  1      OPC=nop             
  nop                             #  45    0xb10cc  1      OPC=nop             
                                                                               
.size _ZNKSt8numpunctIwE9falsenameEv, .-_ZNKSt8numpunctIwE9falsenameEv


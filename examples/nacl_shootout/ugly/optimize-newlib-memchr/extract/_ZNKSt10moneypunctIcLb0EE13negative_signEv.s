  .text
  .globl _ZNKSt10moneypunctIcLb0EE13negative_signEv
  .type _ZNKSt10moneypunctIcLb0EE13negative_signEv, @function

#! file-offset 0xb7480
#! rip-offset  0x77480
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13negative_signEv:  #        0x77480  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x77480  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x77482  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x77483  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x77485  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x77487  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x7748b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x7748d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0x7748f  5      OPC=movl_r32_m32    
  nop                                         #  9     0x77494  1      OPC=nop             
  nop                                         #  10    0x77495  1      OPC=nop             
  nop                                         #  11    0x77496  1      OPC=nop             
  nop                                         #  12    0x77497  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x77498  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x7749e  1      OPC=nop             
  nop                                         #  15    0x7749f  1      OPC=nop             
  nop                                         #  16    0x774a0  1      OPC=nop             
  addq %r15, %rax                             #  17    0x774a1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x774a4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x774a6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x774a8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x774a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x774ab  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x774b2  1      OPC=nop             
  nop                                         #  24    0x774b3  1      OPC=nop             
  nop                                         #  25    0x774b4  1      OPC=nop             
  nop                                         #  26    0x774b5  1      OPC=nop             
  addq %r15, %r11                             #  27    0x774b6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x774b9  3      OPC=jmpq_r64        
  nop                                         #  29    0x774bc  1      OPC=nop             
  nop                                         #  30    0x774bd  1      OPC=nop             
  nop                                         #  31    0x774be  1      OPC=nop             
  nop                                         #  32    0x774bf  1      OPC=nop             
  nop                                         #  33    0x774c0  1      OPC=nop             
  nop                                         #  34    0x774c1  1      OPC=nop             
  nop                                         #  35    0x774c2  1      OPC=nop             
  nop                                         #  36    0x774c3  1      OPC=nop             
  nop                                         #  37    0x774c4  1      OPC=nop             
  nop                                         #  38    0x774c5  1      OPC=nop             
  nop                                         #  39    0x774c6  1      OPC=nop             
  nop                                         #  40    0x774c7  1      OPC=nop             
  nop                                         #  41    0x774c8  1      OPC=nop             
  nop                                         #  42    0x774c9  1      OPC=nop             
  nop                                         #  43    0x774ca  1      OPC=nop             
  nop                                         #  44    0x774cb  1      OPC=nop             
  nop                                         #  45    0x774cc  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13negative_signEv, .-_ZNKSt10moneypunctIcLb0EE13negative_signEv


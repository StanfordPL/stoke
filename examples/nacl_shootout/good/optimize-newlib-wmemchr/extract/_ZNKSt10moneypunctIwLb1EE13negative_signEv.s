  .text
  .globl _ZNKSt10moneypunctIwLb1EE13negative_signEv
  .type _ZNKSt10moneypunctIwLb1EE13negative_signEv, @function

#! file-offset 0xeffa0
#! rip-offset  0xaffa0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13negative_signEv:  #        0xaffa0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xaffa0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xaffa2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xaffa3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xaffa5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xaffa7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xaffab  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xaffad  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0xaffaf  5      OPC=movl_r32_m32    
  nop                                         #  9     0xaffb4  1      OPC=nop             
  nop                                         #  10    0xaffb5  1      OPC=nop             
  nop                                         #  11    0xaffb6  1      OPC=nop             
  nop                                         #  12    0xaffb7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xaffb8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xaffbe  1      OPC=nop             
  nop                                         #  15    0xaffbf  1      OPC=nop             
  nop                                         #  16    0xaffc0  1      OPC=nop             
  addq %r15, %rax                             #  17    0xaffc1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xaffc4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xaffc6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xaffc8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xaffc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xaffcb  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xaffd2  1      OPC=nop             
  nop                                         #  24    0xaffd3  1      OPC=nop             
  nop                                         #  25    0xaffd4  1      OPC=nop             
  nop                                         #  26    0xaffd5  1      OPC=nop             
  addq %r15, %r11                             #  27    0xaffd6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xaffd9  3      OPC=jmpq_r64        
  nop                                         #  29    0xaffdc  1      OPC=nop             
  nop                                         #  30    0xaffdd  1      OPC=nop             
  nop                                         #  31    0xaffde  1      OPC=nop             
  nop                                         #  32    0xaffdf  1      OPC=nop             
  nop                                         #  33    0xaffe0  1      OPC=nop             
  nop                                         #  34    0xaffe1  1      OPC=nop             
  nop                                         #  35    0xaffe2  1      OPC=nop             
  nop                                         #  36    0xaffe3  1      OPC=nop             
  nop                                         #  37    0xaffe4  1      OPC=nop             
  nop                                         #  38    0xaffe5  1      OPC=nop             
  nop                                         #  39    0xaffe6  1      OPC=nop             
  nop                                         #  40    0xaffe7  1      OPC=nop             
  nop                                         #  41    0xaffe8  1      OPC=nop             
  nop                                         #  42    0xaffe9  1      OPC=nop             
  nop                                         #  43    0xaffea  1      OPC=nop             
  nop                                         #  44    0xaffeb  1      OPC=nop             
  nop                                         #  45    0xaffec  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13negative_signEv, .-_ZNKSt10moneypunctIwLb1EE13negative_signEv


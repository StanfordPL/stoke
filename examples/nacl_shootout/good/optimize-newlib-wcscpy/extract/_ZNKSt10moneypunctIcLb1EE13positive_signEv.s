  .text
  .globl _ZNKSt10moneypunctIcLb1EE13positive_signEv
  .type _ZNKSt10moneypunctIcLb1EE13positive_signEv, @function

#! file-offset 0xb6ca0
#! rip-offset  0x76ca0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13positive_signEv:  #        0x76ca0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x76ca0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x76ca2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x76ca3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x76ca5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x76ca7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x76cab  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x76cad  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0x76caf  5      OPC=movl_r32_m32    
  nop                                         #  9     0x76cb4  1      OPC=nop             
  nop                                         #  10    0x76cb5  1      OPC=nop             
  nop                                         #  11    0x76cb6  1      OPC=nop             
  nop                                         #  12    0x76cb7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x76cb8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x76cbe  1      OPC=nop             
  nop                                         #  15    0x76cbf  1      OPC=nop             
  nop                                         #  16    0x76cc0  1      OPC=nop             
  addq %r15, %rax                             #  17    0x76cc1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x76cc4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x76cc6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x76cc8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x76cc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x76ccb  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x76cd2  1      OPC=nop             
  nop                                         #  24    0x76cd3  1      OPC=nop             
  nop                                         #  25    0x76cd4  1      OPC=nop             
  nop                                         #  26    0x76cd5  1      OPC=nop             
  addq %r15, %r11                             #  27    0x76cd6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x76cd9  3      OPC=jmpq_r64        
  nop                                         #  29    0x76cdc  1      OPC=nop             
  nop                                         #  30    0x76cdd  1      OPC=nop             
  nop                                         #  31    0x76cde  1      OPC=nop             
  nop                                         #  32    0x76cdf  1      OPC=nop             
  nop                                         #  33    0x76ce0  1      OPC=nop             
  nop                                         #  34    0x76ce1  1      OPC=nop             
  nop                                         #  35    0x76ce2  1      OPC=nop             
  nop                                         #  36    0x76ce3  1      OPC=nop             
  nop                                         #  37    0x76ce4  1      OPC=nop             
  nop                                         #  38    0x76ce5  1      OPC=nop             
  nop                                         #  39    0x76ce6  1      OPC=nop             
  nop                                         #  40    0x76ce7  1      OPC=nop             
  nop                                         #  41    0x76ce8  1      OPC=nop             
  nop                                         #  42    0x76ce9  1      OPC=nop             
  nop                                         #  43    0x76cea  1      OPC=nop             
  nop                                         #  44    0x76ceb  1      OPC=nop             
  nop                                         #  45    0x76cec  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13positive_signEv, .-_ZNKSt10moneypunctIcLb1EE13positive_signEv


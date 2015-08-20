  .text
  .globl _ZNKSt10moneypunctIwLb0EE13positive_signEv
  .type _ZNKSt10moneypunctIwLb0EE13positive_signEv, @function

#! file-offset 0xefce0
#! rip-offset  0xafce0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13positive_signEv:  #        0xafce0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xafce0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xafce2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xafce3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xafce5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xafce7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xafceb  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xafced  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0xafcef  5      OPC=movl_r32_m32    
  nop                                         #  9     0xafcf4  1      OPC=nop             
  nop                                         #  10    0xafcf5  1      OPC=nop             
  nop                                         #  11    0xafcf6  1      OPC=nop             
  nop                                         #  12    0xafcf7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xafcf8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xafcfe  1      OPC=nop             
  nop                                         #  15    0xafcff  1      OPC=nop             
  nop                                         #  16    0xafd00  1      OPC=nop             
  addq %r15, %rax                             #  17    0xafd01  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xafd04  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xafd06  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xafd08  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xafd09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xafd0b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xafd12  1      OPC=nop             
  nop                                         #  24    0xafd13  1      OPC=nop             
  nop                                         #  25    0xafd14  1      OPC=nop             
  nop                                         #  26    0xafd15  1      OPC=nop             
  addq %r15, %r11                             #  27    0xafd16  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xafd19  3      OPC=jmpq_r64        
  nop                                         #  29    0xafd1c  1      OPC=nop             
  nop                                         #  30    0xafd1d  1      OPC=nop             
  nop                                         #  31    0xafd1e  1      OPC=nop             
  nop                                         #  32    0xafd1f  1      OPC=nop             
  nop                                         #  33    0xafd20  1      OPC=nop             
  nop                                         #  34    0xafd21  1      OPC=nop             
  nop                                         #  35    0xafd22  1      OPC=nop             
  nop                                         #  36    0xafd23  1      OPC=nop             
  nop                                         #  37    0xafd24  1      OPC=nop             
  nop                                         #  38    0xafd25  1      OPC=nop             
  nop                                         #  39    0xafd26  1      OPC=nop             
  nop                                         #  40    0xafd27  1      OPC=nop             
  nop                                         #  41    0xafd28  1      OPC=nop             
  nop                                         #  42    0xafd29  1      OPC=nop             
  nop                                         #  43    0xafd2a  1      OPC=nop             
  nop                                         #  44    0xafd2b  1      OPC=nop             
  nop                                         #  45    0xafd2c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13positive_signEv, .-_ZNKSt10moneypunctIwLb0EE13positive_signEv


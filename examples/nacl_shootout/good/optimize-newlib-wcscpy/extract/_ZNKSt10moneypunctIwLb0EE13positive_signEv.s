  .text
  .globl _ZNKSt10moneypunctIwLb0EE13positive_signEv
  .type _ZNKSt10moneypunctIwLb0EE13positive_signEv, @function

#! file-offset 0xef9e0
#! rip-offset  0xaf9e0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13positive_signEv:  #        0xaf9e0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xaf9e0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xaf9e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xaf9e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xaf9e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xaf9e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xaf9eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xaf9ed  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0xaf9ef  5      OPC=movl_r32_m32    
  nop                                         #  9     0xaf9f4  1      OPC=nop             
  nop                                         #  10    0xaf9f5  1      OPC=nop             
  nop                                         #  11    0xaf9f6  1      OPC=nop             
  nop                                         #  12    0xaf9f7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xaf9f8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xaf9fe  1      OPC=nop             
  nop                                         #  15    0xaf9ff  1      OPC=nop             
  nop                                         #  16    0xafa00  1      OPC=nop             
  addq %r15, %rax                             #  17    0xafa01  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xafa04  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xafa06  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xafa08  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xafa09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xafa0b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xafa12  1      OPC=nop             
  nop                                         #  24    0xafa13  1      OPC=nop             
  nop                                         #  25    0xafa14  1      OPC=nop             
  nop                                         #  26    0xafa15  1      OPC=nop             
  addq %r15, %r11                             #  27    0xafa16  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xafa19  3      OPC=jmpq_r64        
  nop                                         #  29    0xafa1c  1      OPC=nop             
  nop                                         #  30    0xafa1d  1      OPC=nop             
  nop                                         #  31    0xafa1e  1      OPC=nop             
  nop                                         #  32    0xafa1f  1      OPC=nop             
  nop                                         #  33    0xafa20  1      OPC=nop             
  nop                                         #  34    0xafa21  1      OPC=nop             
  nop                                         #  35    0xafa22  1      OPC=nop             
  nop                                         #  36    0xafa23  1      OPC=nop             
  nop                                         #  37    0xafa24  1      OPC=nop             
  nop                                         #  38    0xafa25  1      OPC=nop             
  nop                                         #  39    0xafa26  1      OPC=nop             
  nop                                         #  40    0xafa27  1      OPC=nop             
  nop                                         #  41    0xafa28  1      OPC=nop             
  nop                                         #  42    0xafa29  1      OPC=nop             
  nop                                         #  43    0xafa2a  1      OPC=nop             
  nop                                         #  44    0xafa2b  1      OPC=nop             
  nop                                         #  45    0xafa2c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13positive_signEv, .-_ZNKSt10moneypunctIwLb0EE13positive_signEv


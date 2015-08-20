  .text
  .globl _ZNSolsEPFRSt8ios_baseS0_E
  .type _ZNSolsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xdcee0
#! rip-offset  0x9cee0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt8ios_baseS0_E:  #        0x9cee0  0      OPC=<label>         
  pushq %rbx                  #  1     0x9cee0  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x9cee1  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x9cee3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x9cee5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x9cee7  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x9ceeb  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x9ceee  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x9cef0  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x9cef4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x9cef6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x9cef8  6      OPC=andl_r32_imm32  
  nop                         #  12    0x9cefe  1      OPC=nop             
  nop                         #  13    0x9ceff  1      OPC=nop             
  nop                         #  14    0x9cf00  1      OPC=nop             
  addq %r15, %rsi             #  15    0x9cf01  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x9cf04  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x9cf06  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x9cf08  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x9cf09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x9cf0b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x9cf12  1      OPC=nop             
  nop                         #  22    0x9cf13  1      OPC=nop             
  nop                         #  23    0x9cf14  1      OPC=nop             
  nop                         #  24    0x9cf15  1      OPC=nop             
  addq %r15, %r11             #  25    0x9cf16  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x9cf19  3      OPC=jmpq_r64        
  nop                         #  27    0x9cf1c  1      OPC=nop             
  nop                         #  28    0x9cf1d  1      OPC=nop             
  nop                         #  29    0x9cf1e  1      OPC=nop             
  nop                         #  30    0x9cf1f  1      OPC=nop             
  nop                         #  31    0x9cf20  1      OPC=nop             
  nop                         #  32    0x9cf21  1      OPC=nop             
  nop                         #  33    0x9cf22  1      OPC=nop             
  nop                         #  34    0x9cf23  1      OPC=nop             
  nop                         #  35    0x9cf24  1      OPC=nop             
  nop                         #  36    0x9cf25  1      OPC=nop             
  nop                         #  37    0x9cf26  1      OPC=nop             
  nop                         #  38    0x9cf27  1      OPC=nop             
  nop                         #  39    0x9cf28  1      OPC=nop             
  nop                         #  40    0x9cf29  1      OPC=nop             
  nop                         #  41    0x9cf2a  1      OPC=nop             
  nop                         #  42    0x9cf2b  1      OPC=nop             
  nop                         #  43    0x9cf2c  1      OPC=nop             
                                                                           
.size _ZNSolsEPFRSt8ios_baseS0_E, .-_ZNSolsEPFRSt8ios_baseS0_E


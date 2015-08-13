  .text
  .globl _ZNSolsEPFRSt8ios_baseS0_E
  .type _ZNSolsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xdcbe0
#! rip-offset  0x9cbe0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt8ios_baseS0_E:  #        0x9cbe0  0      OPC=<label>         
  pushq %rbx                  #  1     0x9cbe0  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x9cbe1  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x9cbe3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x9cbe5  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x9cbe7  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x9cbeb  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x9cbee  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x9cbf0  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x9cbf4  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x9cbf6  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x9cbf8  6      OPC=andl_r32_imm32  
  nop                         #  12    0x9cbfe  1      OPC=nop             
  nop                         #  13    0x9cbff  1      OPC=nop             
  nop                         #  14    0x9cc00  1      OPC=nop             
  addq %r15, %rsi             #  15    0x9cc01  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x9cc04  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x9cc06  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x9cc08  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x9cc09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x9cc0b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x9cc12  1      OPC=nop             
  nop                         #  22    0x9cc13  1      OPC=nop             
  nop                         #  23    0x9cc14  1      OPC=nop             
  nop                         #  24    0x9cc15  1      OPC=nop             
  addq %r15, %r11             #  25    0x9cc16  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x9cc19  3      OPC=jmpq_r64        
  nop                         #  27    0x9cc1c  1      OPC=nop             
  nop                         #  28    0x9cc1d  1      OPC=nop             
  nop                         #  29    0x9cc1e  1      OPC=nop             
  nop                         #  30    0x9cc1f  1      OPC=nop             
  nop                         #  31    0x9cc20  1      OPC=nop             
  nop                         #  32    0x9cc21  1      OPC=nop             
  nop                         #  33    0x9cc22  1      OPC=nop             
  nop                         #  34    0x9cc23  1      OPC=nop             
  nop                         #  35    0x9cc24  1      OPC=nop             
  nop                         #  36    0x9cc25  1      OPC=nop             
  nop                         #  37    0x9cc26  1      OPC=nop             
  nop                         #  38    0x9cc27  1      OPC=nop             
  nop                         #  39    0x9cc28  1      OPC=nop             
  nop                         #  40    0x9cc29  1      OPC=nop             
  nop                         #  41    0x9cc2a  1      OPC=nop             
  nop                         #  42    0x9cc2b  1      OPC=nop             
  nop                         #  43    0x9cc2c  1      OPC=nop             
                                                                           
.size _ZNSolsEPFRSt8ios_baseS0_E, .-_ZNSolsEPFRSt8ios_baseS0_E


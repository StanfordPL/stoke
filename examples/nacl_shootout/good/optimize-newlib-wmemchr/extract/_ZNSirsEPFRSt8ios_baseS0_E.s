  .text
  .globl _ZNSirsEPFRSt8ios_baseS0_E
  .type _ZNSirsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xa7120
#! rip-offset  0x67120
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt8ios_baseS0_E:  #        0x67120  0      OPC=<label>         
  pushq %rbx                  #  1     0x67120  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x67121  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x67123  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x67125  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x67127  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x6712b  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x6712e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x67130  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x67134  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x67136  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x67138  6      OPC=andl_r32_imm32  
  nop                         #  12    0x6713e  1      OPC=nop             
  nop                         #  13    0x6713f  1      OPC=nop             
  nop                         #  14    0x67140  1      OPC=nop             
  addq %r15, %rsi             #  15    0x67141  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x67144  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x67146  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x67148  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x67149  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x6714b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x67152  1      OPC=nop             
  nop                         #  22    0x67153  1      OPC=nop             
  nop                         #  23    0x67154  1      OPC=nop             
  nop                         #  24    0x67155  1      OPC=nop             
  addq %r15, %r11             #  25    0x67156  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x67159  3      OPC=jmpq_r64        
  nop                         #  27    0x6715c  1      OPC=nop             
  nop                         #  28    0x6715d  1      OPC=nop             
  nop                         #  29    0x6715e  1      OPC=nop             
  nop                         #  30    0x6715f  1      OPC=nop             
  nop                         #  31    0x67160  1      OPC=nop             
  nop                         #  32    0x67161  1      OPC=nop             
  nop                         #  33    0x67162  1      OPC=nop             
  nop                         #  34    0x67163  1      OPC=nop             
  nop                         #  35    0x67164  1      OPC=nop             
  nop                         #  36    0x67165  1      OPC=nop             
  nop                         #  37    0x67166  1      OPC=nop             
  nop                         #  38    0x67167  1      OPC=nop             
  nop                         #  39    0x67168  1      OPC=nop             
  nop                         #  40    0x67169  1      OPC=nop             
  nop                         #  41    0x6716a  1      OPC=nop             
  nop                         #  42    0x6716b  1      OPC=nop             
  nop                         #  43    0x6716c  1      OPC=nop             
                                                                           
.size _ZNSirsEPFRSt8ios_baseS0_E, .-_ZNSirsEPFRSt8ios_baseS0_E


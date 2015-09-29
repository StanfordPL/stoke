  .text
  .globl _ZNSolsEPFRSt8ios_baseS0_E
  .type _ZNSolsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xdd600
#! rip-offset  0x9d600
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSolsEPFRSt8ios_baseS0_E:  #        0x9d600  0      OPC=<label>         
  pushq %rbx                  #  1     0x9d600  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x9d601  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x9d603  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x9d605  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x9d607  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x9d60b  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x9d60e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x9d610  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x9d614  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x9d616  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x9d618  6      OPC=andl_r32_imm32  
  nop                         #  12    0x9d61e  1      OPC=nop             
  nop                         #  13    0x9d61f  1      OPC=nop             
  nop                         #  14    0x9d620  1      OPC=nop             
  addq %r15, %rsi             #  15    0x9d621  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x9d624  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x9d626  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x9d628  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x9d629  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x9d62b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x9d632  1      OPC=nop             
  nop                         #  22    0x9d633  1      OPC=nop             
  nop                         #  23    0x9d634  1      OPC=nop             
  nop                         #  24    0x9d635  1      OPC=nop             
  addq %r15, %r11             #  25    0x9d636  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x9d639  3      OPC=jmpq_r64        
  nop                         #  27    0x9d63c  1      OPC=nop             
  nop                         #  28    0x9d63d  1      OPC=nop             
  nop                         #  29    0x9d63e  1      OPC=nop             
  nop                         #  30    0x9d63f  1      OPC=nop             
  nop                         #  31    0x9d640  1      OPC=nop             
  nop                         #  32    0x9d641  1      OPC=nop             
  nop                         #  33    0x9d642  1      OPC=nop             
  nop                         #  34    0x9d643  1      OPC=nop             
  nop                         #  35    0x9d644  1      OPC=nop             
  nop                         #  36    0x9d645  1      OPC=nop             
  nop                         #  37    0x9d646  1      OPC=nop             
  nop                         #  38    0x9d647  1      OPC=nop             
  nop                         #  39    0x9d648  1      OPC=nop             
  nop                         #  40    0x9d649  1      OPC=nop             
  nop                         #  41    0x9d64a  1      OPC=nop             
  nop                         #  42    0x9d64b  1      OPC=nop             
  nop                         #  43    0x9d64c  1      OPC=nop             
                                                                           
.size _ZNSolsEPFRSt8ios_baseS0_E, .-_ZNSolsEPFRSt8ios_baseS0_E


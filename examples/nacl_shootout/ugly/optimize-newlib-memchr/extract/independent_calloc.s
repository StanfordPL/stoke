  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x158aa0
#! rip-offset  0x118aa0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.independent_calloc:       #        0x118aa0  0      OPC=<label>         
  subl $0x18, %esp         #  1     0x118aa0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x118aa3  3      OPC=addq_r64_r64    
  movl %edx, %ecx          #  3     0x118aa6  2      OPC=movl_r32_r32    
  movl $0x3, %edx          #  4     0x118aa8  5      OPC=movl_r32_imm32  
  movl %esi, 0xc(%rsp)     #  5     0x118aad  4      OPC=movl_m32_r32    
  leal 0xc(%rsp), %esi     #  6     0x118ab1  4      OPC=leal_r32_m16    
  nop                      #  7     0x118ab5  1      OPC=nop             
  nop                      #  8     0x118ab6  1      OPC=nop             
  nop                      #  9     0x118ab7  1      OPC=nop             
  nop                      #  10    0x118ab8  1      OPC=nop             
  nop                      #  11    0x118ab9  1      OPC=nop             
  nop                      #  12    0x118aba  1      OPC=nop             
  callq .T_278             #  13    0x118abb  5      OPC=callq_label     
  addl $0x18, %esp         #  14    0x118ac0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  15    0x118ac3  3      OPC=addq_r64_r64    
  movl %eax, %eax          #  16    0x118ac6  2      OPC=movl_r32_r32    
  popq %r11                #  17    0x118ac8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  18    0x118aca  7      OPC=andl_r32_imm32  
  nop                      #  19    0x118ad1  1      OPC=nop             
  nop                      #  20    0x118ad2  1      OPC=nop             
  nop                      #  21    0x118ad3  1      OPC=nop             
  nop                      #  22    0x118ad4  1      OPC=nop             
  addq %r15, %r11          #  23    0x118ad5  3      OPC=addq_r64_r64    
  jmpq %r11                #  24    0x118ad8  3      OPC=jmpq_r64        
  nop                      #  25    0x118adb  1      OPC=nop             
  nop                      #  26    0x118adc  1      OPC=nop             
  nop                      #  27    0x118add  1      OPC=nop             
  nop                      #  28    0x118ade  1      OPC=nop             
  nop                      #  29    0x118adf  1      OPC=nop             
  nop                      #  30    0x118ae0  1      OPC=nop             
  nop                      #  31    0x118ae1  1      OPC=nop             
  nop                      #  32    0x118ae2  1      OPC=nop             
  nop                      #  33    0x118ae3  1      OPC=nop             
  nop                      #  34    0x118ae4  1      OPC=nop             
  nop                      #  35    0x118ae5  1      OPC=nop             
  nop                      #  36    0x118ae6  1      OPC=nop             
                                                                         
.size independent_calloc, .-independent_calloc


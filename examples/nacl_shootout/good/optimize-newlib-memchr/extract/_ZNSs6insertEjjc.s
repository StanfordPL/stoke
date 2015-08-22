  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0xef160
#! rip-offset  0xaf160
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjjc:                      #        0xaf160  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaf160  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf162  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf165  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaf168  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xaf16a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaf16e  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xaf171  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  8     0xaf173  4      OPC=cmpl_r32_m32    
  ja .L_af1a0                           #  9     0xaf177  2      OPC=ja_label        
  movsbl %cl, %r8d                      #  10    0xaf179  4      OPC=movsbl_r32_r8   
  nop                                   #  11    0xaf17d  1      OPC=nop             
  nop                                   #  12    0xaf17e  1      OPC=nop             
  nop                                   #  13    0xaf17f  1      OPC=nop             
  addl $0x8, %esp                       #  14    0xaf180  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xaf183  3      OPC=addq_r64_r64    
  movl %edx, %ecx                       #  16    0xaf186  2      OPC=movl_r32_r32    
  xorl %edx, %edx                       #  17    0xaf188  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  18    0xaf18a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                        #  19    0xaf18f  2      OPC=xchgw_ax_r16    
  nop                                   #  20    0xaf191  1      OPC=nop             
  nop                                   #  21    0xaf192  1      OPC=nop             
  nop                                   #  22    0xaf193  1      OPC=nop             
  nop                                   #  23    0xaf194  1      OPC=nop             
  nop                                   #  24    0xaf195  1      OPC=nop             
  nop                                   #  25    0xaf196  1      OPC=nop             
  nop                                   #  26    0xaf197  1      OPC=nop             
  nop                                   #  27    0xaf198  1      OPC=nop             
  nop                                   #  28    0xaf199  1      OPC=nop             
  nop                                   #  29    0xaf19a  1      OPC=nop             
  nop                                   #  30    0xaf19b  1      OPC=nop             
  nop                                   #  31    0xaf19c  1      OPC=nop             
  nop                                   #  32    0xaf19d  1      OPC=nop             
  nop                                   #  33    0xaf19e  1      OPC=nop             
  nop                                   #  34    0xaf19f  1      OPC=nop             
.L_af1a0:                               #        0xaf1a0  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  35    0xaf1a0  5      OPC=movl_r32_imm32  
  nop                                   #  36    0xaf1a5  1      OPC=nop             
  nop                                   #  37    0xaf1a6  1      OPC=nop             
  nop                                   #  38    0xaf1a7  1      OPC=nop             
  nop                                   #  39    0xaf1a8  1      OPC=nop             
  nop                                   #  40    0xaf1a9  1      OPC=nop             
  nop                                   #  41    0xaf1aa  1      OPC=nop             
  nop                                   #  42    0xaf1ab  1      OPC=nop             
  nop                                   #  43    0xaf1ac  1      OPC=nop             
  nop                                   #  44    0xaf1ad  1      OPC=nop             
  nop                                   #  45    0xaf1ae  1      OPC=nop             
  nop                                   #  46    0xaf1af  1      OPC=nop             
  nop                                   #  47    0xaf1b0  1      OPC=nop             
  nop                                   #  48    0xaf1b1  1      OPC=nop             
  nop                                   #  49    0xaf1b2  1      OPC=nop             
  nop                                   #  50    0xaf1b3  1      OPC=nop             
  nop                                   #  51    0xaf1b4  1      OPC=nop             
  nop                                   #  52    0xaf1b5  1      OPC=nop             
  nop                                   #  53    0xaf1b6  1      OPC=nop             
  nop                                   #  54    0xaf1b7  1      OPC=nop             
  nop                                   #  55    0xaf1b8  1      OPC=nop             
  nop                                   #  56    0xaf1b9  1      OPC=nop             
  nop                                   #  57    0xaf1ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0xaf1bb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc


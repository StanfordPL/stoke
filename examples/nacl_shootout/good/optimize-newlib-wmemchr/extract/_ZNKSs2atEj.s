  .text
  .globl _ZNKSs2atEj
  .type _ZNKSs2atEj, @function

#! file-offset 0xeb160
#! rip-offset  0xab160
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs2atEj:                           #        0xab160  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab160  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xab162  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xab165  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xab168  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xab16a  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                 #  6     0xab16e  3      OPC=leal_r32_m16    
  movl %edx, %edx                       #  7     0xab171  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  8     0xab173  4      OPC=cmpl_r32_m32    
  jae .L_ab1a0                          #  9     0xab177  2      OPC=jae_label       
  addl $0x8, %esp                       #  10    0xab179  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  11    0xab17c  3      OPC=addq_r64_r64    
  nop                                   #  12    0xab17f  1      OPC=nop             
  leal (%rsi,%rax,1), %eax              #  13    0xab180  3      OPC=leal_r32_m16    
  popq %r11                             #  14    0xab183  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  15    0xab185  7      OPC=andl_r32_imm32  
  nop                                   #  16    0xab18c  1      OPC=nop             
  nop                                   #  17    0xab18d  1      OPC=nop             
  nop                                   #  18    0xab18e  1      OPC=nop             
  nop                                   #  19    0xab18f  1      OPC=nop             
  addq %r15, %r11                       #  20    0xab190  3      OPC=addq_r64_r64    
  jmpq %r11                             #  21    0xab193  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  22    0xab196  2      OPC=xchgw_ax_r16    
  nop                                   #  23    0xab198  1      OPC=nop             
  nop                                   #  24    0xab199  1      OPC=nop             
  nop                                   #  25    0xab19a  1      OPC=nop             
  nop                                   #  26    0xab19b  1      OPC=nop             
  nop                                   #  27    0xab19c  1      OPC=nop             
  nop                                   #  28    0xab19d  1      OPC=nop             
  nop                                   #  29    0xab19e  1      OPC=nop             
  nop                                   #  30    0xab19f  1      OPC=nop             
  nop                                   #  31    0xab1a0  1      OPC=nop             
  nop                                   #  32    0xab1a1  1      OPC=nop             
  nop                                   #  33    0xab1a2  1      OPC=nop             
  nop                                   #  34    0xab1a3  1      OPC=nop             
  nop                                   #  35    0xab1a4  1      OPC=nop             
  nop                                   #  36    0xab1a5  1      OPC=nop             
  nop                                   #  37    0xab1a6  1      OPC=nop             
.L_ab1a0:                               #        0xab1a7  0      OPC=<label>         
  movl $0x1003baac, %edi                #  38    0xab1a7  5      OPC=movl_r32_imm32  
  nop                                   #  39    0xab1ac  1      OPC=nop             
  nop                                   #  40    0xab1ad  1      OPC=nop             
  nop                                   #  41    0xab1ae  1      OPC=nop             
  nop                                   #  42    0xab1af  1      OPC=nop             
  nop                                   #  43    0xab1b0  1      OPC=nop             
  nop                                   #  44    0xab1b1  1      OPC=nop             
  nop                                   #  45    0xab1b2  1      OPC=nop             
  nop                                   #  46    0xab1b3  1      OPC=nop             
  nop                                   #  47    0xab1b4  1      OPC=nop             
  nop                                   #  48    0xab1b5  1      OPC=nop             
  nop                                   #  49    0xab1b6  1      OPC=nop             
  nop                                   #  50    0xab1b7  1      OPC=nop             
  nop                                   #  51    0xab1b8  1      OPC=nop             
  nop                                   #  52    0xab1b9  1      OPC=nop             
  nop                                   #  53    0xab1ba  1      OPC=nop             
  nop                                   #  54    0xab1bb  1      OPC=nop             
  nop                                   #  55    0xab1bc  1      OPC=nop             
  nop                                   #  56    0xab1bd  1      OPC=nop             
  nop                                   #  57    0xab1be  1      OPC=nop             
  nop                                   #  58    0xab1bf  1      OPC=nop             
  nop                                   #  59    0xab1c0  1      OPC=nop             
  nop                                   #  60    0xab1c1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  61    0xab1c2  5      OPC=callq_label     
                                                                                     
.size _ZNKSs2atEj, .-_ZNKSs2atEj


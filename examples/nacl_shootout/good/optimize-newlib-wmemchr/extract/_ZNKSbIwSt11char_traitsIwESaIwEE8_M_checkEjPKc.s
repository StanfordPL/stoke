  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, @function

#! file-offset 0x116a80
#! rip-offset  0xd6a80
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc:  #        0xd6a80  0      OPC=<label>         
  movl %edi, %edi                                 #  1     0xd6a80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                 #  2     0xd6a82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                 #  3     0xd6a85  3      OPC=addq_r64_r64    
  movl %edx, %edx                                 #  4     0xd6a88  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  5     0xd6a8a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                        #  6     0xd6a8c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xd6a90  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xd6a93  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                        #  9     0xd6a95  4      OPC=cmpl_r32_m32    
  ja .L_d6ac0                                     #  10    0xd6a99  2      OPC=ja_label        
  nop                                             #  11    0xd6a9b  1      OPC=nop             
  nop                                             #  12    0xd6a9c  1      OPC=nop             
  nop                                             #  13    0xd6a9d  1      OPC=nop             
  nop                                             #  14    0xd6a9e  1      OPC=nop             
  nop                                             #  15    0xd6a9f  1      OPC=nop             
  addl $0x8, %esp                                 #  16    0xd6aa0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                 #  17    0xd6aa3  3      OPC=addq_r64_r64    
  movl %esi, %eax                                 #  18    0xd6aa6  2      OPC=movl_r32_r32    
  popq %r11                                       #  19    0xd6aa8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                         #  20    0xd6aaa  7      OPC=andl_r32_imm32  
  nop                                             #  21    0xd6ab1  1      OPC=nop             
  nop                                             #  22    0xd6ab2  1      OPC=nop             
  nop                                             #  23    0xd6ab3  1      OPC=nop             
  nop                                             #  24    0xd6ab4  1      OPC=nop             
  addq %r15, %r11                                 #  25    0xd6ab5  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  26    0xd6ab8  3      OPC=jmpq_r64        
  nop                                             #  27    0xd6abb  1      OPC=nop             
  nop                                             #  28    0xd6abc  1      OPC=nop             
  nop                                             #  29    0xd6abd  1      OPC=nop             
  nop                                             #  30    0xd6abe  1      OPC=nop             
  nop                                             #  31    0xd6abf  1      OPC=nop             
  nop                                             #  32    0xd6ac0  1      OPC=nop             
  nop                                             #  33    0xd6ac1  1      OPC=nop             
  nop                                             #  34    0xd6ac2  1      OPC=nop             
  nop                                             #  35    0xd6ac3  1      OPC=nop             
  nop                                             #  36    0xd6ac4  1      OPC=nop             
  nop                                             #  37    0xd6ac5  1      OPC=nop             
  nop                                             #  38    0xd6ac6  1      OPC=nop             
.L_d6ac0:                                         #        0xd6ac7  0      OPC=<label>         
  movl %edx, %edi                                 #  39    0xd6ac7  2      OPC=movl_r32_r32    
  nop                                             #  40    0xd6ac9  1      OPC=nop             
  nop                                             #  41    0xd6aca  1      OPC=nop             
  nop                                             #  42    0xd6acb  1      OPC=nop             
  nop                                             #  43    0xd6acc  1      OPC=nop             
  nop                                             #  44    0xd6acd  1      OPC=nop             
  nop                                             #  45    0xd6ace  1      OPC=nop             
  nop                                             #  46    0xd6acf  1      OPC=nop             
  nop                                             #  47    0xd6ad0  1      OPC=nop             
  nop                                             #  48    0xd6ad1  1      OPC=nop             
  nop                                             #  49    0xd6ad2  1      OPC=nop             
  nop                                             #  50    0xd6ad3  1      OPC=nop             
  nop                                             #  51    0xd6ad4  1      OPC=nop             
  nop                                             #  52    0xd6ad5  1      OPC=nop             
  nop                                             #  53    0xd6ad6  1      OPC=nop             
  nop                                             #  54    0xd6ad7  1      OPC=nop             
  nop                                             #  55    0xd6ad8  1      OPC=nop             
  nop                                             #  56    0xd6ad9  1      OPC=nop             
  nop                                             #  57    0xd6ada  1      OPC=nop             
  nop                                             #  58    0xd6adb  1      OPC=nop             
  nop                                             #  59    0xd6adc  1      OPC=nop             
  nop                                             #  60    0xd6add  1      OPC=nop             
  nop                                             #  61    0xd6ade  1      OPC=nop             
  nop                                             #  62    0xd6adf  1      OPC=nop             
  nop                                             #  63    0xd6ae0  1      OPC=nop             
  nop                                             #  64    0xd6ae1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc            #  65    0xd6ae2  5      OPC=callq_label     
                                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc


  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, @function

#! file-offset 0x11ad60
#! rip-offset  0xdad60
#! capacity    96 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE:  #        0xdad60  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xdad60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                            #  2     0xdad61  2      OPC=movl_r32_r32    
  movl %esi, %ecx                                            #  3     0xdad63  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                            #  4     0xdad65  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                   #  5     0xdad67  4      OPC=movl_r32_m32    
  shrq $0x20, %rsi                                           #  6     0xdad6b  4      OPC=shrq_r64_imm8   
  movl %ebx, %edi                                            #  7     0xdad6f  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %r8d                                       #  8     0xdad71  8      OPC=leal_r32_m16    
  xorl %esi, %esi                                            #  9     0xdad79  2      OPC=xorl_r32_r32    
  sarl $0x2, %r8d                                            #  10    0xdad7b  4      OPC=sarl_r32_imm8   
  nop                                                        #  11    0xdad7f  1      OPC=nop             
  subl $0xc, %eax                                            #  12    0xdad80  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                            #  13    0xdad83  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                   #  14    0xdad85  4      OPC=movl_r32_m32    
  shll $0x2, %edx                                            #  15    0xdad89  3      OPC=shll_r32_imm8   
  sarl $0x2, %edx                                            #  16    0xdad8c  3      OPC=sarl_r32_imm8   
  nop                                                        #  17    0xdad8f  1      OPC=nop             
  nop                                                        #  18    0xdad90  1      OPC=nop             
  nop                                                        #  19    0xdad91  1      OPC=nop             
  nop                                                        #  20    0xdad92  1      OPC=nop             
  nop                                                        #  21    0xdad93  1      OPC=nop             
  nop                                                        #  22    0xdad94  1      OPC=nop             
  nop                                                        #  23    0xdad95  1      OPC=nop             
  nop                                                        #  24    0xdad96  1      OPC=nop             
  nop                                                        #  25    0xdad97  1      OPC=nop             
  nop                                                        #  26    0xdad98  1      OPC=nop             
  nop                                                        #  27    0xdad99  1      OPC=nop             
  nop                                                        #  28    0xdad9a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj      #  29    0xdad9b  5      OPC=callq_label     
  movl %ebx, %eax                                            #  30    0xdada0  2      OPC=movl_r32_r32    
  popq %rbx                                                  #  31    0xdada2  1      OPC=popq_r64_1      
  popq %r11                                                  #  32    0xdada3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  33    0xdada5  7      OPC=andl_r32_imm32  
  nop                                                        #  34    0xdadac  1      OPC=nop             
  nop                                                        #  35    0xdadad  1      OPC=nop             
  nop                                                        #  36    0xdadae  1      OPC=nop             
  nop                                                        #  37    0xdadaf  1      OPC=nop             
  addq %r15, %r11                                            #  38    0xdadb0  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  39    0xdadb3  3      OPC=jmpq_r64        
  nop                                                        #  40    0xdadb6  1      OPC=nop             
  nop                                                        #  41    0xdadb7  1      OPC=nop             
  nop                                                        #  42    0xdadb8  1      OPC=nop             
  nop                                                        #  43    0xdadb9  1      OPC=nop             
  nop                                                        #  44    0xdadba  1      OPC=nop             
  nop                                                        #  45    0xdadbb  1      OPC=nop             
  nop                                                        #  46    0xdadbc  1      OPC=nop             
  nop                                                        #  47    0xdadbd  1      OPC=nop             
  nop                                                        #  48    0xdadbe  1      OPC=nop             
  nop                                                        #  49    0xdadbf  1      OPC=nop             
  nop                                                        #  50    0xdadc0  1      OPC=nop             
  nop                                                        #  51    0xdadc1  1      OPC=nop             
  nop                                                        #  52    0xdadc2  1      OPC=nop             
  nop                                                        #  53    0xdadc3  1      OPC=nop             
  nop                                                        #  54    0xdadc4  1      OPC=nop             
  nop                                                        #  55    0xdadc5  1      OPC=nop             
  nop                                                        #  56    0xdadc6  1      OPC=nop             
                                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE


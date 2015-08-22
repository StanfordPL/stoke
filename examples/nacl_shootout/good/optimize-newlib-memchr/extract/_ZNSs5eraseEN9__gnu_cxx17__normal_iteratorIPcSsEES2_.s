  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0xef260
#! rip-offset  0xaf260
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0xaf260  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                #  1     0xaf260  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                       #  2     0xaf265  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                 #  3     0xaf267  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                      #  4     0xaf26c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  5     0xaf26f  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                      #  6     0xaf272  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  7     0xaf275  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                             #  8     0xaf277  4      OPC=subl_r32_m32    
  subl %esi, %edx                                       #  9     0xaf27b  2      OPC=subl_r32_r32    
  movl %ebx, %edi                                       #  10    0xaf27d  2      OPC=movl_r32_r32    
  nop                                                   #  11    0xaf27f  1      OPC=nop             
  xorl %ecx, %ecx                                       #  12    0xaf280  2      OPC=xorl_r32_r32    
  movl %r12d, %esi                                      #  13    0xaf282  3      OPC=movl_r32_r32    
  nop                                                   #  14    0xaf285  1      OPC=nop             
  nop                                                   #  15    0xaf286  1      OPC=nop             
  nop                                                   #  16    0xaf287  1      OPC=nop             
  nop                                                   #  17    0xaf288  1      OPC=nop             
  nop                                                   #  18    0xaf289  1      OPC=nop             
  nop                                                   #  19    0xaf28a  1      OPC=nop             
  nop                                                   #  20    0xaf28b  1      OPC=nop             
  nop                                                   #  21    0xaf28c  1      OPC=nop             
  nop                                                   #  22    0xaf28d  1      OPC=nop             
  nop                                                   #  23    0xaf28e  1      OPC=nop             
  nop                                                   #  24    0xaf28f  1      OPC=nop             
  nop                                                   #  25    0xaf290  1      OPC=nop             
  nop                                                   #  26    0xaf291  1      OPC=nop             
  nop                                                   #  27    0xaf292  1      OPC=nop             
  nop                                                   #  28    0xaf293  1      OPC=nop             
  nop                                                   #  29    0xaf294  1      OPC=nop             
  nop                                                   #  30    0xaf295  1      OPC=nop             
  nop                                                   #  31    0xaf296  1      OPC=nop             
  nop                                                   #  32    0xaf297  1      OPC=nop             
  nop                                                   #  33    0xaf298  1      OPC=nop             
  nop                                                   #  34    0xaf299  1      OPC=nop             
  nop                                                   #  35    0xaf29a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                            #  36    0xaf29b  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  37    0xaf2a0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  38    0xaf2a2  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                 #  39    0xaf2a6  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                              #  40    0xaf2a9  4      OPC=leal_r32_m16    
  movl %edx, %edx                                       #  41    0xaf2ad  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  42    0xaf2af  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                  #  43    0xaf2b8  5      OPC=movq_r64_m64    
  nop                                                   #  44    0xaf2bd  1      OPC=nop             
  nop                                                   #  45    0xaf2be  1      OPC=nop             
  nop                                                   #  46    0xaf2bf  1      OPC=nop             
  movq 0x10(%rsp), %r12                                 #  47    0xaf2c0  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                      #  48    0xaf2c5  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  49    0xaf2c8  3      OPC=addq_r64_r64    
  popq %r11                                             #  50    0xaf2cb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  51    0xaf2cd  7      OPC=andl_r32_imm32  
  nop                                                   #  52    0xaf2d4  1      OPC=nop             
  nop                                                   #  53    0xaf2d5  1      OPC=nop             
  nop                                                   #  54    0xaf2d6  1      OPC=nop             
  nop                                                   #  55    0xaf2d7  1      OPC=nop             
  addq %r15, %r11                                       #  56    0xaf2d8  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  57    0xaf2db  3      OPC=jmpq_r64        
  nop                                                   #  58    0xaf2de  1      OPC=nop             
  nop                                                   #  59    0xaf2df  1      OPC=nop             
  nop                                                   #  60    0xaf2e0  1      OPC=nop             
  nop                                                   #  61    0xaf2e1  1      OPC=nop             
  nop                                                   #  62    0xaf2e2  1      OPC=nop             
  nop                                                   #  63    0xaf2e3  1      OPC=nop             
  nop                                                   #  64    0xaf2e4  1      OPC=nop             
  nop                                                   #  65    0xaf2e5  1      OPC=nop             
  nop                                                   #  66    0xaf2e6  1      OPC=nop             
                                                                                                     
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_


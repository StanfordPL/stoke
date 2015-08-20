  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, @function

#! file-offset 0xfbfa0
#! rip-offset  0xbbfa0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv:                      #        0xbbfa0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0xbbfa0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0xbbfa2  2      OPC=movl_r32_r32    
  pushq %rbx                                                                                                    #  3     0xbbfa4  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  4     0xbbfa5  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  5     0xbbfa7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  6     0xbbfaa  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  7     0xbbfad  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  8     0xbbfaf  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  9     0xbbfb4  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  10    0xbbfb8  3      OPC=movl_r32_r32    
  nop                                                                                                           #  11    0xbbfbb  1      OPC=nop             
  nop                                                                                                           #  12    0xbbfbc  1      OPC=nop             
  nop                                                                                                           #  13    0xbbfbd  1      OPC=nop             
  nop                                                                                                           #  14    0xbbfbe  1      OPC=nop             
  nop                                                                                                           #  15    0xbbfbf  1      OPC=nop             
  andl $0xffffbfb5, %edx                                                                                        #  16    0xbbfc0  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  17    0xbbfc6  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  18    0xbbfcc  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  19    0xbbfce  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  20    0xbbfd3  2      OPC=movl_r32_r32    
  nop                                                                                                           #  21    0xbbfd5  1      OPC=nop             
  nop                                                                                                           #  22    0xbbfd6  1      OPC=nop             
  nop                                                                                                           #  23    0xbbfd7  1      OPC=nop             
  nop                                                                                                           #  24    0xbbfd8  1      OPC=nop             
  nop                                                                                                           #  25    0xbbfd9  1      OPC=nop             
  nop                                                                                                           #  26    0xbbfda  1      OPC=nop             
  callq ._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE13_M_insert_intImEES3_S3_RSt8ios_basewT_  #  27    0xbbfdb  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  28    0xbbfe0  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  29    0xbbfe3  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  30    0xbbfe7  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  31    0xbbfe9  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  32    0xbbfee  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  33    0xbbff2  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  34    0xbbff6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  35    0xbbff9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  36    0xbbffc  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  37    0xbbffd  2      OPC=popq_r64_1      
  nop                                                                                                           #  38    0xbbfff  1      OPC=nop             
  popq %r11                                                                                                     #  39    0xbc000  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  40    0xbc002  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  41    0xbc009  1      OPC=nop             
  nop                                                                                                           #  42    0xbc00a  1      OPC=nop             
  nop                                                                                                           #  43    0xbc00b  1      OPC=nop             
  nop                                                                                                           #  44    0xbc00c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  45    0xbc00d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  46    0xbc010  3      OPC=jmpq_r64        
  nop                                                                                                           #  47    0xbc013  1      OPC=nop             
  nop                                                                                                           #  48    0xbc014  1      OPC=nop             
  nop                                                                                                           #  49    0xbc015  1      OPC=nop             
  nop                                                                                                           #  50    0xbc016  1      OPC=nop             
  nop                                                                                                           #  51    0xbc017  1      OPC=nop             
  nop                                                                                                           #  52    0xbc018  1      OPC=nop             
  nop                                                                                                           #  53    0xbc019  1      OPC=nop             
  nop                                                                                                           #  54    0xbc01a  1      OPC=nop             
  nop                                                                                                           #  55    0xbc01b  1      OPC=nop             
  nop                                                                                                           #  56    0xbc01c  1      OPC=nop             
  nop                                                                                                           #  57    0xbc01d  1      OPC=nop             
  nop                                                                                                           #  58    0xbc01e  1      OPC=nop             
  nop                                                                                                           #  59    0xbc01f  1      OPC=nop             
  nop                                                                                                           #  60    0xbc020  1      OPC=nop             
  nop                                                                                                           #  61    0xbc021  1      OPC=nop             
  nop                                                                                                           #  62    0xbc022  1      OPC=nop             
  nop                                                                                                           #  63    0xbc023  1      OPC=nop             
  nop                                                                                                           #  64    0xbc024  1      OPC=nop             
  nop                                                                                                           #  65    0xbc025  1      OPC=nop             
  nop                                                                                                           #  66    0xbc026  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv


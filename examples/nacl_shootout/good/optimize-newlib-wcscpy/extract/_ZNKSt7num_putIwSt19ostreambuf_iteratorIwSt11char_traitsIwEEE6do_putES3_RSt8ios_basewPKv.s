  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, @function

#! file-offset 0xfbca0
#! rip-offset  0xbbca0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv:                      #        0xbbca0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0xbbca0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0xbbca2  2      OPC=movl_r32_r32    
  pushq %rbx                                                                                                    #  3     0xbbca4  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  4     0xbbca5  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  5     0xbbca7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  6     0xbbcaa  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  7     0xbbcad  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  8     0xbbcaf  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  9     0xbbcb4  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  10    0xbbcb8  3      OPC=movl_r32_r32    
  nop                                                                                                           #  11    0xbbcbb  1      OPC=nop             
  nop                                                                                                           #  12    0xbbcbc  1      OPC=nop             
  nop                                                                                                           #  13    0xbbcbd  1      OPC=nop             
  nop                                                                                                           #  14    0xbbcbe  1      OPC=nop             
  nop                                                                                                           #  15    0xbbcbf  1      OPC=nop             
  andl $0xffffbfb5, %edx                                                                                        #  16    0xbbcc0  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  17    0xbbcc6  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  18    0xbbccc  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  19    0xbbcce  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  20    0xbbcd3  2      OPC=movl_r32_r32    
  nop                                                                                                           #  21    0xbbcd5  1      OPC=nop             
  nop                                                                                                           #  22    0xbbcd6  1      OPC=nop             
  nop                                                                                                           #  23    0xbbcd7  1      OPC=nop             
  nop                                                                                                           #  24    0xbbcd8  1      OPC=nop             
  nop                                                                                                           #  25    0xbbcd9  1      OPC=nop             
  nop                                                                                                           #  26    0xbbcda  1      OPC=nop             
  callq ._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE13_M_insert_intImEES3_S3_RSt8ios_basewT_  #  27    0xbbcdb  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  28    0xbbce0  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  29    0xbbce3  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  30    0xbbce7  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  31    0xbbce9  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  32    0xbbcee  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  33    0xbbcf2  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  34    0xbbcf6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  35    0xbbcf9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  36    0xbbcfc  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  37    0xbbcfd  2      OPC=popq_r64_1      
  nop                                                                                                           #  38    0xbbcff  1      OPC=nop             
  popq %r11                                                                                                     #  39    0xbbd00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  40    0xbbd02  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  41    0xbbd09  1      OPC=nop             
  nop                                                                                                           #  42    0xbbd0a  1      OPC=nop             
  nop                                                                                                           #  43    0xbbd0b  1      OPC=nop             
  nop                                                                                                           #  44    0xbbd0c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  45    0xbbd0d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  46    0xbbd10  3      OPC=jmpq_r64        
  nop                                                                                                           #  47    0xbbd13  1      OPC=nop             
  nop                                                                                                           #  48    0xbbd14  1      OPC=nop             
  nop                                                                                                           #  49    0xbbd15  1      OPC=nop             
  nop                                                                                                           #  50    0xbbd16  1      OPC=nop             
  nop                                                                                                           #  51    0xbbd17  1      OPC=nop             
  nop                                                                                                           #  52    0xbbd18  1      OPC=nop             
  nop                                                                                                           #  53    0xbbd19  1      OPC=nop             
  nop                                                                                                           #  54    0xbbd1a  1      OPC=nop             
  nop                                                                                                           #  55    0xbbd1b  1      OPC=nop             
  nop                                                                                                           #  56    0xbbd1c  1      OPC=nop             
  nop                                                                                                           #  57    0xbbd1d  1      OPC=nop             
  nop                                                                                                           #  58    0xbbd1e  1      OPC=nop             
  nop                                                                                                           #  59    0xbbd1f  1      OPC=nop             
  nop                                                                                                           #  60    0xbbd20  1      OPC=nop             
  nop                                                                                                           #  61    0xbbd21  1      OPC=nop             
  nop                                                                                                           #  62    0xbbd22  1      OPC=nop             
  nop                                                                                                           #  63    0xbbd23  1      OPC=nop             
  nop                                                                                                           #  64    0xbbd24  1      OPC=nop             
  nop                                                                                                           #  65    0xbbd25  1      OPC=nop             
  nop                                                                                                           #  66    0xbbd26  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv


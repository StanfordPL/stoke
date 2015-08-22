  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, @function

#! file-offset 0xfc6c0
#! rip-offset  0xbc6c0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv:                      #        0xbc6c0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0xbc6c0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0xbc6c2  2      OPC=movl_r32_r32    
  pushq %rbx                                                                                                    #  3     0xbc6c4  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  4     0xbc6c5  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  5     0xbc6c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  6     0xbc6ca  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  7     0xbc6cd  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  8     0xbc6cf  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  9     0xbc6d4  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  10    0xbc6d8  3      OPC=movl_r32_r32    
  nop                                                                                                           #  11    0xbc6db  1      OPC=nop             
  nop                                                                                                           #  12    0xbc6dc  1      OPC=nop             
  nop                                                                                                           #  13    0xbc6dd  1      OPC=nop             
  nop                                                                                                           #  14    0xbc6de  1      OPC=nop             
  nop                                                                                                           #  15    0xbc6df  1      OPC=nop             
  andl $0xffffbfb5, %edx                                                                                        #  16    0xbc6e0  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  17    0xbc6e6  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  18    0xbc6ec  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  19    0xbc6ee  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  20    0xbc6f3  2      OPC=movl_r32_r32    
  nop                                                                                                           #  21    0xbc6f5  1      OPC=nop             
  nop                                                                                                           #  22    0xbc6f6  1      OPC=nop             
  nop                                                                                                           #  23    0xbc6f7  1      OPC=nop             
  nop                                                                                                           #  24    0xbc6f8  1      OPC=nop             
  nop                                                                                                           #  25    0xbc6f9  1      OPC=nop             
  nop                                                                                                           #  26    0xbc6fa  1      OPC=nop             
  callq ._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE13_M_insert_intImEES3_S3_RSt8ios_basewT_  #  27    0xbc6fb  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  28    0xbc700  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  29    0xbc703  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  30    0xbc707  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  31    0xbc709  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  32    0xbc70e  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  33    0xbc712  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  34    0xbc716  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  35    0xbc719  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  36    0xbc71c  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  37    0xbc71d  2      OPC=popq_r64_1      
  nop                                                                                                           #  38    0xbc71f  1      OPC=nop             
  popq %r11                                                                                                     #  39    0xbc720  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  40    0xbc722  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  41    0xbc729  1      OPC=nop             
  nop                                                                                                           #  42    0xbc72a  1      OPC=nop             
  nop                                                                                                           #  43    0xbc72b  1      OPC=nop             
  nop                                                                                                           #  44    0xbc72c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  45    0xbc72d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  46    0xbc730  3      OPC=jmpq_r64        
  nop                                                                                                           #  47    0xbc733  1      OPC=nop             
  nop                                                                                                           #  48    0xbc734  1      OPC=nop             
  nop                                                                                                           #  49    0xbc735  1      OPC=nop             
  nop                                                                                                           #  50    0xbc736  1      OPC=nop             
  nop                                                                                                           #  51    0xbc737  1      OPC=nop             
  nop                                                                                                           #  52    0xbc738  1      OPC=nop             
  nop                                                                                                           #  53    0xbc739  1      OPC=nop             
  nop                                                                                                           #  54    0xbc73a  1      OPC=nop             
  nop                                                                                                           #  55    0xbc73b  1      OPC=nop             
  nop                                                                                                           #  56    0xbc73c  1      OPC=nop             
  nop                                                                                                           #  57    0xbc73d  1      OPC=nop             
  nop                                                                                                           #  58    0xbc73e  1      OPC=nop             
  nop                                                                                                           #  59    0xbc73f  1      OPC=nop             
  nop                                                                                                           #  60    0xbc740  1      OPC=nop             
  nop                                                                                                           #  61    0xbc741  1      OPC=nop             
  nop                                                                                                           #  62    0xbc742  1      OPC=nop             
  nop                                                                                                           #  63    0xbc743  1      OPC=nop             
  nop                                                                                                           #  64    0xbc744  1      OPC=nop             
  nop                                                                                                           #  65    0xbc745  1      OPC=nop             
  nop                                                                                                           #  66    0xbc746  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE6do_putES3_RSt8ios_basewPKv


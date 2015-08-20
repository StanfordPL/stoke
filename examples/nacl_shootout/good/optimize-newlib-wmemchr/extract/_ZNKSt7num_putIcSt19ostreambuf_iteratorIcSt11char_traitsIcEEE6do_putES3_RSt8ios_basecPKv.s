  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, @function

#! file-offset 0xc41c0
#! rip-offset  0x841c0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv:                      #        0x841c0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0x841c0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0x841c2  2      OPC=movl_r32_r32    
  movsbl %cl, %ecx                                                                                              #  3     0x841c4  3      OPC=movsbl_r32_r8   
  pushq %rbx                                                                                                    #  4     0x841c7  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  5     0x841c8  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  6     0x841ca  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  7     0x841cd  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  8     0x841d0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  9     0x841d2  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  10    0x841d7  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  11    0x841db  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                                                                                                #  12    0x841de  2      OPC=xchgw_ax_r16    
  andl $0xffffbfb5, %edx                                                                                        #  13    0x841e0  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  14    0x841e6  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  15    0x841ec  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  16    0x841ee  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  17    0x841f3  2      OPC=movl_r32_r32    
  nop                                                                                                           #  18    0x841f5  1      OPC=nop             
  nop                                                                                                           #  19    0x841f6  1      OPC=nop             
  nop                                                                                                           #  20    0x841f7  1      OPC=nop             
  nop                                                                                                           #  21    0x841f8  1      OPC=nop             
  nop                                                                                                           #  22    0x841f9  1      OPC=nop             
  nop                                                                                                           #  23    0x841fa  1      OPC=nop             
  callq ._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE13_M_insert_intImEES3_S3_RSt8ios_basecT_  #  24    0x841fb  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  25    0x84200  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  26    0x84203  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  27    0x84207  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  28    0x84209  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  29    0x8420e  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  30    0x84212  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  31    0x84216  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  32    0x84219  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  33    0x8421c  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  34    0x8421d  2      OPC=popq_r64_1      
  nop                                                                                                           #  35    0x8421f  1      OPC=nop             
  popq %r11                                                                                                     #  36    0x84220  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  37    0x84222  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  38    0x84229  1      OPC=nop             
  nop                                                                                                           #  39    0x8422a  1      OPC=nop             
  nop                                                                                                           #  40    0x8422b  1      OPC=nop             
  nop                                                                                                           #  41    0x8422c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  42    0x8422d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  43    0x84230  3      OPC=jmpq_r64        
  nop                                                                                                           #  44    0x84233  1      OPC=nop             
  nop                                                                                                           #  45    0x84234  1      OPC=nop             
  nop                                                                                                           #  46    0x84235  1      OPC=nop             
  nop                                                                                                           #  47    0x84236  1      OPC=nop             
  nop                                                                                                           #  48    0x84237  1      OPC=nop             
  nop                                                                                                           #  49    0x84238  1      OPC=nop             
  nop                                                                                                           #  50    0x84239  1      OPC=nop             
  nop                                                                                                           #  51    0x8423a  1      OPC=nop             
  nop                                                                                                           #  52    0x8423b  1      OPC=nop             
  nop                                                                                                           #  53    0x8423c  1      OPC=nop             
  nop                                                                                                           #  54    0x8423d  1      OPC=nop             
  nop                                                                                                           #  55    0x8423e  1      OPC=nop             
  nop                                                                                                           #  56    0x8423f  1      OPC=nop             
  nop                                                                                                           #  57    0x84240  1      OPC=nop             
  nop                                                                                                           #  58    0x84241  1      OPC=nop             
  nop                                                                                                           #  59    0x84242  1      OPC=nop             
  nop                                                                                                           #  60    0x84243  1      OPC=nop             
  nop                                                                                                           #  61    0x84244  1      OPC=nop             
  nop                                                                                                           #  62    0x84245  1      OPC=nop             
  nop                                                                                                           #  63    0x84246  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv


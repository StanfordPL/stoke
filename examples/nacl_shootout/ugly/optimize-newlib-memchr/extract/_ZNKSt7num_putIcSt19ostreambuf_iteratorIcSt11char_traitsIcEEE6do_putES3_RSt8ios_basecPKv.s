  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, @function

#! file-offset 0xc48e0
#! rip-offset  0x848e0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv:                      #        0x848e0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0x848e0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0x848e2  2      OPC=movl_r32_r32    
  movsbl %cl, %ecx                                                                                              #  3     0x848e4  3      OPC=movsbl_r32_r8   
  pushq %rbx                                                                                                    #  4     0x848e7  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  5     0x848e8  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  6     0x848ea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  7     0x848ed  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  8     0x848f0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  9     0x848f2  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  10    0x848f7  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  11    0x848fb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                                                                                                #  12    0x848fe  2      OPC=xchgw_ax_r16    
  andl $0xffffbfb5, %edx                                                                                        #  13    0x84900  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  14    0x84906  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  15    0x8490c  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  16    0x8490e  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  17    0x84913  2      OPC=movl_r32_r32    
  nop                                                                                                           #  18    0x84915  1      OPC=nop             
  nop                                                                                                           #  19    0x84916  1      OPC=nop             
  nop                                                                                                           #  20    0x84917  1      OPC=nop             
  nop                                                                                                           #  21    0x84918  1      OPC=nop             
  nop                                                                                                           #  22    0x84919  1      OPC=nop             
  nop                                                                                                           #  23    0x8491a  1      OPC=nop             
  callq ._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE13_M_insert_intImEES3_S3_RSt8ios_basecT_  #  24    0x8491b  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  25    0x84920  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  26    0x84923  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  27    0x84927  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  28    0x84929  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  29    0x8492e  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  30    0x84932  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  31    0x84936  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  32    0x84939  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  33    0x8493c  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  34    0x8493d  2      OPC=popq_r64_1      
  nop                                                                                                           #  35    0x8493f  1      OPC=nop             
  popq %r11                                                                                                     #  36    0x84940  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  37    0x84942  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  38    0x84949  1      OPC=nop             
  nop                                                                                                           #  39    0x8494a  1      OPC=nop             
  nop                                                                                                           #  40    0x8494b  1      OPC=nop             
  nop                                                                                                           #  41    0x8494c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  42    0x8494d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  43    0x84950  3      OPC=jmpq_r64        
  nop                                                                                                           #  44    0x84953  1      OPC=nop             
  nop                                                                                                           #  45    0x84954  1      OPC=nop             
  nop                                                                                                           #  46    0x84955  1      OPC=nop             
  nop                                                                                                           #  47    0x84956  1      OPC=nop             
  nop                                                                                                           #  48    0x84957  1      OPC=nop             
  nop                                                                                                           #  49    0x84958  1      OPC=nop             
  nop                                                                                                           #  50    0x84959  1      OPC=nop             
  nop                                                                                                           #  51    0x8495a  1      OPC=nop             
  nop                                                                                                           #  52    0x8495b  1      OPC=nop             
  nop                                                                                                           #  53    0x8495c  1      OPC=nop             
  nop                                                                                                           #  54    0x8495d  1      OPC=nop             
  nop                                                                                                           #  55    0x8495e  1      OPC=nop             
  nop                                                                                                           #  56    0x8495f  1      OPC=nop             
  nop                                                                                                           #  57    0x84960  1      OPC=nop             
  nop                                                                                                           #  58    0x84961  1      OPC=nop             
  nop                                                                                                           #  59    0x84962  1      OPC=nop             
  nop                                                                                                           #  60    0x84963  1      OPC=nop             
  nop                                                                                                           #  61    0x84964  1      OPC=nop             
  nop                                                                                                           #  62    0x84965  1      OPC=nop             
  nop                                                                                                           #  63    0x84966  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv


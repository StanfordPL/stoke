  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, @function

#! file-offset 0xc3980
#! rip-offset  0x83980
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode    
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv:                      #        0x83980  0      OPC=0     
  pushq %r12                                                                                                    #  1     0x83980  2      OPC=1861  
  movl %edi, %edi                                                                                               #  2     0x83982  2      OPC=1157  
  movsbl %cl, %ecx                                                                                              #  3     0x83984  3      OPC=1282  
  pushq %rbx                                                                                                    #  4     0x83987  1      OPC=1861  
  movl %edx, %ebx                                                                                               #  5     0x83988  2      OPC=1157  
  subl $0x28, %esp                                                                                              #  6     0x8398a  3      OPC=2384  
  addq %r15, %rsp                                                                                               #  7     0x8398d  3      OPC=72    
  movl %ebx, %ebx                                                                                               #  8     0x83990  2      OPC=1157  
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  9     0x83992  5      OPC=1156  
  movq %rsi, (%rsp)                                                                                             #  10    0x83997  4      OPC=1138  
  movl %r12d, %edx                                                                                              #  11    0x8399b  3      OPC=1157  
  xchgw %ax, %ax                                                                                                #  12    0x8399e  2      OPC=3700  
  andl $0xffffbfb5, %edx                                                                                        #  13    0x839a0  6      OPC=131   
  orl $0x208, %edx                                                                                              #  14    0x839a6  6      OPC=1377  
  movl %ebx, %ebx                                                                                               #  15    0x839ac  2      OPC=1157  
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  16    0x839ae  5      OPC=1136  
  movl %ebx, %edx                                                                                               #  17    0x839b3  2      OPC=1157  
  nop                                                                                                           #  18    0x839b5  1      OPC=1343  
  nop                                                                                                           #  19    0x839b6  1      OPC=1343  
  nop                                                                                                           #  20    0x839b7  1      OPC=1343  
  nop                                                                                                           #  21    0x839b8  1      OPC=1343  
  nop                                                                                                           #  22    0x839b9  1      OPC=1343  
  nop                                                                                                           #  23    0x839ba  1      OPC=1343  
  callq ._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE13_M_insert_intImEES3_S3_RSt8ios_basecT_  #  24    0x839bb  5      OPC=260   
  movl %eax, (%rsp)                                                                                             #  25    0x839c0  3      OPC=1136  
  shrq $0x20, %rax                                                                                              #  26    0x839c3  4      OPC=2315  
  movl %ebx, %ebx                                                                                               #  27    0x839c7  2      OPC=1157  
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  28    0x839c9  5      OPC=1136  
  movb %al, 0x4(%rsp)                                                                                           #  29    0x839ce  4      OPC=1141  
  movq (%rsp), %rax                                                                                             #  30    0x839d2  4      OPC=1161  
  addl $0x28, %esp                                                                                              #  31    0x839d6  3      OPC=65    
  addq %r15, %rsp                                                                                               #  32    0x839d9  3      OPC=72    
  popq %rbx                                                                                                     #  33    0x839dc  1      OPC=1694  
  popq %r12                                                                                                     #  34    0x839dd  2      OPC=1694  
  nop                                                                                                           #  35    0x839df  1      OPC=1343  
  popq %r11                                                                                                     #  36    0x839e0  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                                                       #  37    0x839e2  7      OPC=131   
  nop                                                                                                           #  38    0x839e9  1      OPC=1343  
  nop                                                                                                           #  39    0x839ea  1      OPC=1343  
  nop                                                                                                           #  40    0x839eb  1      OPC=1343  
  nop                                                                                                           #  41    0x839ec  1      OPC=1343  
  addq %r15, %r11                                                                                               #  42    0x839ed  3      OPC=72    
  jmpq %r11                                                                                                     #  43    0x839f0  3      OPC=928   
  nop                                                                                                           #  44    0x839f3  1      OPC=1343  
  nop                                                                                                           #  45    0x839f4  1      OPC=1343  
  nop                                                                                                           #  46    0x839f5  1      OPC=1343  
  nop                                                                                                           #  47    0x839f6  1      OPC=1343  
  nop                                                                                                           #  48    0x839f7  1      OPC=1343  
  nop                                                                                                           #  49    0x839f8  1      OPC=1343  
  nop                                                                                                           #  50    0x839f9  1      OPC=1343  
  nop                                                                                                           #  51    0x839fa  1      OPC=1343  
  nop                                                                                                           #  52    0x839fb  1      OPC=1343  
  nop                                                                                                           #  53    0x839fc  1      OPC=1343  
  nop                                                                                                           #  54    0x839fd  1      OPC=1343  
  nop                                                                                                           #  55    0x839fe  1      OPC=1343  
  nop                                                                                                           #  56    0x839ff  1      OPC=1343  
  nop                                                                                                           #  57    0x83a00  1      OPC=1343  
  nop                                                                                                           #  58    0x83a01  1      OPC=1343  
  nop                                                                                                           #  59    0x83a02  1      OPC=1343  
  nop                                                                                                           #  60    0x83a03  1      OPC=1343  
  nop                                                                                                           #  61    0x83a04  1      OPC=1343  
  nop                                                                                                           #  62    0x83a05  1      OPC=1343  
  nop                                                                                                           #  63    0x83a06  1      OPC=1343  
                                                                                                                                                   
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv


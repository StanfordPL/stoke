  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0xea5a0
#! rip-offset  0xaa5a0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSs15_M_check_lengthEjjPKc:         #        0xaa5a0  0      OPC=0     
  movl %edi, %edi                       #  1     0xaa5a0  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaa5a2  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaa5a5  3      OPC=72    
  movl %ecx, %ecx                       #  4     0xaa5a8  2      OPC=1157  
  movl %edi, %edi                       #  5     0xaa5aa  2      OPC=1157  
  movl (%r15,%rdi,1), %eax              #  6     0xaa5ac  4      OPC=1156  
  subl $0xc, %eax                       #  7     0xaa5b0  3      OPC=2384  
  movl %eax, %eax                       #  8     0xaa5b3  2      OPC=1157  
  subl (%r15,%rax,1), %esi              #  9     0xaa5b5  4      OPC=2385  
  addl $0x3ffffffc, %esi                #  10    0xaa5b9  6      OPC=64    
  nop                                   #  11    0xaa5bf  1      OPC=1343  
  cmpl %edx, %esi                       #  12    0xaa5c0  2      OPC=472   
  jb .L_aa5e0                           #  13    0xaa5c2  6      OPC=875   
  nop                                   #  14    0xaa5c8  1      OPC=1343  
  nop                                   #  15    0xaa5c9  1      OPC=1343  
  addl $0x8, %esp                       #  16    0xaa5ca  3      OPC=65    
  addq %r15, %rsp                       #  17    0xaa5cd  3      OPC=72    
  popq %r11                             #  18    0xaa5d0  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  19    0xaa5d2  7      OPC=131   
  nop                                   #  20    0xaa5d9  1      OPC=1343  
  nop                                   #  21    0xaa5da  1      OPC=1343  
  nop                                   #  22    0xaa5db  1      OPC=1343  
  nop                                   #  23    0xaa5dc  1      OPC=1343  
  addq %r15, %r11                       #  24    0xaa5dd  3      OPC=72    
  jmpq %r11                             #  25    0xaa5e0  3      OPC=928   
  nop                                   #  26    0xaa5e3  1      OPC=1343  
  nop                                   #  27    0xaa5e4  1      OPC=1343  
  nop                                   #  28    0xaa5e5  1      OPC=1343  
  nop                                   #  29    0xaa5e6  1      OPC=1343  
  nop                                   #  30    0xaa5e7  1      OPC=1343  
  nop                                   #  31    0xaa5e8  1      OPC=1343  
  nop                                   #  32    0xaa5e9  1      OPC=1343  
  nop                                   #  33    0xaa5ea  1      OPC=1343  
  nop                                   #  34    0xaa5eb  1      OPC=1343  
  nop                                   #  35    0xaa5ec  1      OPC=1343  
.L_aa5e0:                               #        0xaa5ed  0      OPC=0     
  movl %ecx, %edi                       #  36    0xaa5ed  2      OPC=1157  
  nop                                   #  37    0xaa5ef  1      OPC=1343  
  nop                                   #  38    0xaa5f0  1      OPC=1343  
  nop                                   #  39    0xaa5f1  1      OPC=1343  
  nop                                   #  40    0xaa5f2  1      OPC=1343  
  nop                                   #  41    0xaa5f3  1      OPC=1343  
  nop                                   #  42    0xaa5f4  1      OPC=1343  
  nop                                   #  43    0xaa5f5  1      OPC=1343  
  nop                                   #  44    0xaa5f6  1      OPC=1343  
  nop                                   #  45    0xaa5f7  1      OPC=1343  
  nop                                   #  46    0xaa5f8  1      OPC=1343  
  nop                                   #  47    0xaa5f9  1      OPC=1343  
  nop                                   #  48    0xaa5fa  1      OPC=1343  
  nop                                   #  49    0xaa5fb  1      OPC=1343  
  nop                                   #  50    0xaa5fc  1      OPC=1343  
  nop                                   #  51    0xaa5fd  1      OPC=1343  
  nop                                   #  52    0xaa5fe  1      OPC=1343  
  nop                                   #  53    0xaa5ff  1      OPC=1343  
  nop                                   #  54    0xaa600  1      OPC=1343  
  nop                                   #  55    0xaa601  1      OPC=1343  
  nop                                   #  56    0xaa602  1      OPC=1343  
  nop                                   #  57    0xaa603  1      OPC=1343  
  nop                                   #  58    0xaa604  1      OPC=1343  
  nop                                   #  59    0xaa605  1      OPC=1343  
  nop                                   #  60    0xaa606  1      OPC=1343  
  nop                                   #  61    0xaa607  1      OPC=1343  
  callq ._ZSt20__throw_length_errorPKc  #  62    0xaa608  5      OPC=260   
                                                                           
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc


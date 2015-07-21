  .text
  .globl _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xf2680
#! rip-offset  0xb2680
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode    
._ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0xb2680  0      OPC=0     
  pushq %r12                                                               #  1     0xb2680  2      OPC=1861  
  movq %rdi, %rax                                                          #  2     0xb2682  3      OPC=1162  
  movl %edx, %r12d                                                         #  3     0xb2685  3      OPC=1157  
  shrq $0x20, %rax                                                         #  4     0xb2688  4      OPC=2315  
  movl %esi, %esi                                                          #  5     0xb268c  2      OPC=1157  
  pushq %rbx                                                               #  6     0xb268e  1      OPC=1861  
  movl %edi, %ebx                                                          #  7     0xb268f  2      OPC=1157  
  subl $0x8, %esp                                                          #  8     0xb2691  3      OPC=2384  
  addq %r15, %rsp                                                          #  9     0xb2694  3      OPC=72    
  testb %al, %al                                                           #  10    0xb2697  2      OPC=2440  
  jne .L_b26e0                                                             #  11    0xb2699  6      OPC=963   
  nop                                                                      #  12    0xb269f  1      OPC=1343  
  nop                                                                      #  13    0xb26a0  1      OPC=1343  
  nop                                                                      #  14    0xb26a1  1      OPC=1343  
  nop                                                                      #  15    0xb26a2  1      OPC=1343  
  nop                                                                      #  16    0xb26a3  1      OPC=1343  
  nop                                                                      #  17    0xb26a4  1      OPC=1343  
  nop                                                                      #  18    0xb26a5  1      OPC=1343  
  movl %ebx, %ebx                                                          #  19    0xb26a6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                 #  20    0xb26a8  4      OPC=1156  
  movl %ebx, %edi                                                          #  21    0xb26ac  2      OPC=1157  
  movl %eax, %eax                                                          #  22    0xb26ae  2      OPC=1157  
  movl 0x30(%r15,%rax,1), %eax                                             #  23    0xb26b0  5      OPC=1156  
  nop                                                                      #  24    0xb26b5  1      OPC=1343  
  nop                                                                      #  25    0xb26b6  1      OPC=1343  
  nop                                                                      #  26    0xb26b7  1      OPC=1343  
  nop                                                                      #  27    0xb26b8  1      OPC=1343  
  nop                                                                      #  28    0xb26b9  1      OPC=1343  
  nop                                                                      #  29    0xb26ba  1      OPC=1343  
  nop                                                                      #  30    0xb26bb  1      OPC=1343  
  nop                                                                      #  31    0xb26bc  1      OPC=1343  
  nop                                                                      #  32    0xb26bd  1      OPC=1343  
  andl $0xffffffe0, %eax                                                   #  33    0xb26be  6      OPC=131   
  nop                                                                      #  34    0xb26c4  1      OPC=1343  
  nop                                                                      #  35    0xb26c5  1      OPC=1343  
  nop                                                                      #  36    0xb26c6  1      OPC=1343  
  addq %r15, %rax                                                          #  37    0xb26c7  3      OPC=72    
  callq %rax                                                               #  38    0xb26ca  2      OPC=258   
  cmpl %eax, %r12d                                                         #  39    0xb26cc  3      OPC=472   
  setne %al                                                                #  40    0xb26cf  3      OPC=2208  
  nop                                                                      #  41    0xb26d2  1      OPC=1343  
  nop                                                                      #  42    0xb26d3  1      OPC=1343  
  nop                                                                      #  43    0xb26d4  1      OPC=1343  
  nop                                                                      #  44    0xb26d5  1      OPC=1343  
  nop                                                                      #  45    0xb26d6  1      OPC=1343  
  nop                                                                      #  46    0xb26d7  1      OPC=1343  
  nop                                                                      #  47    0xb26d8  1      OPC=1343  
  nop                                                                      #  48    0xb26d9  1      OPC=1343  
  nop                                                                      #  49    0xb26da  1      OPC=1343  
  nop                                                                      #  50    0xb26db  1      OPC=1343  
  nop                                                                      #  51    0xb26dc  1      OPC=1343  
  nop                                                                      #  52    0xb26dd  1      OPC=1343  
  nop                                                                      #  53    0xb26de  1      OPC=1343  
  nop                                                                      #  54    0xb26df  1      OPC=1343  
  nop                                                                      #  55    0xb26e0  1      OPC=1343  
  nop                                                                      #  56    0xb26e1  1      OPC=1343  
  nop                                                                      #  57    0xb26e2  1      OPC=1343  
  nop                                                                      #  58    0xb26e3  1      OPC=1343  
  nop                                                                      #  59    0xb26e4  1      OPC=1343  
  nop                                                                      #  60    0xb26e5  1      OPC=1343  
  nop                                                                      #  61    0xb26e6  1      OPC=1343  
  nop                                                                      #  62    0xb26e7  1      OPC=1343  
  nop                                                                      #  63    0xb26e8  1      OPC=1343  
  nop                                                                      #  64    0xb26e9  1      OPC=1343  
  nop                                                                      #  65    0xb26ea  1      OPC=1343  
  nop                                                                      #  66    0xb26eb  1      OPC=1343  
.L_b26e0:                                                                  #        0xb26ec  0      OPC=0     
  movzbl %al, %eax                                                         #  67    0xb26ec  3      OPC=1304  
  addl $0x8, %esp                                                          #  68    0xb26ef  3      OPC=65    
  addq %r15, %rsp                                                          #  69    0xb26f2  3      OPC=72    
  shlq $0x20, %rax                                                         #  70    0xb26f5  4      OPC=2272  
  orq %rbx, %rax                                                           #  71    0xb26f9  3      OPC=1385  
  popq %rbx                                                                #  72    0xb26fc  1      OPC=1694  
  popq %r12                                                                #  73    0xb26fd  2      OPC=1694  
  popq %r11                                                                #  74    0xb26ff  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                  #  75    0xb2701  7      OPC=131   
  nop                                                                      #  76    0xb2708  1      OPC=1343  
  nop                                                                      #  77    0xb2709  1      OPC=1343  
  nop                                                                      #  78    0xb270a  1      OPC=1343  
  nop                                                                      #  79    0xb270b  1      OPC=1343  
  addq %r15, %r11                                                          #  80    0xb270c  3      OPC=72    
  jmpq %r11                                                                #  81    0xb270f  3      OPC=928   
  nop                                                                      #  82    0xb2712  1      OPC=1343  
                                                                                                              
.size _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i


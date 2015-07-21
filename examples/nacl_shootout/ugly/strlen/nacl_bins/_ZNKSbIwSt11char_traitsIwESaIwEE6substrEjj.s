  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, @function

#! file-offset 0x1175e0
#! rip-offset  0xd75e0
#! capacity    96 bytes

# Text                                              #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj:        #        0xd75e0  0      OPC=0     
  movl %esi, %esi                                   #  1     0xd75e0  2      OPC=1157  
  pushq %rbx                                        #  2     0xd75e2  1      OPC=1861  
  movl %edi, %ebx                                   #  3     0xd75e3  2      OPC=1157  
  movl %esi, %esi                                   #  4     0xd75e5  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                          #  5     0xd75e7  4      OPC=1156  
  subl $0xc, %eax                                   #  6     0xd75eb  3      OPC=2384  
  movl %eax, %eax                                   #  7     0xd75ee  2      OPC=1157  
  cmpl (%r15,%rax,1), %edx                          #  8     0xd75f0  4      OPC=471   
  ja .L_d7620                                       #  9     0xd75f4  6      OPC=863   
  nop                                               #  10    0xd75fa  1      OPC=1343  
  nop                                               #  11    0xd75fb  1      OPC=1343  
  movl %ebx, %edi                                   #  12    0xd75fc  2      OPC=1157  
  nop                                               #  13    0xd75fe  1      OPC=1343  
  nop                                               #  14    0xd75ff  1      OPC=1343  
  nop                                               #  15    0xd7600  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jj  #  16    0xd7601  5      OPC=260   
  movl %ebx, %eax                                   #  17    0xd7606  2      OPC=1157  
  popq %rbx                                         #  18    0xd7608  1      OPC=1694  
  popq %r11                                         #  19    0xd7609  2      OPC=1694  
  andl $0xffffffe0, %r11d                           #  20    0xd760b  7      OPC=131   
  nop                                               #  21    0xd7612  1      OPC=1343  
  nop                                               #  22    0xd7613  1      OPC=1343  
  nop                                               #  23    0xd7614  1      OPC=1343  
  nop                                               #  24    0xd7615  1      OPC=1343  
  addq %r15, %r11                                   #  25    0xd7616  3      OPC=72    
  jmpq %r11                                         #  26    0xd7619  3      OPC=928   
  xchgw %ax, %ax                                    #  27    0xd761c  2      OPC=3700  
  nop                                               #  28    0xd761e  1      OPC=1343  
  nop                                               #  29    0xd761f  1      OPC=1343  
  nop                                               #  30    0xd7620  1      OPC=1343  
  nop                                               #  31    0xd7621  1      OPC=1343  
  nop                                               #  32    0xd7622  1      OPC=1343  
  nop                                               #  33    0xd7623  1      OPC=1343  
  nop                                               #  34    0xd7624  1      OPC=1343  
  nop                                               #  35    0xd7625  1      OPC=1343  
  nop                                               #  36    0xd7626  1      OPC=1343  
  nop                                               #  37    0xd7627  1      OPC=1343  
  nop                                               #  38    0xd7628  1      OPC=1343  
  nop                                               #  39    0xd7629  1      OPC=1343  
  nop                                               #  40    0xd762a  1      OPC=1343  
  nop                                               #  41    0xd762b  1      OPC=1343  
  nop                                               #  42    0xd762c  1      OPC=1343  
.L_d7620:                                           #        0xd762d  0      OPC=0     
  movl $0x1003bb16, %edi                            #  43    0xd762d  5      OPC=1154  
  nop                                               #  44    0xd7632  1      OPC=1343  
  nop                                               #  45    0xd7633  1      OPC=1343  
  nop                                               #  46    0xd7634  1      OPC=1343  
  nop                                               #  47    0xd7635  1      OPC=1343  
  nop                                               #  48    0xd7636  1      OPC=1343  
  nop                                               #  49    0xd7637  1      OPC=1343  
  nop                                               #  50    0xd7638  1      OPC=1343  
  nop                                               #  51    0xd7639  1      OPC=1343  
  nop                                               #  52    0xd763a  1      OPC=1343  
  nop                                               #  53    0xd763b  1      OPC=1343  
  nop                                               #  54    0xd763c  1      OPC=1343  
  nop                                               #  55    0xd763d  1      OPC=1343  
  nop                                               #  56    0xd763e  1      OPC=1343  
  nop                                               #  57    0xd763f  1      OPC=1343  
  nop                                               #  58    0xd7640  1      OPC=1343  
  nop                                               #  59    0xd7641  1      OPC=1343  
  nop                                               #  60    0xd7642  1      OPC=1343  
  nop                                               #  61    0xd7643  1      OPC=1343  
  nop                                               #  62    0xd7644  1      OPC=1343  
  nop                                               #  63    0xd7645  1      OPC=1343  
  nop                                               #  64    0xd7646  1      OPC=1343  
  nop                                               #  65    0xd7647  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc              #  66    0xd7648  5      OPC=260   
                                                                                       
.size _ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE6substrEjj


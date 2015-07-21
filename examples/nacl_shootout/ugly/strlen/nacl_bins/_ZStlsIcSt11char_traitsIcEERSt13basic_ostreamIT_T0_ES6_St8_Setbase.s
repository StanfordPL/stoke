  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, @function

#! file-offset 0xdc780
#! rip-offset  0x9c780
#! capacity    96 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode    
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase:  #        0x9c780  0      OPC=0     
  cmpl $0x8, %esi                                                     #  1     0x9c780  3      OPC=470   
  movl %edi, %eax                                                     #  2     0x9c783  2      OPC=1157  
  movl $0x40, %ecx                                                    #  3     0x9c785  5      OPC=1154  
  je .L_9c7a0                                                         #  4     0x9c78a  6      OPC=893   
  nop                                                                 #  5     0x9c790  1      OPC=1343  
  nop                                                                 #  6     0x9c791  1      OPC=1343  
  cmpl $0xa, %esi                                                     #  7     0x9c792  3      OPC=470   
  movb $0x2, %cl                                                      #  8     0x9c795  2      OPC=1165  
  je .L_9c7a0                                                         #  9     0x9c797  6      OPC=893   
  nop                                                                 #  10    0x9c79d  1      OPC=1343  
  nop                                                                 #  11    0x9c79e  1      OPC=1343  
  xorl %ecx, %ecx                                                     #  12    0x9c79f  2      OPC=3758  
  cmpl $0x10, %esi                                                    #  13    0x9c7a1  3      OPC=470   
  sete %cl                                                            #  14    0x9c7a4  3      OPC=2178  
  shll $0x3, %ecx                                                     #  15    0x9c7a7  3      OPC=2269  
  xchgw %ax, %ax                                                      #  16    0x9c7aa  2      OPC=3700  
.L_9c7a0:                                                             #        0x9c7ac  0      OPC=0     
  movl %eax, %eax                                                     #  17    0x9c7ac  2      OPC=1157  
  movl (%r15,%rax,1), %edx                                            #  18    0x9c7ae  4      OPC=1156  
  subl $0xc, %edx                                                     #  19    0x9c7b2  3      OPC=2384  
  movl %edx, %edx                                                     #  20    0x9c7b5  2      OPC=1157  
  movl (%r15,%rdx,1), %esi                                            #  21    0x9c7b7  4      OPC=1156  
  addl %eax, %esi                                                     #  22    0x9c7bb  2      OPC=67    
  movl %esi, %esi                                                     #  23    0x9c7bd  2      OPC=1157  
  movl 0xc(%r15,%rsi,1), %edx                                         #  24    0x9c7bf  5      OPC=1156  
  andl $0xffffffb5, %edx                                              #  25    0x9c7c4  6      OPC=131   
  nop                                                                 #  26    0x9c7ca  1      OPC=1343  
  nop                                                                 #  27    0x9c7cb  1      OPC=1343  
  nop                                                                 #  28    0x9c7cc  1      OPC=1343  
  orl %ecx, %edx                                                      #  29    0x9c7cd  2      OPC=1380  
  nop                                                                 #  30    0x9c7cf  1      OPC=1343  
  nop                                                                 #  31    0x9c7d0  1      OPC=1343  
  nop                                                                 #  32    0x9c7d1  1      OPC=1343  
  movl %esi, %esi                                                     #  33    0x9c7d2  2      OPC=1157  
  movl %edx, 0xc(%r15,%rsi,1)                                         #  34    0x9c7d4  5      OPC=1136  
  popq %r11                                                           #  35    0x9c7d9  2      OPC=1694  
  andl $0xffffffe0, %r11d                                             #  36    0x9c7db  7      OPC=131   
  nop                                                                 #  37    0x9c7e2  1      OPC=1343  
  nop                                                                 #  38    0x9c7e3  1      OPC=1343  
  nop                                                                 #  39    0x9c7e4  1      OPC=1343  
  nop                                                                 #  40    0x9c7e5  1      OPC=1343  
  addq %r15, %r11                                                     #  41    0x9c7e6  3      OPC=72    
  jmpq %r11                                                           #  42    0x9c7e9  3      OPC=928   
  nop                                                                 #  43    0x9c7ec  1      OPC=1343  
  nop                                                                 #  44    0x9c7ed  1      OPC=1343  
  nop                                                                 #  45    0x9c7ee  1      OPC=1343  
  nop                                                                 #  46    0x9c7ef  1      OPC=1343  
  nop                                                                 #  47    0x9c7f0  1      OPC=1343  
  nop                                                                 #  48    0x9c7f1  1      OPC=1343  
  nop                                                                 #  49    0x9c7f2  1      OPC=1343  
  nop                                                                 #  50    0x9c7f3  1      OPC=1343  
  nop                                                                 #  51    0x9c7f4  1      OPC=1343  
  nop                                                                 #  52    0x9c7f5  1      OPC=1343  
  nop                                                                 #  53    0x9c7f6  1      OPC=1343  
  nop                                                                 #  54    0x9c7f7  1      OPC=1343  
  nop                                                                 #  55    0x9c7f8  1      OPC=1343  
                                                                                                         
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_Setbase


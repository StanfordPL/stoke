  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0xed4c0
#! rip-offset  0xad4c0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSs6substrEjj:                      #        0xad4c0  0      OPC=0     
  movl %esi, %esi                       #  1     0xad4c0  2      OPC=1157  
  pushq %rbx                            #  2     0xad4c2  1      OPC=1861  
  movl %edi, %ebx                       #  3     0xad4c3  2      OPC=1157  
  movl %esi, %esi                       #  4     0xad4c5  2      OPC=1157  
  movl (%r15,%rsi,1), %eax              #  5     0xad4c7  4      OPC=1156  
  subl $0xc, %eax                       #  6     0xad4cb  3      OPC=2384  
  movl %eax, %eax                       #  7     0xad4ce  2      OPC=1157  
  cmpl (%r15,%rax,1), %edx              #  8     0xad4d0  4      OPC=471   
  ja .L_ad500                           #  9     0xad4d4  6      OPC=863   
  nop                                   #  10    0xad4da  1      OPC=1343  
  nop                                   #  11    0xad4db  1      OPC=1343  
  movl %ebx, %edi                       #  12    0xad4dc  2      OPC=1157  
  nop                                   #  13    0xad4de  1      OPC=1343  
  nop                                   #  14    0xad4df  1      OPC=1343  
  nop                                   #  15    0xad4e0  1      OPC=1343  
  callq ._ZNSsC1ERKSsjj                 #  16    0xad4e1  5      OPC=260   
  movl %ebx, %eax                       #  17    0xad4e6  2      OPC=1157  
  popq %rbx                             #  18    0xad4e8  1      OPC=1694  
  popq %r11                             #  19    0xad4e9  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  20    0xad4eb  7      OPC=131   
  nop                                   #  21    0xad4f2  1      OPC=1343  
  nop                                   #  22    0xad4f3  1      OPC=1343  
  nop                                   #  23    0xad4f4  1      OPC=1343  
  nop                                   #  24    0xad4f5  1      OPC=1343  
  addq %r15, %r11                       #  25    0xad4f6  3      OPC=72    
  jmpq %r11                             #  26    0xad4f9  3      OPC=928   
  xchgw %ax, %ax                        #  27    0xad4fc  2      OPC=3700  
  nop                                   #  28    0xad4fe  1      OPC=1343  
  nop                                   #  29    0xad4ff  1      OPC=1343  
  nop                                   #  30    0xad500  1      OPC=1343  
  nop                                   #  31    0xad501  1      OPC=1343  
  nop                                   #  32    0xad502  1      OPC=1343  
  nop                                   #  33    0xad503  1      OPC=1343  
  nop                                   #  34    0xad504  1      OPC=1343  
  nop                                   #  35    0xad505  1      OPC=1343  
  nop                                   #  36    0xad506  1      OPC=1343  
  nop                                   #  37    0xad507  1      OPC=1343  
  nop                                   #  38    0xad508  1      OPC=1343  
  nop                                   #  39    0xad509  1      OPC=1343  
  nop                                   #  40    0xad50a  1      OPC=1343  
  nop                                   #  41    0xad50b  1      OPC=1343  
  nop                                   #  42    0xad50c  1      OPC=1343  
.L_ad500:                               #        0xad50d  0      OPC=0     
  movl $0x1003bb16, %edi                #  43    0xad50d  5      OPC=1154  
  nop                                   #  44    0xad512  1      OPC=1343  
  nop                                   #  45    0xad513  1      OPC=1343  
  nop                                   #  46    0xad514  1      OPC=1343  
  nop                                   #  47    0xad515  1      OPC=1343  
  nop                                   #  48    0xad516  1      OPC=1343  
  nop                                   #  49    0xad517  1      OPC=1343  
  nop                                   #  50    0xad518  1      OPC=1343  
  nop                                   #  51    0xad519  1      OPC=1343  
  nop                                   #  52    0xad51a  1      OPC=1343  
  nop                                   #  53    0xad51b  1      OPC=1343  
  nop                                   #  54    0xad51c  1      OPC=1343  
  nop                                   #  55    0xad51d  1      OPC=1343  
  nop                                   #  56    0xad51e  1      OPC=1343  
  nop                                   #  57    0xad51f  1      OPC=1343  
  nop                                   #  58    0xad520  1      OPC=1343  
  nop                                   #  59    0xad521  1      OPC=1343  
  nop                                   #  60    0xad522  1      OPC=1343  
  nop                                   #  61    0xad523  1      OPC=1343  
  nop                                   #  62    0xad524  1      OPC=1343  
  nop                                   #  63    0xad525  1      OPC=1343  
  nop                                   #  64    0xad526  1      OPC=1343  
  nop                                   #  65    0xad527  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  66    0xad528  5      OPC=260   
                                                                           
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj


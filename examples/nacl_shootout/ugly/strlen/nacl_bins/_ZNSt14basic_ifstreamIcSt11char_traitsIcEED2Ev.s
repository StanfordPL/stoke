  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, @function

#! file-offset 0x12e060
#! rip-offset  0xee060
#! capacity    224 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev:        #        0xee060  0      OPC=0     
  pushq %r12                                            #  1     0xee060  2      OPC=1861  
  movl %esi, %r12d                                      #  2     0xee062  3      OPC=1157  
  pushq %rbx                                            #  3     0xee065  1      OPC=1861  
  movl %edi, %ebx                                       #  4     0xee066  2      OPC=1157  
  leal 0x8(%rbx), %edi                                  #  5     0xee068  3      OPC=1066  
  subl $0x8, %esp                                       #  6     0xee06b  3      OPC=2384  
  addq %r15, %rsp                                       #  7     0xee06e  3      OPC=72    
  movl %r12d, %r12d                                     #  8     0xee071  3      OPC=1157  
  movl (%r15,%r12,1), %eax                              #  9     0xee074  4      OPC=1156  
  movl %r12d, %r12d                                     #  10    0xee078  3      OPC=1157  
  movl 0xc(%r15,%r12,1), %edx                           #  11    0xee07b  5      OPC=1156  
  movl %ebx, %ebx                                       #  12    0xee080  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                              #  13    0xee082  4      OPC=1136  
  subl $0xc, %eax                                       #  14    0xee086  3      OPC=2384  
  movl %eax, %eax                                       #  15    0xee089  2      OPC=1157  
  movl (%r15,%rax,1), %eax                              #  16    0xee08b  4      OPC=1156  
  addl %ebx, %eax                                       #  17    0xee08f  2      OPC=67    
  movl %eax, %eax                                       #  18    0xee091  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                              #  19    0xee093  4      OPC=1136  
  nop                                                   #  20    0xee097  1      OPC=1343  
  nop                                                   #  21    0xee098  1      OPC=1343  
  nop                                                   #  22    0xee099  1      OPC=1343  
  nop                                                   #  23    0xee09a  1      OPC=1343  
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev  #  24    0xee09b  5      OPC=260   
  addl $0x4, %r12d                                      #  25    0xee0a0  4      OPC=65    
  movl %r12d, %r12d                                     #  26    0xee0a4  3      OPC=1157  
  movl (%r15,%r12,1), %eax                              #  27    0xee0a7  4      OPC=1156  
  movl %r12d, %r12d                                     #  28    0xee0ab  3      OPC=1157  
  movl 0x4(%r15,%r12,1), %edx                           #  29    0xee0ae  5      OPC=1156  
  movl %ebx, %ebx                                       #  30    0xee0b3  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                              #  31    0xee0b5  4      OPC=1136  
  subl $0xc, %eax                                       #  32    0xee0b9  3      OPC=2384  
  nop                                                   #  33    0xee0bc  1      OPC=1343  
  nop                                                   #  34    0xee0bd  1      OPC=1343  
  nop                                                   #  35    0xee0be  1      OPC=1343  
  nop                                                   #  36    0xee0bf  1      OPC=1343  
  movl %eax, %eax                                       #  37    0xee0c0  2      OPC=1157  
  movl (%r15,%rax,1), %eax                              #  38    0xee0c2  4      OPC=1156  
  movl %ebx, %ebx                                       #  39    0xee0c6  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rbx,1)                           #  40    0xee0c8  9      OPC=1135  
  addl %ebx, %eax                                       #  41    0xee0d1  2      OPC=67    
  movl %eax, %eax                                       #  42    0xee0d3  2      OPC=1157  
  movl %edx, (%r15,%rax,1)                              #  43    0xee0d5  4      OPC=1136  
  addl $0x8, %esp                                       #  44    0xee0d9  3      OPC=65    
  addq %r15, %rsp                                       #  45    0xee0dc  3      OPC=72    
  popq %rbx                                             #  46    0xee0df  1      OPC=1694  
  popq %r12                                             #  47    0xee0e0  2      OPC=1694  
  popq %r11                                             #  48    0xee0e2  2      OPC=1694  
  andl $0xffffffe0, %r11d                               #  49    0xee0e4  7      OPC=131   
  nop                                                   #  50    0xee0eb  1      OPC=1343  
  nop                                                   #  51    0xee0ec  1      OPC=1343  
  nop                                                   #  52    0xee0ed  1      OPC=1343  
  nop                                                   #  53    0xee0ee  1      OPC=1343  
  addq %r15, %r11                                       #  54    0xee0ef  3      OPC=72    
  jmpq %r11                                             #  55    0xee0f2  3      OPC=928   
  nop                                                   #  56    0xee0f5  1      OPC=1343  
  nop                                                   #  57    0xee0f6  1      OPC=1343  
  nop                                                   #  58    0xee0f7  1      OPC=1343  
  nop                                                   #  59    0xee0f8  1      OPC=1343  
  nop                                                   #  60    0xee0f9  1      OPC=1343  
  nop                                                   #  61    0xee0fa  1      OPC=1343  
  nop                                                   #  62    0xee0fb  1      OPC=1343  
  nop                                                   #  63    0xee0fc  1      OPC=1343  
  nop                                                   #  64    0xee0fd  1      OPC=1343  
  nop                                                   #  65    0xee0fe  1      OPC=1343  
  nop                                                   #  66    0xee0ff  1      OPC=1343  
  nop                                                   #  67    0xee100  1      OPC=1343  
  nop                                                   #  68    0xee101  1      OPC=1343  
  nop                                                   #  69    0xee102  1      OPC=1343  
  nop                                                   #  70    0xee103  1      OPC=1343  
  nop                                                   #  71    0xee104  1      OPC=1343  
  nop                                                   #  72    0xee105  1      OPC=1343  
  nop                                                   #  73    0xee106  1      OPC=1343  
  addl $0x4, %r12d                                      #  74    0xee107  4      OPC=65    
  movl %eax, %edi                                       #  75    0xee10b  2      OPC=1157  
  movl %r12d, %r12d                                     #  76    0xee10d  3      OPC=1157  
  movl (%r15,%r12,1), %edx                              #  77    0xee110  4      OPC=1156  
  movl %r12d, %r12d                                     #  78    0xee114  3      OPC=1157  
  movl 0x4(%r15,%r12,1), %ecx                           #  79    0xee117  5      OPC=1156  
  movl %ebx, %ebx                                       #  80    0xee11c  2      OPC=1157  
  movl %edx, (%r15,%rbx,1)                              #  81    0xee11e  4      OPC=1136  
  subl $0xc, %edx                                       #  82    0xee122  3      OPC=2384  
  xchgw %ax, %ax                                        #  83    0xee125  2      OPC=3700  
  movl %edx, %edx                                       #  84    0xee127  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                              #  85    0xee129  4      OPC=1156  
  movl %ebx, %ebx                                       #  86    0xee12d  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rbx,1)                           #  87    0xee12f  9      OPC=1135  
  addl %ebx, %edx                                       #  88    0xee138  2      OPC=67    
  movl %edx, %edx                                       #  89    0xee13a  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)                              #  90    0xee13c  4      OPC=1136  
  xchgw %ax, %ax                                        #  91    0xee140  2      OPC=3700  
  callq ._Unwind_Resume                                 #  92    0xee142  5      OPC=260   
                                                                                           
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEED2Ev


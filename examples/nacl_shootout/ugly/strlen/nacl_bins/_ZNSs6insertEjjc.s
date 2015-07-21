  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0xee200
#! rip-offset  0xae200
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs6insertEjjc:                      #        0xae200  0      OPC=0     
  movl %edi, %edi                       #  1     0xae200  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xae202  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xae205  3      OPC=72    
  movl %edi, %edi                       #  4     0xae208  2      OPC=1157  
  movl (%r15,%rdi,1), %eax              #  5     0xae20a  4      OPC=1156  
  subl $0xc, %eax                       #  6     0xae20e  3      OPC=2384  
  movl %eax, %eax                       #  7     0xae211  2      OPC=1157  
  cmpl (%r15,%rax,1), %esi              #  8     0xae213  4      OPC=471   
  ja .L_ae240                           #  9     0xae217  6      OPC=863   
  nop                                   #  10    0xae21d  1      OPC=1343  
  nop                                   #  11    0xae21e  1      OPC=1343  
  movsbl %cl, %r8d                      #  12    0xae21f  4      OPC=1282  
  nop                                   #  13    0xae223  1      OPC=1343  
  nop                                   #  14    0xae224  1      OPC=1343  
  nop                                   #  15    0xae225  1      OPC=1343  
  addl $0x8, %esp                       #  16    0xae226  3      OPC=65    
  addq %r15, %rsp                       #  17    0xae229  3      OPC=72    
  movl %edx, %ecx                       #  18    0xae22c  2      OPC=1157  
  xorl %edx, %edx                       #  19    0xae22e  2      OPC=3758  
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  20    0xae230  5      OPC=930   
  xchgw %ax, %ax                        #  21    0xae235  2      OPC=3700  
  nop                                   #  22    0xae237  1      OPC=1343  
  nop                                   #  23    0xae238  1      OPC=1343  
  nop                                   #  24    0xae239  1      OPC=1343  
  nop                                   #  25    0xae23a  1      OPC=1343  
  nop                                   #  26    0xae23b  1      OPC=1343  
  nop                                   #  27    0xae23c  1      OPC=1343  
  nop                                   #  28    0xae23d  1      OPC=1343  
  nop                                   #  29    0xae23e  1      OPC=1343  
  nop                                   #  30    0xae23f  1      OPC=1343  
  nop                                   #  31    0xae240  1      OPC=1343  
  nop                                   #  32    0xae241  1      OPC=1343  
  nop                                   #  33    0xae242  1      OPC=1343  
  nop                                   #  34    0xae243  1      OPC=1343  
  nop                                   #  35    0xae244  1      OPC=1343  
  nop                                   #  36    0xae245  1      OPC=1343  
.L_ae240:                               #        0xae246  0      OPC=0     
  movl $0x1003bb73, %edi                #  37    0xae246  5      OPC=1154  
  nop                                   #  38    0xae24b  1      OPC=1343  
  nop                                   #  39    0xae24c  1      OPC=1343  
  nop                                   #  40    0xae24d  1      OPC=1343  
  nop                                   #  41    0xae24e  1      OPC=1343  
  nop                                   #  42    0xae24f  1      OPC=1343  
  nop                                   #  43    0xae250  1      OPC=1343  
  nop                                   #  44    0xae251  1      OPC=1343  
  nop                                   #  45    0xae252  1      OPC=1343  
  nop                                   #  46    0xae253  1      OPC=1343  
  nop                                   #  47    0xae254  1      OPC=1343  
  nop                                   #  48    0xae255  1      OPC=1343  
  nop                                   #  49    0xae256  1      OPC=1343  
  nop                                   #  50    0xae257  1      OPC=1343  
  nop                                   #  51    0xae258  1      OPC=1343  
  nop                                   #  52    0xae259  1      OPC=1343  
  nop                                   #  53    0xae25a  1      OPC=1343  
  nop                                   #  54    0xae25b  1      OPC=1343  
  nop                                   #  55    0xae25c  1      OPC=1343  
  nop                                   #  56    0xae25d  1      OPC=1343  
  nop                                   #  57    0xae25e  1      OPC=1343  
  nop                                   #  58    0xae25f  1      OPC=1343  
  nop                                   #  59    0xae260  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  60    0xae261  5      OPC=260   
                                                                           
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc


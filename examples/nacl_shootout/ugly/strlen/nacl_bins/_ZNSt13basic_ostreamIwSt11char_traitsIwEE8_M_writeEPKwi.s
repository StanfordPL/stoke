  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, @function

#! file-offset 0xdd160
#! rip-offset  0x9d160
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi:            #        0x9d160  0      OPC=0     
  pushq %r12                                                         #  1     0x9d160  2      OPC=1861  
  movl %edx, %r12d                                                   #  2     0x9d162  3      OPC=1157  
  movl %esi, %esi                                                    #  3     0x9d165  2      OPC=1157  
  pushq %rbx                                                         #  4     0x9d167  1      OPC=1861  
  movl %edi, %ebx                                                    #  5     0x9d168  2      OPC=1157  
  subl $0x8, %esp                                                    #  6     0x9d16a  3      OPC=2384  
  addq %r15, %rsp                                                    #  7     0x9d16d  3      OPC=72    
  movl %ebx, %ebx                                                    #  8     0x9d170  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  9     0x9d172  4      OPC=1156  
  subl $0xc, %eax                                                    #  10    0x9d176  3      OPC=2384  
  movl %eax, %eax                                                    #  11    0x9d179  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                           #  12    0x9d17b  4      OPC=1156  
  nop                                                                #  13    0x9d17f  1      OPC=1343  
  addl %ebx, %eax                                                    #  14    0x9d180  2      OPC=67    
  movl %eax, %eax                                                    #  15    0x9d182  2      OPC=1157  
  movl 0x7c(%r15,%rax,1), %edi                                       #  16    0x9d184  5      OPC=1156  
  movl %edi, %edi                                                    #  17    0x9d189  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                           #  18    0x9d18b  4      OPC=1156  
  movl %eax, %eax                                                    #  19    0x9d18f  2      OPC=1157  
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9d191  5      OPC=1156  
  xchgw %ax, %ax                                                     #  21    0x9d196  2      OPC=3700  
  andl $0xffffffe0, %eax                                             #  22    0x9d198  6      OPC=131   
  nop                                                                #  23    0x9d19e  1      OPC=1343  
  nop                                                                #  24    0x9d19f  1      OPC=1343  
  nop                                                                #  25    0x9d1a0  1      OPC=1343  
  addq %r15, %rax                                                    #  26    0x9d1a1  3      OPC=72    
  callq %rax                                                         #  27    0x9d1a4  2      OPC=258   
  cmpl %eax, %r12d                                                   #  28    0x9d1a6  3      OPC=472   
  je .L_9d1e0                                                        #  29    0x9d1a9  6      OPC=893   
  nop                                                                #  30    0x9d1af  1      OPC=1343  
  nop                                                                #  31    0x9d1b0  1      OPC=1343  
  movl %ebx, %ebx                                                    #  32    0x9d1b1  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                           #  33    0x9d1b3  4      OPC=1156  
  subl $0xc, %eax                                                    #  34    0x9d1b7  3      OPC=2384  
  movl %eax, %eax                                                    #  35    0x9d1ba  2      OPC=1157  
  movl (%r15,%rax,1), %edi                                           #  36    0x9d1bc  4      OPC=1156  
  addl %ebx, %edi                                                    #  37    0x9d1c0  2      OPC=67    
  movl %edi, %edi                                                    #  38    0x9d1c2  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %esi                                       #  39    0x9d1c4  5      OPC=1156  
  nop                                                                #  40    0x9d1c9  1      OPC=1343  
  nop                                                                #  41    0x9d1ca  1      OPC=1343  
  nop                                                                #  42    0x9d1cb  1      OPC=1343  
  addl $0x8, %esp                                                    #  43    0x9d1cc  3      OPC=65    
  addq %r15, %rsp                                                    #  44    0x9d1cf  3      OPC=72    
  popq %rbx                                                          #  45    0x9d1d2  1      OPC=1694  
  popq %r12                                                          #  46    0x9d1d3  2      OPC=1694  
  orl $0x1, %esi                                                     #  47    0x9d1d5  3      OPC=1378  
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate  #  48    0x9d1d8  5      OPC=930   
  nop                                                                #  49    0x9d1dd  1      OPC=1343  
  nop                                                                #  50    0x9d1de  1      OPC=1343  
  nop                                                                #  51    0x9d1df  1      OPC=1343  
  nop                                                                #  52    0x9d1e0  1      OPC=1343  
  nop                                                                #  53    0x9d1e1  1      OPC=1343  
  nop                                                                #  54    0x9d1e2  1      OPC=1343  
  nop                                                                #  55    0x9d1e3  1      OPC=1343  
  nop                                                                #  56    0x9d1e4  1      OPC=1343  
  nop                                                                #  57    0x9d1e5  1      OPC=1343  
  nop                                                                #  58    0x9d1e6  1      OPC=1343  
  nop                                                                #  59    0x9d1e7  1      OPC=1343  
  nop                                                                #  60    0x9d1e8  1      OPC=1343  
  nop                                                                #  61    0x9d1e9  1      OPC=1343  
  nop                                                                #  62    0x9d1ea  1      OPC=1343  
  nop                                                                #  63    0x9d1eb  1      OPC=1343  
.L_9d1e0:                                                            #        0x9d1ec  0      OPC=0     
  addl $0x8, %esp                                                    #  64    0x9d1ec  3      OPC=65    
  addq %r15, %rsp                                                    #  65    0x9d1ef  3      OPC=72    
  popq %rbx                                                          #  66    0x9d1f2  1      OPC=1694  
  popq %r12                                                          #  67    0x9d1f3  2      OPC=1694  
  popq %r11                                                          #  68    0x9d1f5  2      OPC=1694  
  andl $0xffffffe0, %r11d                                            #  69    0x9d1f7  7      OPC=131   
  nop                                                                #  70    0x9d1fe  1      OPC=1343  
  nop                                                                #  71    0x9d1ff  1      OPC=1343  
  nop                                                                #  72    0x9d200  1      OPC=1343  
  nop                                                                #  73    0x9d201  1      OPC=1343  
  addq %r15, %r11                                                    #  74    0x9d202  3      OPC=72    
  jmpq %r11                                                          #  75    0x9d205  3      OPC=928   
  nop                                                                #  76    0x9d208  1      OPC=1343  
  nop                                                                #  77    0x9d209  1      OPC=1343  
  nop                                                                #  78    0x9d20a  1      OPC=1343  
  nop                                                                #  79    0x9d20b  1      OPC=1343  
  nop                                                                #  80    0x9d20c  1      OPC=1343  
  nop                                                                #  81    0x9d20d  1      OPC=1343  
  nop                                                                #  82    0x9d20e  1      OPC=1343  
  nop                                                                #  83    0x9d20f  1      OPC=1343  
  nop                                                                #  84    0x9d210  1      OPC=1343  
  nop                                                                #  85    0x9d211  1      OPC=1343  
  nop                                                                #  86    0x9d212  1      OPC=1343  
                                                                                                        
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEE8_M_writeEPKwi


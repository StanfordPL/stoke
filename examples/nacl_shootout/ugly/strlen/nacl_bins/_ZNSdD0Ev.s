  .text
  .globl _ZNSdD0Ev
  .type _ZNSdD0Ev, @function

#! file-offset 0x13b180
#! rip-offset  0xfb180
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
._ZNSdD0Ev:                           #        0xfb180  0      OPC=0     
  movl 0xff43546(%rip), %edx          #  1     0xfb180  6      OPC=1156  
  pushq %rbx                          #  2     0xfb186  1      OPC=1861  
  movl %edi, %ebx                     #  3     0xfb187  2      OPC=1157  
  leal 0x8(%rbx), %eax                #  4     0xfb189  3      OPC=1066  
  movl %ebx, %ebx                     #  5     0xfb18c  2      OPC=1157  
  movl $0x1003e6a0, 0x8(%r15,%rbx,1)  #  6     0xfb18e  9      OPC=1135  
  leal 0xc(%rbx), %edi                #  7     0xfb197  3      OPC=1066  
  movl %eax, %eax                     #  8     0xfb19a  2      OPC=1157  
  movl %edx, (%r15,%rax,1)            #  9     0xfb19c  4      OPC=1136  
  subl $0xc, %edx                     #  10    0xfb1a0  3      OPC=2384  
  movl %edx, %edx                     #  11    0xfb1a3  2      OPC=1157  
  addl (%r15,%rdx,1), %eax            #  12    0xfb1a5  4      OPC=66    
  movl 0xff43521(%rip), %edx          #  13    0xfb1a9  6      OPC=1156  
  movl %eax, %eax                     #  14    0xfb1af  2      OPC=1157  
  movl %edx, (%r15,%rax,1)            #  15    0xfb1b1  4      OPC=1136  
  movl 0xff43509(%rip), %eax          #  16    0xfb1b5  6      OPC=1156  
  nop                                 #  17    0xfb1bb  1      OPC=1343  
  nop                                 #  18    0xfb1bc  1      OPC=1343  
  nop                                 #  19    0xfb1bd  1      OPC=1343  
  nop                                 #  20    0xfb1be  1      OPC=1343  
  nop                                 #  21    0xfb1bf  1      OPC=1343  
  movl 0xff43502(%rip), %edx          #  22    0xfb1c0  6      OPC=1156  
  movl %ebx, %ebx                     #  23    0xfb1c6  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)            #  24    0xfb1c8  4      OPC=1136  
  subl $0xc, %eax                     #  25    0xfb1cc  3      OPC=2384  
  movl %eax, %eax                     #  26    0xfb1cf  2      OPC=1157  
  movl (%r15,%rax,1), %eax            #  27    0xfb1d1  4      OPC=1156  
  movl %ebx, %ebx                     #  28    0xfb1d5  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rbx,1)         #  29    0xfb1d7  9      OPC=1135  
  addl %ebx, %eax                     #  30    0xfb1e0  2      OPC=67    
  movl %eax, %eax                     #  31    0xfb1e2  2      OPC=1157  
  movl %edx, (%r15,%rax,1)            #  32    0xfb1e4  4      OPC=1136  
  movl %edi, %edi                     #  33    0xfb1e8  2      OPC=1157  
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfb1ea  8      OPC=1135  
  nop                                 #  35    0xfb1f2  1      OPC=1343  
  nop                                 #  36    0xfb1f3  1      OPC=1343  
  nop                                 #  37    0xfb1f4  1      OPC=1343  
  nop                                 #  38    0xfb1f5  1      OPC=1343  
  nop                                 #  39    0xfb1f6  1      OPC=1343  
  nop                                 #  40    0xfb1f7  1      OPC=1343  
  nop                                 #  41    0xfb1f8  1      OPC=1343  
  nop                                 #  42    0xfb1f9  1      OPC=1343  
  nop                                 #  43    0xfb1fa  1      OPC=1343  
  callq ._ZNSt8ios_baseD2Ev           #  44    0xfb1fb  5      OPC=260   
  movl %ebx, %edi                     #  45    0xfb200  2      OPC=1157  
  popq %rbx                           #  46    0xfb202  1      OPC=1694  
  jmpq ._ZdlPv                        #  47    0xfb203  5      OPC=930   
  nop                                 #  48    0xfb208  1      OPC=1343  
  nop                                 #  49    0xfb209  1      OPC=1343  
  nop                                 #  50    0xfb20a  1      OPC=1343  
  nop                                 #  51    0xfb20b  1      OPC=1343  
  nop                                 #  52    0xfb20c  1      OPC=1343  
  nop                                 #  53    0xfb20d  1      OPC=1343  
  nop                                 #  54    0xfb20e  1      OPC=1343  
  nop                                 #  55    0xfb20f  1      OPC=1343  
  nop                                 #  56    0xfb210  1      OPC=1343  
  nop                                 #  57    0xfb211  1      OPC=1343  
  nop                                 #  58    0xfb212  1      OPC=1343  
  nop                                 #  59    0xfb213  1      OPC=1343  
  nop                                 #  60    0xfb214  1      OPC=1343  
  nop                                 #  61    0xfb215  1      OPC=1343  
  nop                                 #  62    0xfb216  1      OPC=1343  
  nop                                 #  63    0xfb217  1      OPC=1343  
  nop                                 #  64    0xfb218  1      OPC=1343  
  nop                                 #  65    0xfb219  1      OPC=1343  
  nop                                 #  66    0xfb21a  1      OPC=1343  
  nop                                 #  67    0xfb21b  1      OPC=1343  
  nop                                 #  68    0xfb21c  1      OPC=1343  
  nop                                 #  69    0xfb21d  1      OPC=1343  
  nop                                 #  70    0xfb21e  1      OPC=1343  
  nop                                 #  71    0xfb21f  1      OPC=1343  
                                                                         
.size _ZNSdD0Ev, .-_ZNSdD0Ev


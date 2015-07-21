  .text
  .globl __gmpz_init_set_ui
  .type __gmpz_init_set_ui, @function

#! file-offset 0x70e00
#! rip-offset  0x30e00
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__gmpz_init_set_ui:           #        0x30e00  0      OPC=0     
  movq %rbx, -0x10(%rsp)       #  1     0x30e00  5      OPC=1138  
  movq %r12, -0x8(%rsp)        #  2     0x30e05  5      OPC=1138  
  movl %edi, %ebx              #  3     0x30e0a  2      OPC=1157  
  subl $0x18, %esp             #  4     0x30e0c  3      OPC=2384  
  addq %r15, %rsp              #  5     0x30e0f  3      OPC=72    
  movl 0x1003fa34(%rip), %eax  #  6     0x30e12  6      OPC=1156  
  movl %esi, %r12d             #  7     0x30e18  3      OPC=1157  
  nop                          #  8     0x30e1b  1      OPC=1343  
  nop                          #  9     0x30e1c  1      OPC=1343  
  nop                          #  10    0x30e1d  1      OPC=1343  
  nop                          #  11    0x30e1e  1      OPC=1343  
  nop                          #  12    0x30e1f  1      OPC=1343  
  movl %ebx, %ebx              #  13    0x30e20  2      OPC=1157  
  movl $0x1, (%r15,%rbx,1)     #  14    0x30e22  8      OPC=1135  
  movl $0x4, %edi              #  15    0x30e2a  5      OPC=1154  
  nop                          #  16    0x30e2f  1      OPC=1343  
  nop                          #  17    0x30e30  1      OPC=1343  
  nop                          #  18    0x30e31  1      OPC=1343  
  nop                          #  19    0x30e32  1      OPC=1343  
  nop                          #  20    0x30e33  1      OPC=1343  
  nop                          #  21    0x30e34  1      OPC=1343  
  nop                          #  22    0x30e35  1      OPC=1343  
  nop                          #  23    0x30e36  1      OPC=1343  
  nop                          #  24    0x30e37  1      OPC=1343  
  andl $0xffffffe0, %eax       #  25    0x30e38  6      OPC=131   
  nop                          #  26    0x30e3e  1      OPC=1343  
  nop                          #  27    0x30e3f  1      OPC=1343  
  nop                          #  28    0x30e40  1      OPC=1343  
  addq %r15, %rax              #  29    0x30e41  3      OPC=72    
  callq %rax                   #  30    0x30e44  2      OPC=258   
  movl %eax, %eax              #  31    0x30e46  2      OPC=1157  
  movl %eax, %eax              #  32    0x30e48  2      OPC=1157  
  movl %r12d, (%r15,%rax,1)    #  33    0x30e4a  4      OPC=1136  
  movl %ebx, %ebx              #  34    0x30e4e  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)  #  35    0x30e50  5      OPC=1136  
  xorl %eax, %eax              #  36    0x30e55  2      OPC=3758  
  testl %r12d, %r12d           #  37    0x30e57  3      OPC=2436  
  movq 0x10(%rsp), %r12        #  38    0x30e5a  5      OPC=1161  
  setne %al                    #  39    0x30e5f  3      OPC=2208  
  nop                          #  40    0x30e62  1      OPC=1343  
  nop                          #  41    0x30e63  1      OPC=1343  
  nop                          #  42    0x30e64  1      OPC=1343  
  nop                          #  43    0x30e65  1      OPC=1343  
  movl %ebx, %ebx              #  44    0x30e66  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)  #  45    0x30e68  5      OPC=1136  
  movq 0x8(%rsp), %rbx         #  46    0x30e6d  5      OPC=1161  
  addl $0x18, %esp             #  47    0x30e72  3      OPC=65    
  addq %r15, %rsp              #  48    0x30e75  3      OPC=72    
  popq %r11                    #  49    0x30e78  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  50    0x30e7a  7      OPC=131   
  nop                          #  51    0x30e81  1      OPC=1343  
  nop                          #  52    0x30e82  1      OPC=1343  
  nop                          #  53    0x30e83  1      OPC=1343  
  nop                          #  54    0x30e84  1      OPC=1343  
  addq %r15, %r11              #  55    0x30e85  3      OPC=72    
  jmpq %r11                    #  56    0x30e88  3      OPC=928   
  nop                          #  57    0x30e8b  1      OPC=1343  
  nop                          #  58    0x30e8c  1      OPC=1343  
                                                                  
.size __gmpz_init_set_ui, .-__gmpz_init_set_ui


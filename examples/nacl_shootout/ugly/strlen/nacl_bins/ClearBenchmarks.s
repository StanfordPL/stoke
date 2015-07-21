  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x69c00
#! rip-offset  0x29c00
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.ClearBenchmarks:              #        0x29c00  0      OPC=0     
  pushq %r12                   #  1     0x29c00  2      OPC=1861  
  pushq %rbx                   #  2     0x29c02  1      OPC=1861  
  subl $0x8, %esp              #  3     0x29c03  3      OPC=2384  
  addq %r15, %rsp              #  4     0x29c06  3      OPC=72    
  movl 0x10047571(%rip), %eax  #  5     0x29c09  6      OPC=1156  
  testl %eax, %eax             #  6     0x29c0f  2      OPC=2436  
  jle .L_29c60                 #  7     0x29c11  6      OPC=919   
  nop                          #  8     0x29c17  1      OPC=1343  
  nop                          #  9     0x29c18  1      OPC=1343  
  movl $0x100711a0, %r12d      #  10    0x29c19  6      OPC=1154  
  xorl %ebx, %ebx              #  11    0x29c1f  2      OPC=3758  
  nop                          #  12    0x29c21  1      OPC=1343  
  nop                          #  13    0x29c22  1      OPC=1343  
  nop                          #  14    0x29c23  1      OPC=1343  
  nop                          #  15    0x29c24  1      OPC=1343  
  nop                          #  16    0x29c25  1      OPC=1343  
.L_29c20:                      #        0x29c26  0      OPC=0     
  movl %r12d, %eax             #  17    0x29c26  3      OPC=1157  
  movl %eax, %eax              #  18    0x29c29  2      OPC=1157  
  movl (%r15,%rax,1), %edi     #  19    0x29c2b  4      OPC=1156  
  nop                          #  20    0x29c2f  1      OPC=1343  
  nop                          #  21    0x29c30  1      OPC=1343  
  nop                          #  22    0x29c31  1      OPC=1343  
  nop                          #  23    0x29c32  1      OPC=1343  
  nop                          #  24    0x29c33  1      OPC=1343  
  nop                          #  25    0x29c34  1      OPC=1343  
  nop                          #  26    0x29c35  1      OPC=1343  
  nop                          #  27    0x29c36  1      OPC=1343  
  nop                          #  28    0x29c37  1      OPC=1343  
  nop                          #  29    0x29c38  1      OPC=1343  
  nop                          #  30    0x29c39  1      OPC=1343  
  nop                          #  31    0x29c3a  1      OPC=1343  
  nop                          #  32    0x29c3b  1      OPC=1343  
  nop                          #  33    0x29c3c  1      OPC=1343  
  nop                          #  34    0x29c3d  1      OPC=1343  
  nop                          #  35    0x29c3e  1      OPC=1343  
  nop                          #  36    0x29c3f  1      OPC=1343  
  nop                          #  37    0x29c40  1      OPC=1343  
  callq .free                  #  38    0x29c41  5      OPC=260   
  addl $0x1, %ebx              #  39    0x29c46  3      OPC=65    
  addl $0x18, %r12d            #  40    0x29c49  4      OPC=65    
  cmpl %ebx, 0x10047533(%rip)  #  41    0x29c4d  6      OPC=457   
  jg .L_29c20                  #  42    0x29c53  6      OPC=901   
  nop                          #  43    0x29c59  1      OPC=1343  
  nop                          #  44    0x29c5a  1      OPC=1343  
  xchgw %ax, %ax               #  45    0x29c5b  2      OPC=3700  
  nop                          #  46    0x29c5d  1      OPC=1343  
  nop                          #  47    0x29c5e  1      OPC=1343  
  nop                          #  48    0x29c5f  1      OPC=1343  
  nop                          #  49    0x29c60  1      OPC=1343  
  nop                          #  50    0x29c61  1      OPC=1343  
  nop                          #  51    0x29c62  1      OPC=1343  
  nop                          #  52    0x29c63  1      OPC=1343  
  nop                          #  53    0x29c64  1      OPC=1343  
  nop                          #  54    0x29c65  1      OPC=1343  
  nop                          #  55    0x29c66  1      OPC=1343  
  nop                          #  56    0x29c67  1      OPC=1343  
  nop                          #  57    0x29c68  1      OPC=1343  
  nop                          #  58    0x29c69  1      OPC=1343  
  nop                          #  59    0x29c6a  1      OPC=1343  
  nop                          #  60    0x29c6b  1      OPC=1343  
.L_29c60:                      #        0x29c6c  0      OPC=0     
  movl $0x0, 0x10047516(%rip)  #  61    0x29c6c  10     OPC=1135  
  addl $0x8, %esp              #  62    0x29c76  3      OPC=65    
  addq %r15, %rsp              #  63    0x29c79  3      OPC=72    
  popq %rbx                    #  64    0x29c7c  1      OPC=1694  
  popq %r12                    #  65    0x29c7d  2      OPC=1694  
  popq %r11                    #  66    0x29c7f  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  67    0x29c81  7      OPC=131   
  nop                          #  68    0x29c88  1      OPC=1343  
  nop                          #  69    0x29c89  1      OPC=1343  
  nop                          #  70    0x29c8a  1      OPC=1343  
  nop                          #  71    0x29c8b  1      OPC=1343  
  addq %r15, %r11              #  72    0x29c8c  3      OPC=72    
  jmpq %r11                    #  73    0x29c8f  3      OPC=928   
  nop                          #  74    0x29c92  1      OPC=1343  
                                                                  
.size ClearBenchmarks, .-ClearBenchmarks


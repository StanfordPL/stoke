  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0xeece0
#! rip-offset  0xaece0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs7replaceEjjRKSsjj:                #        0xaece0  0      OPC=0     
  movl %ecx, %ecx                       #  1     0xaece0  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xaece2  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xaece5  3      OPC=72    
  movl %r8d, %eax                       #  4     0xaece8  3      OPC=1157  
  movl %ecx, %ecx                       #  5     0xaeceb  2      OPC=1157  
  movl (%r15,%rcx,1), %ecx              #  6     0xaeced  4      OPC=1156  
  movl %edi, %edi                       #  7     0xaecf1  2      OPC=1157  
  leal -0xc(%rcx), %r8d                 #  8     0xaecf3  4      OPC=1066  
  movl %r8d, %r8d                       #  9     0xaecf7  3      OPC=1157  
  movl (%r15,%r8,1), %r8d               #  10    0xaecfa  4      OPC=1156  
  xchgw %ax, %ax                        #  11    0xaecfe  2      OPC=3700  
  cmpl %r8d, %eax                       #  12    0xaed00  3      OPC=472   
  ja .L_aed20                           #  13    0xaed03  6      OPC=863   
  nop                                   #  14    0xaed09  1      OPC=1343  
  nop                                   #  15    0xaed0a  1      OPC=1343  
  subl %eax, %r8d                       #  16    0xaed0b  3      OPC=2386  
  leal (%rax,%rcx,1), %ecx              #  17    0xaed0e  3      OPC=1066  
  cmpl %r9d, %r8d                       #  18    0xaed11  3      OPC=472   
  cmoval %r9d, %r8d                     #  19    0xaed14  4      OPC=272   
  addl $0x8, %esp                       #  20    0xaed18  3      OPC=65    
  addq %r15, %rsp                       #  21    0xaed1b  3      OPC=72    
  jmpq ._ZNSs7replaceEjjPKcj            #  22    0xaed1e  5      OPC=930   
  nop                                   #  23    0xaed23  1      OPC=1343  
  nop                                   #  24    0xaed24  1      OPC=1343  
  nop                                   #  25    0xaed25  1      OPC=1343  
.L_aed20:                               #        0xaed26  0      OPC=0     
  movl $0x1003bb5d, %edi                #  26    0xaed26  5      OPC=1154  
  nop                                   #  27    0xaed2b  1      OPC=1343  
  nop                                   #  28    0xaed2c  1      OPC=1343  
  nop                                   #  29    0xaed2d  1      OPC=1343  
  nop                                   #  30    0xaed2e  1      OPC=1343  
  nop                                   #  31    0xaed2f  1      OPC=1343  
  nop                                   #  32    0xaed30  1      OPC=1343  
  nop                                   #  33    0xaed31  1      OPC=1343  
  nop                                   #  34    0xaed32  1      OPC=1343  
  nop                                   #  35    0xaed33  1      OPC=1343  
  nop                                   #  36    0xaed34  1      OPC=1343  
  nop                                   #  37    0xaed35  1      OPC=1343  
  nop                                   #  38    0xaed36  1      OPC=1343  
  nop                                   #  39    0xaed37  1      OPC=1343  
  nop                                   #  40    0xaed38  1      OPC=1343  
  nop                                   #  41    0xaed39  1      OPC=1343  
  nop                                   #  42    0xaed3a  1      OPC=1343  
  nop                                   #  43    0xaed3b  1      OPC=1343  
  nop                                   #  44    0xaed3c  1      OPC=1343  
  nop                                   #  45    0xaed3d  1      OPC=1343  
  nop                                   #  46    0xaed3e  1      OPC=1343  
  nop                                   #  47    0xaed3f  1      OPC=1343  
  nop                                   #  48    0xaed40  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  49    0xaed41  5      OPC=260   
                                                                           
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj


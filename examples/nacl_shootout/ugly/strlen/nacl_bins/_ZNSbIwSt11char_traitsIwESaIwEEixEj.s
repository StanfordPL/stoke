  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x119bc0
#! rip-offset  0xd9bc0
#! capacity    128 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEixEj:                     #        0xd9bc0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                  #  1     0xd9bc0  5      OPC=1138  
  movl %edi, %ebx                                         #  2     0xd9bc5  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                   #  3     0xd9bc7  5      OPC=1138  
  subl $0x18, %esp                                        #  4     0xd9bcc  3      OPC=2384  
  addq %r15, %rsp                                         #  5     0xd9bcf  3      OPC=72    
  movl %ebx, %ebx                                         #  6     0xd9bd2  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  7     0xd9bd4  4      OPC=1156  
  movl %esi, %r12d                                        #  8     0xd9bd8  3      OPC=1157  
  leal -0xc(%rax), %edx                                   #  9     0xd9bdb  3      OPC=1066  
  xchgw %ax, %ax                                          #  10    0xd9bde  2      OPC=3700  
  movl %edx, %edx                                         #  11    0xd9be0  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %edi                             #  12    0xd9be2  5      OPC=1156  
  testl %edi, %edi                                        #  13    0xd9be7  2      OPC=2436  
  js .L_d9c20                                             #  14    0xd9be9  6      OPC=1043  
  nop                                                     #  15    0xd9bef  1      OPC=1343  
  nop                                                     #  16    0xd9bf0  1      OPC=1343  
  movl %ebx, %edi                                         #  17    0xd9bf1  2      OPC=1157  
  nop                                                     #  18    0xd9bf3  1      OPC=1343  
  nop                                                     #  19    0xd9bf4  1      OPC=1343  
  nop                                                     #  20    0xd9bf5  1      OPC=1343  
  nop                                                     #  21    0xd9bf6  1      OPC=1343  
  nop                                                     #  22    0xd9bf7  1      OPC=1343  
  nop                                                     #  23    0xd9bf8  1      OPC=1343  
  nop                                                     #  24    0xd9bf9  1      OPC=1343  
  nop                                                     #  25    0xd9bfa  1      OPC=1343  
  nop                                                     #  26    0xd9bfb  1      OPC=1343  
  nop                                                     #  27    0xd9bfc  1      OPC=1343  
  nop                                                     #  28    0xd9bfd  1      OPC=1343  
  nop                                                     #  29    0xd9bfe  1      OPC=1343  
  nop                                                     #  30    0xd9bff  1      OPC=1343  
  nop                                                     #  31    0xd9c00  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  32    0xd9c01  5      OPC=260   
  movl %ebx, %ebx                                         #  33    0xd9c06  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  34    0xd9c08  4      OPC=1156  
  nop                                                     #  35    0xd9c0c  1      OPC=1343  
  nop                                                     #  36    0xd9c0d  1      OPC=1343  
  nop                                                     #  37    0xd9c0e  1      OPC=1343  
  nop                                                     #  38    0xd9c0f  1      OPC=1343  
  nop                                                     #  39    0xd9c10  1      OPC=1343  
  nop                                                     #  40    0xd9c11  1      OPC=1343  
  nop                                                     #  41    0xd9c12  1      OPC=1343  
  nop                                                     #  42    0xd9c13  1      OPC=1343  
  nop                                                     #  43    0xd9c14  1      OPC=1343  
  nop                                                     #  44    0xd9c15  1      OPC=1343  
  nop                                                     #  45    0xd9c16  1      OPC=1343  
  nop                                                     #  46    0xd9c17  1      OPC=1343  
  nop                                                     #  47    0xd9c18  1      OPC=1343  
  nop                                                     #  48    0xd9c19  1      OPC=1343  
  nop                                                     #  49    0xd9c1a  1      OPC=1343  
  nop                                                     #  50    0xd9c1b  1      OPC=1343  
  nop                                                     #  51    0xd9c1c  1      OPC=1343  
  nop                                                     #  52    0xd9c1d  1      OPC=1343  
  nop                                                     #  53    0xd9c1e  1      OPC=1343  
  nop                                                     #  54    0xd9c1f  1      OPC=1343  
  nop                                                     #  55    0xd9c20  1      OPC=1343  
  nop                                                     #  56    0xd9c21  1      OPC=1343  
  nop                                                     #  57    0xd9c22  1      OPC=1343  
  nop                                                     #  58    0xd9c23  1      OPC=1343  
  nop                                                     #  59    0xd9c24  1      OPC=1343  
  nop                                                     #  60    0xd9c25  1      OPC=1343  
.L_d9c20:                                                 #        0xd9c26  0      OPC=0     
  leal (%rax,%r12,4), %eax                                #  61    0xd9c26  4      OPC=1066  
  movq 0x8(%rsp), %rbx                                    #  62    0xd9c2a  5      OPC=1161  
  movq 0x10(%rsp), %r12                                   #  63    0xd9c2f  5      OPC=1161  
  addl $0x18, %esp                                        #  64    0xd9c34  3      OPC=65    
  addq %r15, %rsp                                         #  65    0xd9c37  3      OPC=72    
  popq %r11                                               #  66    0xd9c3a  2      OPC=1694  
  andl $0xffffffe0, %r11d                                 #  67    0xd9c3c  7      OPC=131   
  nop                                                     #  68    0xd9c43  1      OPC=1343  
  nop                                                     #  69    0xd9c44  1      OPC=1343  
  nop                                                     #  70    0xd9c45  1      OPC=1343  
  nop                                                     #  71    0xd9c46  1      OPC=1343  
  addq %r15, %r11                                         #  72    0xd9c47  3      OPC=72    
  jmpq %r11                                               #  73    0xd9c4a  3      OPC=928   
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNSbIwSt11char_traitsIwESaIwEEixEj


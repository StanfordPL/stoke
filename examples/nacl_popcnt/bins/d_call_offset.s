  .text
  .globl d_call_offset
  .type d_call_offset, @function

#! file-offset 0x4fd00
#! rip-offset  0x4fd00
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.d_call_offset:                #        0x4fd00  0      
  testl %esi, %esi             #  1     0x4fd00  2      
  pushq %rbx                   #  2     0x4fd02  2      
  movl %edi, %ebx              #  3     0x4fd04  2      
  jne .L_4fd80                 #  4     0x4fd06  6      
  movl %ebx, %ebx              #  5     0x4fd0c  2      
  movl 0xc(%r15,%rbx,1), %eax  #  6     0x4fd0e  5      
  movl %eax, %eax              #  7     0x4fd13  2      
  movzbl (%r15,%rax,1), %esi   #  8     0x4fd15  5      
  testb %sil, %sil             #  9     0x4fd1a  3      
  jne .L_4fd60                 #  10    0x4fd1d  6      
  nop                          #  11    0x4fd23  1      
.L_4fd20:                      #        0x4fd24  0      
  xorl %eax, %eax              #  12    0x4fd24  2      
  nop                          #  13    0x4fd26  1      
  nop                          #  14    0x4fd27  1      
.L_4fd40:                      #        0x4fd28  0      
  popq %rbx                    #  15    0x4fd28  2      
  popq %r11                    #  16    0x4fd2a  3      
  andl $0xffffffe0, %r11d      #  17    0x4fd2d  7      
  addq %r15, %r11              #  18    0x4fd34  3      
  jmpq %r11                    #  19    0x4fd37  3      
  nop                          #  20    0x4fd3a  1      
  nop                          #  21    0x4fd3b  1      
.L_4fd60:                      #        0x4fd3c  0      
  addl $0x1, %eax              #  22    0x4fd3c  3      
  movsbl %sil, %esi            #  23    0x4fd3f  4      
  movl %ebx, %ebx              #  24    0x4fd43  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  25    0x4fd45  5      
  nop                          #  26    0x4fd4a  1      
  nop                          #  27    0x4fd4b  1      
.L_4fd80:                      #        0x4fd4c  0      
  cmpl $0x68, %esi             #  28    0x4fd4c  3      
  je .L_4fdc0                  #  29    0x4fd4f  6      
  cmpl $0x76, %esi             #  30    0x4fd55  3      
  jne .L_4fd20                 #  31    0x4fd58  6      
  movl %ebx, %edi              #  32    0x4fd5e  2      
  nop                          #  33    0x4fd60  1      
  callq .d_number              #  34    0x4fd61  5      
  movl %ebx, %ebx              #  35    0x4fd66  2      
  movl 0xc(%r15,%rbx,1), %eax  #  36    0x4fd68  5      
  movl %eax, %eax              #  37    0x4fd6d  2      
  cmpb $0x5f, (%r15,%rax,1)    #  38    0x4fd6f  5      
  jne .L_4fd20                 #  39    0x4fd74  6      
  addl $0x1, %eax              #  40    0x4fd7a  3      
  movl %ebx, %ebx              #  41    0x4fd7d  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  42    0x4fd7f  5      
  xchgw %ax, %ax               #  43    0x4fd84  3      
.L_4fdc0:                      #        0x4fd87  0      
  movl %ebx, %edi              #  44    0x4fd87  2      
  nop                          #  45    0x4fd89  1      
  nop                          #  46    0x4fd8a  1      
  callq .d_number              #  47    0x4fd8b  5      
  movl %ebx, %ebx              #  48    0x4fd90  2      
  movl 0xc(%r15,%rbx,1), %eax  #  49    0x4fd92  5      
  movl %eax, %eax              #  50    0x4fd97  2      
  cmpb $0x5f, (%r15,%rax,1)    #  51    0x4fd99  5      
  jne .L_4fd20                 #  52    0x4fd9e  6      
  addl $0x1, %eax              #  53    0x4fda4  3      
  movl %ebx, %ebx              #  54    0x4fda7  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  55    0x4fda9  5      
  xchgw %ax, %ax               #  56    0x4fdae  3      
  movl $0x1, %eax              #  57    0x4fdb1  5      
  jmpq .L_4fd40                #  58    0x4fdb6  5      
  nop                          #  59    0x4fdbb  1      
  nop                          #  60    0x4fdbc  1      
                                                        
.size d_call_offset, .-d_call_offset


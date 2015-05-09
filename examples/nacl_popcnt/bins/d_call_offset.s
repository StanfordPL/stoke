  .text
  .globl d_call_offset
  .type d_call_offset, @function

#! file-offset 0x4fce0
#! rip-offset  0x4fce0
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.d_call_offset:                #        0x4fce0  0      
  testl %esi, %esi             #  1     0x4fce0  2      
  pushq %rbx                   #  2     0x4fce2  2      
  movl %edi, %ebx              #  3     0x4fce4  2      
  jne .L_4fd60                 #  4     0x4fce6  6      
  movl %ebx, %ebx              #  5     0x4fcec  2      
  movl 0xc(%r15,%rbx,1), %eax  #  6     0x4fcee  5      
  movl %eax, %eax              #  7     0x4fcf3  2      
  movzbl (%r15,%rax,1), %esi   #  8     0x4fcf5  5      
  testb %sil, %sil             #  9     0x4fcfa  3      
  jne .L_4fd40                 #  10    0x4fcfd  6      
  nop                          #  11    0x4fd03  1      
.L_4fd00:                      #        0x4fd04  0      
  xorl %eax, %eax              #  12    0x4fd04  2      
  nop                          #  13    0x4fd06  1      
  nop                          #  14    0x4fd07  1      
.L_4fd20:                      #        0x4fd08  0      
  popq %rbx                    #  15    0x4fd08  2      
  popq %r11                    #  16    0x4fd0a  3      
  andl $0xffffffe0, %r11d      #  17    0x4fd0d  7      
  addq %r15, %r11              #  18    0x4fd14  3      
  jmpq %r11                    #  19    0x4fd17  3      
  nop                          #  20    0x4fd1a  1      
  nop                          #  21    0x4fd1b  1      
.L_4fd40:                      #        0x4fd1c  0      
  addl $0x1, %eax              #  22    0x4fd1c  3      
  movsbl %sil, %esi            #  23    0x4fd1f  4      
  movl %ebx, %ebx              #  24    0x4fd23  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  25    0x4fd25  5      
  nop                          #  26    0x4fd2a  1      
  nop                          #  27    0x4fd2b  1      
.L_4fd60:                      #        0x4fd2c  0      
  cmpl $0x68, %esi             #  28    0x4fd2c  3      
  je .L_4fda0                  #  29    0x4fd2f  6      
  cmpl $0x76, %esi             #  30    0x4fd35  3      
  jne .L_4fd00                 #  31    0x4fd38  6      
  movl %ebx, %edi              #  32    0x4fd3e  2      
  nop                          #  33    0x4fd40  1      
  callq .d_number              #  34    0x4fd41  5      
  movl %ebx, %ebx              #  35    0x4fd46  2      
  movl 0xc(%r15,%rbx,1), %eax  #  36    0x4fd48  5      
  movl %eax, %eax              #  37    0x4fd4d  2      
  cmpb $0x5f, (%r15,%rax,1)    #  38    0x4fd4f  5      
  jne .L_4fd00                 #  39    0x4fd54  6      
  addl $0x1, %eax              #  40    0x4fd5a  3      
  movl %ebx, %ebx              #  41    0x4fd5d  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  42    0x4fd5f  5      
  xchgw %ax, %ax               #  43    0x4fd64  3      
.L_4fda0:                      #        0x4fd67  0      
  movl %ebx, %edi              #  44    0x4fd67  2      
  nop                          #  45    0x4fd69  1      
  nop                          #  46    0x4fd6a  1      
  callq .d_number              #  47    0x4fd6b  5      
  movl %ebx, %ebx              #  48    0x4fd70  2      
  movl 0xc(%r15,%rbx,1), %eax  #  49    0x4fd72  5      
  movl %eax, %eax              #  50    0x4fd77  2      
  cmpb $0x5f, (%r15,%rax,1)    #  51    0x4fd79  5      
  jne .L_4fd00                 #  52    0x4fd7e  6      
  addl $0x1, %eax              #  53    0x4fd84  3      
  movl %ebx, %ebx              #  54    0x4fd87  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  55    0x4fd89  5      
  xchgw %ax, %ax               #  56    0x4fd8e  3      
  movl $0x1, %eax              #  57    0x4fd91  5      
  jmpq .L_4fd20                #  58    0x4fd96  5      
  nop                          #  59    0x4fd9b  1      
  nop                          #  60    0x4fd9c  1      
                                                        
.size d_call_offset, .-d_call_offset


  .text
  .globl d_call_offset
  .type d_call_offset, @function

#! file-offset 0x4fd80
#! rip-offset  0x4fd80
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.d_call_offset:                #        0x4fd80  0      
  testl %esi, %esi             #  1     0x4fd80  2      
  pushq %rbx                   #  2     0x4fd82  2      
  movl %edi, %ebx              #  3     0x4fd84  2      
  jne .L_4fe00                 #  4     0x4fd86  6      
  movl %ebx, %ebx              #  5     0x4fd8c  2      
  movl 0xc(%r15,%rbx,1), %eax  #  6     0x4fd8e  5      
  movl %eax, %eax              #  7     0x4fd93  2      
  movzbl (%r15,%rax,1), %esi   #  8     0x4fd95  5      
  testb %sil, %sil             #  9     0x4fd9a  3      
  jne .L_4fde0                 #  10    0x4fd9d  6      
  nop                          #  11    0x4fda3  1      
.L_4fda0:                      #        0x4fda4  0      
  xorl %eax, %eax              #  12    0x4fda4  2      
  nop                          #  13    0x4fda6  1      
  nop                          #  14    0x4fda7  1      
.L_4fdc0:                      #        0x4fda8  0      
  popq %rbx                    #  15    0x4fda8  2      
  popq %r11                    #  16    0x4fdaa  3      
  andl $0xffffffe0, %r11d      #  17    0x4fdad  7      
  addq %r15, %r11              #  18    0x4fdb4  3      
  jmpq %r11                    #  19    0x4fdb7  3      
  nop                          #  20    0x4fdba  1      
  nop                          #  21    0x4fdbb  1      
.L_4fde0:                      #        0x4fdbc  0      
  addl $0x1, %eax              #  22    0x4fdbc  3      
  movsbl %sil, %esi            #  23    0x4fdbf  4      
  movl %ebx, %ebx              #  24    0x4fdc3  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  25    0x4fdc5  5      
  nop                          #  26    0x4fdca  1      
  nop                          #  27    0x4fdcb  1      
.L_4fe00:                      #        0x4fdcc  0      
  cmpl $0x68, %esi             #  28    0x4fdcc  3      
  je .L_4fe40                  #  29    0x4fdcf  6      
  cmpl $0x76, %esi             #  30    0x4fdd5  3      
  jne .L_4fda0                 #  31    0x4fdd8  6      
  movl %ebx, %edi              #  32    0x4fdde  2      
  nop                          #  33    0x4fde0  1      
  callq .d_number              #  34    0x4fde1  5      
  movl %ebx, %ebx              #  35    0x4fde6  2      
  movl 0xc(%r15,%rbx,1), %eax  #  36    0x4fde8  5      
  movl %eax, %eax              #  37    0x4fded  2      
  cmpb $0x5f, (%r15,%rax,1)    #  38    0x4fdef  5      
  jne .L_4fda0                 #  39    0x4fdf4  6      
  addl $0x1, %eax              #  40    0x4fdfa  3      
  movl %ebx, %ebx              #  41    0x4fdfd  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  42    0x4fdff  5      
  xchgw %ax, %ax               #  43    0x4fe04  3      
.L_4fe40:                      #        0x4fe07  0      
  movl %ebx, %edi              #  44    0x4fe07  2      
  nop                          #  45    0x4fe09  1      
  nop                          #  46    0x4fe0a  1      
  callq .d_number              #  47    0x4fe0b  5      
  movl %ebx, %ebx              #  48    0x4fe10  2      
  movl 0xc(%r15,%rbx,1), %eax  #  49    0x4fe12  5      
  movl %eax, %eax              #  50    0x4fe17  2      
  cmpb $0x5f, (%r15,%rax,1)    #  51    0x4fe19  5      
  jne .L_4fda0                 #  52    0x4fe1e  6      
  addl $0x1, %eax              #  53    0x4fe24  3      
  movl %ebx, %ebx              #  54    0x4fe27  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  55    0x4fe29  5      
  xchgw %ax, %ax               #  56    0x4fe2e  3      
  movl $0x1, %eax              #  57    0x4fe31  5      
  jmpq .L_4fdc0                #  58    0x4fe36  5      
  nop                          #  59    0x4fe3b  1      
  nop                          #  60    0x4fe3c  1      
                                                        
.size d_call_offset, .-d_call_offset


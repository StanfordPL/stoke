  .text
  .globl lseek
  .type lseek, @function

#! file-offset 0x88480
#! rip-offset  0x88480
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  
.lseek:                           #        0x88480  0      
  pushq %rbx                      #  1     0x88480  2      
  subl $0x10, %esp                #  2     0x88482  3      
  addq %r15, %rsp                 #  3     0x88485  3      
  movl 0xffa8086(%rip), %eax      #  4     0x88488  6      
  leal 0x8(%rsp), %ecx            #  5     0x8848e  4      
  nop                             #  6     0x88492  1      
  andl $0xffffffe0, %eax          #  7     0x88493  5      
  addq %r15, %rax                 #  8     0x88498  3      
  callq %rax                      #  9     0x8849b  2      
  testl %eax, %eax                #  10    0x8849d  2      
  movl %eax, %ebx                 #  11    0x8849f  2      
  jne .L_884e0                    #  12    0x884a1  6      
  movq 0x8(%rsp), %rax            #  13    0x884a7  5      
  nop                             #  14    0x884ac  1      
  nop                             #  15    0x884ad  1      
.L_884c0:                         #        0x884ae  0      
  addl $0x10, %esp                #  16    0x884ae  3      
  addq %r15, %rsp                 #  17    0x884b1  3      
  popq %rbx                       #  18    0x884b4  2      
  popq %r11                       #  19    0x884b6  3      
  andl $0xffffffe0, %r11d         #  20    0x884b9  7      
  addq %r15, %r11                 #  21    0x884c0  3      
  jmpq %r11                       #  22    0x884c3  3      
  nop                             #  23    0x884c6  1      
.L_884e0:                         #        0x884c7  0      
  nop                             #  24    0x884c7  1      
  nop                             #  25    0x884c8  1      
  callq .__errno                  #  26    0x884c9  5      
  movl %eax, %eax                 #  27    0x884ce  2      
  movl %eax, %eax                 #  28    0x884d0  2      
  movl %ebx, (%r15,%rax,1)        #  29    0x884d2  4      
  movq $0xffffffffffffffff, %rax  #  30    0x884d6  7      
  jmpq .L_884c0                   #  31    0x884dd  5      
  nop                             #  32    0x884e2  1      
  nop                             #  33    0x884e3  1      
  nop                             #  34    0x884e4  1      
  nop                             #  35    0x884e5  1      
  nop                             #  36    0x884e6  1      
  nop                             #  37    0x884e7  1      
  nop                             #  38    0x884e8  1      
  nop                             #  39    0x884e9  1      
  nop                             #  40    0x884ea  1      
  nop                             #  41    0x884eb  1      
  nop                             #  42    0x884ec  1      
  nop                             #  43    0x884ed  1      
  nop                             #  44    0x884ee  1      
  nop                             #  45    0x884ef  1      
  nop                             #  46    0x884f0  1      
                                                           
.size lseek, .-lseek


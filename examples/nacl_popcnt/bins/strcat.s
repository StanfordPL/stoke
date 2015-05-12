  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x80280
#! rip-offset  0x80280
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.strcat:                       #        0x80280  0      
  pushq %rbx                   #  1     0x80280  2      
  movl %edi, %ebx              #  2     0x80282  2      
  movl %esi, %esi              #  3     0x80284  2      
  testb $0x3, %bl              #  4     0x80286  3      
  movq %rbx, %rdi              #  5     0x80289  3      
  jne .L_80300                 #  6     0x8028c  6      
  movl %ebx, %ebx              #  7     0x80292  2      
  movl (%r15,%rbx,1), %edx     #  8     0x80294  4      
  jmpq .L_802c0                #  9     0x80298  5      
  nop                          #  10    0x8029d  1      
.L_802a0:                      #        0x8029e  0      
  addl $0x4, %edi              #  11    0x8029e  3      
  movl %edi, %edi              #  12    0x802a1  2      
  movl (%r15,%rdi,1), %edx     #  13    0x802a3  4      
  nop                          #  14    0x802a7  1      
  nop                          #  15    0x802a8  1      
.L_802c0:                      #        0x802a9  0      
  leal -0x1010101(%rdx), %eax  #  16    0x802a9  6      
  notl %edx                    #  17    0x802af  2      
  andl %edx, %eax              #  18    0x802b1  2      
  testl $0x80808080, %eax      #  19    0x802b3  5      
  je .L_802a0                  #  20    0x802b8  6      
  movl %edi, %edi              #  21    0x802be  2      
  cmpb $0x0, (%r15,%rdi,1)     #  22    0x802c0  5      
  je .L_80320                  #  23    0x802c5  6      
  nop                          #  24    0x802cb  1      
.L_802e0:                      #        0x802cc  0      
  addl $0x1, %edi              #  25    0x802cc  3      
  nop                          #  26    0x802cf  1      
  nop                          #  27    0x802d0  1      
.L_80300:                      #        0x802d1  0      
  movl %edi, %edi              #  28    0x802d1  2      
  cmpb $0x0, (%r15,%rdi,1)     #  29    0x802d3  5      
  jne .L_802e0                 #  30    0x802d8  6      
  nop                          #  31    0x802de  1      
  nop                          #  32    0x802df  1      
.L_80320:                      #        0x802e0  0      
  nop                          #  33    0x802e0  1      
  nop                          #  34    0x802e1  1      
  callq .strcpy                #  35    0x802e2  5      
  movl %ebx, %eax              #  36    0x802e7  2      
  popq %rbx                    #  37    0x802e9  2      
  popq %r11                    #  38    0x802eb  3      
  andl $0xffffffe0, %r11d      #  39    0x802ee  7      
  addq %r15, %r11              #  40    0x802f5  3      
  jmpq %r11                    #  41    0x802f8  3      
  nop                          #  42    0x802fb  1      
  nop                          #  43    0x802fc  1      
  nop                          #  44    0x802fd  1      
  nop                          #  45    0x802fe  1      
  nop                          #  46    0x802ff  1      
  nop                          #  47    0x80300  1      
  nop                          #  48    0x80301  1      
  nop                          #  49    0x80302  1      
  nop                          #  50    0x80303  1      
  nop                          #  51    0x80304  1      
  nop                          #  52    0x80305  1      
  nop                          #  53    0x80306  1      
  nop                          #  54    0x80307  1      
  nop                          #  55    0x80308  1      
  nop                          #  56    0x80309  1      
  nop                          #  57    0x8030a  1      
  nop                          #  58    0x8030b  1      
                                                        
.size strcat, .-strcat


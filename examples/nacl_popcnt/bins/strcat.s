  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x80260
#! rip-offset  0x80260
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.strcat:                       #        0x80260  0      
  pushq %rbx                   #  1     0x80260  2      
  movl %edi, %ebx              #  2     0x80262  2      
  movl %esi, %esi              #  3     0x80264  2      
  testb $0x3, %bl              #  4     0x80266  3      
  movq %rbx, %rdi              #  5     0x80269  3      
  jne .L_802e0                 #  6     0x8026c  6      
  movl %ebx, %ebx              #  7     0x80272  2      
  movl (%r15,%rbx,1), %edx     #  8     0x80274  4      
  jmpq .L_802a0                #  9     0x80278  5      
  nop                          #  10    0x8027d  1      
.L_80280:                      #        0x8027e  0      
  addl $0x4, %edi              #  11    0x8027e  3      
  movl %edi, %edi              #  12    0x80281  2      
  movl (%r15,%rdi,1), %edx     #  13    0x80283  4      
  nop                          #  14    0x80287  1      
  nop                          #  15    0x80288  1      
.L_802a0:                      #        0x80289  0      
  leal -0x1010101(%rdx), %eax  #  16    0x80289  6      
  notl %edx                    #  17    0x8028f  2      
  andl %edx, %eax              #  18    0x80291  2      
  testl $0x80808080, %eax      #  19    0x80293  5      
  je .L_80280                  #  20    0x80298  6      
  movl %edi, %edi              #  21    0x8029e  2      
  cmpb $0x0, (%r15,%rdi,1)     #  22    0x802a0  5      
  je .L_80300                  #  23    0x802a5  6      
  nop                          #  24    0x802ab  1      
.L_802c0:                      #        0x802ac  0      
  addl $0x1, %edi              #  25    0x802ac  3      
  nop                          #  26    0x802af  1      
  nop                          #  27    0x802b0  1      
.L_802e0:                      #        0x802b1  0      
  movl %edi, %edi              #  28    0x802b1  2      
  cmpb $0x0, (%r15,%rdi,1)     #  29    0x802b3  5      
  jne .L_802c0                 #  30    0x802b8  6      
  nop                          #  31    0x802be  1      
  nop                          #  32    0x802bf  1      
.L_80300:                      #        0x802c0  0      
  nop                          #  33    0x802c0  1      
  nop                          #  34    0x802c1  1      
  callq .strcpy                #  35    0x802c2  5      
  movl %ebx, %eax              #  36    0x802c7  2      
  popq %rbx                    #  37    0x802c9  2      
  popq %r11                    #  38    0x802cb  3      
  andl $0xffffffe0, %r11d      #  39    0x802ce  7      
  addq %r15, %r11              #  40    0x802d5  3      
  jmpq %r11                    #  41    0x802d8  3      
  nop                          #  42    0x802db  1      
  nop                          #  43    0x802dc  1      
  nop                          #  44    0x802dd  1      
  nop                          #  45    0x802de  1      
  nop                          #  46    0x802df  1      
  nop                          #  47    0x802e0  1      
  nop                          #  48    0x802e1  1      
  nop                          #  49    0x802e2  1      
  nop                          #  50    0x802e3  1      
  nop                          #  51    0x802e4  1      
  nop                          #  52    0x802e5  1      
  nop                          #  53    0x802e6  1      
  nop                          #  54    0x802e7  1      
  nop                          #  55    0x802e8  1      
  nop                          #  56    0x802e9  1      
  nop                          #  57    0x802ea  1      
  nop                          #  58    0x802eb  1      
                                                        
.size strcat, .-strcat


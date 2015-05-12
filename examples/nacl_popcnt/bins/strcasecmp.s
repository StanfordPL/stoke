  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0x801c0
#! rip-offset  0x801c0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strcasecmp:                     #        0x801c0  0      
  movl %edi, %edi                #  1     0x801c0  2      
  movl %esi, %esi                #  2     0x801c2  2      
  movl 0xffb09f9(%rip), %r8d     #  3     0x801c4  7      
  jmpq .L_80200                  #  4     0x801cb  5      
  nop                            #  5     0x801d0  1      
  nop                            #  6     0x801d1  1      
.L_801e0:                        #        0x801d2  0      
  addl $0x1, %esi                #  7     0x801d2  3      
  nop                            #  8     0x801d5  1      
  nop                            #  9     0x801d6  1      
.L_80200:                        #        0x801d7  0      
  movl %edi, %edi                #  10    0x801d7  2      
  movzbl (%r15,%rdi,1), %eax     #  11    0x801d9  5      
  addl $0x1, %edi                #  12    0x801de  3      
  movzbl %al, %eax               #  13    0x801e1  3      
  leal (%rax,%r8,1), %edx        #  14    0x801e4  4      
  leal 0x20(%rax), %ecx          #  15    0x801e8  3      
  movl %edx, %edx                #  16    0x801eb  2      
  movsbl 0x1(%r15,%rdx,1), %edx  #  17    0x801ed  6      
  andl $0x3, %edx                #  18    0x801f3  3      
  nop                            #  19    0x801f6  1      
  cmpl $0x1, %edx                #  20    0x801f7  3      
  movl %esi, %esi                #  21    0x801fa  2      
  movzbl (%r15,%rsi,1), %edx     #  22    0x801fc  5      
  cmovel %ecx, %eax              #  23    0x80201  3      
  leal (%rdx,%r8,1), %ecx        #  24    0x80204  4      
  leal 0x20(%rdx), %r9d          #  25    0x80208  4      
  movl %ecx, %ecx                #  26    0x8020c  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  27    0x8020e  6      
  andl $0x3, %ecx                #  28    0x80214  3      
  cmpl $0x1, %ecx                #  29    0x80217  3      
  cmovel %r9d, %edx              #  30    0x8021a  4      
  subl %edx, %eax                #  31    0x8021e  2      
  jne .L_80260                   #  32    0x80220  6      
  testl %edx, %edx               #  33    0x80226  2      
  jne .L_801e0                   #  34    0x80228  6      
  xchgw %ax, %ax                 #  35    0x8022e  3      
  nop                            #  36    0x80231  1      
.L_80260:                        #        0x80232  0      
  popq %r11                      #  37    0x80232  3      
  andl $0xffffffe0, %r11d        #  38    0x80235  7      
  addq %r15, %r11                #  39    0x8023c  3      
  jmpq %r11                      #  40    0x8023f  3      
  nop                            #  41    0x80242  1      
  nop                            #  42    0x80243  1      
  nop                            #  43    0x80244  1      
  nop                            #  44    0x80245  1      
  nop                            #  45    0x80246  1      
  nop                            #  46    0x80247  1      
  nop                            #  47    0x80248  1      
  nop                            #  48    0x80249  1      
  nop                            #  49    0x8024a  1      
  nop                            #  50    0x8024b  1      
  nop                            #  51    0x8024c  1      
  nop                            #  52    0x8024d  1      
  nop                            #  53    0x8024e  1      
  nop                            #  54    0x8024f  1      
  nop                            #  55    0x80250  1      
  nop                            #  56    0x80251  1      
  nop                            #  57    0x80252  1      
  nop                            #  58    0x80253  1      
  nop                            #  59    0x80254  1      
  nop                            #  60    0x80255  1      
                                                          
.size strcasecmp, .-strcasecmp


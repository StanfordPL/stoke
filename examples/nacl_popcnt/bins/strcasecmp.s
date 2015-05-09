  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0x801a0
#! rip-offset  0x801a0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strcasecmp:                     #        0x801a0  0      
  movl %edi, %edi                #  1     0x801a0  2      
  movl %esi, %esi                #  2     0x801a2  2      
  movl 0xffb0a19(%rip), %r8d     #  3     0x801a4  7      
  jmpq .L_801e0                  #  4     0x801ab  5      
  nop                            #  5     0x801b0  1      
  nop                            #  6     0x801b1  1      
.L_801c0:                        #        0x801b2  0      
  addl $0x1, %esi                #  7     0x801b2  3      
  nop                            #  8     0x801b5  1      
  nop                            #  9     0x801b6  1      
.L_801e0:                        #        0x801b7  0      
  movl %edi, %edi                #  10    0x801b7  2      
  movzbl (%r15,%rdi,1), %eax     #  11    0x801b9  5      
  addl $0x1, %edi                #  12    0x801be  3      
  movzbl %al, %eax               #  13    0x801c1  3      
  leal (%rax,%r8,1), %edx        #  14    0x801c4  4      
  leal 0x20(%rax), %ecx          #  15    0x801c8  3      
  movl %edx, %edx                #  16    0x801cb  2      
  movsbl 0x1(%r15,%rdx,1), %edx  #  17    0x801cd  6      
  andl $0x3, %edx                #  18    0x801d3  3      
  nop                            #  19    0x801d6  1      
  cmpl $0x1, %edx                #  20    0x801d7  3      
  movl %esi, %esi                #  21    0x801da  2      
  movzbl (%r15,%rsi,1), %edx     #  22    0x801dc  5      
  cmovel %ecx, %eax              #  23    0x801e1  3      
  leal (%rdx,%r8,1), %ecx        #  24    0x801e4  4      
  leal 0x20(%rdx), %r9d          #  25    0x801e8  4      
  movl %ecx, %ecx                #  26    0x801ec  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  27    0x801ee  6      
  andl $0x3, %ecx                #  28    0x801f4  3      
  cmpl $0x1, %ecx                #  29    0x801f7  3      
  cmovel %r9d, %edx              #  30    0x801fa  4      
  subl %edx, %eax                #  31    0x801fe  2      
  jne .L_80240                   #  32    0x80200  6      
  testl %edx, %edx               #  33    0x80206  2      
  jne .L_801c0                   #  34    0x80208  6      
  xchgw %ax, %ax                 #  35    0x8020e  3      
  nop                            #  36    0x80211  1      
.L_80240:                        #        0x80212  0      
  popq %r11                      #  37    0x80212  3      
  andl $0xffffffe0, %r11d        #  38    0x80215  7      
  addq %r15, %r11                #  39    0x8021c  3      
  jmpq %r11                      #  40    0x8021f  3      
  nop                            #  41    0x80222  1      
  nop                            #  42    0x80223  1      
  nop                            #  43    0x80224  1      
  nop                            #  44    0x80225  1      
  nop                            #  45    0x80226  1      
  nop                            #  46    0x80227  1      
  nop                            #  47    0x80228  1      
  nop                            #  48    0x80229  1      
  nop                            #  49    0x8022a  1      
  nop                            #  50    0x8022b  1      
  nop                            #  51    0x8022c  1      
  nop                            #  52    0x8022d  1      
  nop                            #  53    0x8022e  1      
  nop                            #  54    0x8022f  1      
  nop                            #  55    0x80230  1      
  nop                            #  56    0x80231  1      
  nop                            #  57    0x80232  1      
  nop                            #  58    0x80233  1      
  nop                            #  59    0x80234  1      
  nop                            #  60    0x80235  1      
                                                          
.size strcasecmp, .-strcasecmp


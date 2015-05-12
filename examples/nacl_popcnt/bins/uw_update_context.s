  .text
  .globl uw_update_context
  .type uw_update_context, @function

#! file-offset 0x5bf20
#! rip-offset  0x5bf20
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.uw_update_context:               #        0x5bf20  0      
  pushq %r12                      #  1     0x5bf20  3      
  movl %esi, %r12d                #  2     0x5bf23  3      
  movl %r12d, %esi                #  3     0x5bf26  3      
  pushq %rbx                      #  4     0x5bf29  2      
  movl %edi, %ebx                 #  5     0x5bf2b  2      
  movl %ebx, %edi                 #  6     0x5bf2d  2      
  subl $0x8, %esp                 #  7     0x5bf2f  3      
  addq %r15, %rsp                 #  8     0x5bf32  3      
  nop                             #  9     0x5bf35  1      
  callq .uw_update_context_1      #  10    0x5bf36  5      
  movl %r12d, %r12d               #  11    0x5bf3b  3      
  movl 0x158(%r15,%r12,1), %eax   #  12    0x5bf3e  8      
  movl %eax, %edx                 #  13    0x5bf46  2      
  shll $0x4, %edx                 #  14    0x5bf48  3      
  movslq %edx, %rdx               #  15    0x5bf4b  3      
  addq %rdx, %r12                 #  16    0x5bf4e  3      
  movl %r12d, %r12d               #  17    0x5bf51  3      
  cmpl $0x6, 0x8(%r15,%r12,1)     #  18    0x5bf54  6      
  nop                             #  19    0x5bf5a  1      
  je .L_5c000                     #  20    0x5bf5b  6      
  cmpl $0x11, %eax                #  21    0x5bf61  3      
  jg .L_5c040                     #  22    0x5bf64  6      
  leal 0xffda8cb(%rip), %ecx      #  23    0x5bf6a  6      
  movslq %eax, %rdx               #  24    0x5bf70  3      
  movl %ebx, %ebx                 #  25    0x5bf73  2      
  testb $0x40, 0x67(%r15,%rbx,1)  #  26    0x5bf75  6      
  leaq (%rcx,%rdx,1), %rdx        #  27    0x5bf7b  4      
  movl %edx, %edx                 #  28    0x5bf7f  2      
  movzbl (%r15,%rdx,1), %esi      #  29    0x5bf81  5      
  leal (,%rax,4), %edx            #  30    0x5bf86  7      
  movslq %edx, %rdx               #  31    0x5bf8d  3      
  leaq (%rbx,%rdx,1), %rdx        #  32    0x5bf90  4      
  movl %edx, %edx                 #  33    0x5bf94  2      
  movl (%r15,%rdx,1), %ecx        #  34    0x5bf96  4      
  nop                             #  35    0x5bf9a  1      
  je .L_5bfc0                     #  36    0x5bf9b  6      
  addl $0x70, %eax                #  37    0x5bfa1  3      
  movq %rcx, %rdx                 #  38    0x5bfa4  3      
  cltq                            #  39    0x5bfa7  2      
  leaq (%rbx,%rax,1), %rax        #  40    0x5bfa9  4      
  movl %eax, %eax                 #  41    0x5bfad  2      
  cmpb $0x0, 0x8(%r15,%rax,1)     #  42    0x5bfaf  6      
  jne .L_5bfe0                    #  43    0x5bfb5  6      
  nop                             #  44    0x5bfbb  1      
.L_5bfc0:                         #        0x5bfbc  0      
  movzbl %sil, %eax               #  45    0x5bfbc  4      
  cmpl $0x4, %eax                 #  46    0x5bfc0  3      
  je .L_5c020                     #  47    0x5bfc3  6      
  cmpl $0x8, %eax                 #  48    0x5bfc9  3      
  jne .L_5c040                    #  49    0x5bfcc  6      
  movl %ecx, %ecx                 #  50    0x5bfd2  2      
  movq (%r15,%rcx,1), %rdx        #  51    0x5bfd4  4      
  nop                             #  52    0x5bfd8  1      
.L_5bfe0:                         #        0x5bfd9  0      
  movl %ebx, %ebx                 #  53    0x5bfd9  2      
  movl %edx, 0x4c(%r15,%rbx,1)    #  54    0x5bfdb  5      
  addl $0x8, %esp                 #  55    0x5bfe0  3      
  addq %r15, %rsp                 #  56    0x5bfe3  3      
  popq %rbx                       #  57    0x5bfe6  2      
  popq %r12                       #  58    0x5bfe8  3      
  popq %r11                       #  59    0x5bfeb  3      
  andl $0xffffffe0, %r11d         #  60    0x5bfee  7      
  addq %r15, %r11                 #  61    0x5bff5  3      
  jmpq %r11                       #  62    0x5bff8  3      
  nop                             #  63    0x5bffb  1      
.L_5c000:                         #        0x5bffc  0      
  movl %ebx, %ebx                 #  64    0x5bffc  2      
  movl $0x0, 0x4c(%r15,%rbx,1)    #  65    0x5bffe  9      
  addl $0x8, %esp                 #  66    0x5c007  3      
  addq %r15, %rsp                 #  67    0x5c00a  3      
  popq %rbx                       #  68    0x5c00d  2      
  popq %r12                       #  69    0x5c00f  3      
  popq %r11                       #  70    0x5c012  3      
  andl $0xffffffe0, %r11d         #  71    0x5c015  7      
  addq %r15, %r11                 #  72    0x5c01c  3      
  jmpq %r11                       #  73    0x5c01f  3      
.L_5c020:                         #        0x5c022  0      
  movl %ecx, %ecx                 #  74    0x5c022  2      
  movl (%r15,%rcx,1), %edx        #  75    0x5c024  4      
  jmpq .L_5bfe0                   #  76    0x5c028  5      
  nop                             #  77    0x5c02d  1      
  nop                             #  78    0x5c02e  1      
.L_5c040:                         #        0x5c02f  0      
  nop                             #  79    0x5c02f  1      
  nop                             #  80    0x5c030  1      
  callq .abort                    #  81    0x5c031  5      
                                                           
.size uw_update_context, .-uw_update_context


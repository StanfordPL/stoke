  .text
  .globl uw_update_context
  .type uw_update_context, @function

#! file-offset 0x5bfa0
#! rip-offset  0x5bfa0
#! capacity    320 bytes

# Text                            #  Line  RIP      Bytes  
.uw_update_context:               #        0x5bfa0  0      
  pushq %r12                      #  1     0x5bfa0  3      
  movl %esi, %r12d                #  2     0x5bfa3  3      
  movl %r12d, %esi                #  3     0x5bfa6  3      
  pushq %rbx                      #  4     0x5bfa9  2      
  movl %edi, %ebx                 #  5     0x5bfab  2      
  movl %ebx, %edi                 #  6     0x5bfad  2      
  subl $0x8, %esp                 #  7     0x5bfaf  3      
  addq %r15, %rsp                 #  8     0x5bfb2  3      
  nop                             #  9     0x5bfb5  1      
  callq .uw_update_context_1      #  10    0x5bfb6  5      
  movl %r12d, %r12d               #  11    0x5bfbb  3      
  movl 0x158(%r15,%r12,1), %eax   #  12    0x5bfbe  8      
  movl %eax, %edx                 #  13    0x5bfc6  2      
  shll $0x4, %edx                 #  14    0x5bfc8  3      
  movslq %edx, %rdx               #  15    0x5bfcb  3      
  addq %rdx, %r12                 #  16    0x5bfce  3      
  movl %r12d, %r12d               #  17    0x5bfd1  3      
  cmpl $0x6, 0x8(%r15,%r12,1)     #  18    0x5bfd4  6      
  nop                             #  19    0x5bfda  1      
  je .L_5c080                     #  20    0x5bfdb  6      
  cmpl $0x11, %eax                #  21    0x5bfe1  3      
  jg .L_5c0c0                     #  22    0x5bfe4  6      
  leal 0xffda84b(%rip), %ecx      #  23    0x5bfea  6      
  movslq %eax, %rdx               #  24    0x5bff0  3      
  movl %ebx, %ebx                 #  25    0x5bff3  2      
  testb $0x40, 0x67(%r15,%rbx,1)  #  26    0x5bff5  6      
  leaq (%rcx,%rdx,1), %rdx        #  27    0x5bffb  4      
  movl %edx, %edx                 #  28    0x5bfff  2      
  movzbl (%r15,%rdx,1), %esi      #  29    0x5c001  5      
  leal (,%rax,4), %edx            #  30    0x5c006  7      
  movslq %edx, %rdx               #  31    0x5c00d  3      
  leaq (%rbx,%rdx,1), %rdx        #  32    0x5c010  4      
  movl %edx, %edx                 #  33    0x5c014  2      
  movl (%r15,%rdx,1), %ecx        #  34    0x5c016  4      
  nop                             #  35    0x5c01a  1      
  je .L_5c040                     #  36    0x5c01b  6      
  addl $0x70, %eax                #  37    0x5c021  3      
  movq %rcx, %rdx                 #  38    0x5c024  3      
  cltq                            #  39    0x5c027  2      
  leaq (%rbx,%rax,1), %rax        #  40    0x5c029  4      
  movl %eax, %eax                 #  41    0x5c02d  2      
  cmpb $0x0, 0x8(%r15,%rax,1)     #  42    0x5c02f  6      
  jne .L_5c060                    #  43    0x5c035  6      
  nop                             #  44    0x5c03b  1      
.L_5c040:                         #        0x5c03c  0      
  movzbl %sil, %eax               #  45    0x5c03c  4      
  cmpl $0x4, %eax                 #  46    0x5c040  3      
  je .L_5c0a0                     #  47    0x5c043  6      
  cmpl $0x8, %eax                 #  48    0x5c049  3      
  jne .L_5c0c0                    #  49    0x5c04c  6      
  movl %ecx, %ecx                 #  50    0x5c052  2      
  movq (%r15,%rcx,1), %rdx        #  51    0x5c054  4      
  nop                             #  52    0x5c058  1      
.L_5c060:                         #        0x5c059  0      
  movl %ebx, %ebx                 #  53    0x5c059  2      
  movl %edx, 0x4c(%r15,%rbx,1)    #  54    0x5c05b  5      
  addl $0x8, %esp                 #  55    0x5c060  3      
  addq %r15, %rsp                 #  56    0x5c063  3      
  popq %rbx                       #  57    0x5c066  2      
  popq %r12                       #  58    0x5c068  3      
  popq %r11                       #  59    0x5c06b  3      
  andl $0xffffffe0, %r11d         #  60    0x5c06e  7      
  addq %r15, %r11                 #  61    0x5c075  3      
  jmpq %r11                       #  62    0x5c078  3      
  nop                             #  63    0x5c07b  1      
.L_5c080:                         #        0x5c07c  0      
  movl %ebx, %ebx                 #  64    0x5c07c  2      
  movl $0x0, 0x4c(%r15,%rbx,1)    #  65    0x5c07e  9      
  addl $0x8, %esp                 #  66    0x5c087  3      
  addq %r15, %rsp                 #  67    0x5c08a  3      
  popq %rbx                       #  68    0x5c08d  2      
  popq %r12                       #  69    0x5c08f  3      
  popq %r11                       #  70    0x5c092  3      
  andl $0xffffffe0, %r11d         #  71    0x5c095  7      
  addq %r15, %r11                 #  72    0x5c09c  3      
  jmpq %r11                       #  73    0x5c09f  3      
.L_5c0a0:                         #        0x5c0a2  0      
  movl %ecx, %ecx                 #  74    0x5c0a2  2      
  movl (%r15,%rcx,1), %edx        #  75    0x5c0a4  4      
  jmpq .L_5c060                   #  76    0x5c0a8  5      
  nop                             #  77    0x5c0ad  1      
  nop                             #  78    0x5c0ae  1      
.L_5c0c0:                         #        0x5c0af  0      
  nop                             #  79    0x5c0af  1      
  nop                             #  80    0x5c0b0  1      
  callq .abort                    #  81    0x5c0b1  5      
                                                           
.size uw_update_context, .-uw_update_context


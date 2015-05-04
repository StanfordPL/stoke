  .text
  .globl frame_downheap
  .type frame_downheap, @function

#! file-offset 0x5dfe0
#! rip-offset  0x5dfe0
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
.frame_downheap:                #        0x5dfe0  0      
  pushq %r14                    #  1     0x5dfe0  3      
  movl %edi, %edi               #  2     0x5dfe3  2      
  movl %esi, %esi               #  3     0x5dfe5  2      
  movl %edx, %r14d              #  4     0x5dfe7  3      
  pushq %r13                    #  5     0x5dfea  3      
  pushq %r12                    #  6     0x5dfed  3      
  leal 0x1(%rcx,%rcx,1), %r12d  #  7     0x5dff0  5      
  pushq %rbx                    #  8     0x5dff5  2      
  subl $0x38, %esp              #  9     0x5dff7  3      
  addq %r15, %rsp               #  10    0x5dffa  3      
  cmpl %r8d, %r12d              #  11    0x5dffd  3      
  nop                           #  12    0x5e000  1      
  movl %r8d, 0x1c(%rsp)         #  13    0x5e001  5      
  movq %rdi, 0x20(%rsp)         #  14    0x5e006  5      
  movq %rsi, 0x28(%rsp)         #  15    0x5e00b  5      
  jl .L_5e0c0                   #  16    0x5e010  6      
  jmpq .L_5e140                 #  17    0x5e016  5      
  nop                           #  18    0x5e01b  1      
.L_5e020:                       #        0x5e01c  0      
  leal (%r14,%r12,4), %r13d     #  19    0x5e01c  4      
  movl %r12d, %ebx              #  20    0x5e020  3      
  nop                           #  21    0x5e023  1      
  nop                           #  22    0x5e024  1      
.L_5e040:                       #        0x5e025  0      
  leal (%r14,%rcx,4), %r12d     #  23    0x5e025  4      
  movl %r13d, %r13d             #  24    0x5e029  3      
  movl (%r15,%r13,1), %edx      #  25    0x5e02c  4      
  movl 0x20(%rsp), %edi         #  26    0x5e030  4      
  movq 0x28(%rsp), %rcx         #  27    0x5e034  5      
  movl %r12d, %r12d             #  28    0x5e039  3      
  movl (%r15,%r12,1), %esi      #  29    0x5e03c  4      
  nop                           #  30    0x5e040  1      
  nop                           #  31    0x5e041  1      
  nop                           #  32    0x5e042  1      
  andl $0xffffffe0, %ecx        #  33    0x5e043  6      
  addq %r15, %rcx               #  34    0x5e049  3      
  callq %rcx                    #  35    0x5e04c  2      
  testl %eax, %eax              #  36    0x5e04e  2      
  jns .L_5e140                  #  37    0x5e050  6      
  movl %r13d, %r13d             #  38    0x5e056  3      
  movl (%r15,%r13,1), %edx      #  39    0x5e059  4      
  movl %r12d, %r12d             #  40    0x5e05d  3      
  movl (%r15,%r12,1), %eax      #  41    0x5e060  4      
  movl %ebx, %ecx               #  42    0x5e064  2      
  movl %r12d, %r12d             #  43    0x5e066  3      
  movl %edx, (%r15,%r12,1)      #  44    0x5e069  4      
  nop                           #  45    0x5e06d  1      
  leal 0x1(%rbx,%rbx,1), %r12d  #  46    0x5e06e  5      
  cmpl %r12d, 0x1c(%rsp)        #  47    0x5e073  5      
  movl %r13d, %r13d             #  48    0x5e078  3      
  movl %eax, (%r15,%r13,1)      #  49    0x5e07b  4      
  jle .L_5e140                  #  50    0x5e07f  6      
  nop                           #  51    0x5e085  1      
.L_5e0c0:                       #        0x5e086  0      
  leal 0x1(%r12), %ebx          #  52    0x5e086  5      
  cmpl %ebx, 0x1c(%rsp)         #  53    0x5e08b  4      
  jle .L_5e020                  #  54    0x5e08f  6      
  leal (%r14,%rbx,4), %r8d      #  55    0x5e095  4      
  leal (%r14,%r12,4), %r13d     #  56    0x5e099  4      
  movl %ecx, 0x10(%rsp)         #  57    0x5e09d  4      
  movl 0x20(%rsp), %edi         #  58    0x5e0a1  4      
  nop                           #  59    0x5e0a5  1      
  movq 0x28(%rsp), %r9          #  60    0x5e0a6  5      
  movl %r8d, %r8d               #  61    0x5e0ab  3      
  movl (%r15,%r8,1), %edx       #  62    0x5e0ae  4      
  movl %r13d, %r13d             #  63    0x5e0b2  3      
  movl (%r15,%r13,1), %esi      #  64    0x5e0b5  4      
  movq %r8, 0x8(%rsp)           #  65    0x5e0b9  5      
  nop                           #  66    0x5e0be  1      
  nop                           #  67    0x5e0bf  1      
  nop                           #  68    0x5e0c0  1      
  andl $0xffffffe0, %r9d        #  69    0x5e0c1  7      
  addq %r15, %r9                #  70    0x5e0c8  3      
  callq %r9                     #  71    0x5e0cb  3      
  movq 0x8(%rsp), %r8           #  72    0x5e0ce  5      
  testl %eax, %eax              #  73    0x5e0d3  2      
  movl 0x10(%rsp), %ecx         #  74    0x5e0d5  4      
  cmovnsl %r12d, %ebx           #  75    0x5e0d9  4      
  cmovsq %r8, %r13              #  76    0x5e0dd  4      
  jmpq .L_5e040                 #  77    0x5e0e1  5      
  nop                           #  78    0x5e0e6  1      
.L_5e140:                       #        0x5e0e7  0      
  addl $0x38, %esp              #  79    0x5e0e7  3      
  addq %r15, %rsp               #  80    0x5e0ea  3      
  popq %rbx                     #  81    0x5e0ed  2      
  popq %r12                     #  82    0x5e0ef  3      
  popq %r13                     #  83    0x5e0f2  3      
  popq %r14                     #  84    0x5e0f5  3      
  popq %r11                     #  85    0x5e0f8  3      
  andl $0xffffffe0, %r11d       #  86    0x5e0fb  7      
  addq %r15, %r11               #  87    0x5e102  3      
  jmpq %r11                     #  88    0x5e105  3      
  nop                           #  89    0x5e108  1      
                                                         
.size frame_downheap, .-frame_downheap


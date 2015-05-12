  .text
  .globl frame_downheap
  .type frame_downheap, @function

#! file-offset 0x5df60
#! rip-offset  0x5df60
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
.frame_downheap:                #        0x5df60  0      
  pushq %r14                    #  1     0x5df60  3      
  movl %edi, %edi               #  2     0x5df63  2      
  movl %esi, %esi               #  3     0x5df65  2      
  movl %edx, %r14d              #  4     0x5df67  3      
  pushq %r13                    #  5     0x5df6a  3      
  pushq %r12                    #  6     0x5df6d  3      
  leal 0x1(%rcx,%rcx,1), %r12d  #  7     0x5df70  5      
  pushq %rbx                    #  8     0x5df75  2      
  subl $0x38, %esp              #  9     0x5df77  3      
  addq %r15, %rsp               #  10    0x5df7a  3      
  cmpl %r8d, %r12d              #  11    0x5df7d  3      
  nop                           #  12    0x5df80  1      
  movl %r8d, 0x1c(%rsp)         #  13    0x5df81  5      
  movq %rdi, 0x20(%rsp)         #  14    0x5df86  5      
  movq %rsi, 0x28(%rsp)         #  15    0x5df8b  5      
  jl .L_5e040                   #  16    0x5df90  6      
  jmpq .L_5e0c0                 #  17    0x5df96  5      
  nop                           #  18    0x5df9b  1      
.L_5dfa0:                       #        0x5df9c  0      
  leal (%r14,%r12,4), %r13d     #  19    0x5df9c  4      
  movl %r12d, %ebx              #  20    0x5dfa0  3      
  nop                           #  21    0x5dfa3  1      
  nop                           #  22    0x5dfa4  1      
.L_5dfc0:                       #        0x5dfa5  0      
  leal (%r14,%rcx,4), %r12d     #  23    0x5dfa5  4      
  movl %r13d, %r13d             #  24    0x5dfa9  3      
  movl (%r15,%r13,1), %edx      #  25    0x5dfac  4      
  movl 0x20(%rsp), %edi         #  26    0x5dfb0  4      
  movq 0x28(%rsp), %rcx         #  27    0x5dfb4  5      
  movl %r12d, %r12d             #  28    0x5dfb9  3      
  movl (%r15,%r12,1), %esi      #  29    0x5dfbc  4      
  nop                           #  30    0x5dfc0  1      
  nop                           #  31    0x5dfc1  1      
  nop                           #  32    0x5dfc2  1      
  andl $0xffffffe0, %ecx        #  33    0x5dfc3  6      
  addq %r15, %rcx               #  34    0x5dfc9  3      
  callq %rcx                    #  35    0x5dfcc  2      
  testl %eax, %eax              #  36    0x5dfce  2      
  jns .L_5e0c0                  #  37    0x5dfd0  6      
  movl %r13d, %r13d             #  38    0x5dfd6  3      
  movl (%r15,%r13,1), %edx      #  39    0x5dfd9  4      
  movl %r12d, %r12d             #  40    0x5dfdd  3      
  movl (%r15,%r12,1), %eax      #  41    0x5dfe0  4      
  movl %ebx, %ecx               #  42    0x5dfe4  2      
  movl %r12d, %r12d             #  43    0x5dfe6  3      
  movl %edx, (%r15,%r12,1)      #  44    0x5dfe9  4      
  nop                           #  45    0x5dfed  1      
  leal 0x1(%rbx,%rbx,1), %r12d  #  46    0x5dfee  5      
  cmpl %r12d, 0x1c(%rsp)        #  47    0x5dff3  5      
  movl %r13d, %r13d             #  48    0x5dff8  3      
  movl %eax, (%r15,%r13,1)      #  49    0x5dffb  4      
  jle .L_5e0c0                  #  50    0x5dfff  6      
  nop                           #  51    0x5e005  1      
.L_5e040:                       #        0x5e006  0      
  leal 0x1(%r12), %ebx          #  52    0x5e006  5      
  cmpl %ebx, 0x1c(%rsp)         #  53    0x5e00b  4      
  jle .L_5dfa0                  #  54    0x5e00f  6      
  leal (%r14,%rbx,4), %r8d      #  55    0x5e015  4      
  leal (%r14,%r12,4), %r13d     #  56    0x5e019  4      
  movl %ecx, 0x10(%rsp)         #  57    0x5e01d  4      
  movl 0x20(%rsp), %edi         #  58    0x5e021  4      
  nop                           #  59    0x5e025  1      
  movq 0x28(%rsp), %r9          #  60    0x5e026  5      
  movl %r8d, %r8d               #  61    0x5e02b  3      
  movl (%r15,%r8,1), %edx       #  62    0x5e02e  4      
  movl %r13d, %r13d             #  63    0x5e032  3      
  movl (%r15,%r13,1), %esi      #  64    0x5e035  4      
  movq %r8, 0x8(%rsp)           #  65    0x5e039  5      
  nop                           #  66    0x5e03e  1      
  nop                           #  67    0x5e03f  1      
  nop                           #  68    0x5e040  1      
  andl $0xffffffe0, %r9d        #  69    0x5e041  7      
  addq %r15, %r9                #  70    0x5e048  3      
  callq %r9                     #  71    0x5e04b  3      
  movq 0x8(%rsp), %r8           #  72    0x5e04e  5      
  testl %eax, %eax              #  73    0x5e053  2      
  movl 0x10(%rsp), %ecx         #  74    0x5e055  4      
  cmovnsl %r12d, %ebx           #  75    0x5e059  4      
  cmovsq %r8, %r13              #  76    0x5e05d  4      
  jmpq .L_5dfc0                 #  77    0x5e061  5      
  nop                           #  78    0x5e066  1      
.L_5e0c0:                       #        0x5e067  0      
  addl $0x38, %esp              #  79    0x5e067  3      
  addq %r15, %rsp               #  80    0x5e06a  3      
  popq %rbx                     #  81    0x5e06d  2      
  popq %r12                     #  82    0x5e06f  3      
  popq %r13                     #  83    0x5e072  3      
  popq %r14                     #  84    0x5e075  3      
  popq %r11                     #  85    0x5e078  3      
  andl $0xffffffe0, %r11d       #  86    0x5e07b  7      
  addq %r15, %r11               #  87    0x5e082  3      
  jmpq %r11                     #  88    0x5e085  3      
  nop                           #  89    0x5e088  1      
                                                         
.size frame_downheap, .-frame_downheap


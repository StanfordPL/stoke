  .text
  .globl frame_downheap
  .type frame_downheap, @function

#! file-offset 0x5df40
#! rip-offset  0x5df40
#! capacity    384 bytes

# Text                          #  Line  RIP      Bytes  
.frame_downheap:                #        0x5df40  0      
  pushq %r14                    #  1     0x5df40  3      
  movl %edi, %edi               #  2     0x5df43  2      
  movl %esi, %esi               #  3     0x5df45  2      
  movl %edx, %r14d              #  4     0x5df47  3      
  pushq %r13                    #  5     0x5df4a  3      
  pushq %r12                    #  6     0x5df4d  3      
  leal 0x1(%rcx,%rcx,1), %r12d  #  7     0x5df50  5      
  pushq %rbx                    #  8     0x5df55  2      
  subl $0x38, %esp              #  9     0x5df57  3      
  addq %r15, %rsp               #  10    0x5df5a  3      
  cmpl %r8d, %r12d              #  11    0x5df5d  3      
  nop                           #  12    0x5df60  1      
  movl %r8d, 0x1c(%rsp)         #  13    0x5df61  5      
  movq %rdi, 0x20(%rsp)         #  14    0x5df66  5      
  movq %rsi, 0x28(%rsp)         #  15    0x5df6b  5      
  jl .L_5e020                   #  16    0x5df70  6      
  jmpq .L_5e0a0                 #  17    0x5df76  5      
  nop                           #  18    0x5df7b  1      
.L_5df80:                       #        0x5df7c  0      
  leal (%r14,%r12,4), %r13d     #  19    0x5df7c  4      
  movl %r12d, %ebx              #  20    0x5df80  3      
  nop                           #  21    0x5df83  1      
  nop                           #  22    0x5df84  1      
.L_5dfa0:                       #        0x5df85  0      
  leal (%r14,%rcx,4), %r12d     #  23    0x5df85  4      
  movl %r13d, %r13d             #  24    0x5df89  3      
  movl (%r15,%r13,1), %edx      #  25    0x5df8c  4      
  movl 0x20(%rsp), %edi         #  26    0x5df90  4      
  movq 0x28(%rsp), %rcx         #  27    0x5df94  5      
  movl %r12d, %r12d             #  28    0x5df99  3      
  movl (%r15,%r12,1), %esi      #  29    0x5df9c  4      
  nop                           #  30    0x5dfa0  1      
  nop                           #  31    0x5dfa1  1      
  nop                           #  32    0x5dfa2  1      
  andl $0xffffffe0, %ecx        #  33    0x5dfa3  6      
  addq %r15, %rcx               #  34    0x5dfa9  3      
  callq %rcx                    #  35    0x5dfac  2      
  testl %eax, %eax              #  36    0x5dfae  2      
  jns .L_5e0a0                  #  37    0x5dfb0  6      
  movl %r13d, %r13d             #  38    0x5dfb6  3      
  movl (%r15,%r13,1), %edx      #  39    0x5dfb9  4      
  movl %r12d, %r12d             #  40    0x5dfbd  3      
  movl (%r15,%r12,1), %eax      #  41    0x5dfc0  4      
  movl %ebx, %ecx               #  42    0x5dfc4  2      
  movl %r12d, %r12d             #  43    0x5dfc6  3      
  movl %edx, (%r15,%r12,1)      #  44    0x5dfc9  4      
  nop                           #  45    0x5dfcd  1      
  leal 0x1(%rbx,%rbx,1), %r12d  #  46    0x5dfce  5      
  cmpl %r12d, 0x1c(%rsp)        #  47    0x5dfd3  5      
  movl %r13d, %r13d             #  48    0x5dfd8  3      
  movl %eax, (%r15,%r13,1)      #  49    0x5dfdb  4      
  jle .L_5e0a0                  #  50    0x5dfdf  6      
  nop                           #  51    0x5dfe5  1      
.L_5e020:                       #        0x5dfe6  0      
  leal 0x1(%r12), %ebx          #  52    0x5dfe6  5      
  cmpl %ebx, 0x1c(%rsp)         #  53    0x5dfeb  4      
  jle .L_5df80                  #  54    0x5dfef  6      
  leal (%r14,%rbx,4), %r8d      #  55    0x5dff5  4      
  leal (%r14,%r12,4), %r13d     #  56    0x5dff9  4      
  movl %ecx, 0x10(%rsp)         #  57    0x5dffd  4      
  movl 0x20(%rsp), %edi         #  58    0x5e001  4      
  nop                           #  59    0x5e005  1      
  movq 0x28(%rsp), %r9          #  60    0x5e006  5      
  movl %r8d, %r8d               #  61    0x5e00b  3      
  movl (%r15,%r8,1), %edx       #  62    0x5e00e  4      
  movl %r13d, %r13d             #  63    0x5e012  3      
  movl (%r15,%r13,1), %esi      #  64    0x5e015  4      
  movq %r8, 0x8(%rsp)           #  65    0x5e019  5      
  nop                           #  66    0x5e01e  1      
  nop                           #  67    0x5e01f  1      
  nop                           #  68    0x5e020  1      
  andl $0xffffffe0, %r9d        #  69    0x5e021  7      
  addq %r15, %r9                #  70    0x5e028  3      
  callq %r9                     #  71    0x5e02b  3      
  movq 0x8(%rsp), %r8           #  72    0x5e02e  5      
  testl %eax, %eax              #  73    0x5e033  2      
  movl 0x10(%rsp), %ecx         #  74    0x5e035  4      
  cmovnsl %r12d, %ebx           #  75    0x5e039  4      
  cmovsq %r8, %r13              #  76    0x5e03d  4      
  jmpq .L_5dfa0                 #  77    0x5e041  5      
  nop                           #  78    0x5e046  1      
.L_5e0a0:                       #        0x5e047  0      
  addl $0x38, %esp              #  79    0x5e047  3      
  addq %r15, %rsp               #  80    0x5e04a  3      
  popq %rbx                     #  81    0x5e04d  2      
  popq %r12                     #  82    0x5e04f  3      
  popq %r13                     #  83    0x5e052  3      
  popq %r14                     #  84    0x5e055  3      
  popq %r11                     #  85    0x5e058  3      
  andl $0xffffffe0, %r11d       #  86    0x5e05b  7      
  addq %r15, %r11               #  87    0x5e062  3      
  jmpq %r11                     #  88    0x5e065  3      
  nop                           #  89    0x5e068  1      
                                                         
.size frame_downheap, .-frame_downheap


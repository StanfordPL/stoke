  .text
  .globl do_process_block
  .type do_process_block, @function

#! file-offset 0x225e
#! rip-offset  0x40225e
#! capacity    307 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.do_process_block:                #        0x40225e  0      OPC=0     
  pushq %r15                      #  1     0x40225e  2      OPC=1861  
  pushq %r14                      #  2     0x402260  2      OPC=1861  
  pushq %r13                      #  3     0x402262  2      OPC=1861  
  pushq %r12                      #  4     0x402264  2      OPC=1861  
  pushq %rbp                      #  5     0x402266  1      OPC=1861  
  pushq %rbx                      #  6     0x402267  1      OPC=1861  
  subq $0x48, %rsp                #  7     0x402268  4      OPC=2389  
  movq %rdi, 0x38(%rsp)           #  8     0x40226c  5      OPC=1138  
  movq %rsi, 0x30(%rsp)           #  9     0x402271  5      OPC=1138  
  movq %rdx, %rbp                 #  10    0x402276  3      OPC=1162  
  movq %r8, %r13                  #  11    0x402279  3      OPC=1162  
  movq %r9, %r14                  #  12    0x40227c  3      OPC=1162  
  movq %rcx, %rdi                 #  13    0x40227f  3      OPC=1162  
  subq %rdx, %rdi                 #  14    0x402282  3      OPC=2391  
  movq %rdi, %rdx                 #  15    0x402285  3      OPC=1162  
  shrq $0x1, %rdx                 #  16    0x402288  3      OPC=2316  
  movq $0x8888888888888889, %rbx  #  17    0x40228b  10     OPC=1160  
  movq %rdx, %rax                 #  18    0x402295  3      OPC=1162  
  mulq %rbx                       #  19    0x402298  3      OPC=1318  
  shrq $0x5, %rdx                 #  20    0x40229b  4      OPC=2315  
  movq %rdx, %r12                 #  21    0x40229f  3      OPC=1162  
  shlq $0x6, %r12                 #  22    0x4022a2  4      OPC=2272  
  shlq $0x2, %rdx                 #  23    0x4022a6  4      OPC=2272  
  subq %rdx, %r12                 #  24    0x4022aa  3      OPC=2391  
  movq %rcx, %rax                 #  25    0x4022ad  3      OPC=1162  
  movq %rcx, 0x28(%rsp)           #  26    0x4022b0  5      OPC=1138  
  subq %r12, %rax                 #  27    0x4022b5  3      OPC=2391  
  movq %rax, 0x20(%rsp)           #  28    0x4022b8  5      OPC=1138  
  movq %rdi, %rax                 #  29    0x4022bd  3      OPC=1162  
  shlq $0x4, %rax                 #  30    0x4022c0  4      OPC=2272  
  subq %rdi, %rax                 #  31    0x4022c4  3      OPC=2391  
  leaq (%rdi,%rax,4), %rdx        #  32    0x4022c7  4      OPC=1069  
  movq %rdx, %rax                 #  33    0x4022cb  3      OPC=1162  
  mulq %rbx                       #  34    0x4022ce  3      OPC=1318  
  shrq $0x5, %rdx                 #  35    0x4022d1  4      OPC=2315  
  leaq 0x3c(%rdx), %rdi           #  36    0x4022d5  4      OPC=1069  
  callq .malloc_plt               #  37    0x4022d9  5      OPC=260   
  movq %rax, %r15                 #  38    0x4022de  3      OPC=1162  
  testq %rax, %rax                #  39    0x4022e1  3      OPC=2438  
  movq 0x28(%rsp), %rcx           #  40    0x4022e4  5      OPC=1161  
  movq 0x30(%rsp), %rsi           #  41    0x4022e9  5      OPC=1161  
  je .L_402378                    #  42    0x4022ee  6      OPC=893   
  movl $0x1, 0x10(%rsp)           #  43    0x4022f4  8      OPC=1135  
  movq %rax, 0x8(%rsp)            #  44    0x4022fc  5      OPC=1138  
  movq 0x80(%rsp), %rax           #  45    0x402301  8      OPC=1161  
  movq %rax, (%rsp)               #  46    0x402309  4      OPC=1138  
  movq %r14, %r9                  #  47    0x40230d  3      OPC=1162  
  movq %r13, %r8                  #  48    0x402310  3      OPC=1162  
  movq 0x20(%rsp), %rdx           #  49    0x402313  5      OPC=1161  
  movq 0x38(%rsp), %rdi           #  50    0x402318  5      OPC=1161  
  callq .detach_job               #  51    0x40231d  5      OPC=260   
  movq %rax, %rcx                 #  52    0x402322  3      OPC=1162  
  movl $0x0, 0x10(%rsp)           #  53    0x402325  8      OPC=1135  
  movq %r12, %rdx                 #  54    0x40232d  3      OPC=1162  
  shlq $0x4, %rdx                 #  55    0x402330  4      OPC=2272  
  subq %r12, %rdx                 #  56    0x402334  3      OPC=2391  
  leaq (%r12,%rdx,4), %rdx        #  57    0x402337  4      OPC=1069  
  movq %rdx, %rax                 #  58    0x40233b  3      OPC=1162  
  mulq %rbx                       #  59    0x40233e  3      OPC=1318  
  shrq $0x5, %rdx                 #  60    0x402341  4      OPC=2315  
  leaq (%r15,%rdx,1), %r11        #  61    0x402345  4      OPC=1069  
  movq %r11, 0x8(%rsp)            #  62    0x402349  5      OPC=1138  
  movq %rcx, (%rsp)               #  63    0x40234e  4      OPC=1138  
  movq %r14, %r9                  #  64    0x402352  3      OPC=1162  
  movq %r13, %r8                  #  65    0x402355  3      OPC=1162  
  movq 0x20(%rsp), %rcx           #  66    0x402358  5      OPC=1161  
  movq %rbp, %rdx                 #  67    0x40235d  3      OPC=1162  
  xorl %esi, %esi                 #  68    0x402360  2      OPC=3758  
  xorl %edi, %edi                 #  69    0x402362  2      OPC=3758  
  callq .detach_job               #  70    0x402364  5      OPC=260   
  addq $0x48, %rsp                #  71    0x402369  4      OPC=70    
  popq %rbx                       #  72    0x40236d  1      OPC=1694  
  popq %rbp                       #  73    0x40236e  1      OPC=1694  
  popq %r12                       #  74    0x40236f  2      OPC=1694  
  popq %r13                       #  75    0x402371  2      OPC=1694  
  popq %r14                       #  76    0x402373  2      OPC=1694  
  popq %r15                       #  77    0x402375  2      OPC=1694  
  retq                            #  78    0x402377  1      OPC=1978  
.L_402378:                        #        0x402378  0      OPC=0     
  movl $0x408450, %ecx            #  79    0x402378  5      OPC=1154  
  movl $0xe4, %edx                #  80    0x40237d  5      OPC=1154  
  movl $0x4083a8, %esi            #  81    0x402382  5      OPC=1154  
  movl $0x4083b6, %edi            #  82    0x402387  5      OPC=1154  
  callq .__assert_fail_plt        #  83    0x40238c  5      OPC=260   
                                                                      
.size do_process_block, .-do_process_block


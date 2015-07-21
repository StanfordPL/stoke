  .text
  .globl _tp_run
  .type _tp_run, @function

#! file-offset 0x4160
#! rip-offset  0x404160
#! capacity    101 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
._tp_run:                          #        0x404160  0      OPC=0     
  pushq %r13                       #  1     0x404160  2      OPC=1861  
  pushq %r12                       #  2     0x404162  2      OPC=1861  
  pushq %rbp                       #  3     0x404164  1      OPC=1861  
  pushq %rbx                       #  4     0x404165  1      OPC=1861  
  subq $0x8, %rsp                  #  5     0x404166  4      OPC=2389  
  movq %rdi, %rbx                  #  6     0x40416a  3      OPC=1162  
  leaq 0x10(%rdi), %r12            #  7     0x40416d  4      OPC=1069  
  jmpq .L_4041a1                   #  8     0x404171  5      OPC=930   
  nop                              #  9     0x404176  1      OPC=1343  
  nop                              #  10    0x404177  1      OPC=1343  
.L_404173:                         #        0x404178  0      OPC=0     
  movslq %eax, %rdx                #  11    0x404178  3      OPC=1289  
  shlq $0x4, %rdx                  #  12    0x40417b  4      OPC=2272  
  movq (%rbx), %rcx                #  13    0x40417f  3      OPC=1161  
  leaq -0x10(%rcx,%rdx,1), %rdx    #  14    0x404182  5      OPC=1069  
  movq (%rdx), %rbp                #  15    0x404187  3      OPC=1161  
  movq 0x8(%rdx), %r13             #  16    0x40418a  4      OPC=1161  
  subl $0x1, %eax                  #  17    0x40418e  3      OPC=2384  
  movl %eax, 0xc(%rbx)             #  18    0x404191  3      OPC=1136  
  movq %r12, %rdi                  #  19    0x404194  3      OPC=1162  
  callq .pthread_mutex_unlock_plt  #  20    0x404197  5      OPC=260   
  testq %rbp, %rbp                 #  21    0x40419c  3      OPC=2438  
  je .L_4041b8                     #  22    0x40419f  6      OPC=893   
  nop                              #  23    0x4041a5  1      OPC=1343  
  nop                              #  24    0x4041a6  1      OPC=1343  
  movq %r13, %rdi                  #  25    0x4041a7  3      OPC=1162  
  callq %rbp                       #  26    0x4041aa  2      OPC=258   
.L_4041a1:                         #        0x4041ac  0      OPC=0     
  movq %r12, %rdi                  #  27    0x4041ac  3      OPC=1162  
  callq .pthread_mutex_lock_plt    #  28    0x4041af  5      OPC=260   
  movl 0xc(%rbx), %eax             #  29    0x4041b4  3      OPC=1156  
  testl %eax, %eax                 #  30    0x4041b7  2      OPC=2436  
  jg .L_404173                     #  31    0x4041b9  6      OPC=901   
  nop                              #  32    0x4041bf  1      OPC=1343  
  nop                              #  33    0x4041c0  1      OPC=1343  
  movq %r12, %rdi                  #  34    0x4041c1  3      OPC=1162  
  callq .pthread_mutex_unlock_plt  #  35    0x4041c4  5      OPC=260   
.L_4041b8:                         #        0x4041c9  0      OPC=0     
  xorl %eax, %eax                  #  36    0x4041c9  2      OPC=3758  
  addq $0x8, %rsp                  #  37    0x4041cb  4      OPC=70    
  popq %rbx                        #  38    0x4041cf  1      OPC=1694  
  popq %rbp                        #  39    0x4041d0  1      OPC=1694  
  popq %r12                        #  40    0x4041d1  2      OPC=1694  
  popq %r13                        #  41    0x4041d3  2      OPC=1694  
  retq                             #  42    0x4041d5  1      OPC=1978  
                                                                       
.size _tp_run, .-_tp_run


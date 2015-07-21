  .text
  .globl ht_destroy
  .type ht_destroy, @function

#! file-offset 0x4247
#! rip-offset  0x404247
#! capacity    99 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ht_destroy:                #        0x404247  0      OPC=0     
  pushq %r13                #  1     0x404247  2      OPC=1861  
  pushq %r12                #  2     0x404249  2      OPC=1861  
  pushq %rbp                #  3     0x40424b  1      OPC=1861  
  pushq %rbx                #  4     0x40424c  1      OPC=1861  
  subq $0x8, %rsp           #  5     0x40424d  4      OPC=2389  
  movq %rdi, %r13           #  6     0x404251  3      OPC=1162  
  movl (%rdi), %eax         #  7     0x404254  2      OPC=1156  
  testl %eax, %eax          #  8     0x404256  2      OPC=2436  
  movq 0x8(%rdi), %rax      #  9     0x404258  4      OPC=1161  
  jle .L_404290             #  10    0x40425c  6      OPC=919   
  nop                       #  11    0x404262  1      OPC=1343  
  nop                       #  12    0x404263  1      OPC=1343  
  xorl %r12d, %r12d         #  13    0x404264  3      OPC=3758  
  xorl %ebp, %ebp           #  14    0x404267  2      OPC=3758  
.L_404263:                  #        0x404269  0      OPC=0     
  movq (%rax,%r12,1), %rdi  #  15    0x404269  4      OPC=1161  
  testq %rdi, %rdi          #  16    0x40426d  3      OPC=2438  
  jne .L_404271             #  17    0x404270  6      OPC=963   
  nop                       #  18    0x404276  1      OPC=1343  
  nop                       #  19    0x404277  1      OPC=1343  
  jmpq .L_404283            #  20    0x404278  5      OPC=930   
  nop                       #  21    0x40427d  1      OPC=1343  
  nop                       #  22    0x40427e  1      OPC=1343  
.L_40426e:                  #        0x40427f  0      OPC=0     
  movq %rbx, %rdi           #  23    0x40427f  3      OPC=1162  
.L_404271:                  #        0x404282  0      OPC=0     
  movq 0x10(%rdi), %rbx     #  24    0x404282  4      OPC=1161  
  callq .free_plt           #  25    0x404286  5      OPC=260   
  testq %rbx, %rbx          #  26    0x40428b  3      OPC=2438  
  jne .L_40426e             #  27    0x40428e  6      OPC=963   
  nop                       #  28    0x404294  1      OPC=1343  
  nop                       #  29    0x404295  1      OPC=1343  
  movq 0x8(%r13), %rax      #  30    0x404296  4      OPC=1161  
.L_404283:                  #        0x40429a  0      OPC=0     
  addl $0x1, %ebp           #  31    0x40429a  3      OPC=65    
  addq $0x8, %r12           #  32    0x40429d  4      OPC=70    
  cmpl %ebp, (%r13)         #  33    0x4042a1  4      OPC=457   
  jg .L_404263              #  34    0x4042a5  6      OPC=901   
  nop                       #  35    0x4042ab  1      OPC=1343  
  nop                       #  36    0x4042ac  1      OPC=1343  
.L_404290:                  #        0x4042ad  0      OPC=0     
  movq %rax, %rdi           #  37    0x4042ad  3      OPC=1162  
  callq .free_plt           #  38    0x4042b0  5      OPC=260   
  movq %r13, %rdi           #  39    0x4042b5  3      OPC=1162  
  addq $0x8, %rsp           #  40    0x4042b8  4      OPC=70    
  popq %rbx                 #  41    0x4042bc  1      OPC=1694  
  popq %rbp                 #  42    0x4042bd  1      OPC=1694  
  popq %r12                 #  43    0x4042be  2      OPC=1694  
  popq %r13                 #  44    0x4042c0  2      OPC=1694  
  jmpq .free_plt            #  45    0x4042c2  5      OPC=930   
                                                                
.size ht_destroy, .-ht_destroy


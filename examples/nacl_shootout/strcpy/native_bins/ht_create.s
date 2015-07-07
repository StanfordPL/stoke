  .text
  .globl ht_create
  .type ht_create, @function

#! file-offset 0x41e7
#! rip-offset  0x4041e7
#! capacity    96 bytes

# Text                   #  Line  RIP       Bytes  Opcode    
.ht_create:              #        0x4041e7  0      OPC=0     
  pushq %rbp             #  1     0x4041e7  1      OPC=1861  
  pushq %rbx             #  2     0x4041e8  1      OPC=1861  
  subq $0x8, %rsp        #  3     0x4041e9  4      OPC=2389  
  movl %edi, %ebp        #  4     0x4041ed  2      OPC=1157  
  movl $0x28, %esi       #  5     0x4041ef  5      OPC=1154  
  movl $0x1, %edi        #  6     0x4041f4  5      OPC=1154  
  callq .calloc_plt      #  7     0x4041f9  5      OPC=260   
  movq %rax, %rbx        #  8     0x4041fe  3      OPC=1162  
  movslq %ebp, %rdi      #  9     0x404201  3      OPC=1289  
  cmpq $0x35, %rdi       #  10    0x404204  4      OPC=475   
  jbe .L_40423b          #  11    0x404208  6      OPC=881   
  nop                    #  12    0x40420e  1      OPC=1343  
  nop                    #  13    0x40420f  1      OPC=1343  
  movl $0x408548, %edx   #  14    0x404210  5      OPC=1154  
.L_40420f:               #        0x404215  0      OPC=0     
  addq $0x8, %rdx        #  15    0x404215  4      OPC=70    
  movq -0x8(%rdx), %rcx  #  16    0x404219  4      OPC=1161  
  cmpq %rdi, %rcx        #  17    0x40421d  3      OPC=477   
  jb .L_40420f           #  18    0x404220  6      OPC=875   
  nop                    #  19    0x404226  1      OPC=1343  
  nop                    #  20    0x404227  1      OPC=1343  
  movl %ecx, %eax        #  21    0x404228  2      OPC=1157  
  movslq %ecx, %rdi      #  22    0x40422a  3      OPC=1289  
.L_404221:               #        0x40422d  0      OPC=0     
  movl %eax, (%rbx)      #  23    0x40422d  2      OPC=1136  
  movl $0x8, %esi        #  24    0x40422f  5      OPC=1154  
  callq .calloc_plt      #  25    0x404234  5      OPC=260   
  movq %rax, 0x8(%rbx)   #  26    0x404239  4      OPC=1138  
  movq %rbx, %rax        #  27    0x40423d  3      OPC=1162  
  addq $0x8, %rsp        #  28    0x404240  4      OPC=70    
  popq %rbx              #  29    0x404244  1      OPC=1694  
  popq %rbp              #  30    0x404245  1      OPC=1694  
  retq                   #  31    0x404246  1      OPC=1978  
.L_40423b:               #        0x404247  0      OPC=0     
  movl $0x35, %edi       #  32    0x404247  5      OPC=1154  
  movl $0x35, %eax       #  33    0x40424c  5      OPC=1154  
  jmpq .L_404221         #  34    0x404251  5      OPC=930   
  nop                    #  35    0x404256  1      OPC=1343  
  nop                    #  36    0x404257  1      OPC=1343  
                                                             
.size ht_create, .-ht_create


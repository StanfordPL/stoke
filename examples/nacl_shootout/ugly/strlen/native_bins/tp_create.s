  .text
  .globl tp_create
  .type tp_create, @function

#! file-offset 0x42aa
#! rip-offset  0x4042aa
#! capacity    67 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.tp_create:                      #        0x4042aa  0      OPC=0     
  pushq %rbp                     #  1     0x4042aa  1      OPC=1861  
  pushq %rbx                     #  2     0x4042ab  1      OPC=1861  
  subq $0x8, %rsp                #  3     0x4042ac  4      OPC=2389  
  movl %edi, %ebp                #  4     0x4042b0  2      OPC=1157  
  movl $0x38, %edi               #  5     0x4042b2  5      OPC=1154  
  callq .malloc_plt              #  6     0x4042b7  5      OPC=260   
  movq %rax, %rbx                #  7     0x4042bc  3      OPC=1162  
  movslq %ebp, %rdi              #  8     0x4042bf  3      OPC=1289  
  shlq $0x4, %rdi                #  9     0x4042c2  4      OPC=2272  
  callq .malloc_plt              #  10    0x4042c6  5      OPC=260   
  movq %rax, (%rbx)              #  11    0x4042cb  3      OPC=1138  
  movl %ebp, 0x8(%rbx)           #  12    0x4042ce  3      OPC=1136  
  movl $0x0, 0xc(%rbx)           #  13    0x4042d1  7      OPC=1135  
  leaq 0x10(%rbx), %rdi          #  14    0x4042d8  4      OPC=1069  
  xorl %esi, %esi                #  15    0x4042dc  2      OPC=3758  
  callq .pthread_mutex_init_plt  #  16    0x4042de  5      OPC=260   
  movq %rbx, %rax                #  17    0x4042e3  3      OPC=1162  
  addq $0x8, %rsp                #  18    0x4042e6  4      OPC=70    
  popq %rbx                      #  19    0x4042ea  1      OPC=1694  
  popq %rbp                      #  20    0x4042eb  1      OPC=1694  
  retq                           #  21    0x4042ec  1      OPC=1978  
                                                                     
.size tp_create, .-tp_create


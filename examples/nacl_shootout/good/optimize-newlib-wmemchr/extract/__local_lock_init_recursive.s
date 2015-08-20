  .text
  .globl __local_lock_init_recursive
  .type __local_lock_init_recursive, @function

#! file-offset 0x6e520
#! rip-offset  0x2e520
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__local_lock_init_recursive:       #        0x2e520  0      OPC=<label>         
  movq %r12, -0x8(%rsp)             #  1     0x2e520  5      OPC=movq_m64_r64    
  movl %edi, %r12d                  #  2     0x2e525  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)            #  3     0x2e528  5      OPC=movq_m64_r64    
  subl $0x28, %esp                  #  4     0x2e52d  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                   #  5     0x2e530  3      OPC=addq_r64_r64    
  testq %r12, %r12                  #  6     0x2e533  3      OPC=testq_r64_r64   
  je .L_2e580                       #  7     0x2e536  2      OPC=je_label        
  movl %esp, %edi                   #  8     0x2e538  2      OPC=movl_r32_r32    
  nop                               #  9     0x2e53a  1      OPC=nop             
  callq .pthread_mutexattr_init     #  10    0x2e53b  5      OPC=callq_label     
  movl $0x1, %esi                   #  11    0x2e540  5      OPC=movl_r32_imm32  
  movl %esp, %edi                   #  12    0x2e545  2      OPC=movl_r32_r32    
  nop                               #  13    0x2e547  1      OPC=nop             
  nop                               #  14    0x2e548  1      OPC=nop             
  nop                               #  15    0x2e549  1      OPC=nop             
  nop                               #  16    0x2e54a  1      OPC=nop             
  nop                               #  17    0x2e54b  1      OPC=nop             
  nop                               #  18    0x2e54c  1      OPC=nop             
  nop                               #  19    0x2e54d  1      OPC=nop             
  nop                               #  20    0x2e54e  1      OPC=nop             
  nop                               #  21    0x2e54f  1      OPC=nop             
  nop                               #  22    0x2e550  1      OPC=nop             
  nop                               #  23    0x2e551  1      OPC=nop             
  nop                               #  24    0x2e552  1      OPC=nop             
  nop                               #  25    0x2e553  1      OPC=nop             
  nop                               #  26    0x2e554  1      OPC=nop             
  nop                               #  27    0x2e555  1      OPC=nop             
  nop                               #  28    0x2e556  1      OPC=nop             
  nop                               #  29    0x2e557  1      OPC=nop             
  nop                               #  30    0x2e558  1      OPC=nop             
  nop                               #  31    0x2e559  1      OPC=nop             
  nop                               #  32    0x2e55a  1      OPC=nop             
  callq .pthread_mutexattr_settype  #  33    0x2e55b  5      OPC=callq_label     
  movl %esp, %esi                   #  34    0x2e560  2      OPC=movl_r32_r32    
  movl %r12d, %edi                  #  35    0x2e562  3      OPC=movl_r32_r32    
  nop                               #  36    0x2e565  1      OPC=nop             
  nop                               #  37    0x2e566  1      OPC=nop             
  nop                               #  38    0x2e567  1      OPC=nop             
  nop                               #  39    0x2e568  1      OPC=nop             
  nop                               #  40    0x2e569  1      OPC=nop             
  nop                               #  41    0x2e56a  1      OPC=nop             
  nop                               #  42    0x2e56b  1      OPC=nop             
  nop                               #  43    0x2e56c  1      OPC=nop             
  nop                               #  44    0x2e56d  1      OPC=nop             
  nop                               #  45    0x2e56e  1      OPC=nop             
  nop                               #  46    0x2e56f  1      OPC=nop             
  nop                               #  47    0x2e570  1      OPC=nop             
  nop                               #  48    0x2e571  1      OPC=nop             
  nop                               #  49    0x2e572  1      OPC=nop             
  nop                               #  50    0x2e573  1      OPC=nop             
  nop                               #  51    0x2e574  1      OPC=nop             
  nop                               #  52    0x2e575  1      OPC=nop             
  nop                               #  53    0x2e576  1      OPC=nop             
  nop                               #  54    0x2e577  1      OPC=nop             
  nop                               #  55    0x2e578  1      OPC=nop             
  nop                               #  56    0x2e579  1      OPC=nop             
  nop                               #  57    0x2e57a  1      OPC=nop             
  callq .pthread_mutex_init         #  58    0x2e57b  5      OPC=callq_label     
.L_2e580:                           #        0x2e580  0      OPC=<label>         
  movq 0x18(%rsp), %rbx             #  59    0x2e580  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12             #  60    0x2e585  5      OPC=movq_r64_m64    
  addl $0x28, %esp                  #  61    0x2e58a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                   #  62    0x2e58d  3      OPC=addq_r64_r64    
  popq %r11                         #  63    0x2e590  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  64    0x2e592  7      OPC=andl_r32_imm32  
  nop                               #  65    0x2e599  1      OPC=nop             
  nop                               #  66    0x2e59a  1      OPC=nop             
  nop                               #  67    0x2e59b  1      OPC=nop             
  nop                               #  68    0x2e59c  1      OPC=nop             
  addq %r15, %r11                   #  69    0x2e59d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  70    0x2e5a0  3      OPC=jmpq_r64        
  nop                               #  71    0x2e5a3  1      OPC=nop             
  nop                               #  72    0x2e5a4  1      OPC=nop             
  nop                               #  73    0x2e5a5  1      OPC=nop             
  nop                               #  74    0x2e5a6  1      OPC=nop             
                                                                                 
.size __local_lock_init_recursive, .-__local_lock_init_recursive


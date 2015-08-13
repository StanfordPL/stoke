  .text
  .globl __local_lock_init_recursive
  .type __local_lock_init_recursive, @function

#! file-offset 0x6e220
#! rip-offset  0x2e220
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__local_lock_init_recursive:       #        0x2e220  0      OPC=<label>         
  movq %r12, -0x8(%rsp)             #  1     0x2e220  5      OPC=movq_m64_r64    
  movl %edi, %r12d                  #  2     0x2e225  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)            #  3     0x2e228  5      OPC=movq_m64_r64    
  subl $0x28, %esp                  #  4     0x2e22d  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                   #  5     0x2e230  3      OPC=addq_r64_r64    
  testq %r12, %r12                  #  6     0x2e233  3      OPC=testq_r64_r64   
  je .L_2e280                       #  7     0x2e236  2      OPC=je_label        
  movl %esp, %edi                   #  8     0x2e238  2      OPC=movl_r32_r32    
  nop                               #  9     0x2e23a  1      OPC=nop             
  callq .pthread_mutexattr_init     #  10    0x2e23b  5      OPC=callq_label     
  movl $0x1, %esi                   #  11    0x2e240  5      OPC=movl_r32_imm32  
  movl %esp, %edi                   #  12    0x2e245  2      OPC=movl_r32_r32    
  nop                               #  13    0x2e247  1      OPC=nop             
  nop                               #  14    0x2e248  1      OPC=nop             
  nop                               #  15    0x2e249  1      OPC=nop             
  nop                               #  16    0x2e24a  1      OPC=nop             
  nop                               #  17    0x2e24b  1      OPC=nop             
  nop                               #  18    0x2e24c  1      OPC=nop             
  nop                               #  19    0x2e24d  1      OPC=nop             
  nop                               #  20    0x2e24e  1      OPC=nop             
  nop                               #  21    0x2e24f  1      OPC=nop             
  nop                               #  22    0x2e250  1      OPC=nop             
  nop                               #  23    0x2e251  1      OPC=nop             
  nop                               #  24    0x2e252  1      OPC=nop             
  nop                               #  25    0x2e253  1      OPC=nop             
  nop                               #  26    0x2e254  1      OPC=nop             
  nop                               #  27    0x2e255  1      OPC=nop             
  nop                               #  28    0x2e256  1      OPC=nop             
  nop                               #  29    0x2e257  1      OPC=nop             
  nop                               #  30    0x2e258  1      OPC=nop             
  nop                               #  31    0x2e259  1      OPC=nop             
  nop                               #  32    0x2e25a  1      OPC=nop             
  callq .pthread_mutexattr_settype  #  33    0x2e25b  5      OPC=callq_label     
  movl %esp, %esi                   #  34    0x2e260  2      OPC=movl_r32_r32    
  movl %r12d, %edi                  #  35    0x2e262  3      OPC=movl_r32_r32    
  nop                               #  36    0x2e265  1      OPC=nop             
  nop                               #  37    0x2e266  1      OPC=nop             
  nop                               #  38    0x2e267  1      OPC=nop             
  nop                               #  39    0x2e268  1      OPC=nop             
  nop                               #  40    0x2e269  1      OPC=nop             
  nop                               #  41    0x2e26a  1      OPC=nop             
  nop                               #  42    0x2e26b  1      OPC=nop             
  nop                               #  43    0x2e26c  1      OPC=nop             
  nop                               #  44    0x2e26d  1      OPC=nop             
  nop                               #  45    0x2e26e  1      OPC=nop             
  nop                               #  46    0x2e26f  1      OPC=nop             
  nop                               #  47    0x2e270  1      OPC=nop             
  nop                               #  48    0x2e271  1      OPC=nop             
  nop                               #  49    0x2e272  1      OPC=nop             
  nop                               #  50    0x2e273  1      OPC=nop             
  nop                               #  51    0x2e274  1      OPC=nop             
  nop                               #  52    0x2e275  1      OPC=nop             
  nop                               #  53    0x2e276  1      OPC=nop             
  nop                               #  54    0x2e277  1      OPC=nop             
  nop                               #  55    0x2e278  1      OPC=nop             
  nop                               #  56    0x2e279  1      OPC=nop             
  nop                               #  57    0x2e27a  1      OPC=nop             
  callq .pthread_mutex_init         #  58    0x2e27b  5      OPC=callq_label     
.L_2e280:                           #        0x2e280  0      OPC=<label>         
  movq 0x18(%rsp), %rbx             #  59    0x2e280  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12             #  60    0x2e285  5      OPC=movq_r64_m64    
  addl $0x28, %esp                  #  61    0x2e28a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                   #  62    0x2e28d  3      OPC=addq_r64_r64    
  popq %r11                         #  63    0x2e290  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  64    0x2e292  7      OPC=andl_r32_imm32  
  nop                               #  65    0x2e299  1      OPC=nop             
  nop                               #  66    0x2e29a  1      OPC=nop             
  nop                               #  67    0x2e29b  1      OPC=nop             
  nop                               #  68    0x2e29c  1      OPC=nop             
  addq %r15, %r11                   #  69    0x2e29d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  70    0x2e2a0  3      OPC=jmpq_r64        
  nop                               #  71    0x2e2a3  1      OPC=nop             
  nop                               #  72    0x2e2a4  1      OPC=nop             
  nop                               #  73    0x2e2a5  1      OPC=nop             
  nop                               #  74    0x2e2a6  1      OPC=nop             
                                                                                 
.size __local_lock_init_recursive, .-__local_lock_init_recursive


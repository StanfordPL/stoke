  .text
  .globl __local_lock_init
  .type __local_lock_init, @function

#! file-offset 0x6e2a0
#! rip-offset  0x2e2a0
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__local_lock_init:                 #        0x2e2a0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)             #  1     0x2e2a0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                  #  2     0x2e2a5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)            #  3     0x2e2a8  5      OPC=movq_m64_r64    
  subl $0x28, %esp                  #  4     0x2e2ad  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                   #  5     0x2e2b0  3      OPC=addq_r64_r64    
  testq %r12, %r12                  #  6     0x2e2b3  3      OPC=testq_r64_r64   
  je .L_2e300                       #  7     0x2e2b6  2      OPC=je_label        
  movl %esp, %edi                   #  8     0x2e2b8  2      OPC=movl_r32_r32    
  nop                               #  9     0x2e2ba  1      OPC=nop             
  callq .pthread_mutexattr_init     #  10    0x2e2bb  5      OPC=callq_label     
  xorl %esi, %esi                   #  11    0x2e2c0  2      OPC=xorl_r32_r32    
  movl %esp, %edi                   #  12    0x2e2c2  2      OPC=movl_r32_r32    
  nop                               #  13    0x2e2c4  1      OPC=nop             
  nop                               #  14    0x2e2c5  1      OPC=nop             
  nop                               #  15    0x2e2c6  1      OPC=nop             
  nop                               #  16    0x2e2c7  1      OPC=nop             
  nop                               #  17    0x2e2c8  1      OPC=nop             
  nop                               #  18    0x2e2c9  1      OPC=nop             
  nop                               #  19    0x2e2ca  1      OPC=nop             
  nop                               #  20    0x2e2cb  1      OPC=nop             
  nop                               #  21    0x2e2cc  1      OPC=nop             
  nop                               #  22    0x2e2cd  1      OPC=nop             
  nop                               #  23    0x2e2ce  1      OPC=nop             
  nop                               #  24    0x2e2cf  1      OPC=nop             
  nop                               #  25    0x2e2d0  1      OPC=nop             
  nop                               #  26    0x2e2d1  1      OPC=nop             
  nop                               #  27    0x2e2d2  1      OPC=nop             
  nop                               #  28    0x2e2d3  1      OPC=nop             
  nop                               #  29    0x2e2d4  1      OPC=nop             
  nop                               #  30    0x2e2d5  1      OPC=nop             
  nop                               #  31    0x2e2d6  1      OPC=nop             
  nop                               #  32    0x2e2d7  1      OPC=nop             
  nop                               #  33    0x2e2d8  1      OPC=nop             
  nop                               #  34    0x2e2d9  1      OPC=nop             
  nop                               #  35    0x2e2da  1      OPC=nop             
  callq .pthread_mutexattr_settype  #  36    0x2e2db  5      OPC=callq_label     
  movl %esp, %esi                   #  37    0x2e2e0  2      OPC=movl_r32_r32    
  movl %r12d, %edi                  #  38    0x2e2e2  3      OPC=movl_r32_r32    
  nop                               #  39    0x2e2e5  1      OPC=nop             
  nop                               #  40    0x2e2e6  1      OPC=nop             
  nop                               #  41    0x2e2e7  1      OPC=nop             
  nop                               #  42    0x2e2e8  1      OPC=nop             
  nop                               #  43    0x2e2e9  1      OPC=nop             
  nop                               #  44    0x2e2ea  1      OPC=nop             
  nop                               #  45    0x2e2eb  1      OPC=nop             
  nop                               #  46    0x2e2ec  1      OPC=nop             
  nop                               #  47    0x2e2ed  1      OPC=nop             
  nop                               #  48    0x2e2ee  1      OPC=nop             
  nop                               #  49    0x2e2ef  1      OPC=nop             
  nop                               #  50    0x2e2f0  1      OPC=nop             
  nop                               #  51    0x2e2f1  1      OPC=nop             
  nop                               #  52    0x2e2f2  1      OPC=nop             
  nop                               #  53    0x2e2f3  1      OPC=nop             
  nop                               #  54    0x2e2f4  1      OPC=nop             
  nop                               #  55    0x2e2f5  1      OPC=nop             
  nop                               #  56    0x2e2f6  1      OPC=nop             
  nop                               #  57    0x2e2f7  1      OPC=nop             
  nop                               #  58    0x2e2f8  1      OPC=nop             
  nop                               #  59    0x2e2f9  1      OPC=nop             
  nop                               #  60    0x2e2fa  1      OPC=nop             
  callq .pthread_mutex_init         #  61    0x2e2fb  5      OPC=callq_label     
.L_2e300:                           #        0x2e300  0      OPC=<label>         
  movq 0x18(%rsp), %rbx             #  62    0x2e300  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12             #  63    0x2e305  5      OPC=movq_r64_m64    
  addl $0x28, %esp                  #  64    0x2e30a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                   #  65    0x2e30d  3      OPC=addq_r64_r64    
  popq %r11                         #  66    0x2e310  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  67    0x2e312  7      OPC=andl_r32_imm32  
  nop                               #  68    0x2e319  1      OPC=nop             
  nop                               #  69    0x2e31a  1      OPC=nop             
  nop                               #  70    0x2e31b  1      OPC=nop             
  nop                               #  71    0x2e31c  1      OPC=nop             
  addq %r15, %r11                   #  72    0x2e31d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  73    0x2e320  3      OPC=jmpq_r64        
  nop                               #  74    0x2e323  1      OPC=nop             
  nop                               #  75    0x2e324  1      OPC=nop             
  nop                               #  76    0x2e325  1      OPC=nop             
  nop                               #  77    0x2e326  1      OPC=nop             
                                                                                 
.size __local_lock_init, .-__local_lock_init


  .text
  .globl __local_lock_init
  .type __local_lock_init, @function

#! file-offset 0x6ecc0
#! rip-offset  0x2ecc0
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__local_lock_init:                 #        0x2ecc0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)             #  1     0x2ecc0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                  #  2     0x2ecc5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)            #  3     0x2ecc8  5      OPC=movq_m64_r64    
  subl $0x28, %esp                  #  4     0x2eccd  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                   #  5     0x2ecd0  3      OPC=addq_r64_r64    
  testq %r12, %r12                  #  6     0x2ecd3  3      OPC=testq_r64_r64   
  je .L_2ed20                       #  7     0x2ecd6  2      OPC=je_label        
  movl %esp, %edi                   #  8     0x2ecd8  2      OPC=movl_r32_r32    
  nop                               #  9     0x2ecda  1      OPC=nop             
  callq .pthread_mutexattr_init     #  10    0x2ecdb  5      OPC=callq_label     
  xorl %esi, %esi                   #  11    0x2ece0  2      OPC=xorl_r32_r32    
  movl %esp, %edi                   #  12    0x2ece2  2      OPC=movl_r32_r32    
  nop                               #  13    0x2ece4  1      OPC=nop             
  nop                               #  14    0x2ece5  1      OPC=nop             
  nop                               #  15    0x2ece6  1      OPC=nop             
  nop                               #  16    0x2ece7  1      OPC=nop             
  nop                               #  17    0x2ece8  1      OPC=nop             
  nop                               #  18    0x2ece9  1      OPC=nop             
  nop                               #  19    0x2ecea  1      OPC=nop             
  nop                               #  20    0x2eceb  1      OPC=nop             
  nop                               #  21    0x2ecec  1      OPC=nop             
  nop                               #  22    0x2eced  1      OPC=nop             
  nop                               #  23    0x2ecee  1      OPC=nop             
  nop                               #  24    0x2ecef  1      OPC=nop             
  nop                               #  25    0x2ecf0  1      OPC=nop             
  nop                               #  26    0x2ecf1  1      OPC=nop             
  nop                               #  27    0x2ecf2  1      OPC=nop             
  nop                               #  28    0x2ecf3  1      OPC=nop             
  nop                               #  29    0x2ecf4  1      OPC=nop             
  nop                               #  30    0x2ecf5  1      OPC=nop             
  nop                               #  31    0x2ecf6  1      OPC=nop             
  nop                               #  32    0x2ecf7  1      OPC=nop             
  nop                               #  33    0x2ecf8  1      OPC=nop             
  nop                               #  34    0x2ecf9  1      OPC=nop             
  nop                               #  35    0x2ecfa  1      OPC=nop             
  callq .pthread_mutexattr_settype  #  36    0x2ecfb  5      OPC=callq_label     
  movl %esp, %esi                   #  37    0x2ed00  2      OPC=movl_r32_r32    
  movl %r12d, %edi                  #  38    0x2ed02  3      OPC=movl_r32_r32    
  nop                               #  39    0x2ed05  1      OPC=nop             
  nop                               #  40    0x2ed06  1      OPC=nop             
  nop                               #  41    0x2ed07  1      OPC=nop             
  nop                               #  42    0x2ed08  1      OPC=nop             
  nop                               #  43    0x2ed09  1      OPC=nop             
  nop                               #  44    0x2ed0a  1      OPC=nop             
  nop                               #  45    0x2ed0b  1      OPC=nop             
  nop                               #  46    0x2ed0c  1      OPC=nop             
  nop                               #  47    0x2ed0d  1      OPC=nop             
  nop                               #  48    0x2ed0e  1      OPC=nop             
  nop                               #  49    0x2ed0f  1      OPC=nop             
  nop                               #  50    0x2ed10  1      OPC=nop             
  nop                               #  51    0x2ed11  1      OPC=nop             
  nop                               #  52    0x2ed12  1      OPC=nop             
  nop                               #  53    0x2ed13  1      OPC=nop             
  nop                               #  54    0x2ed14  1      OPC=nop             
  nop                               #  55    0x2ed15  1      OPC=nop             
  nop                               #  56    0x2ed16  1      OPC=nop             
  nop                               #  57    0x2ed17  1      OPC=nop             
  nop                               #  58    0x2ed18  1      OPC=nop             
  nop                               #  59    0x2ed19  1      OPC=nop             
  nop                               #  60    0x2ed1a  1      OPC=nop             
  callq .pthread_mutex_init         #  61    0x2ed1b  5      OPC=callq_label     
.L_2ed20:                           #        0x2ed20  0      OPC=<label>         
  movq 0x18(%rsp), %rbx             #  62    0x2ed20  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12             #  63    0x2ed25  5      OPC=movq_r64_m64    
  addl $0x28, %esp                  #  64    0x2ed2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                   #  65    0x2ed2d  3      OPC=addq_r64_r64    
  popq %r11                         #  66    0x2ed30  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  67    0x2ed32  7      OPC=andl_r32_imm32  
  nop                               #  68    0x2ed39  1      OPC=nop             
  nop                               #  69    0x2ed3a  1      OPC=nop             
  nop                               #  70    0x2ed3b  1      OPC=nop             
  nop                               #  71    0x2ed3c  1      OPC=nop             
  addq %r15, %r11                   #  72    0x2ed3d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  73    0x2ed40  3      OPC=jmpq_r64        
  nop                               #  74    0x2ed43  1      OPC=nop             
  nop                               #  75    0x2ed44  1      OPC=nop             
  nop                               #  76    0x2ed45  1      OPC=nop             
  nop                               #  77    0x2ed46  1      OPC=nop             
                                                                                 
.size __local_lock_init, .-__local_lock_init


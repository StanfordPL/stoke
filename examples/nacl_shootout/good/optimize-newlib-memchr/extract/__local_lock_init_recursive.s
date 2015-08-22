  .text
  .globl __local_lock_init_recursive
  .type __local_lock_init_recursive, @function

#! file-offset 0x6ec40
#! rip-offset  0x2ec40
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__local_lock_init_recursive:       #        0x2ec40  0      OPC=<label>         
  movq %r12, -0x8(%rsp)             #  1     0x2ec40  5      OPC=movq_m64_r64    
  movl %edi, %r12d                  #  2     0x2ec45  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)            #  3     0x2ec48  5      OPC=movq_m64_r64    
  subl $0x28, %esp                  #  4     0x2ec4d  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                   #  5     0x2ec50  3      OPC=addq_r64_r64    
  testq %r12, %r12                  #  6     0x2ec53  3      OPC=testq_r64_r64   
  je .L_2eca0                       #  7     0x2ec56  2      OPC=je_label        
  movl %esp, %edi                   #  8     0x2ec58  2      OPC=movl_r32_r32    
  nop                               #  9     0x2ec5a  1      OPC=nop             
  callq .pthread_mutexattr_init     #  10    0x2ec5b  5      OPC=callq_label     
  movl $0x1, %esi                   #  11    0x2ec60  5      OPC=movl_r32_imm32  
  movl %esp, %edi                   #  12    0x2ec65  2      OPC=movl_r32_r32    
  nop                               #  13    0x2ec67  1      OPC=nop             
  nop                               #  14    0x2ec68  1      OPC=nop             
  nop                               #  15    0x2ec69  1      OPC=nop             
  nop                               #  16    0x2ec6a  1      OPC=nop             
  nop                               #  17    0x2ec6b  1      OPC=nop             
  nop                               #  18    0x2ec6c  1      OPC=nop             
  nop                               #  19    0x2ec6d  1      OPC=nop             
  nop                               #  20    0x2ec6e  1      OPC=nop             
  nop                               #  21    0x2ec6f  1      OPC=nop             
  nop                               #  22    0x2ec70  1      OPC=nop             
  nop                               #  23    0x2ec71  1      OPC=nop             
  nop                               #  24    0x2ec72  1      OPC=nop             
  nop                               #  25    0x2ec73  1      OPC=nop             
  nop                               #  26    0x2ec74  1      OPC=nop             
  nop                               #  27    0x2ec75  1      OPC=nop             
  nop                               #  28    0x2ec76  1      OPC=nop             
  nop                               #  29    0x2ec77  1      OPC=nop             
  nop                               #  30    0x2ec78  1      OPC=nop             
  nop                               #  31    0x2ec79  1      OPC=nop             
  nop                               #  32    0x2ec7a  1      OPC=nop             
  callq .pthread_mutexattr_settype  #  33    0x2ec7b  5      OPC=callq_label     
  movl %esp, %esi                   #  34    0x2ec80  2      OPC=movl_r32_r32    
  movl %r12d, %edi                  #  35    0x2ec82  3      OPC=movl_r32_r32    
  nop                               #  36    0x2ec85  1      OPC=nop             
  nop                               #  37    0x2ec86  1      OPC=nop             
  nop                               #  38    0x2ec87  1      OPC=nop             
  nop                               #  39    0x2ec88  1      OPC=nop             
  nop                               #  40    0x2ec89  1      OPC=nop             
  nop                               #  41    0x2ec8a  1      OPC=nop             
  nop                               #  42    0x2ec8b  1      OPC=nop             
  nop                               #  43    0x2ec8c  1      OPC=nop             
  nop                               #  44    0x2ec8d  1      OPC=nop             
  nop                               #  45    0x2ec8e  1      OPC=nop             
  nop                               #  46    0x2ec8f  1      OPC=nop             
  nop                               #  47    0x2ec90  1      OPC=nop             
  nop                               #  48    0x2ec91  1      OPC=nop             
  nop                               #  49    0x2ec92  1      OPC=nop             
  nop                               #  50    0x2ec93  1      OPC=nop             
  nop                               #  51    0x2ec94  1      OPC=nop             
  nop                               #  52    0x2ec95  1      OPC=nop             
  nop                               #  53    0x2ec96  1      OPC=nop             
  nop                               #  54    0x2ec97  1      OPC=nop             
  nop                               #  55    0x2ec98  1      OPC=nop             
  nop                               #  56    0x2ec99  1      OPC=nop             
  nop                               #  57    0x2ec9a  1      OPC=nop             
  callq .pthread_mutex_init         #  58    0x2ec9b  5      OPC=callq_label     
.L_2eca0:                           #        0x2eca0  0      OPC=<label>         
  movq 0x18(%rsp), %rbx             #  59    0x2eca0  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12             #  60    0x2eca5  5      OPC=movq_r64_m64    
  addl $0x28, %esp                  #  61    0x2ecaa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                   #  62    0x2ecad  3      OPC=addq_r64_r64    
  popq %r11                         #  63    0x2ecb0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  64    0x2ecb2  7      OPC=andl_r32_imm32  
  nop                               #  65    0x2ecb9  1      OPC=nop             
  nop                               #  66    0x2ecba  1      OPC=nop             
  nop                               #  67    0x2ecbb  1      OPC=nop             
  nop                               #  68    0x2ecbc  1      OPC=nop             
  addq %r15, %r11                   #  69    0x2ecbd  3      OPC=addq_r64_r64    
  jmpq %r11                         #  70    0x2ecc0  3      OPC=jmpq_r64        
  nop                               #  71    0x2ecc3  1      OPC=nop             
  nop                               #  72    0x2ecc4  1      OPC=nop             
  nop                               #  73    0x2ecc5  1      OPC=nop             
  nop                               #  74    0x2ecc6  1      OPC=nop             
                                                                                 
.size __local_lock_init_recursive, .-__local_lock_init_recursive


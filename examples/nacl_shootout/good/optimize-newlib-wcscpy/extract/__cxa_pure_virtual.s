  .text
  .globl __cxa_pure_virtual
  .type __cxa_pure_virtual, @function

#! file-offset 0x123340
#! rip-offset  0xe3340
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  Opcode              
.__cxa_pure_virtual:      #        0xe3340  0      OPC=<label>         
  subl $0x8, %esp         #  1     0xe3340  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0xe3343  3      OPC=addq_r64_r64    
  movl $0x1b, %edx        #  3     0xe3346  5      OPC=movl_r32_imm32  
  movl $0x1003d428, %esi  #  4     0xe334b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0xe3350  5      OPC=movl_r32_imm32  
  nop                     #  6     0xe3355  1      OPC=nop             
  nop                     #  7     0xe3356  1      OPC=nop             
  nop                     #  8     0xe3357  1      OPC=nop             
  nop                     #  9     0xe3358  1      OPC=nop             
  nop                     #  10    0xe3359  1      OPC=nop             
  nop                     #  11    0xe335a  1      OPC=nop             
  callq .write            #  12    0xe335b  5      OPC=callq_label     
  nop                     #  13    0xe3360  1      OPC=nop             
  nop                     #  14    0xe3361  1      OPC=nop             
  nop                     #  15    0xe3362  1      OPC=nop             
  nop                     #  16    0xe3363  1      OPC=nop             
  nop                     #  17    0xe3364  1      OPC=nop             
  nop                     #  18    0xe3365  1      OPC=nop             
  nop                     #  19    0xe3366  1      OPC=nop             
  nop                     #  20    0xe3367  1      OPC=nop             
  nop                     #  21    0xe3368  1      OPC=nop             
  nop                     #  22    0xe3369  1      OPC=nop             
  nop                     #  23    0xe336a  1      OPC=nop             
  nop                     #  24    0xe336b  1      OPC=nop             
  nop                     #  25    0xe336c  1      OPC=nop             
  nop                     #  26    0xe336d  1      OPC=nop             
  nop                     #  27    0xe336e  1      OPC=nop             
  nop                     #  28    0xe336f  1      OPC=nop             
  nop                     #  29    0xe3370  1      OPC=nop             
  nop                     #  30    0xe3371  1      OPC=nop             
  nop                     #  31    0xe3372  1      OPC=nop             
  nop                     #  32    0xe3373  1      OPC=nop             
  nop                     #  33    0xe3374  1      OPC=nop             
  nop                     #  34    0xe3375  1      OPC=nop             
  nop                     #  35    0xe3376  1      OPC=nop             
  nop                     #  36    0xe3377  1      OPC=nop             
  nop                     #  37    0xe3378  1      OPC=nop             
  nop                     #  38    0xe3379  1      OPC=nop             
  nop                     #  39    0xe337a  1      OPC=nop             
  callq ._ZSt9terminatev  #  40    0xe337b  5      OPC=callq_label     
                                                                       
.size __cxa_pure_virtual, .-__cxa_pure_virtual


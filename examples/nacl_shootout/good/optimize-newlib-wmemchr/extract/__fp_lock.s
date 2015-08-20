  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x15a680
#! rip-offset  0x11a680
#! capacity    64 bytes

# Text                                   #  Line  RIP       Bytes  Opcode              
.__fp_lock:                              #        0x11a680  0      OPC=<label>         
  movl %edi, %edi                        #  1     0x11a680  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0x11a682  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0x11a685  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0x11a688  2      OPC=movl_r32_r32    
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x11a68a  6      OPC=testb_m8_imm8   
  jne .L_11a6a0                          #  6     0x11a690  2      OPC=jne_label       
  addl $0x5c, %edi                       #  7     0x11a692  3      OPC=addl_r32_imm8   
  nop                                    #  8     0x11a695  1      OPC=nop             
  nop                                    #  9     0x11a696  1      OPC=nop             
  nop                                    #  10    0x11a697  1      OPC=nop             
  nop                                    #  11    0x11a698  1      OPC=nop             
  nop                                    #  12    0x11a699  1      OPC=nop             
  nop                                    #  13    0x11a69a  1      OPC=nop             
  callq .__local_lock_acquire_recursive  #  14    0x11a69b  5      OPC=callq_label     
.L_11a6a0:                               #        0x11a6a0  0      OPC=<label>         
  addl $0x8, %esp                        #  15    0x11a6a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  16    0x11a6a3  3      OPC=addq_r64_r64    
  xorl %eax, %eax                        #  17    0x11a6a6  2      OPC=xorl_r32_r32    
  popq %r11                              #  18    0x11a6a8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0x11a6aa  7      OPC=andl_r32_imm32  
  nop                                    #  20    0x11a6b1  1      OPC=nop             
  nop                                    #  21    0x11a6b2  1      OPC=nop             
  nop                                    #  22    0x11a6b3  1      OPC=nop             
  nop                                    #  23    0x11a6b4  1      OPC=nop             
  addq %r15, %r11                        #  24    0x11a6b5  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0x11a6b8  3      OPC=jmpq_r64        
  nop                                    #  26    0x11a6bb  1      OPC=nop             
  nop                                    #  27    0x11a6bc  1      OPC=nop             
  nop                                    #  28    0x11a6bd  1      OPC=nop             
  nop                                    #  29    0x11a6be  1      OPC=nop             
  nop                                    #  30    0x11a6bf  1      OPC=nop             
  nop                                    #  31    0x11a6c0  1      OPC=nop             
  nop                                    #  32    0x11a6c1  1      OPC=nop             
  nop                                    #  33    0x11a6c2  1      OPC=nop             
  nop                                    #  34    0x11a6c3  1      OPC=nop             
  nop                                    #  35    0x11a6c4  1      OPC=nop             
  nop                                    #  36    0x11a6c5  1      OPC=nop             
  nop                                    #  37    0x11a6c6  1      OPC=nop             
                                                                                       
.size __fp_lock, .-__fp_lock


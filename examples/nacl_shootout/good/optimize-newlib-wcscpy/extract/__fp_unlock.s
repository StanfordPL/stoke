  .text
  .globl __fp_unlock
  .type __fp_unlock, @function

#! file-offset 0x15a2a0
#! rip-offset  0x11a2a0
#! capacity    64 bytes

# Text                                   #  Line  RIP       Bytes  Opcode              
.__fp_unlock:                            #        0x11a2a0  0      OPC=<label>         
  movl %edi, %edi                        #  1     0x11a2a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0x11a2a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0x11a2a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0x11a2a8  2      OPC=movl_r32_r32    
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x11a2aa  6      OPC=testb_m8_imm8   
  jne .L_11a2c0                          #  6     0x11a2b0  2      OPC=jne_label       
  addl $0x5c, %edi                       #  7     0x11a2b2  3      OPC=addl_r32_imm8   
  nop                                    #  8     0x11a2b5  1      OPC=nop             
  nop                                    #  9     0x11a2b6  1      OPC=nop             
  nop                                    #  10    0x11a2b7  1      OPC=nop             
  nop                                    #  11    0x11a2b8  1      OPC=nop             
  nop                                    #  12    0x11a2b9  1      OPC=nop             
  nop                                    #  13    0x11a2ba  1      OPC=nop             
  callq .__local_lock_release_recursive  #  14    0x11a2bb  5      OPC=callq_label     
.L_11a2c0:                               #        0x11a2c0  0      OPC=<label>         
  addl $0x8, %esp                        #  15    0x11a2c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  16    0x11a2c3  3      OPC=addq_r64_r64    
  xorl %eax, %eax                        #  17    0x11a2c6  2      OPC=xorl_r32_r32    
  popq %r11                              #  18    0x11a2c8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0x11a2ca  7      OPC=andl_r32_imm32  
  nop                                    #  20    0x11a2d1  1      OPC=nop             
  nop                                    #  21    0x11a2d2  1      OPC=nop             
  nop                                    #  22    0x11a2d3  1      OPC=nop             
  nop                                    #  23    0x11a2d4  1      OPC=nop             
  addq %r15, %r11                        #  24    0x11a2d5  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0x11a2d8  3      OPC=jmpq_r64        
  nop                                    #  26    0x11a2db  1      OPC=nop             
  nop                                    #  27    0x11a2dc  1      OPC=nop             
  nop                                    #  28    0x11a2dd  1      OPC=nop             
  nop                                    #  29    0x11a2de  1      OPC=nop             
  nop                                    #  30    0x11a2df  1      OPC=nop             
  nop                                    #  31    0x11a2e0  1      OPC=nop             
  nop                                    #  32    0x11a2e1  1      OPC=nop             
  nop                                    #  33    0x11a2e2  1      OPC=nop             
  nop                                    #  34    0x11a2e3  1      OPC=nop             
  nop                                    #  35    0x11a2e4  1      OPC=nop             
  nop                                    #  36    0x11a2e5  1      OPC=nop             
  nop                                    #  37    0x11a2e6  1      OPC=nop             
                                                                                       
.size __fp_unlock, .-__fp_unlock


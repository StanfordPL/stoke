  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x15ada0
#! rip-offset  0x11ada0
#! capacity    64 bytes

# Text                                   #  Line  RIP       Bytes  Opcode              
.__fp_lock:                              #        0x11ada0  0      OPC=<label>         
  movl %edi, %edi                        #  1     0x11ada0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                        #  2     0x11ada2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0x11ada5  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0x11ada8  2      OPC=movl_r32_r32    
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x11adaa  6      OPC=testb_m8_imm8   
  jne .L_11adc0                          #  6     0x11adb0  2      OPC=jne_label       
  addl $0x5c, %edi                       #  7     0x11adb2  3      OPC=addl_r32_imm8   
  nop                                    #  8     0x11adb5  1      OPC=nop             
  nop                                    #  9     0x11adb6  1      OPC=nop             
  nop                                    #  10    0x11adb7  1      OPC=nop             
  nop                                    #  11    0x11adb8  1      OPC=nop             
  nop                                    #  12    0x11adb9  1      OPC=nop             
  nop                                    #  13    0x11adba  1      OPC=nop             
  callq .__local_lock_acquire_recursive  #  14    0x11adbb  5      OPC=callq_label     
.L_11adc0:                               #        0x11adc0  0      OPC=<label>         
  addl $0x8, %esp                        #  15    0x11adc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  16    0x11adc3  3      OPC=addq_r64_r64    
  xorl %eax, %eax                        #  17    0x11adc6  2      OPC=xorl_r32_r32    
  popq %r11                              #  18    0x11adc8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0x11adca  7      OPC=andl_r32_imm32  
  nop                                    #  20    0x11add1  1      OPC=nop             
  nop                                    #  21    0x11add2  1      OPC=nop             
  nop                                    #  22    0x11add3  1      OPC=nop             
  nop                                    #  23    0x11add4  1      OPC=nop             
  addq %r15, %r11                        #  24    0x11add5  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0x11add8  3      OPC=jmpq_r64        
  nop                                    #  26    0x11addb  1      OPC=nop             
  nop                                    #  27    0x11addc  1      OPC=nop             
  nop                                    #  28    0x11addd  1      OPC=nop             
  nop                                    #  29    0x11adde  1      OPC=nop             
  nop                                    #  30    0x11addf  1      OPC=nop             
  nop                                    #  31    0x11ade0  1      OPC=nop             
  nop                                    #  32    0x11ade1  1      OPC=nop             
  nop                                    #  33    0x11ade2  1      OPC=nop             
  nop                                    #  34    0x11ade3  1      OPC=nop             
  nop                                    #  35    0x11ade4  1      OPC=nop             
  nop                                    #  36    0x11ade5  1      OPC=nop             
  nop                                    #  37    0x11ade6  1      OPC=nop             
                                                                                       
.size __fp_lock, .-__fp_lock


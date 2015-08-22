  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, @function

#! file-offset 0xf0540
#! rip-offset  0xb0540
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv:  #        0xb0540  0      OPC=<label>         
  movl %edi, %edi                                #  1     0xb0540  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0xb0542  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xb0544  5      OPC=movl_r32_m32    
  popq %r11                                      #  4     0xb0549  2      OPC=popq_r64_1      
  movl %eax, %eax                                #  5     0xb054b  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                   #  6     0xb054d  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                        #  7     0xb0552  7      OPC=andl_r32_imm32  
  nop                                            #  8     0xb0559  1      OPC=nop             
  nop                                            #  9     0xb055a  1      OPC=nop             
  nop                                            #  10    0xb055b  1      OPC=nop             
  nop                                            #  11    0xb055c  1      OPC=nop             
  addq %r15, %r11                                #  12    0xb055d  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  13    0xb0560  3      OPC=jmpq_r64        
  nop                                            #  14    0xb0563  1      OPC=nop             
  nop                                            #  15    0xb0564  1      OPC=nop             
  nop                                            #  16    0xb0565  1      OPC=nop             
  nop                                            #  17    0xb0566  1      OPC=nop             
                                                                                              
.size _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv


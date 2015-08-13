  .text
  .globl _ZNKSt10moneypunctIwLb0EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb0EE10pos_formatEv, @function

#! file-offset 0xefa80
#! rip-offset  0xafa80
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE10pos_formatEv:  #        0xafa80  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafa80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafa82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafa85  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafa88  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafa8a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xafa8e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xafa90  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafa95  1      OPC=nop             
  nop                                      #  9     0xafa96  1      OPC=nop             
  nop                                      #  10    0xafa97  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafa98  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafa9e  1      OPC=nop             
  nop                                      #  13    0xafa9f  1      OPC=nop             
  nop                                      #  14    0xafaa0  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafaa1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafaa4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafaa6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafaa9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafaac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafaae  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafab5  1      OPC=nop             
  nop                                      #  22    0xafab6  1      OPC=nop             
  nop                                      #  23    0xafab7  1      OPC=nop             
  nop                                      #  24    0xafab8  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafab9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafabc  3      OPC=jmpq_r64        
  nop                                      #  27    0xafabf  1      OPC=nop             
  nop                                      #  28    0xafac0  1      OPC=nop             
  nop                                      #  29    0xafac1  1      OPC=nop             
  nop                                      #  30    0xafac2  1      OPC=nop             
  nop                                      #  31    0xafac3  1      OPC=nop             
  nop                                      #  32    0xafac4  1      OPC=nop             
  nop                                      #  33    0xafac5  1      OPC=nop             
  nop                                      #  34    0xafac6  1      OPC=nop             
  nop                                      #  35    0xafac7  1      OPC=nop             
  nop                                      #  36    0xafac8  1      OPC=nop             
  nop                                      #  37    0xafac9  1      OPC=nop             
  nop                                      #  38    0xafaca  1      OPC=nop             
  nop                                      #  39    0xafacb  1      OPC=nop             
  nop                                      #  40    0xafacc  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb0EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb0EE10pos_formatEv


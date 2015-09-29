  .text
  .globl _ZNKSt10moneypunctIwLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10pos_formatEv, @function

#! file-offset 0xf0720
#! rip-offset  0xb0720
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10pos_formatEv:  #        0xb0720  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb0720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xb0722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xb0725  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xb0728  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb072a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb072e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xb0730  5      OPC=movl_r32_m32    
  nop                                      #  8     0xb0735  1      OPC=nop             
  nop                                      #  9     0xb0736  1      OPC=nop             
  nop                                      #  10    0xb0737  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xb0738  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xb073e  1      OPC=nop             
  nop                                      #  13    0xb073f  1      OPC=nop             
  nop                                      #  14    0xb0740  1      OPC=nop             
  addq %r15, %rax                          #  15    0xb0741  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xb0744  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xb0746  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xb0749  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xb074c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xb074e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xb0755  1      OPC=nop             
  nop                                      #  22    0xb0756  1      OPC=nop             
  nop                                      #  23    0xb0757  1      OPC=nop             
  nop                                      #  24    0xb0758  1      OPC=nop             
  addq %r15, %r11                          #  25    0xb0759  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xb075c  3      OPC=jmpq_r64        
  nop                                      #  27    0xb075f  1      OPC=nop             
  nop                                      #  28    0xb0760  1      OPC=nop             
  nop                                      #  29    0xb0761  1      OPC=nop             
  nop                                      #  30    0xb0762  1      OPC=nop             
  nop                                      #  31    0xb0763  1      OPC=nop             
  nop                                      #  32    0xb0764  1      OPC=nop             
  nop                                      #  33    0xb0765  1      OPC=nop             
  nop                                      #  34    0xb0766  1      OPC=nop             
  nop                                      #  35    0xb0767  1      OPC=nop             
  nop                                      #  36    0xb0768  1      OPC=nop             
  nop                                      #  37    0xb0769  1      OPC=nop             
  nop                                      #  38    0xb076a  1      OPC=nop             
  nop                                      #  39    0xb076b  1      OPC=nop             
  nop                                      #  40    0xb076c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb1EE10pos_formatEv


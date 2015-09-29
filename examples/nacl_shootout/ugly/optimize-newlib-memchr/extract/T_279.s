  .text
  .globl T_279
  .type T_279, @function

#! file-offset 0xb4000
#! rip-offset  0x74000
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.T_279:                          #        0x74000  0      OPC=<label>         
  movl %edi, %edi                #  1     0x74000  2      OPC=movl_r32_r32    
  subl $0x8, %esp                #  2     0x74002  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  3     0x74005  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  4     0x74008  2      OPC=movl_r32_r32    
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x7400a  6      OPC=orl_m32_imm8    
  movl %edi, %edi                #  6     0x74010  2      OPC=movl_r32_r32    
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x74012  6      OPC=testb_m8_imm8   
  jne .L_74040                   #  8     0x74018  2      OPC=jne_label       
  addl $0x8, %esp                #  9     0x7401a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  10    0x7401d  3      OPC=addq_r64_r64    
  popq %r11                      #  11    0x74020  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  12    0x74022  7      OPC=andl_r32_imm32  
  nop                            #  13    0x74029  1      OPC=nop             
  nop                            #  14    0x7402a  1      OPC=nop             
  nop                            #  15    0x7402b  1      OPC=nop             
  nop                            #  16    0x7402c  1      OPC=nop             
  addq %r15, %r11                #  17    0x7402d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  18    0x74030  3      OPC=jmpq_r64        
  nop                            #  19    0x74033  1      OPC=nop             
  nop                            #  20    0x74034  1      OPC=nop             
  nop                            #  21    0x74035  1      OPC=nop             
  nop                            #  22    0x74036  1      OPC=nop             
  nop                            #  23    0x74037  1      OPC=nop             
  nop                            #  24    0x74038  1      OPC=nop             
  nop                            #  25    0x74039  1      OPC=nop             
  nop                            #  26    0x7403a  1      OPC=nop             
  nop                            #  27    0x7403b  1      OPC=nop             
  nop                            #  28    0x7403c  1      OPC=nop             
  nop                            #  29    0x7403d  1      OPC=nop             
  nop                            #  30    0x7403e  1      OPC=nop             
  nop                            #  31    0x7403f  1      OPC=nop             
  nop                            #  32    0x74040  1      OPC=nop             
  nop                            #  33    0x74041  1      OPC=nop             
  nop                            #  34    0x74042  1      OPC=nop             
  nop                            #  35    0x74043  1      OPC=nop             
  nop                            #  36    0x74044  1      OPC=nop             
  nop                            #  37    0x74045  1      OPC=nop             
  nop                            #  38    0x74046  1      OPC=nop             
.L_74040:                        #        0x74047  0      OPC=<label>         
  nop                            #  39    0x74047  1      OPC=nop             
  nop                            #  40    0x74048  1      OPC=nop             
  nop                            #  41    0x74049  1      OPC=nop             
  nop                            #  42    0x7404a  1      OPC=nop             
  nop                            #  43    0x7404b  1      OPC=nop             
  nop                            #  44    0x7404c  1      OPC=nop             
  nop                            #  45    0x7404d  1      OPC=nop             
  nop                            #  46    0x7404e  1      OPC=nop             
  nop                            #  47    0x7404f  1      OPC=nop             
  nop                            #  48    0x74050  1      OPC=nop             
  nop                            #  49    0x74051  1      OPC=nop             
  nop                            #  50    0x74052  1      OPC=nop             
  nop                            #  51    0x74053  1      OPC=nop             
  nop                            #  52    0x74054  1      OPC=nop             
  nop                            #  53    0x74055  1      OPC=nop             
  nop                            #  54    0x74056  1      OPC=nop             
  nop                            #  55    0x74057  1      OPC=nop             
  nop                            #  56    0x74058  1      OPC=nop             
  nop                            #  57    0x74059  1      OPC=nop             
  nop                            #  58    0x7405a  1      OPC=nop             
  nop                            #  59    0x7405b  1      OPC=nop             
  nop                            #  60    0x7405c  1      OPC=nop             
  nop                            #  61    0x7405d  1      OPC=nop             
  nop                            #  62    0x7405e  1      OPC=nop             
  nop                            #  63    0x7405f  1      OPC=nop             
  nop                            #  64    0x74060  1      OPC=nop             
  nop                            #  65    0x74061  1      OPC=nop             
  callq .__cxa_rethrow           #  66    0x74062  5      OPC=callq_label     
                                                                              
.size T_279, .-T_279


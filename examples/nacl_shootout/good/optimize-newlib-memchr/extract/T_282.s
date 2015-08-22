  .text
  .globl T_282
  .type T_282, @function

#! file-offset 0xb4060
#! rip-offset  0x74060
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.T_282:                          #        0x74060  0      OPC=<label>         
  movl %edi, %edi                #  1     0x74060  2      OPC=movl_r32_r32    
  subl $0x8, %esp                #  2     0x74062  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  3     0x74065  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  4     0x74068  2      OPC=movl_r32_r32    
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x7406a  6      OPC=orl_m32_imm8    
  movl %edi, %edi                #  6     0x74070  2      OPC=movl_r32_r32    
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x74072  6      OPC=testb_m8_imm8   
  jne .L_740a0                   #  8     0x74078  2      OPC=jne_label       
  addl $0x8, %esp                #  9     0x7407a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  10    0x7407d  3      OPC=addq_r64_r64    
  popq %r11                      #  11    0x74080  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  12    0x74082  7      OPC=andl_r32_imm32  
  nop                            #  13    0x74089  1      OPC=nop             
  nop                            #  14    0x7408a  1      OPC=nop             
  nop                            #  15    0x7408b  1      OPC=nop             
  nop                            #  16    0x7408c  1      OPC=nop             
  addq %r15, %r11                #  17    0x7408d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  18    0x74090  3      OPC=jmpq_r64        
  nop                            #  19    0x74093  1      OPC=nop             
  nop                            #  20    0x74094  1      OPC=nop             
  nop                            #  21    0x74095  1      OPC=nop             
  nop                            #  22    0x74096  1      OPC=nop             
  nop                            #  23    0x74097  1      OPC=nop             
  nop                            #  24    0x74098  1      OPC=nop             
  nop                            #  25    0x74099  1      OPC=nop             
  nop                            #  26    0x7409a  1      OPC=nop             
  nop                            #  27    0x7409b  1      OPC=nop             
  nop                            #  28    0x7409c  1      OPC=nop             
  nop                            #  29    0x7409d  1      OPC=nop             
  nop                            #  30    0x7409e  1      OPC=nop             
  nop                            #  31    0x7409f  1      OPC=nop             
  nop                            #  32    0x740a0  1      OPC=nop             
  nop                            #  33    0x740a1  1      OPC=nop             
  nop                            #  34    0x740a2  1      OPC=nop             
  nop                            #  35    0x740a3  1      OPC=nop             
  nop                            #  36    0x740a4  1      OPC=nop             
  nop                            #  37    0x740a5  1      OPC=nop             
  nop                            #  38    0x740a6  1      OPC=nop             
.L_740a0:                        #        0x740a7  0      OPC=<label>         
  nop                            #  39    0x740a7  1      OPC=nop             
  nop                            #  40    0x740a8  1      OPC=nop             
  nop                            #  41    0x740a9  1      OPC=nop             
  nop                            #  42    0x740aa  1      OPC=nop             
  nop                            #  43    0x740ab  1      OPC=nop             
  nop                            #  44    0x740ac  1      OPC=nop             
  nop                            #  45    0x740ad  1      OPC=nop             
  nop                            #  46    0x740ae  1      OPC=nop             
  nop                            #  47    0x740af  1      OPC=nop             
  nop                            #  48    0x740b0  1      OPC=nop             
  nop                            #  49    0x740b1  1      OPC=nop             
  nop                            #  50    0x740b2  1      OPC=nop             
  nop                            #  51    0x740b3  1      OPC=nop             
  nop                            #  52    0x740b4  1      OPC=nop             
  nop                            #  53    0x740b5  1      OPC=nop             
  nop                            #  54    0x740b6  1      OPC=nop             
  nop                            #  55    0x740b7  1      OPC=nop             
  nop                            #  56    0x740b8  1      OPC=nop             
  nop                            #  57    0x740b9  1      OPC=nop             
  nop                            #  58    0x740ba  1      OPC=nop             
  nop                            #  59    0x740bb  1      OPC=nop             
  nop                            #  60    0x740bc  1      OPC=nop             
  nop                            #  61    0x740bd  1      OPC=nop             
  nop                            #  62    0x740be  1      OPC=nop             
  nop                            #  63    0x740bf  1      OPC=nop             
  nop                            #  64    0x740c0  1      OPC=nop             
  nop                            #  65    0x740c1  1      OPC=nop             
  callq .__cxa_rethrow           #  66    0x740c2  5      OPC=callq_label     
                                                                              
.size T_282, .-T_282


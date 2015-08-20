  .text
  .globl T_282
  .type T_282, @function

#! file-offset 0xb3940
#! rip-offset  0x73940
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.T_282:                          #        0x73940  0      OPC=<label>         
  movl %edi, %edi                #  1     0x73940  2      OPC=movl_r32_r32    
  subl $0x8, %esp                #  2     0x73942  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  3     0x73945  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  4     0x73948  2      OPC=movl_r32_r32    
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x7394a  6      OPC=orl_m32_imm8    
  movl %edi, %edi                #  6     0x73950  2      OPC=movl_r32_r32    
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x73952  6      OPC=testb_m8_imm8   
  jne .L_73980                   #  8     0x73958  2      OPC=jne_label       
  addl $0x8, %esp                #  9     0x7395a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  10    0x7395d  3      OPC=addq_r64_r64    
  popq %r11                      #  11    0x73960  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  12    0x73962  7      OPC=andl_r32_imm32  
  nop                            #  13    0x73969  1      OPC=nop             
  nop                            #  14    0x7396a  1      OPC=nop             
  nop                            #  15    0x7396b  1      OPC=nop             
  nop                            #  16    0x7396c  1      OPC=nop             
  addq %r15, %r11                #  17    0x7396d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  18    0x73970  3      OPC=jmpq_r64        
  nop                            #  19    0x73973  1      OPC=nop             
  nop                            #  20    0x73974  1      OPC=nop             
  nop                            #  21    0x73975  1      OPC=nop             
  nop                            #  22    0x73976  1      OPC=nop             
  nop                            #  23    0x73977  1      OPC=nop             
  nop                            #  24    0x73978  1      OPC=nop             
  nop                            #  25    0x73979  1      OPC=nop             
  nop                            #  26    0x7397a  1      OPC=nop             
  nop                            #  27    0x7397b  1      OPC=nop             
  nop                            #  28    0x7397c  1      OPC=nop             
  nop                            #  29    0x7397d  1      OPC=nop             
  nop                            #  30    0x7397e  1      OPC=nop             
  nop                            #  31    0x7397f  1      OPC=nop             
  nop                            #  32    0x73980  1      OPC=nop             
  nop                            #  33    0x73981  1      OPC=nop             
  nop                            #  34    0x73982  1      OPC=nop             
  nop                            #  35    0x73983  1      OPC=nop             
  nop                            #  36    0x73984  1      OPC=nop             
  nop                            #  37    0x73985  1      OPC=nop             
  nop                            #  38    0x73986  1      OPC=nop             
.L_73980:                        #        0x73987  0      OPC=<label>         
  nop                            #  39    0x73987  1      OPC=nop             
  nop                            #  40    0x73988  1      OPC=nop             
  nop                            #  41    0x73989  1      OPC=nop             
  nop                            #  42    0x7398a  1      OPC=nop             
  nop                            #  43    0x7398b  1      OPC=nop             
  nop                            #  44    0x7398c  1      OPC=nop             
  nop                            #  45    0x7398d  1      OPC=nop             
  nop                            #  46    0x7398e  1      OPC=nop             
  nop                            #  47    0x7398f  1      OPC=nop             
  nop                            #  48    0x73990  1      OPC=nop             
  nop                            #  49    0x73991  1      OPC=nop             
  nop                            #  50    0x73992  1      OPC=nop             
  nop                            #  51    0x73993  1      OPC=nop             
  nop                            #  52    0x73994  1      OPC=nop             
  nop                            #  53    0x73995  1      OPC=nop             
  nop                            #  54    0x73996  1      OPC=nop             
  nop                            #  55    0x73997  1      OPC=nop             
  nop                            #  56    0x73998  1      OPC=nop             
  nop                            #  57    0x73999  1      OPC=nop             
  nop                            #  58    0x7399a  1      OPC=nop             
  nop                            #  59    0x7399b  1      OPC=nop             
  nop                            #  60    0x7399c  1      OPC=nop             
  nop                            #  61    0x7399d  1      OPC=nop             
  nop                            #  62    0x7399e  1      OPC=nop             
  nop                            #  63    0x7399f  1      OPC=nop             
  nop                            #  64    0x739a0  1      OPC=nop             
  nop                            #  65    0x739a1  1      OPC=nop             
  callq .__cxa_rethrow           #  66    0x739a2  5      OPC=callq_label     
                                                                              
.size T_282, .-T_282


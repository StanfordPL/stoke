  .text
  .globl T_279
  .type T_279, @function

#! file-offset 0xb35e0
#! rip-offset  0x735e0
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.T_279:                          #        0x735e0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x735e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                #  2     0x735e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  3     0x735e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  4     0x735e8  2      OPC=movl_r32_r32    
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x735ea  6      OPC=orl_m32_imm8    
  movl %edi, %edi                #  6     0x735f0  2      OPC=movl_r32_r32    
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x735f2  6      OPC=testb_m8_imm8   
  jne .L_73620                   #  8     0x735f8  2      OPC=jne_label       
  addl $0x8, %esp                #  9     0x735fa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  10    0x735fd  3      OPC=addq_r64_r64    
  popq %r11                      #  11    0x73600  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  12    0x73602  7      OPC=andl_r32_imm32  
  nop                            #  13    0x73609  1      OPC=nop             
  nop                            #  14    0x7360a  1      OPC=nop             
  nop                            #  15    0x7360b  1      OPC=nop             
  nop                            #  16    0x7360c  1      OPC=nop             
  addq %r15, %r11                #  17    0x7360d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  18    0x73610  3      OPC=jmpq_r64        
  nop                            #  19    0x73613  1      OPC=nop             
  nop                            #  20    0x73614  1      OPC=nop             
  nop                            #  21    0x73615  1      OPC=nop             
  nop                            #  22    0x73616  1      OPC=nop             
  nop                            #  23    0x73617  1      OPC=nop             
  nop                            #  24    0x73618  1      OPC=nop             
  nop                            #  25    0x73619  1      OPC=nop             
  nop                            #  26    0x7361a  1      OPC=nop             
  nop                            #  27    0x7361b  1      OPC=nop             
  nop                            #  28    0x7361c  1      OPC=nop             
  nop                            #  29    0x7361d  1      OPC=nop             
  nop                            #  30    0x7361e  1      OPC=nop             
  nop                            #  31    0x7361f  1      OPC=nop             
  nop                            #  32    0x73620  1      OPC=nop             
  nop                            #  33    0x73621  1      OPC=nop             
  nop                            #  34    0x73622  1      OPC=nop             
  nop                            #  35    0x73623  1      OPC=nop             
  nop                            #  36    0x73624  1      OPC=nop             
  nop                            #  37    0x73625  1      OPC=nop             
  nop                            #  38    0x73626  1      OPC=nop             
.L_73620:                        #        0x73627  0      OPC=<label>         
  nop                            #  39    0x73627  1      OPC=nop             
  nop                            #  40    0x73628  1      OPC=nop             
  nop                            #  41    0x73629  1      OPC=nop             
  nop                            #  42    0x7362a  1      OPC=nop             
  nop                            #  43    0x7362b  1      OPC=nop             
  nop                            #  44    0x7362c  1      OPC=nop             
  nop                            #  45    0x7362d  1      OPC=nop             
  nop                            #  46    0x7362e  1      OPC=nop             
  nop                            #  47    0x7362f  1      OPC=nop             
  nop                            #  48    0x73630  1      OPC=nop             
  nop                            #  49    0x73631  1      OPC=nop             
  nop                            #  50    0x73632  1      OPC=nop             
  nop                            #  51    0x73633  1      OPC=nop             
  nop                            #  52    0x73634  1      OPC=nop             
  nop                            #  53    0x73635  1      OPC=nop             
  nop                            #  54    0x73636  1      OPC=nop             
  nop                            #  55    0x73637  1      OPC=nop             
  nop                            #  56    0x73638  1      OPC=nop             
  nop                            #  57    0x73639  1      OPC=nop             
  nop                            #  58    0x7363a  1      OPC=nop             
  nop                            #  59    0x7363b  1      OPC=nop             
  nop                            #  60    0x7363c  1      OPC=nop             
  nop                            #  61    0x7363d  1      OPC=nop             
  nop                            #  62    0x7363e  1      OPC=nop             
  nop                            #  63    0x7363f  1      OPC=nop             
  nop                            #  64    0x73640  1      OPC=nop             
  nop                            #  65    0x73641  1      OPC=nop             
  callq .__cxa_rethrow           #  66    0x73642  5      OPC=callq_label     
                                                                              
.size T_279, .-T_279


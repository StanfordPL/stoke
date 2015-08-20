  .text
  .globl T_279
  .type T_279, @function

#! file-offset 0xb38e0
#! rip-offset  0x738e0
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.T_279:                          #        0x738e0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x738e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                #  2     0x738e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  3     0x738e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  4     0x738e8  2      OPC=movl_r32_r32    
  orl $0x1, 0x14(%r15,%rdi,1)    #  5     0x738ea  6      OPC=orl_m32_imm8    
  movl %edi, %edi                #  6     0x738f0  2      OPC=movl_r32_r32    
  testb $0x1, 0x10(%r15,%rdi,1)  #  7     0x738f2  6      OPC=testb_m8_imm8   
  jne .L_73920                   #  8     0x738f8  2      OPC=jne_label       
  addl $0x8, %esp                #  9     0x738fa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  10    0x738fd  3      OPC=addq_r64_r64    
  popq %r11                      #  11    0x73900  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  12    0x73902  7      OPC=andl_r32_imm32  
  nop                            #  13    0x73909  1      OPC=nop             
  nop                            #  14    0x7390a  1      OPC=nop             
  nop                            #  15    0x7390b  1      OPC=nop             
  nop                            #  16    0x7390c  1      OPC=nop             
  addq %r15, %r11                #  17    0x7390d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  18    0x73910  3      OPC=jmpq_r64        
  nop                            #  19    0x73913  1      OPC=nop             
  nop                            #  20    0x73914  1      OPC=nop             
  nop                            #  21    0x73915  1      OPC=nop             
  nop                            #  22    0x73916  1      OPC=nop             
  nop                            #  23    0x73917  1      OPC=nop             
  nop                            #  24    0x73918  1      OPC=nop             
  nop                            #  25    0x73919  1      OPC=nop             
  nop                            #  26    0x7391a  1      OPC=nop             
  nop                            #  27    0x7391b  1      OPC=nop             
  nop                            #  28    0x7391c  1      OPC=nop             
  nop                            #  29    0x7391d  1      OPC=nop             
  nop                            #  30    0x7391e  1      OPC=nop             
  nop                            #  31    0x7391f  1      OPC=nop             
  nop                            #  32    0x73920  1      OPC=nop             
  nop                            #  33    0x73921  1      OPC=nop             
  nop                            #  34    0x73922  1      OPC=nop             
  nop                            #  35    0x73923  1      OPC=nop             
  nop                            #  36    0x73924  1      OPC=nop             
  nop                            #  37    0x73925  1      OPC=nop             
  nop                            #  38    0x73926  1      OPC=nop             
.L_73920:                        #        0x73927  0      OPC=<label>         
  nop                            #  39    0x73927  1      OPC=nop             
  nop                            #  40    0x73928  1      OPC=nop             
  nop                            #  41    0x73929  1      OPC=nop             
  nop                            #  42    0x7392a  1      OPC=nop             
  nop                            #  43    0x7392b  1      OPC=nop             
  nop                            #  44    0x7392c  1      OPC=nop             
  nop                            #  45    0x7392d  1      OPC=nop             
  nop                            #  46    0x7392e  1      OPC=nop             
  nop                            #  47    0x7392f  1      OPC=nop             
  nop                            #  48    0x73930  1      OPC=nop             
  nop                            #  49    0x73931  1      OPC=nop             
  nop                            #  50    0x73932  1      OPC=nop             
  nop                            #  51    0x73933  1      OPC=nop             
  nop                            #  52    0x73934  1      OPC=nop             
  nop                            #  53    0x73935  1      OPC=nop             
  nop                            #  54    0x73936  1      OPC=nop             
  nop                            #  55    0x73937  1      OPC=nop             
  nop                            #  56    0x73938  1      OPC=nop             
  nop                            #  57    0x73939  1      OPC=nop             
  nop                            #  58    0x7393a  1      OPC=nop             
  nop                            #  59    0x7393b  1      OPC=nop             
  nop                            #  60    0x7393c  1      OPC=nop             
  nop                            #  61    0x7393d  1      OPC=nop             
  nop                            #  62    0x7393e  1      OPC=nop             
  nop                            #  63    0x7393f  1      OPC=nop             
  nop                            #  64    0x73940  1      OPC=nop             
  nop                            #  65    0x73941  1      OPC=nop             
  callq .__cxa_rethrow           #  66    0x73942  5      OPC=callq_label     
                                                                              
.size T_279, .-T_279


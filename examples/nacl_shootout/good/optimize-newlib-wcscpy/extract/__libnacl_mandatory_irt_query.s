  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x158420
#! rip-offset  0x118420
#! capacity    96 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__libnacl_mandatory_irt_query:  #        0x118420  0      OPC=<label>         
  subl $0x8, %esp                #  1     0x118420  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  2     0x118423  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  3     0x118426  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x118428  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  5     0x11842a  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x11842c  1      OPC=nop             
  nop                            #  7     0x11842d  1      OPC=nop             
  nop                            #  8     0x11842e  1      OPC=nop             
  nop                            #  9     0x11842f  1      OPC=nop             
  nop                            #  10    0x118430  1      OPC=nop             
  nop                            #  11    0x118431  1      OPC=nop             
  nop                            #  12    0x118432  1      OPC=nop             
  nop                            #  13    0x118433  1      OPC=nop             
  nop                            #  14    0x118434  1      OPC=nop             
  nop                            #  15    0x118435  1      OPC=nop             
  nop                            #  16    0x118436  1      OPC=nop             
  nop                            #  17    0x118437  1      OPC=nop             
  nop                            #  18    0x118438  1      OPC=nop             
  nop                            #  19    0x118439  1      OPC=nop             
  nop                            #  20    0x11843a  1      OPC=nop             
  callq .__libnacl_irt_query     #  21    0x11843b  5      OPC=callq_label     
  testl %eax, %eax               #  22    0x118440  2      OPC=testl_r32_r32   
  je .L_118460                   #  23    0x118442  2      OPC=je_label        
  addl $0x8, %esp                #  24    0x118444  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  25    0x118447  3      OPC=addq_r64_r64    
  popq %r11                      #  26    0x11844a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  27    0x11844c  7      OPC=andl_r32_imm32  
  nop                            #  28    0x118453  1      OPC=nop             
  nop                            #  29    0x118454  1      OPC=nop             
  nop                            #  30    0x118455  1      OPC=nop             
  nop                            #  31    0x118456  1      OPC=nop             
  addq %r15, %r11                #  32    0x118457  3      OPC=addq_r64_r64    
  jmpq %r11                      #  33    0x11845a  3      OPC=jmpq_r64        
  nop                            #  34    0x11845d  1      OPC=nop             
  nop                            #  35    0x11845e  1      OPC=nop             
  nop                            #  36    0x11845f  1      OPC=nop             
  nop                            #  37    0x118460  1      OPC=nop             
  nop                            #  38    0x118461  1      OPC=nop             
  nop                            #  39    0x118462  1      OPC=nop             
  nop                            #  40    0x118463  1      OPC=nop             
  nop                            #  41    0x118464  1      OPC=nop             
  nop                            #  42    0x118465  1      OPC=nop             
  nop                            #  43    0x118466  1      OPC=nop             
.L_118460:                       #        0x118467  0      OPC=<label>         
  movl $0x10040a40, %edi         #  44    0x118467  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                #  45    0x11846c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  46    0x11846f  3      OPC=addq_r64_r64    
  jmpq .__libnacl_fatal          #  47    0x118472  5      OPC=jmpq_label_1    
  nop                            #  48    0x118477  1      OPC=nop             
  nop                            #  49    0x118478  1      OPC=nop             
  nop                            #  50    0x118479  1      OPC=nop             
  nop                            #  51    0x11847a  1      OPC=nop             
  nop                            #  52    0x11847b  1      OPC=nop             
  nop                            #  53    0x11847c  1      OPC=nop             
  nop                            #  54    0x11847d  1      OPC=nop             
  nop                            #  55    0x11847e  1      OPC=nop             
  nop                            #  56    0x11847f  1      OPC=nop             
  nop                            #  57    0x118480  1      OPC=nop             
  nop                            #  58    0x118481  1      OPC=nop             
  nop                            #  59    0x118482  1      OPC=nop             
  nop                            #  60    0x118483  1      OPC=nop             
  nop                            #  61    0x118484  1      OPC=nop             
  nop                            #  62    0x118485  1      OPC=nop             
  nop                            #  63    0x118486  1      OPC=nop             
                                                                               
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query


  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x158720
#! rip-offset  0x118720
#! capacity    96 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__libnacl_mandatory_irt_query:  #        0x118720  0      OPC=<label>         
  subl $0x8, %esp                #  1     0x118720  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  2     0x118723  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  3     0x118726  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x118728  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  5     0x11872a  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x11872c  1      OPC=nop             
  nop                            #  7     0x11872d  1      OPC=nop             
  nop                            #  8     0x11872e  1      OPC=nop             
  nop                            #  9     0x11872f  1      OPC=nop             
  nop                            #  10    0x118730  1      OPC=nop             
  nop                            #  11    0x118731  1      OPC=nop             
  nop                            #  12    0x118732  1      OPC=nop             
  nop                            #  13    0x118733  1      OPC=nop             
  nop                            #  14    0x118734  1      OPC=nop             
  nop                            #  15    0x118735  1      OPC=nop             
  nop                            #  16    0x118736  1      OPC=nop             
  nop                            #  17    0x118737  1      OPC=nop             
  nop                            #  18    0x118738  1      OPC=nop             
  nop                            #  19    0x118739  1      OPC=nop             
  nop                            #  20    0x11873a  1      OPC=nop             
  callq .__libnacl_irt_query     #  21    0x11873b  5      OPC=callq_label     
  testl %eax, %eax               #  22    0x118740  2      OPC=testl_r32_r32   
  je .L_118760                   #  23    0x118742  2      OPC=je_label        
  addl $0x8, %esp                #  24    0x118744  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  25    0x118747  3      OPC=addq_r64_r64    
  popq %r11                      #  26    0x11874a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  27    0x11874c  7      OPC=andl_r32_imm32  
  nop                            #  28    0x118753  1      OPC=nop             
  nop                            #  29    0x118754  1      OPC=nop             
  nop                            #  30    0x118755  1      OPC=nop             
  nop                            #  31    0x118756  1      OPC=nop             
  addq %r15, %r11                #  32    0x118757  3      OPC=addq_r64_r64    
  jmpq %r11                      #  33    0x11875a  3      OPC=jmpq_r64        
  nop                            #  34    0x11875d  1      OPC=nop             
  nop                            #  35    0x11875e  1      OPC=nop             
  nop                            #  36    0x11875f  1      OPC=nop             
  nop                            #  37    0x118760  1      OPC=nop             
  nop                            #  38    0x118761  1      OPC=nop             
  nop                            #  39    0x118762  1      OPC=nop             
  nop                            #  40    0x118763  1      OPC=nop             
  nop                            #  41    0x118764  1      OPC=nop             
  nop                            #  42    0x118765  1      OPC=nop             
  nop                            #  43    0x118766  1      OPC=nop             
.L_118760:                       #        0x118767  0      OPC=<label>         
  movl $0x10040a40, %edi         #  44    0x118767  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                #  45    0x11876c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  46    0x11876f  3      OPC=addq_r64_r64    
  jmpq .__libnacl_fatal          #  47    0x118772  5      OPC=jmpq_label_1    
  nop                            #  48    0x118777  1      OPC=nop             
  nop                            #  49    0x118778  1      OPC=nop             
  nop                            #  50    0x118779  1      OPC=nop             
  nop                            #  51    0x11877a  1      OPC=nop             
  nop                            #  52    0x11877b  1      OPC=nop             
  nop                            #  53    0x11877c  1      OPC=nop             
  nop                            #  54    0x11877d  1      OPC=nop             
  nop                            #  55    0x11877e  1      OPC=nop             
  nop                            #  56    0x11877f  1      OPC=nop             
  nop                            #  57    0x118780  1      OPC=nop             
  nop                            #  58    0x118781  1      OPC=nop             
  nop                            #  59    0x118782  1      OPC=nop             
  nop                            #  60    0x118783  1      OPC=nop             
  nop                            #  61    0x118784  1      OPC=nop             
  nop                            #  62    0x118785  1      OPC=nop             
  nop                            #  63    0x118786  1      OPC=nop             
                                                                               
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query


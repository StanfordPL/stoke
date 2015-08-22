  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x158e40
#! rip-offset  0x118e40
#! capacity    96 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__libnacl_mandatory_irt_query:  #        0x118e40  0      OPC=<label>         
  subl $0x8, %esp                #  1     0x118e40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  2     0x118e43  3      OPC=addq_r64_r64    
  movl %edi, %edi                #  3     0x118e46  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  4     0x118e48  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  5     0x118e4a  2      OPC=xchgw_ax_r16    
  nop                            #  6     0x118e4c  1      OPC=nop             
  nop                            #  7     0x118e4d  1      OPC=nop             
  nop                            #  8     0x118e4e  1      OPC=nop             
  nop                            #  9     0x118e4f  1      OPC=nop             
  nop                            #  10    0x118e50  1      OPC=nop             
  nop                            #  11    0x118e51  1      OPC=nop             
  nop                            #  12    0x118e52  1      OPC=nop             
  nop                            #  13    0x118e53  1      OPC=nop             
  nop                            #  14    0x118e54  1      OPC=nop             
  nop                            #  15    0x118e55  1      OPC=nop             
  nop                            #  16    0x118e56  1      OPC=nop             
  nop                            #  17    0x118e57  1      OPC=nop             
  nop                            #  18    0x118e58  1      OPC=nop             
  nop                            #  19    0x118e59  1      OPC=nop             
  nop                            #  20    0x118e5a  1      OPC=nop             
  callq .__libnacl_irt_query     #  21    0x118e5b  5      OPC=callq_label     
  testl %eax, %eax               #  22    0x118e60  2      OPC=testl_r32_r32   
  je .L_118e80                   #  23    0x118e62  2      OPC=je_label        
  addl $0x8, %esp                #  24    0x118e64  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  25    0x118e67  3      OPC=addq_r64_r64    
  popq %r11                      #  26    0x118e6a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  27    0x118e6c  7      OPC=andl_r32_imm32  
  nop                            #  28    0x118e73  1      OPC=nop             
  nop                            #  29    0x118e74  1      OPC=nop             
  nop                            #  30    0x118e75  1      OPC=nop             
  nop                            #  31    0x118e76  1      OPC=nop             
  addq %r15, %r11                #  32    0x118e77  3      OPC=addq_r64_r64    
  jmpq %r11                      #  33    0x118e7a  3      OPC=jmpq_r64        
  nop                            #  34    0x118e7d  1      OPC=nop             
  nop                            #  35    0x118e7e  1      OPC=nop             
  nop                            #  36    0x118e7f  1      OPC=nop             
  nop                            #  37    0x118e80  1      OPC=nop             
  nop                            #  38    0x118e81  1      OPC=nop             
  nop                            #  39    0x118e82  1      OPC=nop             
  nop                            #  40    0x118e83  1      OPC=nop             
  nop                            #  41    0x118e84  1      OPC=nop             
  nop                            #  42    0x118e85  1      OPC=nop             
  nop                            #  43    0x118e86  1      OPC=nop             
.L_118e80:                       #        0x118e87  0      OPC=<label>         
  movl $0x10040a40, %edi         #  44    0x118e87  5      OPC=movl_r32_imm32  
  addl $0x8, %esp                #  45    0x118e8c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  46    0x118e8f  3      OPC=addq_r64_r64    
  jmpq .__libnacl_fatal          #  47    0x118e92  5      OPC=jmpq_label_1    
  nop                            #  48    0x118e97  1      OPC=nop             
  nop                            #  49    0x118e98  1      OPC=nop             
  nop                            #  50    0x118e99  1      OPC=nop             
  nop                            #  51    0x118e9a  1      OPC=nop             
  nop                            #  52    0x118e9b  1      OPC=nop             
  nop                            #  53    0x118e9c  1      OPC=nop             
  nop                            #  54    0x118e9d  1      OPC=nop             
  nop                            #  55    0x118e9e  1      OPC=nop             
  nop                            #  56    0x118e9f  1      OPC=nop             
  nop                            #  57    0x118ea0  1      OPC=nop             
  nop                            #  58    0x118ea1  1      OPC=nop             
  nop                            #  59    0x118ea2  1      OPC=nop             
  nop                            #  60    0x118ea3  1      OPC=nop             
  nop                            #  61    0x118ea4  1      OPC=nop             
  nop                            #  62    0x118ea5  1      OPC=nop             
  nop                            #  63    0x118ea6  1      OPC=nop             
                                                                               
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query


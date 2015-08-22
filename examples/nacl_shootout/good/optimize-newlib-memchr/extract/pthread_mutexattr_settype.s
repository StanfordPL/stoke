  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x6db20
#! rip-offset  0x2db20
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  Opcode                
.pthread_mutexattr_settype:  #        0x2db20  0      OPC=<label>           
  cmpl $0x2, %esi            #  1     0x2db20  3      OPC=cmpl_r32_imm8     
  movl %edi, %edi            #  2     0x2db23  2      OPC=movl_r32_r32      
  movl $0xffffffff, %eax     #  3     0x2db25  6      OPC=movl_r32_imm32_1  
  ja .L_2db40                #  4     0x2db2b  2      OPC=ja_label          
  movl %edi, %edi            #  5     0x2db2d  2      OPC=movl_r32_r32      
  movl %esi, (%r15,%rdi,1)   #  6     0x2db2f  4      OPC=movl_m32_r32      
  xorl %eax, %eax            #  7     0x2db33  2      OPC=xorl_r32_r32      
  nop                        #  8     0x2db35  1      OPC=nop               
  nop                        #  9     0x2db36  1      OPC=nop               
  nop                        #  10    0x2db37  1      OPC=nop               
  nop                        #  11    0x2db38  1      OPC=nop               
  nop                        #  12    0x2db39  1      OPC=nop               
  nop                        #  13    0x2db3a  1      OPC=nop               
  nop                        #  14    0x2db3b  1      OPC=nop               
  nop                        #  15    0x2db3c  1      OPC=nop               
  nop                        #  16    0x2db3d  1      OPC=nop               
  nop                        #  17    0x2db3e  1      OPC=nop               
  nop                        #  18    0x2db3f  1      OPC=nop               
  nop                        #  19    0x2db40  1      OPC=nop               
.L_2db40:                    #        0x2db41  0      OPC=<label>           
  popq %r11                  #  20    0x2db41  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  21    0x2db43  7      OPC=andl_r32_imm32    
  nop                        #  22    0x2db4a  1      OPC=nop               
  nop                        #  23    0x2db4b  1      OPC=nop               
  nop                        #  24    0x2db4c  1      OPC=nop               
  nop                        #  25    0x2db4d  1      OPC=nop               
  addq %r15, %r11            #  26    0x2db4e  3      OPC=addq_r64_r64      
  jmpq %r11                  #  27    0x2db51  3      OPC=jmpq_r64          
  nop                        #  28    0x2db54  1      OPC=nop               
  nop                        #  29    0x2db55  1      OPC=nop               
  nop                        #  30    0x2db56  1      OPC=nop               
  nop                        #  31    0x2db57  1      OPC=nop               
  nop                        #  32    0x2db58  1      OPC=nop               
  nop                        #  33    0x2db59  1      OPC=nop               
  nop                        #  34    0x2db5a  1      OPC=nop               
  nop                        #  35    0x2db5b  1      OPC=nop               
  nop                        #  36    0x2db5c  1      OPC=nop               
  nop                        #  37    0x2db5d  1      OPC=nop               
  nop                        #  38    0x2db5e  1      OPC=nop               
  nop                        #  39    0x2db5f  1      OPC=nop               
  nop                        #  40    0x2db60  1      OPC=nop               
  nop                        #  41    0x2db61  1      OPC=nop               
  nop                        #  42    0x2db62  1      OPC=nop               
  nop                        #  43    0x2db63  1      OPC=nop               
  nop                        #  44    0x2db64  1      OPC=nop               
  nop                        #  45    0x2db65  1      OPC=nop               
  nop                        #  46    0x2db66  1      OPC=nop               
  nop                        #  47    0x2db67  1      OPC=nop               
                                                                            
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype


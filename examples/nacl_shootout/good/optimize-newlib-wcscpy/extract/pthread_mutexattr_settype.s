  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x6d100
#! rip-offset  0x2d100
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  Opcode                
.pthread_mutexattr_settype:  #        0x2d100  0      OPC=<label>           
  cmpl $0x2, %esi            #  1     0x2d100  3      OPC=cmpl_r32_imm8     
  movl %edi, %edi            #  2     0x2d103  2      OPC=movl_r32_r32      
  movl $0xffffffff, %eax     #  3     0x2d105  6      OPC=movl_r32_imm32_1  
  ja .L_2d120                #  4     0x2d10b  2      OPC=ja_label          
  movl %edi, %edi            #  5     0x2d10d  2      OPC=movl_r32_r32      
  movl %esi, (%r15,%rdi,1)   #  6     0x2d10f  4      OPC=movl_m32_r32      
  xorl %eax, %eax            #  7     0x2d113  2      OPC=xorl_r32_r32      
  nop                        #  8     0x2d115  1      OPC=nop               
  nop                        #  9     0x2d116  1      OPC=nop               
  nop                        #  10    0x2d117  1      OPC=nop               
  nop                        #  11    0x2d118  1      OPC=nop               
  nop                        #  12    0x2d119  1      OPC=nop               
  nop                        #  13    0x2d11a  1      OPC=nop               
  nop                        #  14    0x2d11b  1      OPC=nop               
  nop                        #  15    0x2d11c  1      OPC=nop               
  nop                        #  16    0x2d11d  1      OPC=nop               
  nop                        #  17    0x2d11e  1      OPC=nop               
  nop                        #  18    0x2d11f  1      OPC=nop               
  nop                        #  19    0x2d120  1      OPC=nop               
.L_2d120:                    #        0x2d121  0      OPC=<label>           
  popq %r11                  #  20    0x2d121  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  21    0x2d123  7      OPC=andl_r32_imm32    
  nop                        #  22    0x2d12a  1      OPC=nop               
  nop                        #  23    0x2d12b  1      OPC=nop               
  nop                        #  24    0x2d12c  1      OPC=nop               
  nop                        #  25    0x2d12d  1      OPC=nop               
  addq %r15, %r11            #  26    0x2d12e  3      OPC=addq_r64_r64      
  jmpq %r11                  #  27    0x2d131  3      OPC=jmpq_r64          
  nop                        #  28    0x2d134  1      OPC=nop               
  nop                        #  29    0x2d135  1      OPC=nop               
  nop                        #  30    0x2d136  1      OPC=nop               
  nop                        #  31    0x2d137  1      OPC=nop               
  nop                        #  32    0x2d138  1      OPC=nop               
  nop                        #  33    0x2d139  1      OPC=nop               
  nop                        #  34    0x2d13a  1      OPC=nop               
  nop                        #  35    0x2d13b  1      OPC=nop               
  nop                        #  36    0x2d13c  1      OPC=nop               
  nop                        #  37    0x2d13d  1      OPC=nop               
  nop                        #  38    0x2d13e  1      OPC=nop               
  nop                        #  39    0x2d13f  1      OPC=nop               
  nop                        #  40    0x2d140  1      OPC=nop               
  nop                        #  41    0x2d141  1      OPC=nop               
  nop                        #  42    0x2d142  1      OPC=nop               
  nop                        #  43    0x2d143  1      OPC=nop               
  nop                        #  44    0x2d144  1      OPC=nop               
  nop                        #  45    0x2d145  1      OPC=nop               
  nop                        #  46    0x2d146  1      OPC=nop               
  nop                        #  47    0x2d147  1      OPC=nop               
                                                                            
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype


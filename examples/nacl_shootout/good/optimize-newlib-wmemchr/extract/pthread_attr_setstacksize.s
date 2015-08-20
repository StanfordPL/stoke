  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x6dbe0
#! rip-offset  0x2dbe0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_attr_setstacksize:      #        0x2dbe0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x2dbe0  2      OPC=movl_r32_r32    
  movl $0x16, %eax               #  2     0x2dbe2  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi               #  3     0x2dbe7  3      OPC=testq_r64_r64   
  je .L_2dc20                    #  4     0x2dbea  2      OPC=je_label        
  cmpl $0x400, %esi              #  5     0x2dbec  6      OPC=cmpl_r32_imm32  
  ja .L_2dc40                    #  6     0x2dbf2  2      OPC=ja_label        
  movl %edi, %edi                #  7     0x2dbf4  2      OPC=movl_r32_r32    
  movl $0x400, 0x4(%r15,%rdi,1)  #  8     0x2dbf6  9      OPC=movl_m32_imm32  
  nop                            #  9     0x2dbff  1      OPC=nop             
  xorl %eax, %eax                #  10    0x2dc00  2      OPC=xorl_r32_r32    
  nop                            #  11    0x2dc02  1      OPC=nop             
  nop                            #  12    0x2dc03  1      OPC=nop             
  nop                            #  13    0x2dc04  1      OPC=nop             
  nop                            #  14    0x2dc05  1      OPC=nop             
  nop                            #  15    0x2dc06  1      OPC=nop             
  nop                            #  16    0x2dc07  1      OPC=nop             
  nop                            #  17    0x2dc08  1      OPC=nop             
  nop                            #  18    0x2dc09  1      OPC=nop             
  nop                            #  19    0x2dc0a  1      OPC=nop             
  nop                            #  20    0x2dc0b  1      OPC=nop             
  nop                            #  21    0x2dc0c  1      OPC=nop             
  nop                            #  22    0x2dc0d  1      OPC=nop             
  nop                            #  23    0x2dc0e  1      OPC=nop             
  nop                            #  24    0x2dc0f  1      OPC=nop             
  nop                            #  25    0x2dc10  1      OPC=nop             
  nop                            #  26    0x2dc11  1      OPC=nop             
  nop                            #  27    0x2dc12  1      OPC=nop             
  nop                            #  28    0x2dc13  1      OPC=nop             
  nop                            #  29    0x2dc14  1      OPC=nop             
  nop                            #  30    0x2dc15  1      OPC=nop             
  nop                            #  31    0x2dc16  1      OPC=nop             
  nop                            #  32    0x2dc17  1      OPC=nop             
  nop                            #  33    0x2dc18  1      OPC=nop             
  nop                            #  34    0x2dc19  1      OPC=nop             
  nop                            #  35    0x2dc1a  1      OPC=nop             
  nop                            #  36    0x2dc1b  1      OPC=nop             
  nop                            #  37    0x2dc1c  1      OPC=nop             
  nop                            #  38    0x2dc1d  1      OPC=nop             
  nop                            #  39    0x2dc1e  1      OPC=nop             
  nop                            #  40    0x2dc1f  1      OPC=nop             
.L_2dc20:                        #        0x2dc20  0      OPC=<label>         
  popq %r11                      #  41    0x2dc20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  42    0x2dc22  7      OPC=andl_r32_imm32  
  nop                            #  43    0x2dc29  1      OPC=nop             
  nop                            #  44    0x2dc2a  1      OPC=nop             
  nop                            #  45    0x2dc2b  1      OPC=nop             
  nop                            #  46    0x2dc2c  1      OPC=nop             
  addq %r15, %r11                #  47    0x2dc2d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  48    0x2dc30  3      OPC=jmpq_r64        
  nop                            #  49    0x2dc33  1      OPC=nop             
  nop                            #  50    0x2dc34  1      OPC=nop             
  nop                            #  51    0x2dc35  1      OPC=nop             
  nop                            #  52    0x2dc36  1      OPC=nop             
  nop                            #  53    0x2dc37  1      OPC=nop             
  nop                            #  54    0x2dc38  1      OPC=nop             
  nop                            #  55    0x2dc39  1      OPC=nop             
  nop                            #  56    0x2dc3a  1      OPC=nop             
  nop                            #  57    0x2dc3b  1      OPC=nop             
  nop                            #  58    0x2dc3c  1      OPC=nop             
  nop                            #  59    0x2dc3d  1      OPC=nop             
  nop                            #  60    0x2dc3e  1      OPC=nop             
  nop                            #  61    0x2dc3f  1      OPC=nop             
  nop                            #  62    0x2dc40  1      OPC=nop             
  nop                            #  63    0x2dc41  1      OPC=nop             
  nop                            #  64    0x2dc42  1      OPC=nop             
  nop                            #  65    0x2dc43  1      OPC=nop             
  nop                            #  66    0x2dc44  1      OPC=nop             
  nop                            #  67    0x2dc45  1      OPC=nop             
  nop                            #  68    0x2dc46  1      OPC=nop             
.L_2dc40:                        #        0x2dc47  0      OPC=<label>         
  movl %edi, %edi                #  69    0x2dc47  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rdi,1)    #  70    0x2dc49  5      OPC=movl_m32_r32    
  xorb %al, %al                  #  71    0x2dc4e  2      OPC=xorb_r8_r8      
  popq %r11                      #  72    0x2dc50  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  73    0x2dc52  7      OPC=andl_r32_imm32  
  nop                            #  74    0x2dc59  1      OPC=nop             
  nop                            #  75    0x2dc5a  1      OPC=nop             
  nop                            #  76    0x2dc5b  1      OPC=nop             
  nop                            #  77    0x2dc5c  1      OPC=nop             
  addq %r15, %r11                #  78    0x2dc5d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x2dc60  3      OPC=jmpq_r64        
  nop                            #  80    0x2dc63  1      OPC=nop             
  nop                            #  81    0x2dc64  1      OPC=nop             
  nop                            #  82    0x2dc65  1      OPC=nop             
  nop                            #  83    0x2dc66  1      OPC=nop             
  nop                            #  84    0x2dc67  1      OPC=nop             
  nop                            #  85    0x2dc68  1      OPC=nop             
  nop                            #  86    0x2dc69  1      OPC=nop             
  nop                            #  87    0x2dc6a  1      OPC=nop             
  nop                            #  88    0x2dc6b  1      OPC=nop             
  nop                            #  89    0x2dc6c  1      OPC=nop             
  nop                            #  90    0x2dc6d  1      OPC=nop             
                                                                              
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize


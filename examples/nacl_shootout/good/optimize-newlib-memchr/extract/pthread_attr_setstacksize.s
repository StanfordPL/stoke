  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x6e300
#! rip-offset  0x2e300
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_attr_setstacksize:      #        0x2e300  0      OPC=<label>         
  movl %edi, %edi                #  1     0x2e300  2      OPC=movl_r32_r32    
  movl $0x16, %eax               #  2     0x2e302  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi               #  3     0x2e307  3      OPC=testq_r64_r64   
  je .L_2e340                    #  4     0x2e30a  2      OPC=je_label        
  cmpl $0x400, %esi              #  5     0x2e30c  6      OPC=cmpl_r32_imm32  
  ja .L_2e360                    #  6     0x2e312  2      OPC=ja_label        
  movl %edi, %edi                #  7     0x2e314  2      OPC=movl_r32_r32    
  movl $0x400, 0x4(%r15,%rdi,1)  #  8     0x2e316  9      OPC=movl_m32_imm32  
  nop                            #  9     0x2e31f  1      OPC=nop             
  xorl %eax, %eax                #  10    0x2e320  2      OPC=xorl_r32_r32    
  nop                            #  11    0x2e322  1      OPC=nop             
  nop                            #  12    0x2e323  1      OPC=nop             
  nop                            #  13    0x2e324  1      OPC=nop             
  nop                            #  14    0x2e325  1      OPC=nop             
  nop                            #  15    0x2e326  1      OPC=nop             
  nop                            #  16    0x2e327  1      OPC=nop             
  nop                            #  17    0x2e328  1      OPC=nop             
  nop                            #  18    0x2e329  1      OPC=nop             
  nop                            #  19    0x2e32a  1      OPC=nop             
  nop                            #  20    0x2e32b  1      OPC=nop             
  nop                            #  21    0x2e32c  1      OPC=nop             
  nop                            #  22    0x2e32d  1      OPC=nop             
  nop                            #  23    0x2e32e  1      OPC=nop             
  nop                            #  24    0x2e32f  1      OPC=nop             
  nop                            #  25    0x2e330  1      OPC=nop             
  nop                            #  26    0x2e331  1      OPC=nop             
  nop                            #  27    0x2e332  1      OPC=nop             
  nop                            #  28    0x2e333  1      OPC=nop             
  nop                            #  29    0x2e334  1      OPC=nop             
  nop                            #  30    0x2e335  1      OPC=nop             
  nop                            #  31    0x2e336  1      OPC=nop             
  nop                            #  32    0x2e337  1      OPC=nop             
  nop                            #  33    0x2e338  1      OPC=nop             
  nop                            #  34    0x2e339  1      OPC=nop             
  nop                            #  35    0x2e33a  1      OPC=nop             
  nop                            #  36    0x2e33b  1      OPC=nop             
  nop                            #  37    0x2e33c  1      OPC=nop             
  nop                            #  38    0x2e33d  1      OPC=nop             
  nop                            #  39    0x2e33e  1      OPC=nop             
  nop                            #  40    0x2e33f  1      OPC=nop             
.L_2e340:                        #        0x2e340  0      OPC=<label>         
  popq %r11                      #  41    0x2e340  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  42    0x2e342  7      OPC=andl_r32_imm32  
  nop                            #  43    0x2e349  1      OPC=nop             
  nop                            #  44    0x2e34a  1      OPC=nop             
  nop                            #  45    0x2e34b  1      OPC=nop             
  nop                            #  46    0x2e34c  1      OPC=nop             
  addq %r15, %r11                #  47    0x2e34d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  48    0x2e350  3      OPC=jmpq_r64        
  nop                            #  49    0x2e353  1      OPC=nop             
  nop                            #  50    0x2e354  1      OPC=nop             
  nop                            #  51    0x2e355  1      OPC=nop             
  nop                            #  52    0x2e356  1      OPC=nop             
  nop                            #  53    0x2e357  1      OPC=nop             
  nop                            #  54    0x2e358  1      OPC=nop             
  nop                            #  55    0x2e359  1      OPC=nop             
  nop                            #  56    0x2e35a  1      OPC=nop             
  nop                            #  57    0x2e35b  1      OPC=nop             
  nop                            #  58    0x2e35c  1      OPC=nop             
  nop                            #  59    0x2e35d  1      OPC=nop             
  nop                            #  60    0x2e35e  1      OPC=nop             
  nop                            #  61    0x2e35f  1      OPC=nop             
  nop                            #  62    0x2e360  1      OPC=nop             
  nop                            #  63    0x2e361  1      OPC=nop             
  nop                            #  64    0x2e362  1      OPC=nop             
  nop                            #  65    0x2e363  1      OPC=nop             
  nop                            #  66    0x2e364  1      OPC=nop             
  nop                            #  67    0x2e365  1      OPC=nop             
  nop                            #  68    0x2e366  1      OPC=nop             
.L_2e360:                        #        0x2e367  0      OPC=<label>         
  movl %edi, %edi                #  69    0x2e367  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rdi,1)    #  70    0x2e369  5      OPC=movl_m32_r32    
  xorb %al, %al                  #  71    0x2e36e  2      OPC=xorb_r8_r8      
  popq %r11                      #  72    0x2e370  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  73    0x2e372  7      OPC=andl_r32_imm32  
  nop                            #  74    0x2e379  1      OPC=nop             
  nop                            #  75    0x2e37a  1      OPC=nop             
  nop                            #  76    0x2e37b  1      OPC=nop             
  nop                            #  77    0x2e37c  1      OPC=nop             
  addq %r15, %r11                #  78    0x2e37d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x2e380  3      OPC=jmpq_r64        
  nop                            #  80    0x2e383  1      OPC=nop             
  nop                            #  81    0x2e384  1      OPC=nop             
  nop                            #  82    0x2e385  1      OPC=nop             
  nop                            #  83    0x2e386  1      OPC=nop             
  nop                            #  84    0x2e387  1      OPC=nop             
  nop                            #  85    0x2e388  1      OPC=nop             
  nop                            #  86    0x2e389  1      OPC=nop             
  nop                            #  87    0x2e38a  1      OPC=nop             
  nop                            #  88    0x2e38b  1      OPC=nop             
  nop                            #  89    0x2e38c  1      OPC=nop             
  nop                            #  90    0x2e38d  1      OPC=nop             
                                                                              
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize


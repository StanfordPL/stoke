  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x6d8e0
#! rip-offset  0x2d8e0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.pthread_attr_setstacksize:      #        0x2d8e0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x2d8e0  2      OPC=movl_r32_r32    
  movl $0x16, %eax               #  2     0x2d8e2  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi               #  3     0x2d8e7  3      OPC=testq_r64_r64   
  je .L_2d920                    #  4     0x2d8ea  2      OPC=je_label        
  cmpl $0x400, %esi              #  5     0x2d8ec  6      OPC=cmpl_r32_imm32  
  ja .L_2d940                    #  6     0x2d8f2  2      OPC=ja_label        
  movl %edi, %edi                #  7     0x2d8f4  2      OPC=movl_r32_r32    
  movl $0x400, 0x4(%r15,%rdi,1)  #  8     0x2d8f6  9      OPC=movl_m32_imm32  
  nop                            #  9     0x2d8ff  1      OPC=nop             
  xorl %eax, %eax                #  10    0x2d900  2      OPC=xorl_r32_r32    
  nop                            #  11    0x2d902  1      OPC=nop             
  nop                            #  12    0x2d903  1      OPC=nop             
  nop                            #  13    0x2d904  1      OPC=nop             
  nop                            #  14    0x2d905  1      OPC=nop             
  nop                            #  15    0x2d906  1      OPC=nop             
  nop                            #  16    0x2d907  1      OPC=nop             
  nop                            #  17    0x2d908  1      OPC=nop             
  nop                            #  18    0x2d909  1      OPC=nop             
  nop                            #  19    0x2d90a  1      OPC=nop             
  nop                            #  20    0x2d90b  1      OPC=nop             
  nop                            #  21    0x2d90c  1      OPC=nop             
  nop                            #  22    0x2d90d  1      OPC=nop             
  nop                            #  23    0x2d90e  1      OPC=nop             
  nop                            #  24    0x2d90f  1      OPC=nop             
  nop                            #  25    0x2d910  1      OPC=nop             
  nop                            #  26    0x2d911  1      OPC=nop             
  nop                            #  27    0x2d912  1      OPC=nop             
  nop                            #  28    0x2d913  1      OPC=nop             
  nop                            #  29    0x2d914  1      OPC=nop             
  nop                            #  30    0x2d915  1      OPC=nop             
  nop                            #  31    0x2d916  1      OPC=nop             
  nop                            #  32    0x2d917  1      OPC=nop             
  nop                            #  33    0x2d918  1      OPC=nop             
  nop                            #  34    0x2d919  1      OPC=nop             
  nop                            #  35    0x2d91a  1      OPC=nop             
  nop                            #  36    0x2d91b  1      OPC=nop             
  nop                            #  37    0x2d91c  1      OPC=nop             
  nop                            #  38    0x2d91d  1      OPC=nop             
  nop                            #  39    0x2d91e  1      OPC=nop             
  nop                            #  40    0x2d91f  1      OPC=nop             
.L_2d920:                        #        0x2d920  0      OPC=<label>         
  popq %r11                      #  41    0x2d920  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  42    0x2d922  7      OPC=andl_r32_imm32  
  nop                            #  43    0x2d929  1      OPC=nop             
  nop                            #  44    0x2d92a  1      OPC=nop             
  nop                            #  45    0x2d92b  1      OPC=nop             
  nop                            #  46    0x2d92c  1      OPC=nop             
  addq %r15, %r11                #  47    0x2d92d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  48    0x2d930  3      OPC=jmpq_r64        
  nop                            #  49    0x2d933  1      OPC=nop             
  nop                            #  50    0x2d934  1      OPC=nop             
  nop                            #  51    0x2d935  1      OPC=nop             
  nop                            #  52    0x2d936  1      OPC=nop             
  nop                            #  53    0x2d937  1      OPC=nop             
  nop                            #  54    0x2d938  1      OPC=nop             
  nop                            #  55    0x2d939  1      OPC=nop             
  nop                            #  56    0x2d93a  1      OPC=nop             
  nop                            #  57    0x2d93b  1      OPC=nop             
  nop                            #  58    0x2d93c  1      OPC=nop             
  nop                            #  59    0x2d93d  1      OPC=nop             
  nop                            #  60    0x2d93e  1      OPC=nop             
  nop                            #  61    0x2d93f  1      OPC=nop             
  nop                            #  62    0x2d940  1      OPC=nop             
  nop                            #  63    0x2d941  1      OPC=nop             
  nop                            #  64    0x2d942  1      OPC=nop             
  nop                            #  65    0x2d943  1      OPC=nop             
  nop                            #  66    0x2d944  1      OPC=nop             
  nop                            #  67    0x2d945  1      OPC=nop             
  nop                            #  68    0x2d946  1      OPC=nop             
.L_2d940:                        #        0x2d947  0      OPC=<label>         
  movl %edi, %edi                #  69    0x2d947  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rdi,1)    #  70    0x2d949  5      OPC=movl_m32_r32    
  xorb %al, %al                  #  71    0x2d94e  2      OPC=xorb_r8_r8      
  popq %r11                      #  72    0x2d950  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  73    0x2d952  7      OPC=andl_r32_imm32  
  nop                            #  74    0x2d959  1      OPC=nop             
  nop                            #  75    0x2d95a  1      OPC=nop             
  nop                            #  76    0x2d95b  1      OPC=nop             
  nop                            #  77    0x2d95c  1      OPC=nop             
  addq %r15, %r11                #  78    0x2d95d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  79    0x2d960  3      OPC=jmpq_r64        
  nop                            #  80    0x2d963  1      OPC=nop             
  nop                            #  81    0x2d964  1      OPC=nop             
  nop                            #  82    0x2d965  1      OPC=nop             
  nop                            #  83    0x2d966  1      OPC=nop             
  nop                            #  84    0x2d967  1      OPC=nop             
  nop                            #  85    0x2d968  1      OPC=nop             
  nop                            #  86    0x2d969  1      OPC=nop             
  nop                            #  87    0x2d96a  1      OPC=nop             
  nop                            #  88    0x2d96b  1      OPC=nop             
  nop                            #  89    0x2d96c  1      OPC=nop             
  nop                            #  90    0x2d96d  1      OPC=nop             
                                                                              
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize


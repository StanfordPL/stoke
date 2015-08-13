  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x6d040
#! rip-offset  0x2d040
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_destroy:        #        0x2d040  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2d040  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2d042  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x2d044  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x2d048  2      OPC=testl_r32_r32   
  jne .L_2d060                 #  5     0x2d04a  2      OPC=jne_label       
  movl %edi, %edi              #  6     0x2d04c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x2d04e  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  8     0x2d053  2      OPC=testl_r32_r32   
  je .L_2d080                  #  9     0x2d055  2      OPC=je_label        
  nop                          #  10    0x2d057  1      OPC=nop             
  nop                          #  11    0x2d058  1      OPC=nop             
  nop                          #  12    0x2d059  1      OPC=nop             
  nop                          #  13    0x2d05a  1      OPC=nop             
  nop                          #  14    0x2d05b  1      OPC=nop             
  nop                          #  15    0x2d05c  1      OPC=nop             
  nop                          #  16    0x2d05d  1      OPC=nop             
  nop                          #  17    0x2d05e  1      OPC=nop             
  nop                          #  18    0x2d05f  1      OPC=nop             
.L_2d060:                      #        0x2d060  0      OPC=<label>         
  movl $0x10, %eax             #  19    0x2d060  5      OPC=movl_r32_imm32  
  popq %r11                    #  20    0x2d065  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2d067  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2d06e  1      OPC=nop             
  nop                          #  23    0x2d06f  1      OPC=nop             
  nop                          #  24    0x2d070  1      OPC=nop             
  nop                          #  25    0x2d071  1      OPC=nop             
  addq %r15, %r11              #  26    0x2d072  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2d075  3      OPC=jmpq_r64        
  nop                          #  28    0x2d078  1      OPC=nop             
  nop                          #  29    0x2d079  1      OPC=nop             
  nop                          #  30    0x2d07a  1      OPC=nop             
  nop                          #  31    0x2d07b  1      OPC=nop             
  nop                          #  32    0x2d07c  1      OPC=nop             
  nop                          #  33    0x2d07d  1      OPC=nop             
  nop                          #  34    0x2d07e  1      OPC=nop             
  nop                          #  35    0x2d07f  1      OPC=nop             
  nop                          #  36    0x2d080  1      OPC=nop             
  nop                          #  37    0x2d081  1      OPC=nop             
  nop                          #  38    0x2d082  1      OPC=nop             
  nop                          #  39    0x2d083  1      OPC=nop             
  nop                          #  40    0x2d084  1      OPC=nop             
  nop                          #  41    0x2d085  1      OPC=nop             
  nop                          #  42    0x2d086  1      OPC=nop             
.L_2d080:                      #        0x2d087  0      OPC=<label>         
  movl %edi, %edi              #  43    0x2d087  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  44    0x2d089  9      OPC=movl_m32_imm32  
  movl %edi, %edi              #  45    0x2d092  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  46    0x2d094  9      OPC=movl_m32_imm32  
  popq %r11                    #  47    0x2d09d  2      OPC=popq_r64_1      
  nop                          #  48    0x2d09f  1      OPC=nop             
  nop                          #  49    0x2d0a0  1      OPC=nop             
  nop                          #  50    0x2d0a1  1      OPC=nop             
  nop                          #  51    0x2d0a2  1      OPC=nop             
  nop                          #  52    0x2d0a3  1      OPC=nop             
  nop                          #  53    0x2d0a4  1      OPC=nop             
  nop                          #  54    0x2d0a5  1      OPC=nop             
  nop                          #  55    0x2d0a6  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  56    0x2d0a7  7      OPC=andl_r32_imm32  
  nop                          #  57    0x2d0ae  1      OPC=nop             
  nop                          #  58    0x2d0af  1      OPC=nop             
  nop                          #  59    0x2d0b0  1      OPC=nop             
  nop                          #  60    0x2d0b1  1      OPC=nop             
  addq %r15, %r11              #  61    0x2d0b2  3      OPC=addq_r64_r64    
  jmpq %r11                    #  62    0x2d0b5  3      OPC=jmpq_r64        
  nop                          #  63    0x2d0b8  1      OPC=nop             
  nop                          #  64    0x2d0b9  1      OPC=nop             
  nop                          #  65    0x2d0ba  1      OPC=nop             
  nop                          #  66    0x2d0bb  1      OPC=nop             
  nop                          #  67    0x2d0bc  1      OPC=nop             
  nop                          #  68    0x2d0bd  1      OPC=nop             
  nop                          #  69    0x2d0be  1      OPC=nop             
  nop                          #  70    0x2d0bf  1      OPC=nop             
  nop                          #  71    0x2d0c0  1      OPC=nop             
  nop                          #  72    0x2d0c1  1      OPC=nop             
  nop                          #  73    0x2d0c2  1      OPC=nop             
  nop                          #  74    0x2d0c3  1      OPC=nop             
  nop                          #  75    0x2d0c4  1      OPC=nop             
  nop                          #  76    0x2d0c5  1      OPC=nop             
  nop                          #  77    0x2d0c6  1      OPC=nop             
  nop                          #  78    0x2d0c7  1      OPC=nop             
  nop                          #  79    0x2d0c8  1      OPC=nop             
  nop                          #  80    0x2d0c9  1      OPC=nop             
  nop                          #  81    0x2d0ca  1      OPC=nop             
  nop                          #  82    0x2d0cb  1      OPC=nop             
  nop                          #  83    0x2d0cc  1      OPC=nop             
  nop                          #  84    0x2d0cd  1      OPC=nop             
                                                                            
.size pthread_mutex_destroy, .-pthread_mutex_destroy


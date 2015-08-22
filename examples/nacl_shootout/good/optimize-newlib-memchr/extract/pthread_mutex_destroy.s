  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x6da60
#! rip-offset  0x2da60
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_destroy:        #        0x2da60  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2da60  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2da62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x2da64  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x2da68  2      OPC=testl_r32_r32   
  jne .L_2da80                 #  5     0x2da6a  2      OPC=jne_label       
  movl %edi, %edi              #  6     0x2da6c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x2da6e  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  8     0x2da73  2      OPC=testl_r32_r32   
  je .L_2daa0                  #  9     0x2da75  2      OPC=je_label        
  nop                          #  10    0x2da77  1      OPC=nop             
  nop                          #  11    0x2da78  1      OPC=nop             
  nop                          #  12    0x2da79  1      OPC=nop             
  nop                          #  13    0x2da7a  1      OPC=nop             
  nop                          #  14    0x2da7b  1      OPC=nop             
  nop                          #  15    0x2da7c  1      OPC=nop             
  nop                          #  16    0x2da7d  1      OPC=nop             
  nop                          #  17    0x2da7e  1      OPC=nop             
  nop                          #  18    0x2da7f  1      OPC=nop             
.L_2da80:                      #        0x2da80  0      OPC=<label>         
  movl $0x10, %eax             #  19    0x2da80  5      OPC=movl_r32_imm32  
  popq %r11                    #  20    0x2da85  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2da87  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2da8e  1      OPC=nop             
  nop                          #  23    0x2da8f  1      OPC=nop             
  nop                          #  24    0x2da90  1      OPC=nop             
  nop                          #  25    0x2da91  1      OPC=nop             
  addq %r15, %r11              #  26    0x2da92  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2da95  3      OPC=jmpq_r64        
  nop                          #  28    0x2da98  1      OPC=nop             
  nop                          #  29    0x2da99  1      OPC=nop             
  nop                          #  30    0x2da9a  1      OPC=nop             
  nop                          #  31    0x2da9b  1      OPC=nop             
  nop                          #  32    0x2da9c  1      OPC=nop             
  nop                          #  33    0x2da9d  1      OPC=nop             
  nop                          #  34    0x2da9e  1      OPC=nop             
  nop                          #  35    0x2da9f  1      OPC=nop             
  nop                          #  36    0x2daa0  1      OPC=nop             
  nop                          #  37    0x2daa1  1      OPC=nop             
  nop                          #  38    0x2daa2  1      OPC=nop             
  nop                          #  39    0x2daa3  1      OPC=nop             
  nop                          #  40    0x2daa4  1      OPC=nop             
  nop                          #  41    0x2daa5  1      OPC=nop             
  nop                          #  42    0x2daa6  1      OPC=nop             
.L_2daa0:                      #        0x2daa7  0      OPC=<label>         
  movl %edi, %edi              #  43    0x2daa7  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  44    0x2daa9  9      OPC=movl_m32_imm32  
  movl %edi, %edi              #  45    0x2dab2  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  46    0x2dab4  9      OPC=movl_m32_imm32  
  popq %r11                    #  47    0x2dabd  2      OPC=popq_r64_1      
  nop                          #  48    0x2dabf  1      OPC=nop             
  nop                          #  49    0x2dac0  1      OPC=nop             
  nop                          #  50    0x2dac1  1      OPC=nop             
  nop                          #  51    0x2dac2  1      OPC=nop             
  nop                          #  52    0x2dac3  1      OPC=nop             
  nop                          #  53    0x2dac4  1      OPC=nop             
  nop                          #  54    0x2dac5  1      OPC=nop             
  nop                          #  55    0x2dac6  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  56    0x2dac7  7      OPC=andl_r32_imm32  
  nop                          #  57    0x2dace  1      OPC=nop             
  nop                          #  58    0x2dacf  1      OPC=nop             
  nop                          #  59    0x2dad0  1      OPC=nop             
  nop                          #  60    0x2dad1  1      OPC=nop             
  addq %r15, %r11              #  61    0x2dad2  3      OPC=addq_r64_r64    
  jmpq %r11                    #  62    0x2dad5  3      OPC=jmpq_r64        
  nop                          #  63    0x2dad8  1      OPC=nop             
  nop                          #  64    0x2dad9  1      OPC=nop             
  nop                          #  65    0x2dada  1      OPC=nop             
  nop                          #  66    0x2dadb  1      OPC=nop             
  nop                          #  67    0x2dadc  1      OPC=nop             
  nop                          #  68    0x2dadd  1      OPC=nop             
  nop                          #  69    0x2dade  1      OPC=nop             
  nop                          #  70    0x2dadf  1      OPC=nop             
  nop                          #  71    0x2dae0  1      OPC=nop             
  nop                          #  72    0x2dae1  1      OPC=nop             
  nop                          #  73    0x2dae2  1      OPC=nop             
  nop                          #  74    0x2dae3  1      OPC=nop             
  nop                          #  75    0x2dae4  1      OPC=nop             
  nop                          #  76    0x2dae5  1      OPC=nop             
  nop                          #  77    0x2dae6  1      OPC=nop             
  nop                          #  78    0x2dae7  1      OPC=nop             
  nop                          #  79    0x2dae8  1      OPC=nop             
  nop                          #  80    0x2dae9  1      OPC=nop             
  nop                          #  81    0x2daea  1      OPC=nop             
  nop                          #  82    0x2daeb  1      OPC=nop             
  nop                          #  83    0x2daec  1      OPC=nop             
  nop                          #  84    0x2daed  1      OPC=nop             
                                                                            
.size pthread_mutex_destroy, .-pthread_mutex_destroy


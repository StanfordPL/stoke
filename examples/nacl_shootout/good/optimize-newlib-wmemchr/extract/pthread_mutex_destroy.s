  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x6d340
#! rip-offset  0x2d340
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_destroy:        #        0x2d340  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2d340  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2d342  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0x2d344  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  4     0x2d348  2      OPC=testl_r32_r32   
  jne .L_2d360                 #  5     0x2d34a  2      OPC=jne_label       
  movl %edi, %edi              #  6     0x2d34c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x2d34e  5      OPC=movl_r32_m32    
  testl %eax, %eax             #  8     0x2d353  2      OPC=testl_r32_r32   
  je .L_2d380                  #  9     0x2d355  2      OPC=je_label        
  nop                          #  10    0x2d357  1      OPC=nop             
  nop                          #  11    0x2d358  1      OPC=nop             
  nop                          #  12    0x2d359  1      OPC=nop             
  nop                          #  13    0x2d35a  1      OPC=nop             
  nop                          #  14    0x2d35b  1      OPC=nop             
  nop                          #  15    0x2d35c  1      OPC=nop             
  nop                          #  16    0x2d35d  1      OPC=nop             
  nop                          #  17    0x2d35e  1      OPC=nop             
  nop                          #  18    0x2d35f  1      OPC=nop             
.L_2d360:                      #        0x2d360  0      OPC=<label>         
  movl $0x10, %eax             #  19    0x2d360  5      OPC=movl_r32_imm32  
  popq %r11                    #  20    0x2d365  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2d367  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2d36e  1      OPC=nop             
  nop                          #  23    0x2d36f  1      OPC=nop             
  nop                          #  24    0x2d370  1      OPC=nop             
  nop                          #  25    0x2d371  1      OPC=nop             
  addq %r15, %r11              #  26    0x2d372  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2d375  3      OPC=jmpq_r64        
  nop                          #  28    0x2d378  1      OPC=nop             
  nop                          #  29    0x2d379  1      OPC=nop             
  nop                          #  30    0x2d37a  1      OPC=nop             
  nop                          #  31    0x2d37b  1      OPC=nop             
  nop                          #  32    0x2d37c  1      OPC=nop             
  nop                          #  33    0x2d37d  1      OPC=nop             
  nop                          #  34    0x2d37e  1      OPC=nop             
  nop                          #  35    0x2d37f  1      OPC=nop             
  nop                          #  36    0x2d380  1      OPC=nop             
  nop                          #  37    0x2d381  1      OPC=nop             
  nop                          #  38    0x2d382  1      OPC=nop             
  nop                          #  39    0x2d383  1      OPC=nop             
  nop                          #  40    0x2d384  1      OPC=nop             
  nop                          #  41    0x2d385  1      OPC=nop             
  nop                          #  42    0x2d386  1      OPC=nop             
.L_2d380:                      #        0x2d387  0      OPC=<label>         
  movl %edi, %edi              #  43    0x2d387  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  44    0x2d389  9      OPC=movl_m32_imm32  
  movl %edi, %edi              #  45    0x2d392  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  46    0x2d394  9      OPC=movl_m32_imm32  
  popq %r11                    #  47    0x2d39d  2      OPC=popq_r64_1      
  nop                          #  48    0x2d39f  1      OPC=nop             
  nop                          #  49    0x2d3a0  1      OPC=nop             
  nop                          #  50    0x2d3a1  1      OPC=nop             
  nop                          #  51    0x2d3a2  1      OPC=nop             
  nop                          #  52    0x2d3a3  1      OPC=nop             
  nop                          #  53    0x2d3a4  1      OPC=nop             
  nop                          #  54    0x2d3a5  1      OPC=nop             
  nop                          #  55    0x2d3a6  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  56    0x2d3a7  7      OPC=andl_r32_imm32  
  nop                          #  57    0x2d3ae  1      OPC=nop             
  nop                          #  58    0x2d3af  1      OPC=nop             
  nop                          #  59    0x2d3b0  1      OPC=nop             
  nop                          #  60    0x2d3b1  1      OPC=nop             
  addq %r15, %r11              #  61    0x2d3b2  3      OPC=addq_r64_r64    
  jmpq %r11                    #  62    0x2d3b5  3      OPC=jmpq_r64        
  nop                          #  63    0x2d3b8  1      OPC=nop             
  nop                          #  64    0x2d3b9  1      OPC=nop             
  nop                          #  65    0x2d3ba  1      OPC=nop             
  nop                          #  66    0x2d3bb  1      OPC=nop             
  nop                          #  67    0x2d3bc  1      OPC=nop             
  nop                          #  68    0x2d3bd  1      OPC=nop             
  nop                          #  69    0x2d3be  1      OPC=nop             
  nop                          #  70    0x2d3bf  1      OPC=nop             
  nop                          #  71    0x2d3c0  1      OPC=nop             
  nop                          #  72    0x2d3c1  1      OPC=nop             
  nop                          #  73    0x2d3c2  1      OPC=nop             
  nop                          #  74    0x2d3c3  1      OPC=nop             
  nop                          #  75    0x2d3c4  1      OPC=nop             
  nop                          #  76    0x2d3c5  1      OPC=nop             
  nop                          #  77    0x2d3c6  1      OPC=nop             
  nop                          #  78    0x2d3c7  1      OPC=nop             
  nop                          #  79    0x2d3c8  1      OPC=nop             
  nop                          #  80    0x2d3c9  1      OPC=nop             
  nop                          #  81    0x2d3ca  1      OPC=nop             
  nop                          #  82    0x2d3cb  1      OPC=nop             
  nop                          #  83    0x2d3cc  1      OPC=nop             
  nop                          #  84    0x2d3cd  1      OPC=nop             
                                                                            
.size pthread_mutex_destroy, .-pthread_mutex_destroy


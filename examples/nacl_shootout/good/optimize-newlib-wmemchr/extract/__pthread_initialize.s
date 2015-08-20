  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x6f980
#! rip-offset  0x2f980
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__pthread_initialize:                 #        0x2f980  0      OPC=<label>         
  pushq %rbx                           #  1     0x2f980  1      OPC=pushq_r64_1     
  movl $0x3c, %edi                     #  2     0x2f981  5      OPC=movl_r32_imm32  
  nop                                  #  3     0x2f986  1      OPC=nop             
  nop                                  #  4     0x2f987  1      OPC=nop             
  nop                                  #  5     0x2f988  1      OPC=nop             
  nop                                  #  6     0x2f989  1      OPC=nop             
  nop                                  #  7     0x2f98a  1      OPC=nop             
  nop                                  #  8     0x2f98b  1      OPC=nop             
  nop                                  #  9     0x2f98c  1      OPC=nop             
  nop                                  #  10    0x2f98d  1      OPC=nop             
  nop                                  #  11    0x2f98e  1      OPC=nop             
  nop                                  #  12    0x2f98f  1      OPC=nop             
  nop                                  #  13    0x2f990  1      OPC=nop             
  nop                                  #  14    0x2f991  1      OPC=nop             
  nop                                  #  15    0x2f992  1      OPC=nop             
  nop                                  #  16    0x2f993  1      OPC=nop             
  nop                                  #  17    0x2f994  1      OPC=nop             
  nop                                  #  18    0x2f995  1      OPC=nop             
  nop                                  #  19    0x2f996  1      OPC=nop             
  nop                                  #  20    0x2f997  1      OPC=nop             
  nop                                  #  21    0x2f998  1      OPC=nop             
  nop                                  #  22    0x2f999  1      OPC=nop             
  nop                                  #  23    0x2f99a  1      OPC=nop             
  callq .__pthread_initialize_minimal  #  24    0x2f99b  5      OPC=callq_label     
  nop                                  #  25    0x2f9a0  1      OPC=nop             
  nop                                  #  26    0x2f9a1  1      OPC=nop             
  nop                                  #  27    0x2f9a2  1      OPC=nop             
  nop                                  #  28    0x2f9a3  1      OPC=nop             
  nop                                  #  29    0x2f9a4  1      OPC=nop             
  nop                                  #  30    0x2f9a5  1      OPC=nop             
  nop                                  #  31    0x2f9a6  1      OPC=nop             
  nop                                  #  32    0x2f9a7  1      OPC=nop             
  nop                                  #  33    0x2f9a8  1      OPC=nop             
  nop                                  #  34    0x2f9a9  1      OPC=nop             
  nop                                  #  35    0x2f9aa  1      OPC=nop             
  nop                                  #  36    0x2f9ab  1      OPC=nop             
  nop                                  #  37    0x2f9ac  1      OPC=nop             
  nop                                  #  38    0x2f9ad  1      OPC=nop             
  nop                                  #  39    0x2f9ae  1      OPC=nop             
  nop                                  #  40    0x2f9af  1      OPC=nop             
  nop                                  #  41    0x2f9b0  1      OPC=nop             
  nop                                  #  42    0x2f9b1  1      OPC=nop             
  nop                                  #  43    0x2f9b2  1      OPC=nop             
  nop                                  #  44    0x2f9b3  1      OPC=nop             
  nop                                  #  45    0x2f9b4  1      OPC=nop             
  nop                                  #  46    0x2f9b5  1      OPC=nop             
  nop                                  #  47    0x2f9b6  1      OPC=nop             
  nop                                  #  48    0x2f9b7  1      OPC=nop             
  nop                                  #  49    0x2f9b8  1      OPC=nop             
  nop                                  #  50    0x2f9b9  1      OPC=nop             
  nop                                  #  51    0x2f9ba  1      OPC=nop             
  callq .__nacl_read_tp                #  52    0x2f9bb  5      OPC=callq_label     
  movl %eax, %edi                      #  53    0x2f9c0  2      OPC=movl_r32_r32    
  leal 0x28(%rdi), %ebx                #  54    0x2f9c2  3      OPC=leal_r32_m16    
  movl %ebx, %esi                      #  55    0x2f9c5  2      OPC=movl_r32_r32    
  nop                                  #  56    0x2f9c7  1      OPC=nop             
  nop                                  #  57    0x2f9c8  1      OPC=nop             
  nop                                  #  58    0x2f9c9  1      OPC=nop             
  nop                                  #  59    0x2f9ca  1      OPC=nop             
  nop                                  #  60    0x2f9cb  1      OPC=nop             
  nop                                  #  61    0x2f9cc  1      OPC=nop             
  nop                                  #  62    0x2f9cd  1      OPC=nop             
  nop                                  #  63    0x2f9ce  1      OPC=nop             
  nop                                  #  64    0x2f9cf  1      OPC=nop             
  nop                                  #  65    0x2f9d0  1      OPC=nop             
  nop                                  #  66    0x2f9d1  1      OPC=nop             
  nop                                  #  67    0x2f9d2  1      OPC=nop             
  nop                                  #  68    0x2f9d3  1      OPC=nop             
  nop                                  #  69    0x2f9d4  1      OPC=nop             
  nop                                  #  70    0x2f9d5  1      OPC=nop             
  nop                                  #  71    0x2f9d6  1      OPC=nop             
  nop                                  #  72    0x2f9d7  1      OPC=nop             
  nop                                  #  73    0x2f9d8  1      OPC=nop             
  nop                                  #  74    0x2f9d9  1      OPC=nop             
  nop                                  #  75    0x2f9da  1      OPC=nop             
  callq .nc_tdb_init                   #  76    0x2f9db  5      OPC=callq_label     
  movl %ebx, 0x1004980a(%rip)          #  77    0x2f9e0  6      OPC=movl_m32_r32    
  popq %rbx                            #  78    0x2f9e6  1      OPC=popq_r64_1      
  jmpq .__nc_initialize_globals        #  79    0x2f9e7  5      OPC=jmpq_label_1    
  nop                                  #  80    0x2f9ec  1      OPC=nop             
  nop                                  #  81    0x2f9ed  1      OPC=nop             
  nop                                  #  82    0x2f9ee  1      OPC=nop             
  nop                                  #  83    0x2f9ef  1      OPC=nop             
  nop                                  #  84    0x2f9f0  1      OPC=nop             
  nop                                  #  85    0x2f9f1  1      OPC=nop             
  nop                                  #  86    0x2f9f2  1      OPC=nop             
  nop                                  #  87    0x2f9f3  1      OPC=nop             
  nop                                  #  88    0x2f9f4  1      OPC=nop             
  nop                                  #  89    0x2f9f5  1      OPC=nop             
  nop                                  #  90    0x2f9f6  1      OPC=nop             
  nop                                  #  91    0x2f9f7  1      OPC=nop             
  nop                                  #  92    0x2f9f8  1      OPC=nop             
  nop                                  #  93    0x2f9f9  1      OPC=nop             
  nop                                  #  94    0x2f9fa  1      OPC=nop             
  nop                                  #  95    0x2f9fb  1      OPC=nop             
  nop                                  #  96    0x2f9fc  1      OPC=nop             
  nop                                  #  97    0x2f9fd  1      OPC=nop             
  nop                                  #  98    0x2f9fe  1      OPC=nop             
  nop                                  #  99    0x2f9ff  1      OPC=nop             
                                                                                    
.size __pthread_initialize, .-__pthread_initialize


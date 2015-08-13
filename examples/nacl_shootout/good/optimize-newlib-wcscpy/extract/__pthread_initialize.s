  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x6f680
#! rip-offset  0x2f680
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__pthread_initialize:                 #        0x2f680  0      OPC=<label>         
  pushq %rbx                           #  1     0x2f680  1      OPC=pushq_r64_1     
  movl $0x3c, %edi                     #  2     0x2f681  5      OPC=movl_r32_imm32  
  nop                                  #  3     0x2f686  1      OPC=nop             
  nop                                  #  4     0x2f687  1      OPC=nop             
  nop                                  #  5     0x2f688  1      OPC=nop             
  nop                                  #  6     0x2f689  1      OPC=nop             
  nop                                  #  7     0x2f68a  1      OPC=nop             
  nop                                  #  8     0x2f68b  1      OPC=nop             
  nop                                  #  9     0x2f68c  1      OPC=nop             
  nop                                  #  10    0x2f68d  1      OPC=nop             
  nop                                  #  11    0x2f68e  1      OPC=nop             
  nop                                  #  12    0x2f68f  1      OPC=nop             
  nop                                  #  13    0x2f690  1      OPC=nop             
  nop                                  #  14    0x2f691  1      OPC=nop             
  nop                                  #  15    0x2f692  1      OPC=nop             
  nop                                  #  16    0x2f693  1      OPC=nop             
  nop                                  #  17    0x2f694  1      OPC=nop             
  nop                                  #  18    0x2f695  1      OPC=nop             
  nop                                  #  19    0x2f696  1      OPC=nop             
  nop                                  #  20    0x2f697  1      OPC=nop             
  nop                                  #  21    0x2f698  1      OPC=nop             
  nop                                  #  22    0x2f699  1      OPC=nop             
  nop                                  #  23    0x2f69a  1      OPC=nop             
  callq .__pthread_initialize_minimal  #  24    0x2f69b  5      OPC=callq_label     
  nop                                  #  25    0x2f6a0  1      OPC=nop             
  nop                                  #  26    0x2f6a1  1      OPC=nop             
  nop                                  #  27    0x2f6a2  1      OPC=nop             
  nop                                  #  28    0x2f6a3  1      OPC=nop             
  nop                                  #  29    0x2f6a4  1      OPC=nop             
  nop                                  #  30    0x2f6a5  1      OPC=nop             
  nop                                  #  31    0x2f6a6  1      OPC=nop             
  nop                                  #  32    0x2f6a7  1      OPC=nop             
  nop                                  #  33    0x2f6a8  1      OPC=nop             
  nop                                  #  34    0x2f6a9  1      OPC=nop             
  nop                                  #  35    0x2f6aa  1      OPC=nop             
  nop                                  #  36    0x2f6ab  1      OPC=nop             
  nop                                  #  37    0x2f6ac  1      OPC=nop             
  nop                                  #  38    0x2f6ad  1      OPC=nop             
  nop                                  #  39    0x2f6ae  1      OPC=nop             
  nop                                  #  40    0x2f6af  1      OPC=nop             
  nop                                  #  41    0x2f6b0  1      OPC=nop             
  nop                                  #  42    0x2f6b1  1      OPC=nop             
  nop                                  #  43    0x2f6b2  1      OPC=nop             
  nop                                  #  44    0x2f6b3  1      OPC=nop             
  nop                                  #  45    0x2f6b4  1      OPC=nop             
  nop                                  #  46    0x2f6b5  1      OPC=nop             
  nop                                  #  47    0x2f6b6  1      OPC=nop             
  nop                                  #  48    0x2f6b7  1      OPC=nop             
  nop                                  #  49    0x2f6b8  1      OPC=nop             
  nop                                  #  50    0x2f6b9  1      OPC=nop             
  nop                                  #  51    0x2f6ba  1      OPC=nop             
  callq .__nacl_read_tp                #  52    0x2f6bb  5      OPC=callq_label     
  movl %eax, %edi                      #  53    0x2f6c0  2      OPC=movl_r32_r32    
  leal 0x28(%rdi), %ebx                #  54    0x2f6c2  3      OPC=leal_r32_m16    
  movl %ebx, %esi                      #  55    0x2f6c5  2      OPC=movl_r32_r32    
  nop                                  #  56    0x2f6c7  1      OPC=nop             
  nop                                  #  57    0x2f6c8  1      OPC=nop             
  nop                                  #  58    0x2f6c9  1      OPC=nop             
  nop                                  #  59    0x2f6ca  1      OPC=nop             
  nop                                  #  60    0x2f6cb  1      OPC=nop             
  nop                                  #  61    0x2f6cc  1      OPC=nop             
  nop                                  #  62    0x2f6cd  1      OPC=nop             
  nop                                  #  63    0x2f6ce  1      OPC=nop             
  nop                                  #  64    0x2f6cf  1      OPC=nop             
  nop                                  #  65    0x2f6d0  1      OPC=nop             
  nop                                  #  66    0x2f6d1  1      OPC=nop             
  nop                                  #  67    0x2f6d2  1      OPC=nop             
  nop                                  #  68    0x2f6d3  1      OPC=nop             
  nop                                  #  69    0x2f6d4  1      OPC=nop             
  nop                                  #  70    0x2f6d5  1      OPC=nop             
  nop                                  #  71    0x2f6d6  1      OPC=nop             
  nop                                  #  72    0x2f6d7  1      OPC=nop             
  nop                                  #  73    0x2f6d8  1      OPC=nop             
  nop                                  #  74    0x2f6d9  1      OPC=nop             
  nop                                  #  75    0x2f6da  1      OPC=nop             
  callq .nc_tdb_init                   #  76    0x2f6db  5      OPC=callq_label     
  movl %ebx, 0x10049b0a(%rip)          #  77    0x2f6e0  6      OPC=movl_m32_r32    
  popq %rbx                            #  78    0x2f6e6  1      OPC=popq_r64_1      
  jmpq .__nc_initialize_globals        #  79    0x2f6e7  5      OPC=jmpq_label_1    
  nop                                  #  80    0x2f6ec  1      OPC=nop             
  nop                                  #  81    0x2f6ed  1      OPC=nop             
  nop                                  #  82    0x2f6ee  1      OPC=nop             
  nop                                  #  83    0x2f6ef  1      OPC=nop             
  nop                                  #  84    0x2f6f0  1      OPC=nop             
  nop                                  #  85    0x2f6f1  1      OPC=nop             
  nop                                  #  86    0x2f6f2  1      OPC=nop             
  nop                                  #  87    0x2f6f3  1      OPC=nop             
  nop                                  #  88    0x2f6f4  1      OPC=nop             
  nop                                  #  89    0x2f6f5  1      OPC=nop             
  nop                                  #  90    0x2f6f6  1      OPC=nop             
  nop                                  #  91    0x2f6f7  1      OPC=nop             
  nop                                  #  92    0x2f6f8  1      OPC=nop             
  nop                                  #  93    0x2f6f9  1      OPC=nop             
  nop                                  #  94    0x2f6fa  1      OPC=nop             
  nop                                  #  95    0x2f6fb  1      OPC=nop             
  nop                                  #  96    0x2f6fc  1      OPC=nop             
  nop                                  #  97    0x2f6fd  1      OPC=nop             
  nop                                  #  98    0x2f6fe  1      OPC=nop             
  nop                                  #  99    0x2f6ff  1      OPC=nop             
                                                                                    
.size __pthread_initialize, .-__pthread_initialize


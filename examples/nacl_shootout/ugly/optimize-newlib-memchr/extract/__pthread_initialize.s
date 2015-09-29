  .text
  .globl __pthread_initialize
  .type __pthread_initialize, @function

#! file-offset 0x700a0
#! rip-offset  0x300a0
#! capacity    128 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
.__pthread_initialize:                 #        0x300a0  0      OPC=<label>         
  pushq %rbx                           #  1     0x300a0  1      OPC=pushq_r64_1     
  movl $0x3c, %edi                     #  2     0x300a1  5      OPC=movl_r32_imm32  
  nop                                  #  3     0x300a6  1      OPC=nop             
  nop                                  #  4     0x300a7  1      OPC=nop             
  nop                                  #  5     0x300a8  1      OPC=nop             
  nop                                  #  6     0x300a9  1      OPC=nop             
  nop                                  #  7     0x300aa  1      OPC=nop             
  nop                                  #  8     0x300ab  1      OPC=nop             
  nop                                  #  9     0x300ac  1      OPC=nop             
  nop                                  #  10    0x300ad  1      OPC=nop             
  nop                                  #  11    0x300ae  1      OPC=nop             
  nop                                  #  12    0x300af  1      OPC=nop             
  nop                                  #  13    0x300b0  1      OPC=nop             
  nop                                  #  14    0x300b1  1      OPC=nop             
  nop                                  #  15    0x300b2  1      OPC=nop             
  nop                                  #  16    0x300b3  1      OPC=nop             
  nop                                  #  17    0x300b4  1      OPC=nop             
  nop                                  #  18    0x300b5  1      OPC=nop             
  nop                                  #  19    0x300b6  1      OPC=nop             
  nop                                  #  20    0x300b7  1      OPC=nop             
  nop                                  #  21    0x300b8  1      OPC=nop             
  nop                                  #  22    0x300b9  1      OPC=nop             
  nop                                  #  23    0x300ba  1      OPC=nop             
  callq .__pthread_initialize_minimal  #  24    0x300bb  5      OPC=callq_label     
  nop                                  #  25    0x300c0  1      OPC=nop             
  nop                                  #  26    0x300c1  1      OPC=nop             
  nop                                  #  27    0x300c2  1      OPC=nop             
  nop                                  #  28    0x300c3  1      OPC=nop             
  nop                                  #  29    0x300c4  1      OPC=nop             
  nop                                  #  30    0x300c5  1      OPC=nop             
  nop                                  #  31    0x300c6  1      OPC=nop             
  nop                                  #  32    0x300c7  1      OPC=nop             
  nop                                  #  33    0x300c8  1      OPC=nop             
  nop                                  #  34    0x300c9  1      OPC=nop             
  nop                                  #  35    0x300ca  1      OPC=nop             
  nop                                  #  36    0x300cb  1      OPC=nop             
  nop                                  #  37    0x300cc  1      OPC=nop             
  nop                                  #  38    0x300cd  1      OPC=nop             
  nop                                  #  39    0x300ce  1      OPC=nop             
  nop                                  #  40    0x300cf  1      OPC=nop             
  nop                                  #  41    0x300d0  1      OPC=nop             
  nop                                  #  42    0x300d1  1      OPC=nop             
  nop                                  #  43    0x300d2  1      OPC=nop             
  nop                                  #  44    0x300d3  1      OPC=nop             
  nop                                  #  45    0x300d4  1      OPC=nop             
  nop                                  #  46    0x300d5  1      OPC=nop             
  nop                                  #  47    0x300d6  1      OPC=nop             
  nop                                  #  48    0x300d7  1      OPC=nop             
  nop                                  #  49    0x300d8  1      OPC=nop             
  nop                                  #  50    0x300d9  1      OPC=nop             
  nop                                  #  51    0x300da  1      OPC=nop             
  callq .__nacl_read_tp                #  52    0x300db  5      OPC=callq_label     
  movl %eax, %edi                      #  53    0x300e0  2      OPC=movl_r32_r32    
  leal 0x28(%rdi), %ebx                #  54    0x300e2  3      OPC=leal_r32_m16    
  movl %ebx, %esi                      #  55    0x300e5  2      OPC=movl_r32_r32    
  nop                                  #  56    0x300e7  1      OPC=nop             
  nop                                  #  57    0x300e8  1      OPC=nop             
  nop                                  #  58    0x300e9  1      OPC=nop             
  nop                                  #  59    0x300ea  1      OPC=nop             
  nop                                  #  60    0x300eb  1      OPC=nop             
  nop                                  #  61    0x300ec  1      OPC=nop             
  nop                                  #  62    0x300ed  1      OPC=nop             
  nop                                  #  63    0x300ee  1      OPC=nop             
  nop                                  #  64    0x300ef  1      OPC=nop             
  nop                                  #  65    0x300f0  1      OPC=nop             
  nop                                  #  66    0x300f1  1      OPC=nop             
  nop                                  #  67    0x300f2  1      OPC=nop             
  nop                                  #  68    0x300f3  1      OPC=nop             
  nop                                  #  69    0x300f4  1      OPC=nop             
  nop                                  #  70    0x300f5  1      OPC=nop             
  nop                                  #  71    0x300f6  1      OPC=nop             
  nop                                  #  72    0x300f7  1      OPC=nop             
  nop                                  #  73    0x300f8  1      OPC=nop             
  nop                                  #  74    0x300f9  1      OPC=nop             
  nop                                  #  75    0x300fa  1      OPC=nop             
  callq .nc_tdb_init                   #  76    0x300fb  5      OPC=callq_label     
  movl %ebx, 0x100490ea(%rip)          #  77    0x30100  6      OPC=movl_m32_r32    
  popq %rbx                            #  78    0x30106  1      OPC=popq_r64_1      
  jmpq .__nc_initialize_globals        #  79    0x30107  5      OPC=jmpq_label_1    
  nop                                  #  80    0x3010c  1      OPC=nop             
  nop                                  #  81    0x3010d  1      OPC=nop             
  nop                                  #  82    0x3010e  1      OPC=nop             
  nop                                  #  83    0x3010f  1      OPC=nop             
  nop                                  #  84    0x30110  1      OPC=nop             
  nop                                  #  85    0x30111  1      OPC=nop             
  nop                                  #  86    0x30112  1      OPC=nop             
  nop                                  #  87    0x30113  1      OPC=nop             
  nop                                  #  88    0x30114  1      OPC=nop             
  nop                                  #  89    0x30115  1      OPC=nop             
  nop                                  #  90    0x30116  1      OPC=nop             
  nop                                  #  91    0x30117  1      OPC=nop             
  nop                                  #  92    0x30118  1      OPC=nop             
  nop                                  #  93    0x30119  1      OPC=nop             
  nop                                  #  94    0x3011a  1      OPC=nop             
  nop                                  #  95    0x3011b  1      OPC=nop             
  nop                                  #  96    0x3011c  1      OPC=nop             
  nop                                  #  97    0x3011d  1      OPC=nop             
  nop                                  #  98    0x3011e  1      OPC=nop             
  nop                                  #  99    0x3011f  1      OPC=nop             
                                                                                    
.size __pthread_initialize, .-__pthread_initialize


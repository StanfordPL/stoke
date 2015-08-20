  .text
  .globl _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj
  .type _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj, @function

#! file-offset 0xf7340
#! rip-offset  0xb7340
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj:       #        0xb7340  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7340  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7341  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7343  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7345  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7347  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb734a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb734d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb734f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7351  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7356  3      OPC=setne_r8        
  nop                                                              #  11    0xb7359  1      OPC=nop             
  nop                                                              #  12    0xb735a  1      OPC=nop             
  nop                                                              #  13    0xb735b  1      OPC=nop             
  nop                                                              #  14    0xb735c  1      OPC=nop             
  nop                                                              #  15    0xb735d  1      OPC=nop             
  nop                                                              #  16    0xb735e  1      OPC=nop             
  nop                                                              #  17    0xb735f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7360  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  19    0xb7362  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb736a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb736c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb736e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7373  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7375  1      OPC=nop             
  nop                                                              #  25    0xb7376  1      OPC=nop             
  nop                                                              #  26    0xb7377  1      OPC=nop             
  nop                                                              #  27    0xb7378  1      OPC=nop             
  nop                                                              #  28    0xb7379  1      OPC=nop             
  nop                                                              #  29    0xb737a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0xb737b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7380  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7383  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7386  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7387  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7389  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7390  1      OPC=nop             
  nop                                                              #  37    0xb7391  1      OPC=nop             
  nop                                                              #  38    0xb7392  1      OPC=nop             
  nop                                                              #  39    0xb7393  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7394  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7397  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb739a  1      OPC=nop             
  nop                                                              #  43    0xb739b  1      OPC=nop             
  nop                                                              #  44    0xb739c  1      OPC=nop             
  nop                                                              #  45    0xb739d  1      OPC=nop             
  nop                                                              #  46    0xb739e  1      OPC=nop             
  nop                                                              #  47    0xb739f  1      OPC=nop             
  nop                                                              #  48    0xb73a0  1      OPC=nop             
  nop                                                              #  49    0xb73a1  1      OPC=nop             
  nop                                                              #  50    0xb73a2  1      OPC=nop             
  nop                                                              #  51    0xb73a3  1      OPC=nop             
  nop                                                              #  52    0xb73a4  1      OPC=nop             
  nop                                                              #  53    0xb73a5  1      OPC=nop             
  nop                                                              #  54    0xb73a6  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb73a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb73a9  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb73ad  1      OPC=nop             
  nop                                                              #  58    0xb73ae  1      OPC=nop             
  nop                                                              #  59    0xb73af  1      OPC=nop             
  nop                                                              #  60    0xb73b0  1      OPC=nop             
  nop                                                              #  61    0xb73b1  1      OPC=nop             
  nop                                                              #  62    0xb73b2  1      OPC=nop             
  nop                                                              #  63    0xb73b3  1      OPC=nop             
  nop                                                              #  64    0xb73b4  1      OPC=nop             
  nop                                                              #  65    0xb73b5  1      OPC=nop             
  nop                                                              #  66    0xb73b6  1      OPC=nop             
  nop                                                              #  67    0xb73b7  1      OPC=nop             
  nop                                                              #  68    0xb73b8  1      OPC=nop             
  nop                                                              #  69    0xb73b9  1      OPC=nop             
  nop                                                              #  70    0xb73ba  1      OPC=nop             
  nop                                                              #  71    0xb73bb  1      OPC=nop             
  nop                                                              #  72    0xb73bc  1      OPC=nop             
  nop                                                              #  73    0xb73bd  1      OPC=nop             
  nop                                                              #  74    0xb73be  1      OPC=nop             
  nop                                                              #  75    0xb73bf  1      OPC=nop             
  nop                                                              #  76    0xb73c0  1      OPC=nop             
  nop                                                              #  77    0xb73c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb73c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb73c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb73cb  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb73cd  1      OPC=nop             
  nop                                                              #  82    0xb73ce  1      OPC=nop             
  nop                                                              #  83    0xb73cf  1      OPC=nop             
  nop                                                              #  84    0xb73d0  1      OPC=nop             
  nop                                                              #  85    0xb73d1  1      OPC=nop             
  nop                                                              #  86    0xb73d2  1      OPC=nop             
  nop                                                              #  87    0xb73d3  1      OPC=nop             
  nop                                                              #  88    0xb73d4  1      OPC=nop             
  nop                                                              #  89    0xb73d5  1      OPC=nop             
  nop                                                              #  90    0xb73d6  1      OPC=nop             
  nop                                                              #  91    0xb73d7  1      OPC=nop             
  nop                                                              #  92    0xb73d8  1      OPC=nop             
  nop                                                              #  93    0xb73d9  1      OPC=nop             
  nop                                                              #  94    0xb73da  1      OPC=nop             
  nop                                                              #  95    0xb73db  1      OPC=nop             
  nop                                                              #  96    0xb73dc  1      OPC=nop             
  nop                                                              #  97    0xb73dd  1      OPC=nop             
  nop                                                              #  98    0xb73de  1      OPC=nop             
  nop                                                              #  99    0xb73df  1      OPC=nop             
  nop                                                              #  100   0xb73e0  1      OPC=nop             
  nop                                                              #  101   0xb73e1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb73e2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj, .-_ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj

